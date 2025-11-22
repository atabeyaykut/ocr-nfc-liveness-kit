package dc;

import cc.b1;
import cc.m0;
import cc.p1;
import cc.t1;

/* loaded from: classes2.dex */
public final class c extends b1.b.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f4823a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p1 f4824b;

    public c(b bVar, p1 p1Var) {
        this.f4823a = bVar;
        this.f4824b = p1Var;
    }

    @Override // cc.b1.b
    public final fc.i a(b1 state, fc.h type) {
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(type, "type");
        b bVar = this.f4823a;
        m0 m0VarZ = bVar.Z(type);
        kotlin.jvm.internal.h.d(m0VarZ, "null cannot be cast to non-null type org.jetbrains.kotlin.types.KotlinType");
        m0 m0VarD = bVar.d(this.f4824b.i(m0VarZ, t1.INVARIANT));
        kotlin.jvm.internal.h.c(m0VarD);
        return m0VarD;
    }
}
