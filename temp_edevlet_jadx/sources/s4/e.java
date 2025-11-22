package s4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class e extends n0 {

    /* renamed from: c, reason: collision with root package name */
    public final transient Map f14957c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ m f14958d;

    public e(m mVar, Map map) {
        this.f14958d = mVar;
        this.f14957c = map;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m mVar = this.f14958d;
        Map map = mVar.f15071c;
        if (this.f14957c != map) {
            d dVar = new d(this);
            while (dVar.hasNext()) {
                dVar.next();
                dVar.remove();
            }
            return;
        }
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        map.clear();
        mVar.f15072d = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map map = this.f14957c;
        map.getClass();
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(@NullableDecl Object obj) {
        return this == obj || this.f14957c.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        Map map = this.f14957c;
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
        q qVar = (q) this.f14958d;
        qVar.getClass();
        List list = (List) collection;
        return list instanceof RandomAccess ? new h(qVar, obj, list, null) : new l(qVar, obj, list, null);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.f14957c.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        return this.f14958d.j();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Object remove(Object obj) {
        Collection collection = (Collection) this.f14957c.remove(obj);
        if (collection == null) {
            return null;
        }
        m mVar = this.f14958d;
        ((p) mVar).getClass();
        ArrayList arrayList = new ArrayList(3);
        arrayList.addAll(collection);
        mVar.f15072d -= collection.size();
        collection.clear();
        return arrayList;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f14957c.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.f14957c.toString();
    }
}
