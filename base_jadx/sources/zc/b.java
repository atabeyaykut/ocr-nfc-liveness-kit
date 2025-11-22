package zc;

import ad.i;
import ad.j;
import ad.k;
import ad.l;
import ad.m;
import ad.n;
import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import rc.w;
import zc.h;

/* loaded from: classes2.dex */
public final class b extends h {
    public static final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public static final a f20022g = new a();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f20023d;

    /* renamed from: e, reason: collision with root package name */
    public final j f20024e;

    public static final class a {
    }

    /* renamed from: zc.b$b, reason: collision with other inner class name */
    public static final class C0319b implements cd.e {

        /* renamed from: a, reason: collision with root package name */
        public final X509TrustManager f20025a;

        /* renamed from: b, reason: collision with root package name */
        public final Method f20026b;

        public C0319b(X509TrustManager x509TrustManager, Method method) {
            this.f20025a = x509TrustManager;
            this.f20026b = method;
        }

        @Override // cd.e
        public final X509Certificate a(X509Certificate x509Certificate) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            try {
                Object objInvoke = this.f20026b.invoke(this.f20025a, x509Certificate);
                if (objInvoke != null) {
                    return ((TrustAnchor) objInvoke).getTrustedCert();
                }
                throw new NullPointerException("null cannot be cast to non-null type java.security.cert.TrustAnchor");
            } catch (IllegalAccessException e10) {
                throw new AssertionError("unable to get issues and signature", e10);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0319b)) {
                return false;
            }
            C0319b c0319b = (C0319b) obj;
            return kotlin.jvm.internal.h.a(this.f20025a, c0319b.f20025a) && kotlin.jvm.internal.h.a(this.f20026b, c0319b.f20026b);
        }

        public final int hashCode() {
            X509TrustManager x509TrustManager = this.f20025a;
            int r12 = (x509TrustManager != null ? x509TrustManager.hashCode() : 0) * 31;
            Method method = this.f20026b;
            return r12 + (method != null ? method.hashCode() : 0);
        }

        public final String toString() {
            return "CustomTrustRootIndex(trustManager=" + this.f20025a + ", findByIssuerAndSignatureMethod=" + this.f20026b + ")";
        }
    }

    static {
        h.f20045c.getClass();
        f = h.a.c() && Build.VERSION.SDK_INT < 30;
    }

    public b() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        n nVar;
        Method method;
        Method method2;
        m[] mVarArr = new m[4];
        Method method3 = null;
        try {
            nVar = new n(Class.forName("com.android.org.conscrypt".concat(".OpenSSLSocketImpl")), Class.forName("com.android.org.conscrypt".concat(".OpenSSLSocketFactoryImpl")), Class.forName("com.android.org.conscrypt".concat(".SSLParametersImpl")));
        } catch (Exception e10) {
            h.f20045c.getClass();
            h.f20043a.getClass();
            h.i(5, "unable to load android socket classes", e10);
            nVar = null;
        }
        mVarArr[0] = nVar;
        mVarArr[1] = new l(ad.h.f);
        mVarArr[2] = new l(k.f266a);
        mVarArr[3] = new l(i.f262a);
        ArrayList arrayListP0 = m9.k.p0(mVarArr);
        ArrayList arrayList = new ArrayList();
        Iterator it = arrayListP0.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((m) next).b()) {
                arrayList.add(next);
            }
        }
        this.f20023d = arrayList;
        try {
            Class<?> cls = Class.forName("dalvik.system.CloseGuard");
            Method method4 = cls.getMethod("get", new Class[0]);
            method2 = cls.getMethod("open", String.class);
            method = cls.getMethod("warnIfOpen", new Class[0]);
            method3 = method4;
        } catch (Exception unused) {
            method = null;
            method2 = null;
        }
        this.f20024e = new j(method3, method2, method);
    }

    @Override // zc.h
    public final cd.c b(X509TrustManager x509TrustManager) {
        X509TrustManagerExtensions x509TrustManagerExtensions;
        try {
            x509TrustManagerExtensions = new X509TrustManagerExtensions(x509TrustManager);
        } catch (IllegalArgumentException unused) {
            x509TrustManagerExtensions = null;
        }
        ad.d dVar = x509TrustManagerExtensions != null ? new ad.d(x509TrustManager, x509TrustManagerExtensions) : null;
        return dVar != null ? dVar : new cd.a(c(x509TrustManager));
    }

    @Override // zc.h
    public final cd.e c(X509TrustManager x509TrustManager) throws NoSuchMethodException, SecurityException {
        try {
            Method method = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            kotlin.jvm.internal.h.e(method, "method");
            method.setAccessible(true);
            return new C0319b(x509TrustManager, method);
        } catch (NoSuchMethodException unused) {
            return super.c(x509TrustManager);
        }
    }

    @Override // zc.h
    public final void d(SSLSocket sSLSocket, String str, List<w> protocols) {
        Object next;
        kotlin.jvm.internal.h.f(protocols, "protocols");
        Iterator it = this.f20023d.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (((m) next).a(sSLSocket)) {
                    break;
                }
            }
        }
        m mVar = (m) next;
        if (mVar != null) {
            mVar.d(sSLSocket, str, protocols);
        }
    }

    @Override // zc.h
    public final void e(Socket socket, InetSocketAddress address, int r42) throws IOException {
        kotlin.jvm.internal.h.f(address, "address");
        try {
            socket.connect(address, r42);
        } catch (ClassCastException e10) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e10;
            }
            throw new IOException("Exception in connect", e10);
        }
    }

    @Override // zc.h
    public final String f(SSLSocket sSLSocket) {
        Object next;
        Iterator it = this.f20023d.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((m) next).a(sSLSocket)) {
                break;
            }
        }
        m mVar = (m) next;
        if (mVar != null) {
            return mVar.c(sSLSocket);
        }
        return null;
    }

    @Override // zc.h
    public final Object g() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        j jVar = this.f20024e;
        jVar.getClass();
        Method method = jVar.f263a;
        if (method == null) {
            return null;
        }
        try {
            Object objInvoke = method.invoke(null, new Object[0]);
            Method method2 = jVar.f264b;
            kotlin.jvm.internal.h.c(method2);
            method2.invoke(objInvoke, "response.body().close()");
            return objInvoke;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // zc.h
    public final boolean h(String hostname) {
        kotlin.jvm.internal.h.f(hostname, "hostname");
        int r02 = Build.VERSION.SDK_INT;
        if (r02 >= 24) {
            return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(hostname);
        }
        if (r02 < 23) {
            return true;
        }
        NetworkSecurityPolicy networkSecurityPolicy = NetworkSecurityPolicy.getInstance();
        kotlin.jvm.internal.h.e(networkSecurityPolicy, "NetworkSecurityPolicy.getInstance()");
        return networkSecurityPolicy.isCleartextTrafficPermitted();
    }

    @Override // zc.h
    public final void k(Object obj, String message) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.h.f(message, "message");
        j jVar = this.f20024e;
        jVar.getClass();
        boolean z10 = false;
        if (obj != null) {
            try {
                Method method = jVar.f265c;
                kotlin.jvm.internal.h.c(method);
                method.invoke(obj, new Object[0]);
                z10 = true;
            } catch (Exception unused) {
            }
        }
        if (z10) {
            return;
        }
        h.j(this, message, 5, 4);
    }
}
