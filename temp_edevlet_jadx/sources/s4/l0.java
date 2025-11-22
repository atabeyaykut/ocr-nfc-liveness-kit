package s4;

import java.util.Map;

/* loaded from: classes.dex */
public class l0<K, V> extends p4.e1 {

    /* renamed from: b, reason: collision with root package name */
    public final Map<K, V> f15057b;

    public l0(Map<K, V> map) {
        super(1);
        map.getClass();
        this.f15057b = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f15057b.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f15057b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f15057b.size();
    }
}
