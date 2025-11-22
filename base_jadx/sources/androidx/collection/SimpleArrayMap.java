package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* loaded from: classes.dex */
public class SimpleArrayMap<K, V> {
    private static final int BASE_SIZE = 4;
    private static final int CACHE_SIZE = 10;
    private static final boolean CONCURRENT_MODIFICATION_EXCEPTIONS = true;
    private static final boolean DEBUG = false;
    private static final String TAG = "ArrayMap";

    @Nullable
    static Object[] mBaseCache;
    static int mBaseCacheSize;

    @Nullable
    static Object[] mTwiceBaseCache;
    static int mTwiceBaseCacheSize;
    Object[] mArray;
    int[] mHashes;
    int mSize;

    public SimpleArrayMap() {
        this.mHashes = ContainerHelpers.EMPTY_INTS;
        this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        this.mSize = 0;
    }

    public SimpleArrayMap(int r12) {
        if (r12 == 0) {
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            allocArrays(r12);
        }
        this.mSize = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleArrayMap(SimpleArrayMap<K, V> simpleArrayMap) {
        this();
        if (simpleArrayMap != 0) {
            putAll(simpleArrayMap);
        }
    }

    private void allocArrays(int r6) {
        if (r6 == 8) {
            synchronized (SimpleArrayMap.class) {
                Object[] objArr = mTwiceBaseCache;
                if (objArr != null) {
                    this.mArray = objArr;
                    mTwiceBaseCache = (Object[]) objArr[0];
                    this.mHashes = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    mTwiceBaseCacheSize--;
                    return;
                }
            }
        } else if (r6 == 4) {
            synchronized (SimpleArrayMap.class) {
                Object[] objArr2 = mBaseCache;
                if (objArr2 != null) {
                    this.mArray = objArr2;
                    mBaseCache = (Object[]) objArr2[0];
                    this.mHashes = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    mBaseCacheSize--;
                    return;
                }
            }
        }
        this.mHashes = new int[r6];
        this.mArray = new Object[r6 << 1];
    }

    private static int binarySearchHashes(int[] r02, int r12, int r22) {
        try {
            return ContainerHelpers.binarySearch(r02, r12, r22);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    private static void freeArrays(int[] r72, Object[] objArr, int r92) {
        if (r72.length == 8) {
            synchronized (SimpleArrayMap.class) {
                if (mTwiceBaseCacheSize < 10) {
                    objArr[0] = mTwiceBaseCache;
                    objArr[1] = r72;
                    for (int r73 = (r92 << 1) - 1; r73 >= 2; r73--) {
                        objArr[r73] = null;
                    }
                    mTwiceBaseCache = objArr;
                    mTwiceBaseCacheSize++;
                }
            }
            return;
        }
        if (r72.length == 4) {
            synchronized (SimpleArrayMap.class) {
                if (mBaseCacheSize < 10) {
                    objArr[0] = mBaseCache;
                    objArr[1] = r72;
                    for (int r74 = (r92 << 1) - 1; r74 >= 2; r74--) {
                        objArr[r74] = null;
                    }
                    mBaseCache = objArr;
                    mBaseCacheSize++;
                }
            }
        }
    }

    public void clear() {
        int r02 = this.mSize;
        if (r02 > 0) {
            int[] r12 = this.mHashes;
            Object[] objArr = this.mArray;
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
            this.mSize = 0;
            freeArrays(r12, objArr, r02);
        }
        if (this.mSize > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(@Nullable Object obj) {
        if (indexOfKey(obj) >= 0) {
            return CONCURRENT_MODIFICATION_EXCEPTIONS;
        }
        return false;
    }

    public boolean containsValue(Object obj) {
        if (indexOfValue(obj) >= 0) {
            return CONCURRENT_MODIFICATION_EXCEPTIONS;
        }
        return false;
    }

    public void ensureCapacity(int r6) {
        int r02 = this.mSize;
        int[] r12 = this.mHashes;
        if (r12.length < r6) {
            Object[] objArr = this.mArray;
            allocArrays(r6);
            if (this.mSize > 0) {
                System.arraycopy(r12, 0, this.mHashes, 0, r02);
                System.arraycopy(objArr, 0, this.mArray, 0, r02 << 1);
            }
            freeArrays(r12, objArr, r02);
        }
        if (this.mSize != r02) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return CONCURRENT_MODIFICATION_EXCEPTIONS;
        }
        if (obj instanceof SimpleArrayMap) {
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
            if (size() != simpleArrayMap.size()) {
                return false;
            }
            for (int r22 = 0; r22 < this.mSize; r22++) {
                K kKeyAt = keyAt(r22);
                V vValueAt = valueAt(r22);
                Object obj2 = simpleArrayMap.get(kKeyAt);
                if (vValueAt == null) {
                    if (obj2 != null || !simpleArrayMap.containsKey(kKeyAt)) {
                        return false;
                    }
                } else if (!vValueAt.equals(obj2)) {
                    return false;
                }
            }
            return CONCURRENT_MODIFICATION_EXCEPTIONS;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int r23 = 0; r23 < this.mSize; r23++) {
                K kKeyAt2 = keyAt(r23);
                V vValueAt2 = valueAt(r23);
                Object obj3 = map.get(kKeyAt2);
                if (vValueAt2 == null) {
                    if (obj3 != null || !map.containsKey(kKeyAt2)) {
                        return false;
                    }
                } else if (!vValueAt2.equals(obj3)) {
                    return false;
                }
            }
            return CONCURRENT_MODIFICATION_EXCEPTIONS;
        }
        return false;
    }

    @Nullable
    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v10) {
        int r12 = indexOfKey(obj);
        return r12 >= 0 ? (V) this.mArray[(r12 << 1) + 1] : v10;
    }

    public int hashCode() {
        int[] r02 = this.mHashes;
        Object[] objArr = this.mArray;
        int r22 = this.mSize;
        int r42 = 1;
        int r52 = 0;
        int r6 = 0;
        while (r52 < r22) {
            Object obj = objArr[r42];
            r6 += (obj == null ? 0 : obj.hashCode()) ^ r02[r52];
            r52++;
            r42 += 2;
        }
        return r6;
    }

    public int indexOf(Object obj, int r72) {
        int r02 = this.mSize;
        if (r02 == 0) {
            return -1;
        }
        int r12 = binarySearchHashes(this.mHashes, r02, r72);
        if (r12 < 0 || obj.equals(this.mArray[r12 << 1])) {
            return r12;
        }
        int r22 = r12 + 1;
        while (r22 < r02 && this.mHashes[r22] == r72) {
            if (obj.equals(this.mArray[r22 << 1])) {
                return r22;
            }
            r22++;
        }
        for (int r13 = r12 - 1; r13 >= 0 && this.mHashes[r13] == r72; r13--) {
            if (obj.equals(this.mArray[r13 << 1])) {
                return r13;
            }
        }
        return ~r22;
    }

    public int indexOfKey(@Nullable Object obj) {
        return obj == null ? indexOfNull() : indexOf(obj, obj.hashCode());
    }

    public int indexOfNull() {
        int r02 = this.mSize;
        if (r02 == 0) {
            return -1;
        }
        int r12 = binarySearchHashes(this.mHashes, r02, 0);
        if (r12 < 0 || this.mArray[r12 << 1] == null) {
            return r12;
        }
        int r22 = r12 + 1;
        while (r22 < r02 && this.mHashes[r22] == 0) {
            if (this.mArray[r22 << 1] == null) {
                return r22;
            }
            r22++;
        }
        for (int r13 = r12 - 1; r13 >= 0 && this.mHashes[r13] == 0; r13--) {
            if (this.mArray[r13 << 1] == null) {
                return r13;
            }
        }
        return ~r22;
    }

    int indexOfValue(Object obj) {
        int r02 = this.mSize * 2;
        Object[] objArr = this.mArray;
        if (obj == null) {
            for (int r6 = 1; r6 < r02; r6 += 2) {
                if (objArr[r6] == null) {
                    return r6 >> 1;
                }
            }
            return -1;
        }
        for (int r32 = 1; r32 < r02; r32 += 2) {
            if (obj.equals(objArr[r32])) {
                return r32 >> 1;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        if (this.mSize <= 0) {
            return CONCURRENT_MODIFICATION_EXCEPTIONS;
        }
        return false;
    }

    public K keyAt(int r22) {
        return (K) this.mArray[r22 << 1];
    }

    @Nullable
    public V put(K k10, V v10) {
        int r32;
        int r22;
        int r02 = this.mSize;
        if (k10 == null) {
            r22 = indexOfNull();
            r32 = 0;
        } else {
            int r23 = k10.hashCode();
            r32 = r23;
            r22 = indexOf(k10, r23);
        }
        if (r22 >= 0) {
            int r10 = (r22 << 1) + 1;
            Object[] objArr = this.mArray;
            V v11 = (V) objArr[r10];
            objArr[r10] = v10;
            return v11;
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
            Object[] objArr2 = this.mArray;
            allocArrays(r52);
            if (r02 != this.mSize) {
                throw new ConcurrentModificationException();
            }
            int[] r53 = this.mHashes;
            if (r53.length > 0) {
                System.arraycopy(r42, 0, r53, 0, r42.length);
                System.arraycopy(objArr2, 0, this.mArray, 0, objArr2.length);
            }
            freeArrays(r42, objArr2, r02);
        }
        if (r24 < r02) {
            int[] r12 = this.mHashes;
            int r43 = r24 + 1;
            System.arraycopy(r12, r24, r12, r43, r02 - r24);
            Object[] objArr3 = this.mArray;
            System.arraycopy(objArr3, r24 << 1, objArr3, r43 << 1, (this.mSize - r24) << 1);
        }
        int r13 = this.mSize;
        if (r02 == r13) {
            int[] r03 = this.mHashes;
            if (r24 < r03.length) {
                r03[r24] = r32;
                Object[] objArr4 = this.mArray;
                int r25 = r24 << 1;
                objArr4[r25] = k10;
                objArr4[r25 + 1] = v10;
                this.mSize = r13 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public void putAll(@NonNull SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        int r02 = simpleArrayMap.mSize;
        ensureCapacity(this.mSize + r02);
        if (this.mSize != 0) {
            for (int r22 = 0; r22 < r02; r22++) {
                put(simpleArrayMap.keyAt(r22), simpleArrayMap.valueAt(r22));
            }
        } else if (r02 > 0) {
            System.arraycopy(simpleArrayMap.mHashes, 0, this.mHashes, 0, r02);
            System.arraycopy(simpleArrayMap.mArray, 0, this.mArray, 0, r02 << 1);
            this.mSize = r02;
        }
    }

    @Nullable
    public V putIfAbsent(K k10, V v10) {
        V v11 = get(k10);
        return v11 == null ? put(k10, v10) : v11;
    }

    @Nullable
    public V remove(Object obj) {
        int r12 = indexOfKey(obj);
        if (r12 >= 0) {
            return removeAt(r12);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int r22 = indexOfKey(obj);
        if (r22 < 0) {
            return false;
        }
        V vValueAt = valueAt(r22);
        if (obj2 != vValueAt && (obj2 == null || !obj2.equals(vValueAt))) {
            return false;
        }
        removeAt(r22);
        return CONCURRENT_MODIFICATION_EXCEPTIONS;
    }

    public V removeAt(int r11) {
        Object[] objArr = this.mArray;
        int r12 = r11 << 1;
        V v10 = (V) objArr[r12 + 1];
        int r32 = this.mSize;
        if (r32 <= 1) {
            clear();
        } else {
            int r52 = r32 - 1;
            int[] r6 = this.mHashes;
            if (r6.length <= 8 || r32 >= r6.length / 3) {
                if (r11 < r52) {
                    int r02 = r11 + 1;
                    int r72 = r52 - r11;
                    System.arraycopy(r6, r02, r6, r11, r72);
                    Object[] objArr2 = this.mArray;
                    System.arraycopy(objArr2, r02 << 1, objArr2, r12, r72 << 1);
                }
                Object[] objArr3 = this.mArray;
                int r03 = r52 << 1;
                objArr3[r03] = null;
                objArr3[r03 + 1] = null;
            } else {
                allocArrays(r32 > 8 ? r32 + (r32 >> 1) : 8);
                if (r32 != this.mSize) {
                    throw new ConcurrentModificationException();
                }
                if (r11 > 0) {
                    System.arraycopy(r6, 0, this.mHashes, 0, r11);
                    System.arraycopy(objArr, 0, this.mArray, 0, r12);
                }
                if (r11 < r52) {
                    int r73 = r11 + 1;
                    int r92 = r52 - r11;
                    System.arraycopy(r6, r73, this.mHashes, r11, r92);
                    System.arraycopy(objArr, r73 << 1, this.mArray, r12, r92 << 1);
                }
            }
            if (r32 != this.mSize) {
                throw new ConcurrentModificationException();
            }
            this.mSize = r52;
        }
        return v10;
    }

    @Nullable
    public V replace(K k10, V v10) {
        int r12 = indexOfKey(k10);
        if (r12 >= 0) {
            return setValueAt(r12, v10);
        }
        return null;
    }

    public boolean replace(K k10, V v10, V v11) {
        int r22 = indexOfKey(k10);
        if (r22 < 0) {
            return false;
        }
        V vValueAt = valueAt(r22);
        if (vValueAt != v10 && (v10 == null || !v10.equals(vValueAt))) {
            return false;
        }
        setValueAt(r22, v11);
        return CONCURRENT_MODIFICATION_EXCEPTIONS;
    }

    public V setValueAt(int r32, V v10) {
        int r33 = (r32 << 1) + 1;
        Object[] objArr = this.mArray;
        V v11 = (V) objArr[r33];
        objArr[r33] = v10;
        return v11;
    }

    public int size() {
        return this.mSize;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.mSize * 28);
        sb2.append('{');
        for (int r12 = 0; r12 < this.mSize; r12++) {
            if (r12 > 0) {
                sb2.append(", ");
            }
            K kKeyAt = keyAt(r12);
            if (kKeyAt != this) {
                sb2.append(kKeyAt);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            V vValueAt = valueAt(r12);
            if (vValueAt != this) {
                sb2.append(vValueAt);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public V valueAt(int r22) {
        return (V) this.mArray[(r22 << 1) + 1];
    }
}
