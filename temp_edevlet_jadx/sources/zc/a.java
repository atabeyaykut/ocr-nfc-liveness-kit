package zc;

import ad.i;
import ad.k;
import ad.l;
import ad.m;
import android.annotation.SuppressLint;
import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import rc.w;
import zc.h;

/* loaded from: classes2.dex */
public final class a extends h {

    /* renamed from: e, reason: collision with root package name */
    public static final boolean f20020e;
    public static final C0318a f = new C0318a();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f20021d;

    /* renamed from: zc.a$a, reason: collision with other inner class name */
    public static final class C0318a {
    }

    static {
        h.f20045c.getClass();
        f20020e = h.a.c() && Build.VERSION.SDK_INT >= 29;
    }

    public a() {
        m[] mVarArr = new m[4];
        ad.c.f250a.getClass();
        h.f20045c.getClass();
        mVarArr[0] = h.a.c() && Build.VERSION.SDK_INT >= 29 ? new ad.c() : null;
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
        this.f20021d = arrayList;
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
    public final void d(SSLSocket sSLSocket, String str, List<? extends w> protocols) {
        Object next;
        kotlin.jvm.internal.h.f(protocols, "protocols");
        Iterator it = this.f20021d.iterator();
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
    public final String f(SSLSocket sSLSocket) {
        Object next;
        Iterator it = this.f20021d.iterator();
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
    @SuppressLint({"NewApi"})
    public final boolean h(String hostname) {
        kotlin.jvm.internal.h.f(hostname, "hostname");
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(hostname);
    }
}
