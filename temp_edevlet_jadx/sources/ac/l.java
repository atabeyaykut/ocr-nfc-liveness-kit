package ac;

import ma.b;
import ma.q0;
import ma.r0;
import ma.u;
import mb.p;
import pa.p0;
import pa.x;

/* loaded from: classes2.dex */
public final class l extends p0 implements b {
    public final gb.h H;
    public final ib.c I;
    public final ib.g K;
    public final ib.h L;
    public final g M;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(ma.j containingDeclaration, q0 q0Var, na.h annotations, lb.f fVar, b.a kind, gb.h proto, ib.c nameResolver, ib.g typeTable, ib.h versionRequirementTable, g gVar, r0 r0Var) {
        super(containingDeclaration, q0Var, annotations, fVar, kind, r0Var == null ? r0.f10243a : r0Var);
        kotlin.jvm.internal.h.f(containingDeclaration, "containingDeclaration");
        kotlin.jvm.internal.h.f(annotations, "annotations");
        kotlin.jvm.internal.h.f(kind, "kind");
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        kotlin.jvm.internal.h.f(versionRequirementTable, "versionRequirementTable");
        this.H = proto;
        this.I = nameResolver;
        this.K = typeTable;
        this.L = versionRequirementTable;
        this.M = gVar;
    }

    @Override // pa.p0, pa.x
    public final x K0(b.a kind, ma.j newOwner, u uVar, r0 r0Var, na.h annotations, lb.f fVar) {
        lb.f fVar2;
        kotlin.jvm.internal.h.f(newOwner, "newOwner");
        kotlin.jvm.internal.h.f(kind, "kind");
        kotlin.jvm.internal.h.f(annotations, "annotations");
        q0 q0Var = (q0) uVar;
        if (fVar == null) {
            lb.f name = getName();
            kotlin.jvm.internal.h.e(name, "name");
            fVar2 = name;
        } else {
            fVar2 = fVar;
        }
        l lVar = new l(newOwner, q0Var, annotations, fVar2, kind, this.H, this.I, this.K, this.L, this.M, r0Var);
        lVar.f13025z = this.f13025z;
        return lVar;
    }

    @Override // ac.h
    public final ib.g O() {
        return this.K;
    }

    @Override // ac.h
    public final ib.c U() {
        return this.I;
    }

    @Override // ac.h
    public final g X() {
        return this.M;
    }

    @Override // ac.h
    public final p z() {
        return this.H;
    }
}
