package org.bouncycastle.jce.provider;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URI;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509CRL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import javax.naming.NamingException;
import javax.naming.directory.InitialDirContext;
import org.bouncycastle.jcajce.PKIXCRLStore;
import org.bouncycastle.util.CollectionStore;
import org.bouncycastle.util.Iterable;
import org.bouncycastle.util.Selector;
import org.bouncycastle.util.Store;

/* loaded from: classes2.dex */
class CrlCache {
    private static final int DEFAULT_TIMEOUT = 15000;
    private static Map<URI, WeakReference<PKIXCRLStore>> cache = Collections.synchronizedMap(new WeakHashMap());

    public static class LocalCRLStore<T extends CRL> implements PKIXCRLStore, Iterable<CRL> {
        private Collection<CRL> _local;

        public LocalCRLStore(Store<CRL> store) {
            this._local = new ArrayList(store.getMatches(null));
        }

        @Override // org.bouncycastle.jcajce.PKIXCRLStore, org.bouncycastle.util.Store
        public Collection getMatches(Selector selector) {
            if (selector == null) {
                return new ArrayList(this._local);
            }
            ArrayList arrayList = new ArrayList();
            for (CRL crl : this._local) {
                if (selector.match(crl)) {
                    arrayList.add(crl);
                }
            }
            return arrayList;
        }

        @Override // org.bouncycastle.util.Iterable, java.lang.Iterable
        public Iterator<CRL> iterator() {
            return getMatches(null).iterator();
        }
    }

    public static synchronized PKIXCRLStore getCrl(CertificateFactory certificateFactory, Date date, URI r6) throws IOException, CRLException {
        boolean z10;
        WeakReference<PKIXCRLStore> weakReference = cache.get(r6);
        PKIXCRLStore pKIXCRLStore = weakReference != null ? weakReference.get() : null;
        if (pKIXCRLStore != null) {
            Iterator it = pKIXCRLStore.getMatches(null).iterator();
            while (true) {
                if (!it.hasNext()) {
                    z10 = false;
                    break;
                }
                Date nextUpdate = ((X509CRL) it.next()).getNextUpdate();
                if (nextUpdate != null && nextUpdate.before(date)) {
                    z10 = true;
                    break;
                }
            }
            if (!z10) {
                return pKIXCRLStore;
            }
        }
        LocalCRLStore localCRLStore = new LocalCRLStore(new CollectionStore(r6.getScheme().equals("ldap") ? getCrlsFromLDAP(certificateFactory, r6) : getCrls(certificateFactory, r6)));
        cache.put(r6, new WeakReference<>(localCRLStore));
        return localCRLStore;
    }

    private static Collection getCrls(CertificateFactory certificateFactory, URI r22) throws IOException, CRLException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) r22.toURL().openConnection();
        httpURLConnection.setConnectTimeout(DEFAULT_TIMEOUT);
        httpURLConnection.setReadTimeout(DEFAULT_TIMEOUT);
        InputStream inputStream = httpURLConnection.getInputStream();
        Collection<? extends CRL> collectionGenerateCRLs = certificateFactory.generateCRLs(inputStream);
        inputStream.close();
        return collectionGenerateCRLs;
    }

    private static Collection getCrlsFromLDAP(CertificateFactory certificateFactory, URI r42) throws IOException, CRLException {
        Hashtable hashtable = new Hashtable();
        hashtable.put("java.naming.factory.initial", "com.sun.jndi.ldap.LdapCtxFactory");
        hashtable.put("java.naming.provider.url", r42.toString());
        try {
            byte[] bArr = (byte[]) new InitialDirContext(hashtable).getAttributes("").get("certificateRevocationList;binary").get();
            if (bArr != null && bArr.length != 0) {
                return certificateFactory.generateCRLs(new ByteArrayInputStream(bArr));
            }
            throw new CRLException("no CRL returned from: " + r42);
        } catch (NamingException e10) {
            throw new CRLException("issue connecting to: " + r42.toString(), e10);
        }
    }
}
