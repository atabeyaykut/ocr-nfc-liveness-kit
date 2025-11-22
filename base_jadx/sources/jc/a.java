package jc;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kc.c;
import kotlin.jvm.internal.h;
import vb.i;

/* loaded from: classes2.dex */
public final class a {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Collection<T> a(Collection<? extends T> collection, Collection<? extends T> collection2) {
        h.f(collection2, "collection");
        if (collection2.isEmpty()) {
            return collection;
        }
        if (collection == 0) {
            return collection2;
        }
        if (collection instanceof LinkedHashSet) {
            ((LinkedHashSet) collection).addAll(collection2);
            return collection;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        linkedHashSet.addAll(collection2);
        return linkedHashSet;
    }

    public static final c b(ArrayList arrayList) {
        c cVar = new c();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            i iVar = (i) next;
            if ((iVar == null || iVar == i.b.f18453b) ? false : true) {
                cVar.add(next);
            }
        }
        return cVar;
    }
}
