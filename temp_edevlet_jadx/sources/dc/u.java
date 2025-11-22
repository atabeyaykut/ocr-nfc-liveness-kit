package dc;

import cc.e0;
import kotlin.jvm.internal.w;

/* loaded from: classes2.dex */
public final /* synthetic */ class u extends kotlin.jvm.internal.f implements x9.p<e0, e0, Boolean> {
    public u(m mVar) {
        super(2, mVar);
    }

    @Override // kotlin.jvm.internal.a, da.c
    public final String getName() {
        return "equalTypes";
    }

    @Override // kotlin.jvm.internal.a
    public final da.f getOwner() {
        return w.a(m.class);
    }

    @Override // kotlin.jvm.internal.a
    public final String getSignature() {
        return "equalTypes(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z";
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Boolean mo7invoke(e0 e0Var, e0 e0Var2) {
        e0 p02 = e0Var;
        e0 p12 = e0Var2;
        kotlin.jvm.internal.h.f(p02, "p0");
        kotlin.jvm.internal.h.f(p12, "p1");
        return Boolean.valueOf(((m) this.receiver).c(p02, p12));
    }
}
