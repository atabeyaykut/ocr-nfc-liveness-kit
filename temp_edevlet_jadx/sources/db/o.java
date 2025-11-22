package db;

import cc.s1;

/* loaded from: classes2.dex */
public final class o extends kotlin.jvm.internal.j implements x9.l<s1, Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public static final o f4802a = new o();

    public o() {
        super(1);
    }

    @Override // x9.l
    public final Boolean invoke(s1 s1Var) {
        ma.g gVarN = s1Var.M0().n();
        if (gVarN == null) {
            return Boolean.FALSE;
        }
        lb.f name = gVarN.getName();
        lb.c cVar = la.c.f;
        return Boolean.valueOf(kotlin.jvm.internal.h.a(name, cVar.f()) && kotlin.jvm.internal.h.a(sb.b.c(gVarN), cVar));
    }
}
