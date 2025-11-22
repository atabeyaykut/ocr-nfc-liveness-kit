package ac;

import ma.a0;
import ma.b;
import ma.q;
import ma.r0;
import mb.p;
import pa.l0;

/* loaded from: classes2.dex */
public final class k extends l0 implements b {
    public final gb.m E;
    public final ib.c F;
    public final ib.g G;
    public final ib.h H;
    public final g I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(ma.j containingDeclaration, ma.l0 l0Var, na.h annotations, a0 modality, q visibility, boolean z10, lb.f name, b.a kind, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, gb.m proto, ib.c nameResolver, ib.g typeTable, ib.h versionRequirementTable, g gVar) {
        super(containingDeclaration, l0Var, annotations, modality, visibility, z10, name, kind, r0.f10243a, z11, z12, z15, false, z13, z14);
        kotlin.jvm.internal.h.f(containingDeclaration, "containingDeclaration");
        kotlin.jvm.internal.h.f(annotations, "annotations");
        kotlin.jvm.internal.h.f(modality, "modality");
        kotlin.jvm.internal.h.f(visibility, "visibility");
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(kind, "kind");
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        kotlin.jvm.internal.h.f(versionRequirementTable, "versionRequirementTable");
        this.E = proto;
        this.F = nameResolver;
        this.G = typeTable;
        this.H = versionRequirementTable;
        this.I = gVar;
    }

    @Override // pa.l0
    public final l0 M0(ma.j newOwner, a0 newModality, q newVisibility, ma.l0 l0Var, b.a kind, lb.f newName) {
        kotlin.jvm.internal.h.f(newOwner, "newOwner");
        kotlin.jvm.internal.h.f(newModality, "newModality");
        kotlin.jvm.internal.h.f(newVisibility, "newVisibility");
        kotlin.jvm.internal.h.f(kind, "kind");
        kotlin.jvm.internal.h.f(newName, "newName");
        return new k(newOwner, l0Var, getAnnotations(), newModality, newVisibility, this.f, newName, kind, this.f12940p, this.f12941q, isExternal(), this.f12945v, this.f12942r, this.E, this.F, this.G, this.H, this.I);
    }

    @Override // ac.h
    public final ib.g O() {
        return this.G;
    }

    @Override // ac.h
    public final ib.c U() {
        return this.F;
    }

    @Override // ac.h
    public final g X() {
        return this.I;
    }

    @Override // pa.l0, ma.z
    public final boolean isExternal() {
        return androidx.room.util.a.i(ib.b.D, this.E.f6394d, "IS_EXTERNAL_PROPERTY.get(proto.flags)");
    }

    @Override // ac.h
    public final p z() {
        return this.E;
    }
}
