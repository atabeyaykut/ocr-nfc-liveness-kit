package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class LongSparseArray<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private long[] mKeys;
    private int mSize;
    private Object[] mValues;

    public LongSparseArray() {
        this(10);
    }

    public LongSparseArray(int r22) {
        this.mGarbage = false;
        if (r22 == 0) {
            this.mKeys = ContainerHelpers.EMPTY_LONGS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            int r23 = ContainerHelpers.idealLongArraySize(r22);
            this.mKeys = new long[r23];
            this.mValues = new Object[r23];
        }
    }

    private void gc() {
        int r02 = this.mSize;
        long[] jArr = this.mKeys;
        Object[] objArr = this.mValues;
        int r52 = 0;
        for (int r42 = 0; r42 < r02; r42++) {
            Object obj = objArr[r42];
            if (obj != DELETED) {
                if (r42 != r52) {
                    jArr[r52] = jArr[r42];
                    objArr[r52] = obj;
                    objArr[r42] = null;
                }
                r52++;
            }
        }
        this.mGarbage = false;
        this.mSize = r52;
    }

    public void append(long j10, E e10) {
        int r02 = this.mSize;
        if (r02 != 0 && j10 <= this.mKeys[r02 - 1]) {
            put(j10, e10);
            return;
        }
        if (this.mGarbage && r02 >= this.mKeys.length) {
            gc();
        }
        int r03 = this.mSize;
        if (r03 >= this.mKeys.length) {
            int r12 = ContainerHelpers.idealLongArraySize(r03 + 1);
            long[] jArr = new long[r12];
            Object[] objArr = new Object[r12];
            long[] jArr2 = this.mKeys;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.mValues;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.mKeys = jArr;
            this.mValues = objArr;
        }
        this.mKeys[r03] = j10;
        this.mValues[r03] = e10;
        this.mSize = r03 + 1;
    }

    public void clear() {
        int r02 = this.mSize;
        Object[] objArr = this.mValues;
        for (int r32 = 0; r32 < r02; r32++) {
            objArr[r32] = null;
        }
        this.mSize = 0;
        this.mGarbage = false;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LongSparseArray<E> m6clone() {
        try {
            LongSparseArray<E> longSparseArray = (LongSparseArray) super.clone();
            longSparseArray.mKeys = (long[]) this.mKeys.clone();
            longSparseArray.mValues = (Object[]) this.mValues.clone();
            return longSparseArray;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public boolean containsKey(long j10) {
        return indexOfKey(j10) >= 0;
    }

    public boolean containsValue(E e10) {
        return indexOfValue(e10) >= 0;
    }

    @Deprecated
    public void delete(long j10) {
        remove(j10);
    }

    @Nullable
    public E get(long j10) {
        return get(j10, null);
    }

    public E get(long j10, E e10) {
        E e11;
        int r32 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j10);
        return (r32 < 0 || (e11 = (E) this.mValues[r32]) == DELETED) ? e10 : e11;
    }

    public int indexOfKey(long j10) {
        if (this.mGarbage) {
            gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, j10);
    }

    public int indexOfValue(E e10) {
        if (this.mGarbage) {
            gc();
        }
        for (int r02 = 0; r02 < this.mSize; r02++) {
            if (this.mValues[r02] == e10) {
                return r02;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public long keyAt(int r42) {
        if (this.mGarbage) {
            gc();
        }
        return this.mKeys[r42];
    }

    public void put(long j10, E e10) {
        int r02 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j10);
        if (r02 >= 0) {
            this.mValues[r02] = e10;
            return;
        }
        int r03 = ~r02;
        int r12 = this.mSize;
        if (r03 < r12) {
            Object[] objArr = this.mValues;
            if (objArr[r03] == DELETED) {
                this.mKeys[r03] = j10;
                objArr[r03] = e10;
                return;
            }
        }
        if (this.mGarbage && r12 >= this.mKeys.length) {
            gc();
            r03 = ~ContainerHelpers.binarySearch(this.mKeys, this.mSize, j10);
        }
        int r13 = this.mSize;
        if (r13 >= this.mKeys.length) {
            int r14 = ContainerHelpers.idealLongArraySize(r13 + 1);
            long[] jArr = new long[r14];
            Object[] objArr2 = new Object[r14];
            long[] jArr2 = this.mKeys;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.mValues;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.mKeys = jArr;
            this.mValues = objArr2;
        }
        int r15 = this.mSize;
        if (r15 - r03 != 0) {
            long[] jArr3 = this.mKeys;
            int r32 = r03 + 1;
            System.arraycopy(jArr3, r03, jArr3, r32, r15 - r03);
            Object[] objArr4 = this.mValues;
            System.arraycopy(objArr4, r03, objArr4, r32, this.mSize - r03);
        }
        this.mKeys[r03] = j10;
        this.mValues[r03] = e10;
        this.mSize++;
    }

    public void putAll(@NonNull LongSparseArray<? extends E> longSparseArray) {
        int size = longSparseArray.size();
        for (int r12 = 0; r12 < size; r12++) {
            put(longSparseArray.keyAt(r12), longSparseArray.valueAt(r12));
        }
    }

    @Nullable
    public E putIfAbsent(long j10, E e10) {
        E e11 = get(j10);
        if (e11 == null) {
            put(j10, e10);
        }
        return e11;
    }

    public void remove(long j10) {
        int r32 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j10);
        if (r32 >= 0) {
            Object[] objArr = this.mValues;
            Object obj = objArr[r32];
            Object obj2 = DELETED;
            if (obj != obj2) {
                objArr[r32] = obj2;
                this.mGarbage = true;
            }
        }
    }

    public boolean remove(long j10, Object obj) {
        int r12 = indexOfKey(j10);
        if (r12 < 0) {
            return false;
        }
        E eValueAt = valueAt(r12);
        if (obj != eValueAt && (obj == null || !obj.equals(eValueAt))) {
            return false;
        }
        removeAt(r12);
        return true;
    }

    public void removeAt(int r42) {
        Object[] objArr = this.mValues;
        Object obj = objArr[r42];
        Object obj2 = DELETED;
        if (obj != obj2) {
            objArr[r42] = obj2;
            this.mGarbage = true;
        }
    }

    @Nullable
    public E replace(long j10, E e10) {
        int r22 = indexOfKey(j10);
        if (r22 < 0) {
            return null;
        }
        Object[] objArr = this.mValues;
        E e11 = (E) objArr[r22];
        objArr[r22] = e10;
        return e11;
    }

    public boolean replace(long j10, E e10, E e11) {
        int r12 = indexOfKey(j10);
        if (r12 < 0) {
            return false;
        }
        Object obj = this.mValues[r12];
        if (obj != e10 && (e10 == null || !e10.equals(obj))) {
            return false;
        }
        this.mValues[r12] = e11;
        return true;
    }

    public void setValueAt(int r22, E e10) {
        if (this.mGarbage) {
            gc();
        }
        this.mValues[r22] = e10;
    }

    public int size() {
        if (this.mGarbage) {
            gc();
        }
        return this.mSize;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.mSize * 28);
        sb2.append('{');
        for (int r12 = 0; r12 < this.mSize; r12++) {
            if (r12 > 0) {
                sb2.append(", ");
            }
            sb2.append(keyAt(r12));
            sb2.append('=');
            E eValueAt = valueAt(r12);
            if (eValueAt != this) {
                sb2.append(eValueAt);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public E valueAt(int r22) {
        if (this.mGarbage) {
            gc();
        }
        return (E) this.mValues[r22];
    }
}
