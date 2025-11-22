package ob;

/* loaded from: classes2.dex */
public final class e extends kotlin.jvm.internal.j implements x9.p<ma.j, ma.j, Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ma.a f11273a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ma.a f11274b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(ma.a aVar, ma.a aVar2) {
        super(2);
        this.f11273a = aVar;
        this.f11274b = aVar2;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Boolean mo7invoke(ma.j jVar, ma.j jVar2) {
        return Boolean.valueOf(kotlin.jvm.internal.h.a(jVar, this.f11273a) && kotlin.jvm.internal.h.a(jVar2, this.f11274b));
    }
}
