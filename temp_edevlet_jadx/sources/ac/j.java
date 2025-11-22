package ac;

import gb.q;
import gb.s;
import gb.v;
import ib.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import m9.p;
import m9.t;
import m9.x;
import ma.e0;

/* loaded from: classes2.dex */
public final class j extends i {

    /* renamed from: g, reason: collision with root package name */
    public final e0 f232g;

    /* renamed from: h, reason: collision with root package name */
    public final String f233h;

    /* renamed from: i, reason: collision with root package name */
    public final lb.c f234i;

    public j(e0 packageDescriptor, gb.k kVar, ib.c nameResolver, ib.a metadataVersion, g gVar, yb.l lVar, String debugName, x9.a<? extends Collection<lb.f>> classNames) {
        kotlin.jvm.internal.h.f(packageDescriptor, "packageDescriptor");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        kotlin.jvm.internal.h.f(metadataVersion, "metadataVersion");
        kotlin.jvm.internal.h.f(debugName, "debugName");
        kotlin.jvm.internal.h.f(classNames, "classNames");
        s sVar = kVar.f6368g;
        kotlin.jvm.internal.h.e(sVar, "proto.typeTable");
        ib.g gVar2 = new ib.g(sVar);
        ib.h hVar = ib.h.f7354b;
        v vVar = kVar.f6369h;
        kotlin.jvm.internal.h.e(vVar, "proto.versionRequirementTable");
        yb.n nVarA = lVar.a(packageDescriptor, nameResolver, gVar2, h.a.a(vVar), metadataVersion, gVar);
        List<gb.h> list = kVar.f6366d;
        kotlin.jvm.internal.h.e(list, "proto.functionList");
        List<gb.m> list2 = kVar.f6367e;
        kotlin.jvm.internal.h.e(list2, "proto.propertyList");
        List<q> list3 = kVar.f;
        kotlin.jvm.internal.h.e(list3, "proto.typeAliasList");
        super(nVarA, list, list2, list3, classNames);
        this.f232g = packageDescriptor;
        this.f233h = debugName;
        this.f234i = packageDescriptor.d();
    }

    @Override // ac.i, vb.j, vb.l
    public final ma.g e(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        ta.a.b(this.f207b.f19464a.f19449i, cVar, this.f232g, name);
        return super.e(name, cVar);
    }

    @Override // vb.j, vb.l
    public final Collection f(vb.d kindFilter, x9.l nameFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        Collection collectionI = i(kindFilter, nameFilter);
        Iterable<oa.b> iterable = this.f207b.f19464a.f19451k;
        ArrayList arrayList = new ArrayList();
        Iterator<oa.b> it = iterable.iterator();
        while (it.hasNext()) {
            p.T0(it.next().b(this.f234i), arrayList);
        }
        return t.m1(arrayList, collectionI);
    }

    @Override // ac.i
    public final void h(ArrayList arrayList, x9.l nameFilter) {
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
    }

    @Override // ac.i
    public final lb.b l(lb.f name) {
        kotlin.jvm.internal.h.f(name, "name");
        return new lb.b(this.f234i, name);
    }

    @Override // ac.i
    public final Set<lb.f> n() {
        return x.f10175a;
    }

    @Override // ac.i
    public final Set<lb.f> o() {
        return x.f10175a;
    }

    @Override // ac.i
    public final Set<lb.f> p() {
        return x.f10175a;
    }

    @Override // ac.i
    public final boolean q(lb.f name) {
        boolean z10;
        kotlin.jvm.internal.h.f(name, "name");
        if (super.q(name)) {
            return true;
        }
        Iterable<oa.b> iterable = this.f207b.f19464a.f19451k;
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            z10 = false;
        } else {
            Iterator<oa.b> it = iterable.iterator();
            while (it.hasNext()) {
                if (it.next().c(this.f234i, name)) {
                    z10 = true;
                    break;
                }
            }
            z10 = false;
        }
        return z10;
    }

    public final String toString() {
        return this.f233h;
    }
}
