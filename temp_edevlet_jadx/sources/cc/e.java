package cc;

/* loaded from: classes2.dex */
public final class e extends kotlin.jvm.internal.j implements x9.a<Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b1 f2286a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fc.n f2287b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ fc.i f2288c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ fc.i f2289d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(b1 b1Var, fc.n nVar, fc.i iVar, fc.i iVar2) {
        super(0);
        this.f2286a = b1Var;
        this.f2287b = nVar;
        this.f2288c = iVar;
        this.f2289d = iVar2;
    }

    @Override // x9.a
    public final Boolean invoke() {
        return Boolean.valueOf(g.h(this.f2286a, this.f2287b.B(this.f2288c), this.f2289d));
    }
}
