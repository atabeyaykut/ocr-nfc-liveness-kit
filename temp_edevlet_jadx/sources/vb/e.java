package vb;

import cc.e0;
import com.google.android.gms.internal.clearcut.d0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.w;
import m9.t;
import m9.v;
import ma.l0;
import ma.q0;
import ma.u;
import vb.l;

/* loaded from: classes2.dex */
public abstract class e extends j {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f18440d = {w.c(new r(w.a(e.class), "allDescriptors", "getAllDescriptors()Ljava/util/List;"))};

    /* renamed from: b, reason: collision with root package name */
    public final ma.e f18441b;

    /* renamed from: c, reason: collision with root package name */
    public final bc.i f18442c;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<List<? extends ma.j>> {
        public a() {
            super(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v4, types: [m9.v] */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Type inference failed for: r8v7, types: [java.util.ArrayList] */
        @Override // x9.a
        public final List<? extends ma.j> invoke() {
            Collection arrayList;
            e eVar = e.this;
            List<u> listH = eVar.h();
            List<u> list = listH;
            ArrayList arrayList2 = new ArrayList(3);
            Collection<e0> collectionL = eVar.f18441b.i().l();
            kotlin.jvm.internal.h.e(collectionL, "containingClass.typeConstructor.supertypes");
            ArrayList arrayList3 = new ArrayList();
            Iterator it = collectionL.iterator();
            while (it.hasNext()) {
                m9.p.T0(l.a.a(((e0) it.next()).o(), null, 3), arrayList3);
            }
            ArrayList arrayList4 = new ArrayList();
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                if (next instanceof ma.b) {
                    arrayList4.add(next);
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator it3 = arrayList4.iterator();
            while (it3.hasNext()) {
                Object next2 = it3.next();
                lb.f name = ((ma.b) next2).getName();
                Object arrayList5 = linkedHashMap.get(name);
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                    linkedHashMap.put(name, arrayList5);
                }
                ((List) arrayList5).add(next2);
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                lb.f fVar = (lb.f) entry.getKey();
                List list2 = (List) entry.getValue();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                for (Object obj : list2) {
                    Boolean boolValueOf = Boolean.valueOf(((ma.b) obj) instanceof u);
                    Object arrayList6 = linkedHashMap2.get(boolValueOf);
                    if (arrayList6 == null) {
                        arrayList6 = new ArrayList();
                        linkedHashMap2.put(boolValueOf, arrayList6);
                    }
                    ((List) arrayList6).add(obj);
                }
                for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                    boolean zBooleanValue = ((Boolean) entry2.getKey()).booleanValue();
                    List list3 = (List) entry2.getValue();
                    ob.n nVar = ob.n.f;
                    List list4 = list3;
                    if (zBooleanValue) {
                        arrayList = new ArrayList();
                        for (Object obj2 : listH) {
                            if (kotlin.jvm.internal.h.a(((u) obj2).getName(), fVar)) {
                                arrayList.add(obj2);
                            }
                        }
                    } else {
                        arrayList = v.f10173a;
                    }
                    nVar.h(fVar, list4, arrayList, eVar.f18441b, new f(arrayList2, eVar));
                }
            }
            return t.m1(d0.i(arrayList2), list);
        }
    }

    public e(bc.l storageManager, ma.e containingClass) {
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
        kotlin.jvm.internal.h.f(containingClass, "containingClass");
        this.f18441b = containingClass;
        this.f18442c = storageManager.d(new a());
    }

    @Override // vb.j, vb.i
    public final Collection a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        List list = (List) b8.f.O(this.f18442c, f18440d[0]);
        kc.c cVar2 = new kc.c();
        for (Object obj : list) {
            if ((obj instanceof l0) && kotlin.jvm.internal.h.a(((l0) obj).getName(), name)) {
                cVar2.add(obj);
            }
        }
        return cVar2;
    }

    @Override // vb.j, vb.i
    public final Collection c(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        List list = (List) b8.f.O(this.f18442c, f18440d[0]);
        kc.c cVar2 = new kc.c();
        for (Object obj : list) {
            if ((obj instanceof q0) && kotlin.jvm.internal.h.a(((q0) obj).getName(), name)) {
                cVar2.add(obj);
            }
        }
        return cVar2;
    }

    @Override // vb.j, vb.l
    public final Collection<ma.j> f(d kindFilter, x9.l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        if (!kindFilter.a(d.f18430n.f18437b)) {
            return v.f10173a;
        }
        return (List) b8.f.O(this.f18442c, f18440d[0]);
    }

    public abstract List<u> h();
}
