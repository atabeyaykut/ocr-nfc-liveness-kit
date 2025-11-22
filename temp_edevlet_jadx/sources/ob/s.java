package ob;

import cc.b1;
import cc.e0;

/* loaded from: classes2.dex */
public final class s extends b1 {

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ t f11298i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(t tVar, dc.e eVar, dc.f fVar) {
        super(true, true, tVar, eVar, fVar);
        this.f11298i = tVar;
    }

    @Override // cc.b1
    public final boolean b(fc.h subType, fc.h superType) {
        kotlin.jvm.internal.h.f(subType, "subType");
        kotlin.jvm.internal.h.f(superType, "superType");
        if (!(subType instanceof e0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (superType instanceof e0) {
            return this.f11298i.f11303e.mo7invoke(subType, superType).booleanValue();
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
