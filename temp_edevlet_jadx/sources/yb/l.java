package yb;

import cc.z0;
import dc.l;
import java.util.List;
import java.util.Set;
import oa.a;
import oa.c;
import oa.e;
import ua.b;
import yb.k;
import yb.m;
import yb.y;

/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final bc.l f19442a;

    /* renamed from: b, reason: collision with root package name */
    public final ma.b0 f19443b;

    /* renamed from: c, reason: collision with root package name */
    public final m f19444c;

    /* renamed from: d, reason: collision with root package name */
    public final i f19445d;

    /* renamed from: e, reason: collision with root package name */
    public final d<na.c, qb.g<?>> f19446e;
    public final ma.f0 f;

    /* renamed from: g, reason: collision with root package name */
    public final y f19447g;

    /* renamed from: h, reason: collision with root package name */
    public final u f19448h;

    /* renamed from: i, reason: collision with root package name */
    public final ua.b f19449i;

    /* renamed from: j, reason: collision with root package name */
    public final v f19450j;

    /* renamed from: k, reason: collision with root package name */
    public final Iterable<oa.b> f19451k;

    /* renamed from: l, reason: collision with root package name */
    public final ma.d0 f19452l;

    /* renamed from: m, reason: collision with root package name */
    public final k f19453m;

    /* renamed from: n, reason: collision with root package name */
    public final oa.a f19454n;

    /* renamed from: o, reason: collision with root package name */
    public final oa.c f19455o;

    /* renamed from: p, reason: collision with root package name */
    public final mb.f f19456p;

    /* renamed from: q, reason: collision with root package name */
    public final dc.l f19457q;

    /* renamed from: r, reason: collision with root package name */
    public final oa.e f19458r;

    /* renamed from: s, reason: collision with root package name */
    public final List<z0> f19459s;

    /* renamed from: t, reason: collision with root package name */
    public final j f19460t;

    public l(bc.l storageManager, ma.b0 moduleDescriptor, i iVar, d dVar, ma.f0 packageFragmentProvider, u uVar, v vVar, Iterable fictitiousClassDescriptorFactories, ma.d0 d0Var, oa.a aVar, oa.c cVar, mb.f extensionRegistryLite, dc.m mVar, ub.b bVar, List list, int r32) {
        dc.m kotlinTypeChecker;
        m.a aVar2 = m.a.f19462a;
        y.a aVar3 = y.a.f19491a;
        b.a aVar4 = b.a.f17907a;
        k.a.C0304a c0304a = k.a.f19431a;
        oa.a additionalClassPartsProvider = (r32 & 8192) != 0 ? a.C0210a.f11264a : aVar;
        oa.c platformDependentDeclarationFilter = (r32 & 16384) != 0 ? c.a.f11265a : cVar;
        if ((65536 & r32) != 0) {
            dc.l.f4844b.getClass();
            kotlinTypeChecker = l.a.f4846b;
        } else {
            kotlinTypeChecker = mVar;
        }
        e.a platformDependentTypeTransformer = (262144 & r32) != 0 ? e.a.f11268a : null;
        List typeAttributeTranslators = (r32 & 524288) != 0 ? b8.f.S(cc.p.f2341a) : list;
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
        kotlin.jvm.internal.h.f(moduleDescriptor, "moduleDescriptor");
        kotlin.jvm.internal.h.f(packageFragmentProvider, "packageFragmentProvider");
        kotlin.jvm.internal.h.f(fictitiousClassDescriptorFactories, "fictitiousClassDescriptorFactories");
        kotlin.jvm.internal.h.f(additionalClassPartsProvider, "additionalClassPartsProvider");
        kotlin.jvm.internal.h.f(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        kotlin.jvm.internal.h.f(extensionRegistryLite, "extensionRegistryLite");
        kotlin.jvm.internal.h.f(kotlinTypeChecker, "kotlinTypeChecker");
        kotlin.jvm.internal.h.f(platformDependentTypeTransformer, "platformDependentTypeTransformer");
        kotlin.jvm.internal.h.f(typeAttributeTranslators, "typeAttributeTranslators");
        this.f19442a = storageManager;
        this.f19443b = moduleDescriptor;
        this.f19444c = aVar2;
        this.f19445d = iVar;
        this.f19446e = dVar;
        this.f = packageFragmentProvider;
        this.f19447g = aVar3;
        this.f19448h = uVar;
        this.f19449i = aVar4;
        this.f19450j = vVar;
        this.f19451k = fictitiousClassDescriptorFactories;
        this.f19452l = d0Var;
        this.f19453m = c0304a;
        this.f19454n = additionalClassPartsProvider;
        this.f19455o = platformDependentDeclarationFilter;
        this.f19456p = extensionRegistryLite;
        this.f19457q = kotlinTypeChecker;
        this.f19458r = platformDependentTypeTransformer;
        this.f19459s = typeAttributeTranslators;
        this.f19460t = new j(this);
    }

    public final n a(ma.e0 descriptor, ib.c nameResolver, ib.g gVar, ib.h hVar, ib.a metadataVersion, ac.g gVar2) {
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        kotlin.jvm.internal.h.f(metadataVersion, "metadataVersion");
        return new n(this, nameResolver, descriptor, gVar, hVar, metadataVersion, gVar2, null, m9.v.f10173a);
    }

    public final ma.e b(lb.b classId) {
        kotlin.jvm.internal.h.f(classId, "classId");
        Set<lb.b> set = j.f19424c;
        return this.f19460t.a(classId, null);
    }
}
