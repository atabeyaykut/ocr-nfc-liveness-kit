package cc;

/* loaded from: classes2.dex */
public final class u extends l1 {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f2365d = 0;

    /* renamed from: b, reason: collision with root package name */
    public final l1 f2366b;

    /* renamed from: c, reason: collision with root package name */
    public final l1 f2367c;

    public u(l1 l1Var, l1 l1Var2) {
        this.f2366b = l1Var;
        this.f2367c = l1Var2;
    }

    @Override // cc.l1
    public final boolean a() {
        return this.f2366b.a() || this.f2367c.a();
    }

    @Override // cc.l1
    public final boolean b() {
        return this.f2366b.b() || this.f2367c.b();
    }

    @Override // cc.l1
    public final na.h c(na.h annotations) {
        kotlin.jvm.internal.h.f(annotations, "annotations");
        return this.f2367c.c(this.f2366b.c(annotations));
    }

    @Override // cc.l1
    public final i1 d(e0 e0Var) {
        i1 i1VarD = this.f2366b.d(e0Var);
        return i1VarD == null ? this.f2367c.d(e0Var) : i1VarD;
    }

    @Override // cc.l1
    public final e0 f(e0 topLevelType, t1 position) {
        kotlin.jvm.internal.h.f(topLevelType, "topLevelType");
        kotlin.jvm.internal.h.f(position, "position");
        return this.f2367c.f(this.f2366b.f(topLevelType, position), position);
    }
}
