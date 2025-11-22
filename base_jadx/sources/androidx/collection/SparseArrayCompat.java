package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private int[] mKeys;
    private int mSize;
    private Object[] mValues;

    public SparseArrayCompat() {
        this(10);
    }

    public SparseArrayCompat(int r22) {
        this.mGarbage = false;
        if (r22 == 0) {
            this.mKeys = ContainerHelpers.EMPTY_INTS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            int r23 = ContainerHelpers.idealIntArraySize(r22);
            this.mKeys = new int[r23];
            this.mValues = new Object[r23];
        }
    }

    private void gc() {
        int r02 = this.mSize;
        int[] r12 = this.mKeys;
        Object[] objArr = this.mValues;
        int r52 = 0;
        for (int r42 = 0; r42 < r02; r42++) {
            Object obj = objArr[r42];
            if (obj != DELETED) {
                if (r42 != r52) {
                    r12[r52] = r12[r42];
                    objArr[r52] = obj;
                    objArr[r42] = null;
                }
                r52++;
            }
        }
        this.mGarbage = false;
        this.mSize = r52;
    }

    public void append(int r72, E e10) {
        int r02 = this.mSize;
        if (r02 != 0 && r72 <= this.mKeys[r02 - 1]) {
            put(r72, e10);
            return;
        }
        if (this.mGarbage && r02 >= this.mKeys.length) {
            gc();
        }
        int r03 = this.mSize;
        if (r03 >= this.mKeys.length) {
            int r12 = ContainerHelpers.idealIntArraySize(r03 + 1);
            int[] r22 = new int[r12];
            Object[] objArr = new Object[r12];
            int[] r32 = this.mKeys;
            System.arraycopy(r32, 0, r22, 0, r32.length);
            Object[] objArr2 = this.mValues;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.mKeys = r22;
            this.mValues = objArr;
        }
        this.mKeys[r03] = r72;
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
    public SparseArrayCompat<E> m8clone() {
        try {
            SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) super.clone();
            sparseArrayCompat.mKeys = (int[]) this.mKeys.clone();
            sparseArrayCompat.mValues = (Object[]) this.mValues.clone();
            return sparseArrayCompat;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public boolean containsKey(int r12) {
        return indexOfKey(r12) >= 0;
    }

    public boolean containsValue(E e10) {
        return indexOfValue(e10) >= 0;
    }

    @Deprecated
    public void delete(int r12) {
        remove(r12);
    }

    @Nullable
    public E get(int r22) {
        return get(r22, null);
    }

    public E get(int r32, E e10) {
        E e11;
        int r33 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, r32);
        return (r33 < 0 || (e11 = (E) this.mValues[r33]) == DELETED) ? e10 : e11;
    }

    public int indexOfKey(int r32) {
        if (this.mGarbage) {
            gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, r32);
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

    public int keyAt(int r22) {
        if (this.mGarbage) {
            gc();
        }
        return this.mKeys[r22];
    }

    public void put(int r72, E e10) {
        int r02 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, r72);
        if (r02 >= 0) {
            this.mValues[r02] = e10;
            return;
        }
        int r03 = ~r02;
        int r12 = this.mSize;
        if (r03 < r12) {
            Object[] objArr = this.mValues;
            if (objArr[r03] == DELETED) {
                this.mKeys[r03] = r72;
                objArr[r03] = e10;
                return;
            }
        }
        if (this.mGarbage && r12 >= this.mKeys.length) {
            gc();
            r03 = ~ContainerHelpers.binarySearch(this.mKeys, this.mSize, r72);
        }
        int r13 = this.mSize;
        if (r13 >= this.mKeys.length) {
            int r14 = ContainerHelpers.idealIntArraySize(r13 + 1);
            int[] r22 = new int[r14];
            Object[] objArr2 = new Object[r14];
            int[] r32 = this.mKeys;
            System.arraycopy(r32, 0, r22, 0, r32.length);
            Object[] objArr3 = this.mValues;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.mKeys = r22;
            this.mValues = objArr2;
        }
        int r15 = this.mSize;
        if (r15 - r03 != 0) {
            int[] r23 = this.mKeys;
            int r33 = r03 + 1;
            System.arraycopy(r23, r03, r23, r33, r15 - r03);
            Object[] objArr4 = this.mValues;
            System.arraycopy(objArr4, r03, objArr4, r33, this.mSize - r03);
        }
        this.mKeys[r03] = r72;
        this.mValues[r03] = e10;
        this.mSize++;
    }

    public void putAll(@NonNull SparseArrayCompat<? extends E> sparseArrayCompat) {
        int size = sparseArrayCompat.size();
        for (int r12 = 0; r12 < size; r12++) {
            put(sparseArrayCompat.keyAt(r12), sparseArrayCompat.valueAt(r12));
        }
    }

    @Nullable
    public E putIfAbsent(int r22, E e10) {
        E e11 = get(r22);
        if (e11 == null) {
            put(r22, e10);
        }
        return e11;
    }

    public void remove(int r42) {
        int r43 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, r42);
        if (r43 >= 0) {
            Object[] objArr = this.mValues;
            Object obj = objArr[r43];
            Object obj2 = DELETED;
            if (obj != obj2) {
                objArr[r43] = obj2;
                this.mGarbage = true;
            }
        }
    }

    public boolean remove(int r22, Object obj) {
        int r23 = indexOfKey(r22);
        if (r23 < 0) {
            return false;
        }
        E eValueAt = valueAt(r23);
        if (obj != eValueAt && (obj == null || !obj.equals(eValueAt))) {
            return false;
        }
        removeAt(r23);
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

    public void removeAtRange(int r22, int r32) {
        int r33 = Math.min(this.mSize, r32 + r22);
        while (r22 < r33) {
            removeAt(r22);
            r22++;
        }
    }

    @Nullable
    public E replace(int r32, E e10) {
        int r33 = indexOfKey(r32);
        if (r33 < 0) {
            return null;
        }
        Object[] objArr = this.mValues;
        E e11 = (E) objArr[r33];
        objArr[r33] = e10;
        return e11;
    }

    public boolean replace(int r22, E e10, E e11) {
        int r23 = indexOfKey(r22);
        if (r23 < 0) {
            return false;
        }
        Object obj = this.mValues[r23];
        if (obj != e10 && (e10 == null || !e10.equals(obj))) {
            return false;
        }
        this.mValues[r23] = e11;
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
