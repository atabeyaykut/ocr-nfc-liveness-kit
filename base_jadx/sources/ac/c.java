package ac;

import ma.b;
import ma.r0;
import ma.u;
import mb.p;
import pa.x;

/* loaded from: classes2.dex */
public final class c extends pa.l implements b {
    public final gb.c I;
    public final ib.c K;
    public final ib.g L;
    public final ib.h M;
    public final g N;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(ma.e containingDeclaration, ma.i iVar, na.h annotations, boolean z10, b.a kind, gb.c proto, ib.c nameResolver, ib.g typeTable, ib.h versionRequirementTable, g gVar, r0 r0Var) {
        super(containingDeclaration, iVar, annotations, z10, kind, r0Var == null ? r0.f10243a : r0Var);
        kotlin.jvm.internal.h.f(containingDeclaration, "containingDeclaration");
        kotlin.jvm.internal.h.f(annotations, "annotations");
        kotlin.jvm.internal.h.f(kind, "kind");
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        kotlin.jvm.internal.h.f(versionRequirementTable, "versionRequirementTable");
        this.I = proto;
        this.K = nameResolver;
        this.L = typeTable;
        this.M = versionRequirementTable;
        this.N = gVar;
    }

    @Override // pa.l, pa.x
    public final /* bridge */ /* synthetic */ x K0(b.a aVar, ma.j jVar, u uVar, r0 r0Var, na.h hVar, lb.f fVar) {
        return X0(aVar, jVar, uVar, r0Var, hVar);
    }

    @Override // pa.x, ma.u
    public final boolean L() {
        return false;
    }

    @Override // ac.h
    public final ib.g O() {
        return this.L;
    }

    @Override // pa.l
    /* renamed from: T0 */
    public final /* bridge */ /* synthetic */ pa.l K0(b.a aVar, ma.j jVar, u uVar, r0 r0Var, na.h hVar, lb.f fVar) {
        return X0(aVar, jVar, uVar, r0Var, hVar);
    }

    @Override // ac.h
    public final ib.c U() {
        return this.K;
    }

    @Override // ac.h
    public final g X() {
        return this.N;
    }

    public final c X0(b.a kind, ma.j newOwner, u uVar, r0 r0Var, na.h annotations) {
        kotlin.jvm.internal.h.f(newOwner, "newOwner");
        kotlin.jvm.internal.h.f(kind, "kind");
        kotlin.jvm.internal.h.f(annotations, "annotations");
        c cVar = new c((ma.e) newOwner, (ma.i) uVar, annotations, this.H, kind, this.I, this.K, this.L, this.M, this.N, r0Var);
        cVar.f13025z = this.f13025z;
        return cVar;
    }

    @Override // pa.x, ma.z
    public final boolean isExternal() {
        return false;
    }

    @Override // pa.x, ma.u
    public final boolean isInline() {
        return false;
    }

    @Override // pa.x, ma.u
    public final boolean isSuspend() {
        return false;
    }

    @Override // ac.h
    public final p z() {
        return this.I;
    }
}
