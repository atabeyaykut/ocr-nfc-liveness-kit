package cc;

/* loaded from: classes2.dex */
public final class b0 extends l1 {

    /* renamed from: b, reason: collision with root package name */
    public final ma.w0[] f2260b;

    /* renamed from: c, reason: collision with root package name */
    public final i1[] f2261c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f2262d;

    public b0() {
        throw null;
    }

    public b0(ma.w0[] parameters, i1[] arguments, boolean z10) {
        kotlin.jvm.internal.h.f(parameters, "parameters");
        kotlin.jvm.internal.h.f(arguments, "arguments");
        this.f2260b = parameters;
        this.f2261c = arguments;
        this.f2262d = z10;
    }

    @Override // cc.l1
    public final boolean b() {
        return this.f2262d;
    }

    @Override // cc.l1
    public final i1 d(e0 e0Var) {
        ma.g gVarN = e0Var.M0().n();
        ma.w0 w0Var = gVarN instanceof ma.w0 ? (ma.w0) gVarN : null;
        if (w0Var == null) {
            return null;
        }
        int index = w0Var.getIndex();
        ma.w0[] w0VarArr = this.f2260b;
        if (index >= w0VarArr.length || !kotlin.jvm.internal.h.a(w0VarArr[index].i(), w0Var.i())) {
            return null;
        }
        return this.f2261c[index];
    }

    @Override // cc.l1
    public final boolean e() {
        return this.f2261c.length == 0;
    }
}
