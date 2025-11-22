package androidx.collection;

/* loaded from: classes.dex */
public final class CircularIntArray {
    private int mCapacityBitmask;
    private int[] mElements;
    private int mHead;
    private int mTail;

    public CircularIntArray() {
        this(8);
    }

    public CircularIntArray(int r32) {
        if (r32 < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (r32 > 1073741824) {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
        r32 = Integer.bitCount(r32) != 1 ? Integer.highestOneBit(r32 - 1) << 1 : r32;
        this.mCapacityBitmask = r32 - 1;
        this.mElements = new int[r32];
    }

    private void doubleCapacity() {
        int[] r02 = this.mElements;
        int length = r02.length;
        int r22 = this.mHead;
        int r32 = length - r22;
        int r42 = length << 1;
        if (r42 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        int[] r52 = new int[r42];
        System.arraycopy(r02, r22, r52, 0, r32);
        System.arraycopy(this.mElements, 0, r52, r32, this.mHead);
        this.mElements = r52;
        this.mHead = 0;
        this.mTail = length;
        this.mCapacityBitmask = r42 - 1;
    }

    public void addFirst(int r32) {
        int r02 = (this.mHead - 1) & this.mCapacityBitmask;
        this.mHead = r02;
        this.mElements[r02] = r32;
        if (r02 == this.mTail) {
            doubleCapacity();
        }
    }

    public void addLast(int r32) {
        int[] r02 = this.mElements;
        int r12 = this.mTail;
        r02[r12] = r32;
        int r33 = this.mCapacityBitmask & (r12 + 1);
        this.mTail = r33;
        if (r33 == this.mHead) {
            doubleCapacity();
        }
    }

    public void clear() {
        this.mTail = this.mHead;
    }

    public int get(int r32) {
        if (r32 < 0 || r32 >= size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[this.mCapacityBitmask & (this.mHead + r32)];
    }

    public int getFirst() {
        int r02 = this.mHead;
        if (r02 != this.mTail) {
            return this.mElements[r02];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getLast() {
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

    public int popFirst() {
        int r02 = this.mHead;
        if (r02 == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int r12 = this.mElements[r02];
        this.mHead = (r02 + 1) & this.mCapacityBitmask;
        return r12;
    }

    public int popLast() {
        int r02 = this.mHead;
        int r12 = this.mTail;
        if (r02 == r12) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int r03 = this.mCapacityBitmask & (r12 - 1);
        int r13 = this.mElements[r03];
        this.mTail = r03;
        return r13;
    }

    public void removeFromEnd(int r22) {
        if (r22 <= 0) {
            return;
        }
        if (r22 > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        this.mTail = this.mCapacityBitmask & (this.mTail - r22);
    }

    public void removeFromStart(int r22) {
        if (r22 <= 0) {
            return;
        }
        if (r22 > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        this.mHead = this.mCapacityBitmask & (this.mHead + r22);
    }

    public int size() {
        return (this.mTail - this.mHead) & this.mCapacityBitmask;
    }
}
