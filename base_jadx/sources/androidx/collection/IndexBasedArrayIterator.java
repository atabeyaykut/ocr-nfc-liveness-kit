package androidx.collection;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
abstract class IndexBasedArrayIterator<T> implements Iterator<T> {
    private boolean mCanRemove;
    private int mIndex;
    private int mSize;

    public IndexBasedArrayIterator(int r12) {
        this.mSize = r12;
    }

    public abstract T elementAt(int r12);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.mIndex < this.mSize;
    }

    @Override // java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        T tElementAt = elementAt(this.mIndex);
        this.mIndex++;
        this.mCanRemove = true;
        return tElementAt;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.mCanRemove) {
            throw new IllegalStateException();
        }
        int r02 = this.mIndex - 1;
        this.mIndex = r02;
        removeAt(r02);
        this.mSize--;
        this.mCanRemove = false;
    }

    public abstract void removeAt(int r12);
}
