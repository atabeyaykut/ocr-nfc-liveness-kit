package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {

    @Nullable
    ArrayMap<K, V>.EntrySet mEntrySet;

    @Nullable
    ArrayMap<K, V>.KeySet mKeySet;

    @Nullable
    ArrayMap<K, V>.ValueCollection mValues;

    public final class EntrySet extends AbstractSet<Map.Entry<K, V>> {
        public EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new MapIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ArrayMap.this.mSize;
        }
    }

    public final class KeyIterator extends IndexBasedArrayIterator<K> {
        public KeyIterator() {
            super(ArrayMap.this.mSize);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public K elementAt(int r22) {
            return ArrayMap.this.keyAt(r22);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public void removeAt(int r22) {
            ArrayMap.this.removeAt(r22);
        }
    }

    public final class KeySet implements Set<K> {
        public KeySet() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            ArrayMap.this.clear();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return ArrayMap.this.containsKey(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return ArrayMap.this.containsAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return ArrayMap.equalsSetHelper(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int r22 = 0;
            for (int r02 = ArrayMap.this.mSize - 1; r02 >= 0; r02--) {
                K kKeyAt = ArrayMap.this.keyAt(r02);
                r22 += kKeyAt == null ? 0 : kKeyAt.hashCode();
            }
            return r22;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return ArrayMap.this.isEmpty();
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new KeyIterator();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int r22 = ArrayMap.this.indexOfKey(obj);
            if (r22 < 0) {
                return false;
            }
            ArrayMap.this.removeAt(r22);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return ArrayMap.this.removeAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return ArrayMap.this.retainAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return ArrayMap.this.mSize;
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            int r02 = ArrayMap.this.mSize;
            Object[] objArr = new Object[r02];
            for (int r22 = 0; r22 < r02; r22++) {
                objArr[r22] = ArrayMap.this.keyAt(r22);
            }
            return objArr;
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) ArrayMap.this.toArrayHelper(tArr, 0);
        }
    }

    public final class MapIterator implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {
        int mEnd;
        boolean mEntryValid;
        int mIndex = -1;

        public MapIterator() {
            this.mEnd = ArrayMap.this.mSize - 1;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!this.mEntryValid) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return ContainerHelpers.equal(entry.getKey(), ArrayMap.this.keyAt(this.mIndex)) && ContainerHelpers.equal(entry.getValue(), ArrayMap.this.valueAt(this.mIndex));
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.mEntryValid) {
                return ArrayMap.this.keyAt(this.mIndex);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.mEntryValid) {
                return ArrayMap.this.valueAt(this.mIndex);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.mIndex < this.mEnd;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.mEntryValid) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            K kKeyAt = ArrayMap.this.keyAt(this.mIndex);
            V vValueAt = ArrayMap.this.valueAt(this.mIndex);
            return (kKeyAt == null ? 0 : kKeyAt.hashCode()) ^ (vValueAt != null ? vValueAt.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.mIndex++;
            this.mEntryValid = true;
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.mEntryValid) {
                throw new IllegalStateException();
            }
            ArrayMap.this.removeAt(this.mIndex);
            this.mIndex--;
            this.mEnd--;
            this.mEntryValid = false;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            if (this.mEntryValid) {
                return ArrayMap.this.setValueAt(this.mIndex, v10);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    public final class ValueCollection implements Collection<V> {
        public ValueCollection() {
        }

        @Override // java.util.Collection
        public boolean add(V v10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            ArrayMap.this.clear();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return ArrayMap.this.indexOfValue(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return ArrayMap.this.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new ValueIterator();
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int r22 = ArrayMap.this.indexOfValue(obj);
            if (r22 < 0) {
                return false;
            }
            ArrayMap.this.removeAt(r22);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int r02 = ArrayMap.this.mSize;
            int r12 = 0;
            boolean z10 = false;
            while (r12 < r02) {
                if (collection.contains(ArrayMap.this.valueAt(r12))) {
                    ArrayMap.this.removeAt(r12);
                    r12--;
                    r02--;
                    z10 = true;
                }
                r12++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int r02 = ArrayMap.this.mSize;
            int r12 = 0;
            boolean z10 = false;
            while (r12 < r02) {
                if (!collection.contains(ArrayMap.this.valueAt(r12))) {
                    ArrayMap.this.removeAt(r12);
                    r12--;
                    r02--;
                    z10 = true;
                }
                r12++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public int size() {
            return ArrayMap.this.mSize;
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            int r02 = ArrayMap.this.mSize;
            Object[] objArr = new Object[r02];
            for (int r22 = 0; r22 < r02; r22++) {
                objArr[r22] = ArrayMap.this.valueAt(r22);
            }
            return objArr;
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) ArrayMap.this.toArrayHelper(tArr, 1);
        }
    }

    public final class ValueIterator extends IndexBasedArrayIterator<V> {
        public ValueIterator() {
            super(ArrayMap.this.mSize);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public V elementAt(int r22) {
            return ArrayMap.this.valueAt(r22);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public void removeAt(int r22) {
            ArrayMap.this.removeAt(r22);
        }
    }

    public ArrayMap() {
    }

    public ArrayMap(int r12) {
        super(r12);
    }

    public ArrayMap(SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }

    public static <T> boolean equalsSetHelper(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public boolean containsAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Map
    @NonNull
    public Set<Map.Entry<K, V>> entrySet() {
        ArrayMap<K, V>.EntrySet entrySet = this.mEntrySet;
        if (entrySet != null) {
            return entrySet;
        }
        ArrayMap<K, V>.EntrySet entrySet2 = new EntrySet();
        this.mEntrySet = entrySet2;
        return entrySet2;
    }

    @Override // java.util.Map
    @NonNull
    public Set<K> keySet() {
        ArrayMap<K, V>.KeySet keySet = this.mKeySet;
        if (keySet != null) {
            return keySet;
        }
        ArrayMap<K, V>.KeySet keySet2 = new KeySet();
        this.mKeySet = keySet2;
        return keySet2;
    }

    @Override // java.util.Map
    public void putAll(@NonNull Map<? extends K, ? extends V> map) {
        ensureCapacity(map.size() + this.mSize);
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean removeAll(@NonNull Collection<?> collection) {
        int r02 = this.mSize;
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
        return r02 != this.mSize;
    }

    public boolean retainAll(@NonNull Collection<?> collection) {
        int r02 = this.mSize;
        for (int r12 = r02 - 1; r12 >= 0; r12--) {
            if (!collection.contains(keyAt(r12))) {
                removeAt(r12);
            }
        }
        return r02 != this.mSize;
    }

    public <T> T[] toArrayHelper(T[] tArr, int r6) {
        int r02 = this.mSize;
        if (tArr.length < r02) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), r02));
        }
        for (int r12 = 0; r12 < r02; r12++) {
            tArr[r12] = this.mArray[(r12 << 1) + r6];
        }
        if (tArr.length > r02) {
            tArr[r02] = null;
        }
        return tArr;
    }

    @Override // java.util.Map
    @NonNull
    public Collection<V> values() {
        ArrayMap<K, V>.ValueCollection valueCollection = this.mValues;
        if (valueCollection != null) {
            return valueCollection;
        }
        ArrayMap<K, V>.ValueCollection valueCollection2 = new ValueCollection();
        this.mValues = valueCollection2;
        return valueCollection2;
    }
}
