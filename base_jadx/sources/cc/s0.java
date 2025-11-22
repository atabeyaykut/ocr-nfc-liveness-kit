package cc;

/* loaded from: classes2.dex */
public final class s0 extends j1 {

    /* renamed from: a, reason: collision with root package name */
    public final ma.w0 f2355a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f2356b;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<e0> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final e0 invoke() {
            return c5.u.p(s0.this.f2355a);
        }
    }

    public s0(ma.w0 typeParameter) {
        kotlin.jvm.internal.h.f(typeParameter, "typeParameter");
        this.f2355a = typeParameter;
        this.f2356b = c5.y.v(2, new a());
    }

    @Override // cc.i1
    public final i1 a(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // cc.i1
    public final t1 b() {
        return t1.OUT_VARIANCE;
    }

    @Override // cc.i1
    public final boolean c() {
        return true;
    }

    @Override // cc.i1
    public final e0 getType() {
        return (e0) this.f2356b.getValue();
    }
}
