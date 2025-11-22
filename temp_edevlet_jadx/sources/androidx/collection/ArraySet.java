package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class ArraySet<E> implements Collection<E>, Set<E> {
    private static final int BASE_SIZE = 4;
    private static final int CACHE_SIZE = 10;
    private static final boolean DEBUG = false;
    private static final String TAG = "ArraySet";

    @Nullable
    private static Object[] sBaseCache;
    private static int sBaseCacheSize;

    @Nullable
    private static Object[] sTwiceBaseCache;
    private static int sTwiceBaseCacheSize;
    Object[] mArray;
    private int[] mHashes;
    int mSize;
    private static final Object sBaseCacheLock = new Object();
    private static final Object sTwiceBaseCacheLock = new Object();

    public class ElementIterator extends IndexBasedArrayIterator<E> {
        public ElementIterator() {
            super(ArraySet.this.mSize);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public E elementAt(int r22) {
            return (E) ArraySet.this.valueAt(r22);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public void removeAt(int r22) {
            ArraySet.this.removeAt(r22);
        }
    }

    public ArraySet() {
        this(0);
    }

    public ArraySet(int r12) {
        if (r12 == 0) {
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            allocArrays(r12);
        }
        this.mSize = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable ArraySet<E> arraySet) {
        this();
        if (arraySet != 0) {
            addAll((ArraySet) arraySet);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable Collection<E> collection) {
        this();
        if (collection != 0) {
            addAll(collection);
        }
    }

    public ArraySet(@Nullable E[] eArr) {
        this();
        if (eArr != null) {
            for (E e10 : eArr) {
                add(e10);
            }
        }
    }

    private void allocArrays(int r92) {
        if (r92 == 8) {
            synchronized (sTwiceBaseCacheLock) {
                Object[] objArr = sTwiceBaseCache;
                if (objArr != null) {
                    try {
                        this.mArray = objArr;
                        sTwiceBaseCache = (Object[]) objArr[0];
                        int[] r6 = (int[]) objArr[1];
                        this.mHashes = r6;
                        if (r6 != null) {
                            objArr[1] = null;
                            objArr[0] = null;
                            sTwiceBaseCacheSize--;
                            return;
                        }
                    } catch (ClassCastException unused) {
                    }
                    System.out.println("ArraySet Found corrupt ArraySet cache: [0]=" + objArr[0] + " [1]=" + objArr[1]);
                    sTwiceBaseCache = null;
                    sTwiceBaseCacheSize = 0;
                }
            }
        } else if (r92 == 4) {
            synchronized (sBaseCacheLock) {
                Object[] objArr2 = sBaseCache;
                if (objArr2 != null) {
                    try {
                        this.mArray = objArr2;
                        sBaseCache = (Object[]) objArr2[0];
                        int[] r62 = (int[]) objArr2[1];
                        this.mHashes = r62;
                        if (r62 != null) {
                            objArr2[1] = null;
                            objArr2[0] = null;
                            sBaseCacheSize--;
                            return;
                        }
                    } catch (ClassCastException unused2) {
                    }
                    System.out.println("ArraySet Found corrupt ArraySet cache: [0]=" + objArr2[0] + " [1]=" + objArr2[1]);
                    sBaseCache = null;
                    sBaseCacheSize = 0;
                }
            }
        }
        this.mHashes = new int[r92];
        this.mArray = new Object[r92];
    }

    private int binarySearch(int r32) {
        try {
            return ContainerHelpers.binarySearch(this.mHashes, this.mSize, r32);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    private static void freeArrays(int[] r72, Object[] objArr, int r92) {
        if (r72.length == 8) {
            synchronized (sTwiceBaseCacheLock) {
                if (sTwiceBaseCacheSize < 10) {
                    objArr[0] = sTwiceBaseCache;
                    objArr[1] = r72;
                    for (int r93 = r92 - 1; r93 >= 2; r93--) {
                        objArr[r93] = null;
                    }
                    sTwiceBaseCache = objArr;
                    sTwiceBaseCacheSize++;
                }
            }
            return;
        }
        if (r72.length == 4) {
            synchronized (sBaseCacheLock) {
                if (sBaseCacheSize < 10) {
                    objArr[0] = sBaseCache;
                    objArr[1] = r72;
                    for (int r94 = r92 - 1; r94 >= 2; r94--) {
                        objArr[r94] = null;
                    }
                    sBaseCache = objArr;
                    sBaseCacheSize++;
                }
            }
        }
    }

    private int indexOf(Object obj, int r6) {
        int r02 = this.mSize;
        if (r02 == 0) {
            return -1;
        }
        int r12 = binarySearch(r6);
        if (r12 < 0 || obj.equals(this.mArray[r12])) {
            return r12;
        }
        int r22 = r12 + 1;
        while (r22 < r02 && this.mHashes[r22] == r6) {
            if (obj.equals(this.mArray[r22])) {
                return r22;
            }
            r22++;
        }
        for (int r13 = r12 - 1; r13 >= 0 && this.mHashes[r13] == r6; r13--) {
            if (obj.equals(this.mArray[r13])) {
                return r13;
            }
        }
        return ~r22;
    }

    private int indexOfNull() {
        int r02 = this.mSize;
        if (r02 == 0) {
            return -1;
        }
        int r12 = binarySearch(0);
        if (r12 < 0 || this.mArray[r12] == null) {
            return r12;
        }
        int r22 = r12 + 1;
        while (r22 < r02 && this.mHashes[r22] == 0) {
            if (this.mArray[r22] == null) {
                return r22;
            }
            r22++;
        }
        for (int r13 = r12 - 1; r13 >= 0 && this.mHashes[r13] == 0; r13--) {
            if (this.mArray[r13] == null) {
                return r13;
            }
        }
        return ~r22;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(@Nullable E e10) {
        int r32;
        int r22;
        int r02 = this.mSize;
        if (e10 == null) {
            r22 = indexOfNull();
            r32 = 0;
        } else {
            int r23 = e10.hashCode();
            r32 = r23;
            r22 = indexOf(e10, r23);
        }
        if (r22 >= 0) {
            return false;
        }
        int r24 = ~r22;
        int[] r42 = this.mHashes;
        if (r02 >= r42.length) {
            int r52 = 8;
            if (r02 >= 8) {
                r52 = (r02 >> 1) + r02;
            } else if (r02 < 4) {
                r52 = 4;
            }
            Object[] objArr = this.mArray;
            allocArrays(r52);
            if (r02 != this.mSize) {
                throw new ConcurrentModificationException();
            }
            int[] r53 = this.mHashes;
            if (r53.length > 0) {
                System.arraycopy(r42, 0, r53, 0, r42.length);
                System.arraycopy(objArr, 0, this.mArray, 0, objArr.length);
            }
            freeArrays(r42, objArr, r02);
        }
        if (r24 < r02) {
            int[] r12 = this.mHashes;
            int r43 = r24 + 1;
            int r54 = r02 - r24;
            System.arraycopy(r12, r24, r12, r43, r54);
            Object[] objArr2 = this.mArray;
            System.arraycopy(objArr2, r24, objArr2, r43, r54);
        }
        int r13 = this.mSize;
        if (r02 == r13) {
            int[] r03 = this.mHashes;
            if (r24 < r03.length) {
                r03[r24] = r32;
                this.mArray[r24] = e10;
                this.mSize = r13 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    public void addAll(@NonNull ArraySet<? extends E> arraySet) {
        int r02 = arraySet.mSize;
        ensureCapacity(this.mSize + r02);
        if (this.mSize != 0) {
            for (int r22 = 0; r22 < r02; r22++) {
                add(arraySet.valueAt(r22));
            }
        } else if (r02 > 0) {
            System.arraycopy(arraySet.mHashes, 0, this.mHashes, 0, r02);
            System.arraycopy(arraySet.mArray, 0, this.mArray, 0, r02);
            if (this.mSize != 0) {
                throw new ConcurrentModificationException();
            }
            this.mSize = r02;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(@NonNull Collection<? extends E> collection) {
        ensureCapacity(collection.size() + this.mSize);
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int r02 = this.mSize;
        if (r02 != 0) {
            int[] r12 = this.mHashes;
            Object[] objArr = this.mArray;
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
            this.mSize = 0;
            freeArrays(r12, objArr, r02);
        }
        if (this.mSize != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(@Nullable Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public void ensureCapacity(int r6) {
        int r02 = this.mSize;
        int[] r12 = this.mHashes;
        if (r12.length < r6) {
            Object[] objArr = this.mArray;
            allocArrays(r6);
            int r62 = this.mSize;
            if (r62 > 0) {
                System.arraycopy(r12, 0, this.mHashes, 0, r62);
                System.arraycopy(objArr, 0, this.mArray, 0, this.mSize);
            }
            freeArrays(r12, objArr, this.mSize);
        }
        if (this.mSize != r02) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int r12 = 0; r12 < this.mSize; r12++) {
                try {
                    if (!set.contains(valueAt(r12))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] r02 = this.mHashes;
        int r12 = this.mSize;
        int r32 = 0;
        for (int r22 = 0; r22 < r12; r22++) {
            r32 += r02[r22];
        }
        return r32;
    }

    public int indexOf(@Nullable Object obj) {
        return obj == null ? indexOfNull() : indexOf(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.mSize <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    @NonNull
    public Iterator<E> iterator() {
        return new ElementIterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(@Nullable Object obj) {
        int r12 = indexOf(obj);
        if (r12 < 0) {
            return false;
        }
        removeAt(r12);
        return true;
    }

    public boolean removeAll(@NonNull ArraySet<? extends E> arraySet) {
        int r02 = arraySet.mSize;
        int r12 = this.mSize;
        for (int r32 = 0; r32 < r02; r32++) {
            remove(arraySet.valueAt(r32));
        }
        return r12 != this.mSize;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    public E removeAt(int r92) {
        int r02 = this.mSize;
        Object[] objArr = this.mArray;
        E e10 = (E) objArr[r92];
        if (r02 <= 1) {
            clear();
        } else {
            int r32 = r02 - 1;
            int[] r42 = this.mHashes;
            if (r42.length <= 8 || r02 >= r42.length / 3) {
                if (r92 < r32) {
                    int r12 = r92 + 1;
                    int r52 = r32 - r92;
                    System.arraycopy(r42, r12, r42, r92, r52);
                    Object[] objArr2 = this.mArray;
                    System.arraycopy(objArr2, r12, objArr2, r92, r52);
                }
                this.mArray[r32] = null;
            } else {
                allocArrays(r02 > 8 ? r02 + (r02 >> 1) : 8);
                if (r92 > 0) {
                    System.arraycopy(r42, 0, this.mHashes, 0, r92);
                    System.arraycopy(objArr, 0, this.mArray, 0, r92);
                }
                if (r92 < r32) {
                    int r53 = r92 + 1;
                    int r72 = r32 - r92;
                    System.arraycopy(r42, r53, this.mHashes, r92, r72);
                    System.arraycopy(objArr, r53, this.mArray, r92, r72);
                }
            }
            if (r02 != this.mSize) {
                throw new ConcurrentModificationException();
            }
            this.mSize = r32;
        }
        return e10;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(@NonNull Collection<?> collection) {
        boolean z10 = false;
        for (int r02 = this.mSize - 1; r02 >= 0; r02--) {
            if (!collection.contains(this.mArray[r02])) {
                removeAt(r02);
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.mSize;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public Object[] toArray() {
        int r02 = this.mSize;
        Object[] objArr = new Object[r02];
        System.arraycopy(this.mArray, 0, objArr, 0, r02);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public <T> T[] toArray(@NonNull T[] tArr) {
        if (tArr.length < this.mSize) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.mSize));
        }
        System.arraycopy(this.mArray, 0, tArr, 0, this.mSize);
        int length = tArr.length;
        int r12 = this.mSize;
        if (length > r12) {
            tArr[r12] = null;
        }
        return tArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.mSize * 14);
        sb2.append('{');
        for (int r12 = 0; r12 < this.mSize; r12++) {
            if (r12 > 0) {
                sb2.append(", ");
            }
            E eValueAt = valueAt(r12);
            if (eValueAt != this) {
                sb2.append(eValueAt);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public E valueAt(int r22) {
        return (E) this.mArray[r22];
    }
}
