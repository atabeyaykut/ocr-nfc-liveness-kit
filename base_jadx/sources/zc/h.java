package zc;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import m9.n;
import rc.w;

/* loaded from: classes2.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public static volatile h f20043a;

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f20044b;

    /* renamed from: c, reason: collision with root package name */
    public static final a f20045c = new a();

    public static final class a {
        public static ArrayList a(List protocols) {
            kotlin.jvm.internal.h.f(protocols, "protocols");
            ArrayList arrayList = new ArrayList();
            for (Object obj : protocols) {
                if (((w) obj) != w.HTTP_1_0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(n.Q0(arrayList));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((w) it.next()).f14596a);
            }
            return arrayList2;
        }

        public static byte[] b(List protocols) {
            kotlin.jvm.internal.h.f(protocols, "protocols");
            ed.e eVar = new ed.e();
            Iterator it = a(protocols).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                eVar.O(str.length());
                eVar.i0(str);
            }
            return eVar.k(eVar.f5304b);
        }

        public static boolean c() {
            return kotlin.jvm.internal.h.a("Dalvik", System.getProperty("java.vm.name"));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0109  */
    static {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zc.h.<clinit>():void");
    }

    public static void i(int r12, String message, Throwable th2) {
        kotlin.jvm.internal.h.f(message, "message");
        f20044b.log(r12 == 5 ? Level.WARNING : Level.INFO, message, th2);
    }

    public static /* synthetic */ void j(h hVar, String str, int r22, int r32) {
        if ((r32 & 2) != 0) {
            r22 = 4;
        }
        hVar.getClass();
        i(r22, str, null);
    }

    public void a(SSLSocket sSLSocket) {
    }

    public cd.c b(X509TrustManager x509TrustManager) {
        return new cd.a(c(x509TrustManager));
    }

    public cd.e c(X509TrustManager x509TrustManager) {
        X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
        kotlin.jvm.internal.h.e(acceptedIssuers, "trustManager.acceptedIssuers");
        return new cd.b((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
    }

    public void d(SSLSocket sSLSocket, String str, List<w> protocols) {
        kotlin.jvm.internal.h.f(protocols, "protocols");
    }

    public void e(Socket socket, InetSocketAddress address, int r42) throws IOException {
        kotlin.jvm.internal.h.f(address, "address");
        socket.connect(address, r42);
    }

    public String f(SSLSocket sSLSocket) {
        return null;
    }

    public Object g() {
        if (f20044b.isLoggable(Level.FINE)) {
            return new Throwable("response.body().close()");
        }
        return null;
    }

    public boolean h(String hostname) {
        kotlin.jvm.internal.h.f(hostname, "hostname");
        return true;
    }

    public void k(Object obj, String message) {
        kotlin.jvm.internal.h.f(message, "message");
        if (obj == null) {
            message = message.concat(" To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        i(5, message, (Throwable) obj);
    }

    public SSLContext l() throws NoSuchAlgorithmException {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        kotlin.jvm.internal.h.e(sSLContext, "SSLContext.getInstance(\"TLS\")");
        return sSLContext;
    }

    public SSLSocketFactory m(X509TrustManager x509TrustManager) throws KeyManagementException {
        try {
            SSLContext sSLContextL = l();
            sSLContextL.init(null, new TrustManager[]{x509TrustManager}, null);
            SSLSocketFactory socketFactory = sSLContextL.getSocketFactory();
            kotlin.jvm.internal.h.e(socketFactory, "newSSLContext().apply {\n…ll)\n      }.socketFactory");
            return socketFactory;
        } catch (GeneralSecurityException e10) {
            throw new AssertionError("No System TLS: " + e10, e10);
        }
    }

    public X509TrustManager n() throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        kotlin.jvm.internal.h.c(trustManagers);
        if (!(trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager))) {
            String string = Arrays.toString(trustManagers);
            kotlin.jvm.internal.h.e(string, "java.util.Arrays.toString(this)");
            throw new IllegalStateException("Unexpected default trust managers: ".concat(string).toString());
        }
        TrustManager trustManager = trustManagers[0];
        if (trustManager != null) {
            return (X509TrustManager) trustManager;
        }
        throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
    }

    public final String toString() {
        return getClass().getSimpleName();
    }
}
