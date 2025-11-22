package q1;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;

/* loaded from: classes.dex */
public final class b<K, V> extends ArrayMap<K, V> {

    /* renamed from: a, reason: collision with root package name */
    public int f13297a;

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final void clear() {
        this.f13297a = 0;
        super.clear();
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final int hashCode() {
        if (this.f13297a == 0) {
            this.f13297a = super.hashCode();
        }
        return this.f13297a;
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final V put(K k10, V v10) {
        this.f13297a = 0;
        return (V) super.put(k10, v10);
    }

    @Override // androidx.collection.SimpleArrayMap
    public final void putAll(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        this.f13297a = 0;
        super.putAll(simpleArrayMap);
    }

    @Override // androidx.collection.SimpleArrayMap
    public final V removeAt(int r22) {
        this.f13297a = 0;
        return (V) super.removeAt(r22);
    }

    @Override // androidx.collection.SimpleArrayMap
    public final V setValueAt(int r22, V v10) {
        this.f13297a = 0;
        return (V) super.setValueAt(r22, v10);
    }
}
