package p4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class p extends a1 {

    /* renamed from: c, reason: collision with root package name */
    public final transient Map f12581c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ y f12582d;

    public p(y yVar, Map map) {
        this.f12582d = yVar;
        this.f12581c = map;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        y yVar = this.f12582d;
        Map map = yVar.f12772c;
        if (this.f12581c != map) {
            o oVar = new o(this);
            while (oVar.hasNext()) {
                oVar.next();
                oVar.remove();
            }
            return;
        }
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        map.clear();
        yVar.f12773d = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map map = this.f12581c;
        map.getClass();
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(@NullableDecl Object obj) {
        return this == obj || this.f12581c.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        Map map = this.f12581c;
        map.getClass();
        try {
            obj2 = map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return null;
        }
        c0 c0Var = (c0) this.f12582d;
        c0Var.getClass();
        List list = (List) collection;
        return list instanceof RandomAccess ? new s(c0Var, obj, list, null) : new x(c0Var, obj, list, null);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.f12581c.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        return this.f12582d.j();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Object remove(Object obj) {
        Collection collection = (Collection) this.f12581c.remove(obj);
        if (collection == null) {
            return null;
        }
        y yVar = this.f12582d;
        ((b0) yVar).getClass();
        ArrayList arrayList = new ArrayList(3);
        arrayList.addAll(collection);
        yVar.f12773d -= collection.size();
        collection.clear();
        return arrayList;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f12581c.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.f12581c.toString();
    }
}
