package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.v;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;

/* loaded from: classes.dex */
public class SortedList<T> {
    private static final int CAPACITY_GROWTH = 10;
    private static final int DELETION = 2;
    private static final int INSERTION = 1;
    public static final int INVALID_POSITION = -1;
    private static final int LOOKUP = 4;
    private static final int MIN_CAPACITY = 10;
    private BatchedCallback mBatchedCallback;
    private Callback mCallback;
    T[] mData;
    private int mNewDataStart;
    private T[] mOldData;
    private int mOldDataSize;
    private int mOldDataStart;
    private int mSize;
    private final Class<T> mTClass;

    public static class BatchedCallback<T2> extends Callback<T2> {
        private final BatchingListUpdateCallback mBatchingListUpdateCallback;
        final Callback<T2> mWrappedCallback;

        @SuppressLint({"UnknownNullness"})
        public BatchedCallback(Callback<T2> callback) {
            this.mWrappedCallback = callback;
            this.mBatchingListUpdateCallback = new BatchingListUpdateCallback(callback);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public boolean areContentsTheSame(T2 t22, T2 t23) {
            return this.mWrappedCallback.areContentsTheSame(t22, t23);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public boolean areItemsTheSame(T2 t22, T2 t23) {
            return this.mWrappedCallback.areItemsTheSame(t22, t23);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, java.util.Comparator
        public int compare(T2 t22, T2 t23) {
            return this.mWrappedCallback.compare(t22, t23);
        }

        public void dispatchLastEvent() {
            this.mBatchingListUpdateCallback.dispatchLastEvent();
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        @Nullable
        public Object getChangePayload(T2 t22, T2 t23) {
            return this.mWrappedCallback.getChangePayload(t22, t23);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public void onChanged(int r32, int r42) {
            this.mBatchingListUpdateCallback.onChanged(r32, r42, null);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, androidx.recyclerview.widget.ListUpdateCallback
        @SuppressLint({"UnknownNullness"})
        public void onChanged(int r22, int r32, Object obj) {
            this.mBatchingListUpdateCallback.onChanged(r22, r32, obj);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onInserted(int r22, int r32) {
            this.mBatchingListUpdateCallback.onInserted(r22, r32);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onMoved(int r22, int r32) {
            this.mBatchingListUpdateCallback.onMoved(r22, r32);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onRemoved(int r22, int r32) {
            this.mBatchingListUpdateCallback.onRemoved(r22, r32);
        }
    }

    public static abstract class Callback<T2> implements Comparator<T2>, ListUpdateCallback {
        public abstract boolean areContentsTheSame(T2 t22, T2 t23);

        public abstract boolean areItemsTheSame(T2 t22, T2 t23);

        @Override // java.util.Comparator
        public abstract int compare(T2 t22, T2 t23);

        @Nullable
        public Object getChangePayload(T2 t22, T2 t23) {
            return null;
        }

        public abstract void onChanged(int r12, int r22);

        @SuppressLint({"UnknownNullness"})
        public void onChanged(int r12, int r22, Object obj) {
            onChanged(r12, r22);
        }
    }

    public SortedList(@NonNull Class<T> cls, @NonNull Callback<T> callback) {
        this(cls, callback, 10);
    }

    public SortedList(@NonNull Class<T> cls, @NonNull Callback<T> callback, int r32) {
        this.mTClass = cls;
        this.mData = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, r32));
        this.mCallback = callback;
        this.mSize = 0;
    }

    private int add(T t10, boolean z10) {
        int r02 = findIndexOf(t10, this.mData, 0, this.mSize, 1);
        if (r02 == -1) {
            r02 = 0;
        } else if (r02 < this.mSize) {
            T t11 = this.mData[r02];
            if (this.mCallback.areItemsTheSame(t11, t10)) {
                if (this.mCallback.areContentsTheSame(t11, t10)) {
                    this.mData[r02] = t10;
                    return r02;
                }
                this.mData[r02] = t10;
                Callback callback = this.mCallback;
                callback.onChanged(r02, 1, callback.getChangePayload(t11, t10));
                return r02;
            }
        }
        addToData(r02, t10);
        if (z10) {
            this.mCallback.onInserted(r02, 1);
        }
        return r02;
    }

    private void addAllInternal(T[] tArr) {
        if (tArr.length < 1) {
            return;
        }
        int r02 = sortAndDedup(tArr);
        if (this.mSize != 0) {
            merge(tArr, r02);
            return;
        }
        this.mData = tArr;
        this.mSize = r02;
        this.mCallback.onInserted(0, r02);
    }

    private void addToData(int r42, T t10) {
        int r02 = this.mSize;
        if (r42 > r02) {
            StringBuilder sbE = v.e("cannot add item to ", r42, " because size is ");
            sbE.append(this.mSize);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
        T[] tArr = this.mData;
        if (r02 == tArr.length) {
            T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, tArr.length + 10));
            System.arraycopy(this.mData, 0, tArr2, 0, r42);
            tArr2[r42] = t10;
            System.arraycopy(this.mData, r42, tArr2, r42 + 1, this.mSize - r42);
            this.mData = tArr2;
        } else {
            System.arraycopy(tArr, r42, tArr, r42 + 1, r02 - r42);
            this.mData[r42] = t10;
        }
        this.mSize++;
    }

    private T[] copyArray(T[] tArr) {
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, tArr.length));
        System.arraycopy(tArr, 0, tArr2, 0, tArr.length);
        return tArr2;
    }

    private int findIndexOf(T t10, T[] tArr, int r82, int r92, int r10) {
        while (r82 < r92) {
            int r22 = (r82 + r92) / 2;
            T t11 = tArr[r22];
            int r42 = this.mCallback.compare(t11, t10);
            if (r42 < 0) {
                r82 = r22 + 1;
            } else {
                if (r42 == 0) {
                    if (this.mCallback.areItemsTheSame(t11, t10)) {
                        return r22;
                    }
                    int r6 = linearEqualitySearch(t10, r22, r82, r92);
                    return (r10 == 1 && r6 == -1) ? r22 : r6;
                }
                r92 = r22;
            }
        }
        if (r10 == 1) {
            return r82;
        }
        return -1;
    }

    private int findSameItem(T t10, T[] tArr, int r52, int r6) {
        while (r52 < r6) {
            if (this.mCallback.areItemsTheSame(tArr[r52], t10)) {
                return r52;
            }
            r52++;
        }
        return -1;
    }

    private int linearEqualitySearch(T t10, int r52, int r6, int r72) {
        T t11;
        for (int r02 = r52 - 1; r02 >= r6; r02--) {
            T t12 = this.mData[r02];
            if (this.mCallback.compare(t12, t10) != 0) {
                break;
            }
            if (this.mCallback.areItemsTheSame(t12, t10)) {
                return r02;
            }
        }
        do {
            r52++;
            if (r52 >= r72) {
                return -1;
            }
            t11 = this.mData[r52];
            if (this.mCallback.compare(t11, t10) != 0) {
                return -1;
            }
        } while (!this.mCallback.areItemsTheSame(t11, t10));
        return r52;
    }

    private void merge(T[] tArr, int r10) {
        boolean z10 = !(this.mCallback instanceof BatchedCallback);
        if (z10) {
            beginBatchedUpdates();
        }
        this.mOldData = this.mData;
        int r22 = 0;
        this.mOldDataStart = 0;
        int r32 = this.mSize;
        this.mOldDataSize = r32;
        this.mData = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, r32 + r10 + 10));
        this.mNewDataStart = 0;
        while (true) {
            int r33 = this.mOldDataStart;
            int r42 = this.mOldDataSize;
            if (r33 >= r42 && r22 >= r10) {
                break;
            }
            if (r33 == r42) {
                int r102 = r10 - r22;
                System.arraycopy(tArr, r22, this.mData, this.mNewDataStart, r102);
                int r92 = this.mNewDataStart + r102;
                this.mNewDataStart = r92;
                this.mSize += r102;
                this.mCallback.onInserted(r92 - r102, r102);
                break;
            }
            if (r22 == r10) {
                int r43 = r42 - r33;
                System.arraycopy(this.mOldData, r33, this.mData, this.mNewDataStart, r43);
                this.mNewDataStart += r43;
                break;
            }
            T t10 = this.mOldData[r33];
            T t11 = tArr[r22];
            int r52 = this.mCallback.compare(t10, t11);
            if (r52 > 0) {
                T[] tArr2 = this.mData;
                int r53 = this.mNewDataStart;
                int r6 = r53 + 1;
                this.mNewDataStart = r6;
                tArr2[r53] = t11;
                this.mSize++;
                r22++;
                this.mCallback.onInserted(r6 - 1, 1);
            } else if (r52 == 0 && this.mCallback.areItemsTheSame(t10, t11)) {
                T[] tArr3 = this.mData;
                int r62 = this.mNewDataStart;
                this.mNewDataStart = r62 + 1;
                tArr3[r62] = t11;
                r22++;
                this.mOldDataStart++;
                if (!this.mCallback.areContentsTheSame(t10, t11)) {
                    Callback callback = this.mCallback;
                    callback.onChanged(this.mNewDataStart - 1, 1, callback.getChangePayload(t10, t11));
                }
            } else {
                T[] tArr4 = this.mData;
                int r54 = this.mNewDataStart;
                this.mNewDataStart = r54 + 1;
                tArr4[r54] = t10;
                this.mOldDataStart++;
            }
        }
        this.mOldData = null;
        if (z10) {
            endBatchedUpdates();
        }
    }

    private boolean remove(T t10, boolean z10) {
        int r72 = findIndexOf(t10, this.mData, 0, this.mSize, 2);
        if (r72 == -1) {
            return false;
        }
        removeItemAtIndex(r72, z10);
        return true;
    }

    private void removeItemAtIndex(int r52, boolean z10) {
        T[] tArr = this.mData;
        System.arraycopy(tArr, r52 + 1, tArr, r52, (this.mSize - r52) - 1);
        int r02 = this.mSize - 1;
        this.mSize = r02;
        this.mData[r02] = null;
        if (z10) {
            this.mCallback.onRemoved(r52, 1);
        }
    }

    private void replaceAllInsert(T t10) {
        T[] tArr = this.mData;
        int r12 = this.mNewDataStart;
        tArr[r12] = t10;
        int r13 = r12 + 1;
        this.mNewDataStart = r13;
        this.mSize++;
        this.mCallback.onInserted(r13 - 1, 1);
    }

    private void replaceAllInternal(@NonNull T[] tArr) {
        boolean z10 = !(this.mCallback instanceof BatchedCallback);
        if (z10) {
            beginBatchedUpdates();
        }
        this.mOldDataStart = 0;
        this.mOldDataSize = this.mSize;
        this.mOldData = this.mData;
        this.mNewDataStart = 0;
        int r22 = sortAndDedup(tArr);
        this.mData = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, r22));
        while (true) {
            int r32 = this.mNewDataStart;
            if (r32 >= r22 && this.mOldDataStart >= this.mOldDataSize) {
                break;
            }
            int r42 = this.mOldDataStart;
            int r52 = this.mOldDataSize;
            if (r42 >= r52) {
                int r23 = r22 - r32;
                System.arraycopy(tArr, r32, this.mData, r32, r23);
                this.mNewDataStart += r23;
                this.mSize += r23;
                this.mCallback.onInserted(r32, r23);
                break;
            }
            if (r32 >= r22) {
                int r53 = r52 - r42;
                this.mSize -= r53;
                this.mCallback.onRemoved(r32, r53);
                break;
            }
            T t10 = this.mOldData[r42];
            T t11 = tArr[r32];
            int r54 = this.mCallback.compare(t10, t11);
            if (r54 < 0) {
                replaceAllRemove();
            } else {
                if (r54 <= 0) {
                    if (this.mCallback.areItemsTheSame(t10, t11)) {
                        T[] tArr2 = this.mData;
                        int r6 = this.mNewDataStart;
                        tArr2[r6] = t11;
                        this.mOldDataStart++;
                        this.mNewDataStart = r6 + 1;
                        if (!this.mCallback.areContentsTheSame(t10, t11)) {
                            Callback callback = this.mCallback;
                            callback.onChanged(this.mNewDataStart - 1, 1, callback.getChangePayload(t10, t11));
                        }
                    } else {
                        replaceAllRemove();
                    }
                }
                replaceAllInsert(t11);
            }
        }
        this.mOldData = null;
        if (z10) {
            endBatchedUpdates();
        }
    }

    private void replaceAllRemove() {
        this.mSize--;
        this.mOldDataStart++;
        this.mCallback.onRemoved(this.mNewDataStart, 1);
    }

    private int sortAndDedup(@NonNull T[] tArr) {
        if (tArr.length == 0) {
            return 0;
        }
        Arrays.sort(tArr, this.mCallback);
        int r12 = 1;
        int r22 = 0;
        for (int r02 = 1; r02 < tArr.length; r02++) {
            T t10 = tArr[r02];
            if (this.mCallback.compare(tArr[r22], t10) == 0) {
                int r42 = findSameItem(t10, tArr, r22, r12);
                if (r42 != -1) {
                    tArr[r42] = t10;
                } else {
                    if (r12 != r02) {
                        tArr[r12] = t10;
                    }
                    r12++;
                }
            } else {
                if (r12 != r02) {
                    tArr[r12] = t10;
                }
                r22 = r12;
                r12++;
            }
        }
        return r12;
    }

    private void throwIfInMutationOperation() {
        if (this.mOldData != null) {
            throw new IllegalStateException("Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll.");
        }
    }

    public int add(T t10) {
        throwIfInMutationOperation();
        return add(t10, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addAll(@NonNull Collection<T> collection) {
        addAll(collection.toArray((Object[]) Array.newInstance((Class<?>) this.mTClass, collection.size())), true);
    }

    public void addAll(@NonNull T... tArr) {
        addAll(tArr, false);
    }

    public void addAll(@NonNull T[] tArr, boolean z10) {
        throwIfInMutationOperation();
        if (tArr.length == 0) {
            return;
        }
        if (z10) {
            addAllInternal(tArr);
        } else {
            addAllInternal(copyArray(tArr));
        }
    }

    public void beginBatchedUpdates() {
        throwIfInMutationOperation();
        Callback callback = this.mCallback;
        if (callback instanceof BatchedCallback) {
            return;
        }
        if (this.mBatchedCallback == null) {
            this.mBatchedCallback = new BatchedCallback(callback);
        }
        this.mCallback = this.mBatchedCallback;
    }

    public void clear() {
        throwIfInMutationOperation();
        int r02 = this.mSize;
        if (r02 == 0) {
            return;
        }
        Arrays.fill(this.mData, 0, r02, (Object) null);
        this.mSize = 0;
        this.mCallback.onRemoved(0, r02);
    }

    public void endBatchedUpdates() {
        throwIfInMutationOperation();
        Callback callback = this.mCallback;
        if (callback instanceof BatchedCallback) {
            ((BatchedCallback) callback).dispatchLastEvent();
        }
        Callback callback2 = this.mCallback;
        BatchedCallback batchedCallback = this.mBatchedCallback;
        if (callback2 == batchedCallback) {
            this.mCallback = batchedCallback.mWrappedCallback;
        }
    }

    public T get(int r42) throws IndexOutOfBoundsException {
        int r12;
        if (r42 < this.mSize && r42 >= 0) {
            T[] tArr = this.mOldData;
            return (tArr == null || r42 < (r12 = this.mNewDataStart)) ? this.mData[r42] : tArr[(r42 - r12) + this.mOldDataStart];
        }
        StringBuilder sbE = v.e("Asked to get item at ", r42, " but size is ");
        sbE.append(this.mSize);
        throw new IndexOutOfBoundsException(sbE.toString());
    }

    public int indexOf(T t10) {
        if (this.mOldData == null) {
            return findIndexOf(t10, this.mData, 0, this.mSize, 4);
        }
        int r02 = findIndexOf(t10, this.mData, 0, this.mNewDataStart, 4);
        if (r02 != -1) {
            return r02;
        }
        int r92 = findIndexOf(t10, this.mOldData, this.mOldDataStart, this.mOldDataSize, 4);
        if (r92 != -1) {
            return (r92 - this.mOldDataStart) + this.mNewDataStart;
        }
        return -1;
    }

    public void recalculatePositionOfItemAt(int r32) throws IndexOutOfBoundsException {
        throwIfInMutationOperation();
        T t10 = get(r32);
        removeItemAtIndex(r32, false);
        int r02 = add(t10, false);
        if (r32 != r02) {
            this.mCallback.onMoved(r32, r02);
        }
    }

    public boolean remove(T t10) {
        throwIfInMutationOperation();
        return remove(t10, true);
    }

    public T removeItemAt(int r32) throws IndexOutOfBoundsException {
        throwIfInMutationOperation();
        T t10 = get(r32);
        removeItemAtIndex(r32, true);
        return t10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void replaceAll(@NonNull Collection<T> collection) {
        replaceAll(collection.toArray((Object[]) Array.newInstance((Class<?>) this.mTClass, collection.size())), true);
    }

    public void replaceAll(@NonNull T... tArr) {
        replaceAll(tArr, false);
    }

    public void replaceAll(@NonNull T[] tArr, boolean z10) {
        throwIfInMutationOperation();
        if (z10) {
            replaceAllInternal(tArr);
        } else {
            replaceAllInternal(copyArray(tArr));
        }
    }

    public int size() {
        return this.mSize;
    }

    public void updateItemAt(int r6, T t10) throws IndexOutOfBoundsException {
        throwIfInMutationOperation();
        T t11 = get(r6);
        boolean z10 = t11 == t10 || !this.mCallback.areContentsTheSame(t11, t10);
        if (t11 != t10 && this.mCallback.compare(t11, t10) == 0) {
            this.mData[r6] = t10;
            if (z10) {
                Callback callback = this.mCallback;
                callback.onChanged(r6, 1, callback.getChangePayload(t11, t10));
                return;
            }
            return;
        }
        if (z10) {
            Callback callback2 = this.mCallback;
            callback2.onChanged(r6, 1, callback2.getChangePayload(t11, t10));
        }
        removeItemAtIndex(r6, false);
        int r72 = add(t10, false);
        if (r6 != r72) {
            this.mCallback.onMoved(r6, r72);
        }
    }
}
