package eb;

/* loaded from: classes2.dex */
public final class l implements yb.i {

    /* renamed from: a, reason: collision with root package name */
    public final q f5217a;

    /* renamed from: b, reason: collision with root package name */
    public final k f5218b;

    public l(ra.f fVar, k kVar) {
        this.f5217a = fVar;
        this.f5218b = kVar;
    }

    @Override // yb.i
    public final yb.h a(lb.b classId) {
        kotlin.jvm.internal.h.f(classId, "classId");
        s sVarA = r.a(this.f5217a, classId);
        if (sVarA == null) {
            return null;
        }
        kotlin.jvm.internal.h.a(sVarA.c(), classId);
        return this.f5218b.f(sVarA);
    }
}
