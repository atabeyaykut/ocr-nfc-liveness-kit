package ga;

/* loaded from: classes2.dex */
public final class k extends kotlin.jvm.internal.j implements x9.a<ma.j0> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ma.b f6032a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6033b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(ma.b bVar, int r22) {
        super(0);
        this.f6032a = bVar;
        this.f6033b = r22;
    }

    @Override // x9.a
    public final ma.j0 invoke() {
        ma.a1 a1Var = this.f6032a.g().get(this.f6033b);
        kotlin.jvm.internal.h.e(a1Var, "descriptor.valueParameters[i]");
        return a1Var;
    }
}
