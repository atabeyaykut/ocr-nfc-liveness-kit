package ob;

import a1.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes2.dex */
public final class u {

    /* JADX INFO: Add missing generic type declarations: [H] */
    public static final class a<H> extends kotlin.jvm.internal.j implements x9.l<H, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ kc.d<H> f11304a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(kc.d<H> dVar) {
            super(1);
            this.f11304a = dVar;
        }

        @Override // x9.l
        public final l9.m invoke(Object it) {
            kotlin.jvm.internal.h.e(it, "it");
            this.f11304a.add(it);
            return l9.m.f9594a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <H> Collection<H> a(Collection<? extends H> collection, x9.l<? super H, ? extends ma.a> descriptorByHandle) {
        kotlin.jvm.internal.h.f(collection, "<this>");
        kotlin.jvm.internal.h.f(descriptorByHandle, "descriptorByHandle");
        if (collection.size() <= 1) {
            return collection;
        }
        LinkedList linkedList = new LinkedList(collection);
        kc.d dVar = new kc.d();
        while (!linkedList.isEmpty()) {
            Object objA1 = m9.t.a1(linkedList);
            kc.d dVar2 = new kc.d();
            ArrayList arrayListG = n.g(objA1, linkedList, descriptorByHandle, new a(dVar2));
            if (arrayListG.size() == 1 && dVar2.isEmpty()) {
                Object objO1 = m9.t.o1(arrayListG);
                kotlin.jvm.internal.h.e(objO1, "overridableGroup.single()");
                dVar.add(objO1);
            } else {
                a.ThreadFactoryC0003a threadFactoryC0003a = (Object) n.s(arrayListG, descriptorByHandle);
                ma.a aVarInvoke = descriptorByHandle.invoke(threadFactoryC0003a);
                Iterator it = arrayListG.iterator();
                while (it.hasNext()) {
                    a1.a it2 = (Object) it.next();
                    kotlin.jvm.internal.h.e(it2, "it");
                    if (!n.k(aVarInvoke, descriptorByHandle.invoke(it2))) {
                        dVar2.add(it2);
                    }
                }
                if (!dVar2.isEmpty()) {
                    dVar.addAll(dVar2);
                }
                dVar.add(threadFactoryC0003a);
            }
        }
        return dVar;
    }
}
