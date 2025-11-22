package rc;

import java.io.Closeable;
import rc.c;
import rc.q;

/* loaded from: classes2.dex */
public final class b0 implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public c f14385a;

    /* renamed from: b, reason: collision with root package name */
    public final x f14386b;

    /* renamed from: c, reason: collision with root package name */
    public final w f14387c;

    /* renamed from: d, reason: collision with root package name */
    public final String f14388d;

    /* renamed from: e, reason: collision with root package name */
    public final int f14389e;
    public final p f;

    /* renamed from: g, reason: collision with root package name */
    public final q f14390g;

    /* renamed from: h, reason: collision with root package name */
    public final d0 f14391h;

    /* renamed from: j, reason: collision with root package name */
    public final b0 f14392j;

    /* renamed from: k, reason: collision with root package name */
    public final b0 f14393k;

    /* renamed from: l, reason: collision with root package name */
    public final b0 f14394l;

    /* renamed from: m, reason: collision with root package name */
    public final long f14395m;

    /* renamed from: n, reason: collision with root package name */
    public final long f14396n;

    /* renamed from: p, reason: collision with root package name */
    public final vc.c f14397p;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public x f14398a;

        /* renamed from: b, reason: collision with root package name */
        public w f14399b;

        /* renamed from: c, reason: collision with root package name */
        public int f14400c;

        /* renamed from: d, reason: collision with root package name */
        public String f14401d;

        /* renamed from: e, reason: collision with root package name */
        public p f14402e;
        public q.a f;

        /* renamed from: g, reason: collision with root package name */
        public d0 f14403g;

        /* renamed from: h, reason: collision with root package name */
        public b0 f14404h;

        /* renamed from: i, reason: collision with root package name */
        public b0 f14405i;

        /* renamed from: j, reason: collision with root package name */
        public b0 f14406j;

        /* renamed from: k, reason: collision with root package name */
        public long f14407k;

        /* renamed from: l, reason: collision with root package name */
        public long f14408l;

        /* renamed from: m, reason: collision with root package name */
        public vc.c f14409m;

        public a() {
            this.f14400c = -1;
            this.f = new q.a();
        }

        public a(b0 response) {
            kotlin.jvm.internal.h.f(response, "response");
            this.f14398a = response.f14386b;
            this.f14399b = response.f14387c;
            this.f14400c = response.f14389e;
            this.f14401d = response.f14388d;
            this.f14402e = response.f;
            this.f = response.f14390g.u();
            this.f14403g = response.f14391h;
            this.f14404h = response.f14392j;
            this.f14405i = response.f14393k;
            this.f14406j = response.f14394l;
            this.f14407k = response.f14395m;
            this.f14408l = response.f14396n;
            this.f14409m = response.f14397p;
        }

        public static void b(String str, b0 b0Var) {
            if (b0Var != null) {
                if (!(b0Var.f14391h == null)) {
                    throw new IllegalArgumentException(str.concat(".body != null").toString());
                }
                if (!(b0Var.f14392j == null)) {
                    throw new IllegalArgumentException(str.concat(".networkResponse != null").toString());
                }
                if (!(b0Var.f14393k == null)) {
                    throw new IllegalArgumentException(str.concat(".cacheResponse != null").toString());
                }
                if (!(b0Var.f14394l == null)) {
                    throw new IllegalArgumentException(str.concat(".priorResponse != null").toString());
                }
            }
        }

        public final b0 a() {
            int r52 = this.f14400c;
            if (!(r52 >= 0)) {
                throw new IllegalStateException(("code < 0: " + this.f14400c).toString());
            }
            x xVar = this.f14398a;
            if (xVar == null) {
                throw new IllegalStateException("request == null".toString());
            }
            w wVar = this.f14399b;
            if (wVar == null) {
                throw new IllegalStateException("protocol == null".toString());
            }
            String str = this.f14401d;
            if (str != null) {
                return new b0(xVar, wVar, str, r52, this.f14402e, this.f.c(), this.f14403g, this.f14404h, this.f14405i, this.f14406j, this.f14407k, this.f14408l, this.f14409m);
            }
            throw new IllegalStateException("message == null".toString());
        }
    }

    public b0(x xVar, w wVar, String str, int r42, p pVar, q qVar, d0 d0Var, b0 b0Var, b0 b0Var2, b0 b0Var3, long j10, long j11, vc.c cVar) {
        this.f14386b = xVar;
        this.f14387c = wVar;
        this.f14388d = str;
        this.f14389e = r42;
        this.f = pVar;
        this.f14390g = qVar;
        this.f14391h = d0Var;
        this.f14392j = b0Var;
        this.f14393k = b0Var2;
        this.f14394l = b0Var3;
        this.f14395m = j10;
        this.f14396n = j11;
        this.f14397p = cVar;
    }

    public static String b(b0 b0Var, String str) {
        b0Var.getClass();
        String strL = b0Var.f14390g.l(str);
        if (strL != null) {
            return strL;
        }
        return null;
    }

    public final c a() {
        c cVar = this.f14385a;
        if (cVar != null) {
            return cVar;
        }
        c.f14412p.getClass();
        c cVarA = c.b.a(this.f14390g);
        this.f14385a = cVarA;
        return cVarA;
    }

    public final boolean c() {
        int r12 = this.f14389e;
        return 200 <= r12 && 299 >= r12;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        d0 d0Var = this.f14391h;
        if (d0Var == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed".toString());
        }
        d0Var.close();
    }

    public final String toString() {
        return "Response{protocol=" + this.f14387c + ", code=" + this.f14389e + ", message=" + this.f14388d + ", url=" + this.f14386b.f14598b + '}';
    }
}
