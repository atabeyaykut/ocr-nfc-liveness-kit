package dc;

import cc.e0;
import dc.l;
import kotlin.jvm.internal.w;

/* loaded from: classes2.dex */
public final /* synthetic */ class t extends kotlin.jvm.internal.f implements x9.p<e0, e0, Boolean> {
    public t(r rVar) {
        super(2, rVar);
    }

    @Override // kotlin.jvm.internal.a, da.c
    public final String getName() {
        return "isStrictSupertype";
    }

    @Override // kotlin.jvm.internal.a
    public final da.f getOwner() {
        return w.a(r.class);
    }

    @Override // kotlin.jvm.internal.a
    public final String getSignature() {
        return "isStrictSupertype(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z";
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Boolean mo7invoke(e0 e0Var, e0 e0Var2) {
        e0 p02 = e0Var;
        e0 p12 = e0Var2;
        kotlin.jvm.internal.h.f(p02, "p0");
        kotlin.jvm.internal.h.f(p12, "p1");
        ((r) this.receiver).getClass();
        l.f4844b.getClass();
        m mVar = l.a.f4846b;
        return Boolean.valueOf(mVar.d(p02, p12) && !mVar.d(p12, p02));
    }
}
