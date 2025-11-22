package yb;

import java.util.List;

/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final l f19464a;

    /* renamed from: b, reason: collision with root package name */
    public final ib.c f19465b;

    /* renamed from: c, reason: collision with root package name */
    public final ma.j f19466c;

    /* renamed from: d, reason: collision with root package name */
    public final ib.g f19467d;

    /* renamed from: e, reason: collision with root package name */
    public final ib.h f19468e;
    public final ib.a f;

    /* renamed from: g, reason: collision with root package name */
    public final ac.g f19469g;

    /* renamed from: h, reason: collision with root package name */
    public final k0 f19470h;

    /* renamed from: i, reason: collision with root package name */
    public final z f19471i;

    public n(l components, ib.c nameResolver, ma.j containingDeclaration, ib.g typeTable, ib.h versionRequirementTable, ib.a metadataVersion, ac.g gVar, k0 k0Var, List<gb.r> list) {
        String strC;
        kotlin.jvm.internal.h.f(components, "components");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        kotlin.jvm.internal.h.f(containingDeclaration, "containingDeclaration");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        kotlin.jvm.internal.h.f(versionRequirementTable, "versionRequirementTable");
        kotlin.jvm.internal.h.f(metadataVersion, "metadataVersion");
        this.f19464a = components;
        this.f19465b = nameResolver;
        this.f19466c = containingDeclaration;
        this.f19467d = typeTable;
        this.f19468e = versionRequirementTable;
        this.f = metadataVersion;
        this.f19469g = gVar;
        this.f19470h = new k0(this, k0Var, list, "Deserializer for \"" + containingDeclaration.getName() + '\"', (gVar == null || (strC = gVar.c()) == null) ? "[container not found]" : strC);
        this.f19471i = new z(this);
    }

    public final n a(ma.j descriptor, List<gb.r> list, ib.c nameResolver, ib.g typeTable, ib.h versionRequirementTable, ib.a metadataVersion) {
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        kotlin.jvm.internal.h.f(versionRequirementTable, "versionRequirementTable");
        kotlin.jvm.internal.h.f(metadataVersion, "metadataVersion");
        return new n(this.f19464a, nameResolver, descriptor, typeTable, metadataVersion.f7320b == 1 && metadataVersion.f7321c >= 4 ? versionRequirementTable : this.f19468e, metadataVersion, this.f19469g, this.f19470h, list);
    }
}
