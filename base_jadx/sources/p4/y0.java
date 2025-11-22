package p4;

import java.util.Map;

/* loaded from: classes.dex */
public class y0<K, V> extends e1 {

    /* renamed from: b, reason: collision with root package name */
    public final Map<K, V> f12774b;

    public y0(Map<K, V> map) {
        super(0);
        map.getClass();
        this.f12774b = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f12774b.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f12774b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f12774b.size();
    }
}
