package s4;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class k0<K, V> extends p4.e1 {
    public k0() {
        super(1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        ((c) this).f14933b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(Object obj);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return ((c) this).f14933b.isEmpty();
    }

    @Override // p4.e1, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection<?> collection) {
        collection.getClass();
        try {
            return c5.w.P(this, collection);
        } catch (UnsupportedOperationException unused) {
            Iterator<?> it = collection.iterator();
            boolean zRemove = false;
            while (it.hasNext()) {
                zRemove |= ((c) this).remove(it.next());
            }
            return zRemove;
        }
    }

    @Override // p4.e1, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection<?> collection) {
        int r02;
        collection.getClass();
        try {
            return super.retainAll(collection);
        } catch (UnsupportedOperationException unused) {
            int size = collection.size();
            if (size >= 3) {
                r02 = size < 1073741824 ? (int) ((size / 0.75f) + 1.0f) : Integer.MAX_VALUE;
            } else {
                if (size < 0) {
                    throw new IllegalArgumentException(androidx.appcompat.widget.v.c(52, "expectedSize cannot be negative but was: ", size));
                }
                r02 = size + 1;
            }
            HashSet hashSet = new HashSet(r02);
            for (Object obj : collection) {
                if (contains(obj)) {
                    hashSet.add(((Map.Entry) obj).getKey());
                }
            }
            return ((c) this).f14933b.f14958d.j().retainAll(hashSet);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return ((c) this).f14933b.size();
    }
}
