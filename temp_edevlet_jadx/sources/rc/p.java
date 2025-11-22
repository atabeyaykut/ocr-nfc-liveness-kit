package rc;

import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import rc.f0;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: e, reason: collision with root package name */
    public static final a f14504e = new a();

    /* renamed from: a, reason: collision with root package name */
    public final l9.j f14505a;

    /* renamed from: b, reason: collision with root package name */
    public final f0 f14506b;

    /* renamed from: c, reason: collision with root package name */
    public final h f14507c;

    /* renamed from: d, reason: collision with root package name */
    public final List<Certificate> f14508d;

    public static final class a {

        /* renamed from: rc.p$a$a, reason: collision with other inner class name */
        public static final class C0238a extends kotlin.jvm.internal.j implements x9.a<List<? extends Certificate>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ List f14509a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0238a(List list) {
                super(0);
                this.f14509a = list;
            }

            @Override // x9.a
            public final List<? extends Certificate> invoke() {
                return this.f14509a;
            }
        }

        public static p a(SSLSession sSLSession) throws IOException {
            Certificate[] peerCertificates;
            List listK = m9.v.f10173a;
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite == null) {
                throw new IllegalStateException("cipherSuite == null".toString());
            }
            int r22 = cipherSuite.hashCode();
            if (r22 == 1019404634 ? cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") : r22 == 1208658923 && cipherSuite.equals("SSL_NULL_WITH_NULL_NULL")) {
                throw new IOException("cipherSuite == ".concat(cipherSuite));
            }
            h hVarB = h.f14467t.b(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                throw new IllegalStateException("tlsVersion == null".toString());
            }
            if (kotlin.jvm.internal.h.a("NONE", protocol)) {
                throw new IOException("tlsVersion == NONE");
            }
            f0 f0VarA = f0.a.a(protocol);
            try {
                peerCertificates = sSLSession.getPeerCertificates();
            } catch (SSLPeerUnverifiedException unused) {
            }
            List listK2 = peerCertificates != null ? sc.c.k((Certificate[]) Arrays.copyOf(peerCertificates, peerCertificates.length)) : listK;
            Certificate[] localCertificates = sSLSession.getLocalCertificates();
            if (localCertificates != null) {
                listK = sc.c.k((Certificate[]) Arrays.copyOf(localCertificates, localCertificates.length));
            }
            return new p(f0VarA, hVarB, listK, new C0238a(listK2));
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<List<? extends Certificate>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ x9.a f14510a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(x9.a aVar) {
            super(0);
            this.f14510a = aVar;
        }

        @Override // x9.a
        public final List<? extends Certificate> invoke() {
            try {
                return (List) this.f14510a.invoke();
            } catch (SSLPeerUnverifiedException unused) {
                return m9.v.f10173a;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p(f0 tlsVersion, h cipherSuite, List<? extends Certificate> localCertificates, x9.a<? extends List<? extends Certificate>> aVar) {
        kotlin.jvm.internal.h.f(tlsVersion, "tlsVersion");
        kotlin.jvm.internal.h.f(cipherSuite, "cipherSuite");
        kotlin.jvm.internal.h.f(localCertificates, "localCertificates");
        this.f14506b = tlsVersion;
        this.f14507c = cipherSuite;
        this.f14508d = localCertificates;
        this.f14505a = c5.y.w(new b(aVar));
    }

    public final List<Certificate> a() {
        return (List) this.f14505a.getValue();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof p) {
            p pVar = (p) obj;
            if (pVar.f14506b == this.f14506b && kotlin.jvm.internal.h.a(pVar.f14507c, this.f14507c) && kotlin.jvm.internal.h.a(pVar.a(), a()) && kotlin.jvm.internal.h.a(pVar.f14508d, this.f14508d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f14508d.hashCode() + ((a().hashCode() + ((this.f14507c.hashCode() + ((this.f14506b.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String type;
        String type2;
        List<Certificate> listA = a();
        ArrayList arrayList = new ArrayList(m9.n.Q0(listA));
        for (Certificate certificate : listA) {
            if (certificate instanceof X509Certificate) {
                type2 = ((X509Certificate) certificate).getSubjectDN().toString();
            } else {
                type2 = certificate.getType();
                kotlin.jvm.internal.h.e(type2, "type");
            }
            arrayList.add(type2);
        }
        String string = arrayList.toString();
        StringBuilder sb2 = new StringBuilder("Handshake{tlsVersion=");
        sb2.append(this.f14506b);
        sb2.append(" cipherSuite=");
        sb2.append(this.f14507c);
        sb2.append(" peerCertificates=");
        sb2.append(string);
        sb2.append(" localCertificates=");
        List<Certificate> list = this.f14508d;
        ArrayList arrayList2 = new ArrayList(m9.n.Q0(list));
        for (Certificate certificate2 : list) {
            if (certificate2 instanceof X509Certificate) {
                type = ((X509Certificate) certificate2).getSubjectDN().toString();
            } else {
                type = certificate2.getType();
                kotlin.jvm.internal.h.e(type, "type");
            }
            arrayList2.add(type);
        }
        sb2.append(arrayList2);
        sb2.append('}');
        return sb2.toString();
    }
}
