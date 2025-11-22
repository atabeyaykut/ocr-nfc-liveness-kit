package db;

/* loaded from: classes2.dex */
public final class c extends kotlin.jvm.internal.j implements x9.l<Object, Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a<Object> f4738a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(a<Object> aVar) {
        super(1);
        this.f4738a = aVar;
    }

    @Override // x9.l
    public final Boolean invoke(Object extractNullability) {
        boolean z10;
        kotlin.jvm.internal.h.f(extractNullability, "$this$extractNullability");
        v vVar = (v) this.f4738a;
        vVar.getClass();
        na.c cVar = (na.c) extractNullability;
        if ((cVar instanceof xa.g) && ((xa.g) cVar).e()) {
            z10 = true;
        } else {
            if (cVar instanceof za.d) {
                ((ya.c) vVar.f4816c.f12358a).f19351t.c();
                if (!((za.d) cVar).f19903h) {
                    if (vVar.f4817d == va.c.TYPE_PARAMETER_BOUNDS) {
                    }
                }
                z10 = true;
            }
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }
}
