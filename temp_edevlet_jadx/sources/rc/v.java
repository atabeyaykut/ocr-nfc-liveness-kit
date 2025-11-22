package rc;

import c5.b4;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.barcode.ModuleDescriptor;
import java.net.ProxySelector;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import rc.d;
import rc.n;

/* loaded from: classes2.dex */
public final class v implements Cloneable, d.a {
    public static final List<w> C = sc.c.k(w.HTTP_2, w.HTTP_1_1);
    public static final List<i> D = sc.c.k(i.f14469e, i.f);
    public final int A;
    public final com.airbnb.epoxy.a B;

    /* renamed from: a, reason: collision with root package name */
    public final l f14550a;

    /* renamed from: b, reason: collision with root package name */
    public final b4 f14551b;

    /* renamed from: c, reason: collision with root package name */
    public final List<s> f14552c;

    /* renamed from: d, reason: collision with root package name */
    public final List<s> f14553d;

    /* renamed from: e, reason: collision with root package name */
    public final n.b f14554e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final b f14555g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f14556h;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f14557j;

    /* renamed from: k, reason: collision with root package name */
    public final k f14558k;

    /* renamed from: l, reason: collision with root package name */
    public final m f14559l;

    /* renamed from: m, reason: collision with root package name */
    public final ProxySelector f14560m;

    /* renamed from: n, reason: collision with root package name */
    public final b f14561n;

    /* renamed from: p, reason: collision with root package name */
    public final SocketFactory f14562p;

    /* renamed from: q, reason: collision with root package name */
    public final SSLSocketFactory f14563q;

    /* renamed from: r, reason: collision with root package name */
    public final X509TrustManager f14564r;

    /* renamed from: s, reason: collision with root package name */
    public final List<i> f14565s;

    /* renamed from: t, reason: collision with root package name */
    public final List<w> f14566t;

    /* renamed from: v, reason: collision with root package name */
    public final HostnameVerifier f14567v;
    public final f w;

    /* renamed from: x, reason: collision with root package name */
    public final cd.c f14568x;

    /* renamed from: y, reason: collision with root package name */
    public final int f14569y;

    /* renamed from: z, reason: collision with root package name */
    public final int f14570z;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final l f14571a = new l();

        /* renamed from: b, reason: collision with root package name */
        public final b4 f14572b = new b4(5, 0);

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f14573c = new ArrayList();

        /* renamed from: d, reason: collision with root package name */
        public final ArrayList f14574d = new ArrayList();

        /* renamed from: e, reason: collision with root package name */
        public final sc.a f14575e;
        public final boolean f;

        /* renamed from: g, reason: collision with root package name */
        public final x5.a f14576g;

        /* renamed from: h, reason: collision with root package name */
        public final boolean f14577h;

        /* renamed from: i, reason: collision with root package name */
        public final boolean f14578i;

        /* renamed from: j, reason: collision with root package name */
        public final b8.f f14579j;

        /* renamed from: k, reason: collision with root package name */
        public final a0.b f14580k;

        /* renamed from: l, reason: collision with root package name */
        public final x5.a f14581l;

        /* renamed from: m, reason: collision with root package name */
        public final SocketFactory f14582m;

        /* renamed from: n, reason: collision with root package name */
        public final List<i> f14583n;

        /* renamed from: o, reason: collision with root package name */
        public final List<? extends w> f14584o;

        /* renamed from: p, reason: collision with root package name */
        public final cd.d f14585p;

        /* renamed from: q, reason: collision with root package name */
        public final f f14586q;

        /* renamed from: r, reason: collision with root package name */
        public int f14587r;

        /* renamed from: s, reason: collision with root package name */
        public int f14588s;

        /* renamed from: t, reason: collision with root package name */
        public int f14589t;

        public a() {
            n.a asFactory = n.f14497a;
            byte[] bArr = sc.c.f15380a;
            kotlin.jvm.internal.h.f(asFactory, "$this$asFactory");
            this.f14575e = new sc.a(asFactory);
            this.f = true;
            x5.a aVar = b.f14384g0;
            this.f14576g = aVar;
            this.f14577h = true;
            this.f14578i = true;
            this.f14579j = k.f14491i0;
            this.f14580k = m.f14496j0;
            this.f14581l = aVar;
            SocketFactory socketFactory = SocketFactory.getDefault();
            kotlin.jvm.internal.h.e(socketFactory, "SocketFactory.getDefault()");
            this.f14582m = socketFactory;
            this.f14583n = v.D;
            this.f14584o = v.C;
            this.f14585p = cd.d.f2381a;
            this.f14586q = f.f14437c;
            this.f14587r = ModuleDescriptor.MODULE_VERSION;
            this.f14588s = ModuleDescriptor.MODULE_VERSION;
            this.f14589t = ModuleDescriptor.MODULE_VERSION;
        }
    }

    public v() {
        this(new a());
    }

    public v(a aVar) throws NoSuchAlgorithmException, KeyStoreException {
        boolean z10;
        f fVar;
        boolean z11;
        this.f14550a = aVar.f14571a;
        this.f14551b = aVar.f14572b;
        this.f14552c = sc.c.v(aVar.f14573c);
        this.f14553d = sc.c.v(aVar.f14574d);
        this.f14554e = aVar.f14575e;
        this.f = aVar.f;
        this.f14555g = aVar.f14576g;
        this.f14556h = aVar.f14577h;
        this.f14557j = aVar.f14578i;
        this.f14558k = aVar.f14579j;
        this.f14559l = aVar.f14580k;
        ProxySelector proxySelector = ProxySelector.getDefault();
        this.f14560m = proxySelector == null ? bd.a.f1213a : proxySelector;
        this.f14561n = aVar.f14581l;
        this.f14562p = aVar.f14582m;
        List<i> list = aVar.f14583n;
        this.f14565s = list;
        this.f14566t = aVar.f14584o;
        this.f14567v = aVar.f14585p;
        this.f14569y = aVar.f14587r;
        this.f14570z = aVar.f14588s;
        this.A = aVar.f14589t;
        this.B = new com.airbnb.epoxy.a(6);
        List<i> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            z10 = true;
        } else {
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                if (((i) it.next()).f14470a) {
                    z10 = false;
                    break;
                }
            }
            z10 = true;
        }
        if (z10) {
            this.f14563q = null;
            this.f14568x = null;
            this.f14564r = null;
            fVar = f.f14437c;
        } else {
            zc.h.f20045c.getClass();
            X509TrustManager x509TrustManagerN = zc.h.f20043a.n();
            this.f14564r = x509TrustManagerN;
            zc.h hVar = zc.h.f20043a;
            kotlin.jvm.internal.h.c(x509TrustManagerN);
            this.f14563q = hVar.m(x509TrustManagerN);
            cd.c cVarB = zc.h.f20043a.b(x509TrustManagerN);
            this.f14568x = cVarB;
            fVar = aVar.f14586q;
            kotlin.jvm.internal.h.c(cVarB);
            if (!kotlin.jvm.internal.h.a(fVar.f14440b, cVarB)) {
                fVar = new f(fVar.f14439a, cVarB);
            }
        }
        this.w = fVar;
        List<s> list3 = this.f14552c;
        if (list3 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");
        }
        if (!(!list3.contains(null))) {
            throw new IllegalStateException(("Null interceptor: " + list3).toString());
        }
        List<s> list4 = this.f14553d;
        if (list4 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");
        }
        if (!(!list4.contains(null))) {
            throw new IllegalStateException(("Null network interceptor: " + list4).toString());
        }
        List<i> list5 = this.f14565s;
        if ((list5 instanceof Collection) && list5.isEmpty()) {
            z11 = true;
        } else {
            Iterator<T> it2 = list5.iterator();
            while (it2.hasNext()) {
                if (((i) it2.next()).f14470a) {
                    z11 = false;
                    break;
                }
            }
            z11 = true;
        }
        X509TrustManager x509TrustManager = this.f14564r;
        cd.c cVar = this.f14568x;
        SSLSocketFactory sSLSocketFactory = this.f14563q;
        if (!z11) {
            if (sSLSocketFactory == null) {
                throw new IllegalStateException("sslSocketFactory == null".toString());
            }
            if (cVar == null) {
                throw new IllegalStateException("certificateChainCleaner == null".toString());
            }
            if (x509TrustManager == null) {
                throw new IllegalStateException("x509TrustManager == null".toString());
            }
            return;
        }
        if (!(sSLSocketFactory == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!(cVar == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!(x509TrustManager == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!kotlin.jvm.internal.h.a(this.w, f.f14437c)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    @Override // rc.d.a
    public final vc.e b(x request) {
        kotlin.jvm.internal.h.f(request, "request");
        return new vc.e(this, request, false);
    }

    public final Object clone() {
        return super.clone();
    }
}
