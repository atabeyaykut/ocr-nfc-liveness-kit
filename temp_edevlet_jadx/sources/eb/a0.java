package eb;

/* loaded from: classes2.dex */
public final class a0 {

    /* renamed from: k, reason: collision with root package name */
    public static final a0 f5168k = new a0(false, false, false, false, false, new a0(false, false, false, false, false, null, false, null, null, false, 1023), false, null, null, false, 988);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f5169a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f5170b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f5171c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f5172d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f5173e;
    public final a0 f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f5174g;

    /* renamed from: h, reason: collision with root package name */
    public final a0 f5175h;

    /* renamed from: i, reason: collision with root package name */
    public final a0 f5176i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f5177j;

    public a0(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, a0 a0Var, boolean z15, a0 a0Var2, a0 a0Var3, boolean z16, int r14) {
        z10 = (r14 & 1) != 0 ? true : z10;
        z11 = (r14 & 2) != 0 ? true : z11;
        z12 = (r14 & 4) != 0 ? false : z12;
        z13 = (r14 & 8) != 0 ? false : z13;
        z14 = (r14 & 16) != 0 ? false : z14;
        a0Var = (r14 & 32) != 0 ? null : a0Var;
        z15 = (r14 & 64) != 0 ? true : z15;
        a0Var2 = (r14 & 128) != 0 ? a0Var : a0Var2;
        a0Var3 = (r14 & 256) != 0 ? a0Var : a0Var3;
        z16 = (r14 & 512) != 0 ? false : z16;
        this.f5169a = z10;
        this.f5170b = z11;
        this.f5171c = z12;
        this.f5172d = z13;
        this.f5173e = z14;
        this.f = a0Var;
        this.f5174g = z15;
        this.f5175h = a0Var2;
        this.f5176i = a0Var3;
        this.f5177j = z16;
    }
}
