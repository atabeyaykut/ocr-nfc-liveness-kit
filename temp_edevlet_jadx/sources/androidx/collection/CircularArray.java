package androidx.collection;

/* loaded from: classes.dex */
public final class CircularArray<E> {
    private int mCapacityBitmask;
    private E[] mElements;
    private int mHead;
    private int mTail;

    public CircularArray() {
        this(8);
    }

    public CircularArray(int r32) {
        if (r32 < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (r32 > 1073741824) {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
        r32 = Integer.bitCount(r32) != 1 ? Integer.highestOneBit(r32 - 1) << 1 : r32;
        this.mCapacityBitmask = r32 - 1;
        this.mElements = (E[]) new Object[r32];
    }

    private void doubleCapacity() {
        E[] eArr = this.mElements;
        int length = eArr.length;
        int r22 = this.mHead;
        int r32 = length - r22;
        int r42 = length << 1;
        if (r42 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        E[] eArr2 = (E[]) new Object[r42];
        System.arraycopy(eArr, r22, eArr2, 0, r32);
        System.arraycopy(this.mElements, 0, eArr2, r32, this.mHead);
        this.mElements = eArr2;
        this.mHead = 0;
        this.mTail = length;
        this.mCapacityBitmask = r42 - 1;
    }

    public void addFirst(E e10) {
        int r02 = (this.mHead - 1) & this.mCapacityBitmask;
        this.mHead = r02;
        this.mElements[r02] = e10;
        if (r02 == this.mTail) {
            doubleCapacity();
        }
    }

    public void addLast(E e10) {
        E[] eArr = this.mElements;
        int r12 = this.mTail;
        eArr[r12] = e10;
        int r32 = this.mCapacityBitmask & (r12 + 1);
        this.mTail = r32;
        if (r32 == this.mHead) {
            doubleCapacity();
        }
    }

    public void clear() {
        removeFromStart(size());
    }

    public E get(int r32) {
        if (r32 < 0 || r32 >= size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[this.mCapacityBitmask & (this.mHead + r32)];
    }

    public E getFirst() {
        int r02 = this.mHead;
        if (r02 != this.mTail) {
            return this.mElements[r02];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E getLast() {
        int r02 = this.mHead;
        int r12 = this.mTail;
        if (r02 != r12) {
            return this.mElements[(r12 - 1) & this.mCapacityBitmask];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public boolean isEmpty() {
        return this.mHead == this.mTail;
    }

    public E popFirst() {
        int r02 = this.mHead;
        if (r02 == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        E[] eArr = this.mElements;
        E e10 = eArr[r02];
        eArr[r02] = null;
        this.mHead = (r02 + 1) & this.mCapacityBitmask;
        return e10;
    }

    public E popLast() {
        int r02 = this.mHead;
        int r12 = this.mTail;
        if (r02 == r12) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int r03 = this.mCapacityBitmask & (r12 - 1);
        E[] eArr = this.mElements;
        E e10 = eArr[r03];
        eArr[r03] = null;
        this.mTail = r03;
        return e10;
    }

    public void removeFromEnd(int r52) {
        int r22;
        if (r52 <= 0) {
            return;
        }
        if (r52 > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int r02 = this.mTail;
        int r03 = r52 < r02 ? r02 - r52 : 0;
        int r12 = r03;
        while (true) {
            r22 = this.mTail;
            if (r12 >= r22) {
                break;
            }
            this.mElements[r12] = null;
            r12++;
        }
        int r04 = r22 - r03;
        int r53 = r52 - r04;
        this.mTail = r22 - r04;
        if (r53 > 0) {
            int length = this.mElements.length;
            this.mTail = length;
            int r05 = length - r53;
            for (int r54 = r05; r54 < this.mTail; r54++) {
                this.mElements[r54] = null;
            }
            this.mTail = r05;
        }
    }

    public void removeFromStart(int r52) {
        if (r52 <= 0) {
            return;
        }
        if (r52 > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int length = this.mElements.length;
        int r12 = this.mHead;
        if (r52 < length - r12) {
            length = r12 + r52;
        }
        while (r12 < length) {
            this.mElements[r12] = null;
            r12++;
        }
        int r13 = this.mHead;
        int r02 = length - r13;
        int r53 = r52 - r02;
        this.mHead = this.mCapacityBitmask & (r13 + r02);
        if (r53 > 0) {
            for (int r03 = 0; r03 < r53; r03++) {
                this.mElements[r03] = null;
            }
            this.mHead = r53;
        }
    }

    public int size() {
        return (this.mTail - this.mHead) & this.mCapacityBitmask;
    }
}
