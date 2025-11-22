package ed;

/* loaded from: classes2.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f5305a;

    /* renamed from: b, reason: collision with root package name */
    public int f5306b;

    /* renamed from: c, reason: collision with root package name */
    public int f5307c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5308d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f5309e;
    public e0 f;

    /* renamed from: g, reason: collision with root package name */
    public e0 f5310g;

    public e0() {
        this.f5305a = new byte[8192];
        this.f5309e = true;
        this.f5308d = false;
    }

    public e0(byte[] data, int r32, int r42, boolean z10) {
        kotlin.jvm.internal.h.f(data, "data");
        this.f5305a = data;
        this.f5306b = r32;
        this.f5307c = r42;
        this.f5308d = z10;
        this.f5309e = false;
    }

    public final e0 a() {
        e0 e0Var = this.f;
        if (e0Var == this) {
            e0Var = null;
        }
        e0 e0Var2 = this.f5310g;
        kotlin.jvm.internal.h.c(e0Var2);
        e0Var2.f = this.f;
        e0 e0Var3 = this.f;
        kotlin.jvm.internal.h.c(e0Var3);
        e0Var3.f5310g = this.f5310g;
        this.f = null;
        this.f5310g = null;
        return e0Var;
    }

    public final void b(e0 e0Var) {
        e0Var.f5310g = this;
        e0Var.f = this.f;
        e0 e0Var2 = this.f;
        kotlin.jvm.internal.h.c(e0Var2);
        e0Var2.f5310g = e0Var;
        this.f = e0Var;
    }

    public final e0 c() {
        this.f5308d = true;
        return new e0(this.f5305a, this.f5306b, this.f5307c, true);
    }

    public final void d(e0 e0Var, int r72) {
        if (!e0Var.f5309e) {
            throw new IllegalStateException("only owner can write".toString());
        }
        int r02 = e0Var.f5307c;
        int r12 = r02 + r72;
        byte[] bArr = e0Var.f5305a;
        if (r12 > 8192) {
            if (e0Var.f5308d) {
                throw new IllegalArgumentException();
            }
            int r42 = e0Var.f5306b;
            if (r12 - r42 > 8192) {
                throw new IllegalArgumentException();
            }
            m9.i.h0(0, bArr, r42, bArr, r02);
            e0Var.f5307c -= e0Var.f5306b;
            e0Var.f5306b = 0;
        }
        int r03 = e0Var.f5307c;
        int r13 = this.f5306b;
        m9.i.h0(r03, this.f5305a, r13, bArr, r13 + r72);
        e0Var.f5307c += r72;
        this.f5306b += r72;
    }
}
