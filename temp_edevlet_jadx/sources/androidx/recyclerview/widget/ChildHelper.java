package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class ChildHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "ChildrenHelper";
    final Callback mCallback;
    final Bucket mBucket = new Bucket();
    final List<View> mHiddenViews = new ArrayList();

    public static class Bucket {
        static final int BITS_PER_WORD = 64;
        static final long LAST_BIT = Long.MIN_VALUE;
        long mData = 0;
        Bucket mNext;

        private void ensureNext() {
            if (this.mNext == null) {
                this.mNext = new Bucket();
            }
        }

        public void clear(int r52) {
            if (r52 < 64) {
                this.mData &= ~(1 << r52);
                return;
            }
            Bucket bucket = this.mNext;
            if (bucket != null) {
                bucket.clear(r52 - 64);
            }
        }

        public int countOnesBefore(int r72) {
            long j10;
            Bucket bucket = this.mNext;
            if (bucket == null) {
                if (r72 >= 64) {
                    j10 = this.mData;
                }
                return Long.bitCount(j10);
            }
            if (r72 >= 64) {
                return Long.bitCount(this.mData) + bucket.countOnesBefore(r72 - 64);
            }
            j10 = this.mData & ((1 << r72) - 1);
            return Long.bitCount(j10);
        }

        public boolean get(int r52) {
            if (r52 < 64) {
                return (this.mData & (1 << r52)) != 0;
            }
            ensureNext();
            return this.mNext.get(r52 - 64);
        }

        public void insert(int r11, boolean z10) {
            if (r11 >= 64) {
                ensureNext();
                this.mNext.insert(r11 - 64, z10);
                return;
            }
            long j10 = this.mData;
            boolean z11 = (LAST_BIT & j10) != 0;
            long j11 = (1 << r11) - 1;
            this.mData = ((j10 & (~j11)) << 1) | (j10 & j11);
            if (z10) {
                set(r11);
            } else {
                clear(r11);
            }
            if (z11 || this.mNext != null) {
                ensureNext();
                this.mNext.insert(0, z11);
            }
        }

        public boolean remove(int r13) {
            if (r13 >= 64) {
                ensureNext();
                return this.mNext.remove(r13 - 64);
            }
            long j10 = 1 << r13;
            long j11 = this.mData;
            boolean z10 = (j11 & j10) != 0;
            long j12 = j11 & (~j10);
            this.mData = j12;
            long j13 = j10 - 1;
            this.mData = (j12 & j13) | Long.rotateRight((~j13) & j12, 1);
            Bucket bucket = this.mNext;
            if (bucket != null) {
                if (bucket.get(0)) {
                    set(63);
                }
                this.mNext.remove(0);
            }
            return z10;
        }

        public void reset() {
            this.mData = 0L;
            Bucket bucket = this.mNext;
            if (bucket != null) {
                bucket.reset();
            }
        }

        public void set(int r52) {
            if (r52 < 64) {
                this.mData |= 1 << r52;
            } else {
                ensureNext();
                this.mNext.set(r52 - 64);
            }
        }

        public String toString() {
            if (this.mNext == null) {
                return Long.toBinaryString(this.mData);
            }
            return this.mNext.toString() + "xx" + Long.toBinaryString(this.mData);
        }
    }

    public interface Callback {
        void addView(View view, int r22);

        void attachViewToParent(View view, int r22, ViewGroup.LayoutParams layoutParams);

        void detachViewFromParent(int r12);

        View getChildAt(int r12);

        int getChildCount();

        RecyclerView.ViewHolder getChildViewHolder(View view);

        int indexOfChild(View view);

        void onEnteredHiddenState(View view);

        void onLeftHiddenState(View view);

        void removeAllViews();

        void removeViewAt(int r12);
    }

    public ChildHelper(Callback callback) {
        this.mCallback = callback;
    }

    private int getOffset(int r52) {
        if (r52 < 0) {
            return -1;
        }
        int childCount = this.mCallback.getChildCount();
        int r22 = r52;
        while (r22 < childCount) {
            int r32 = r52 - (r22 - this.mBucket.countOnesBefore(r22));
            if (r32 == 0) {
                while (this.mBucket.get(r22)) {
                    r22++;
                }
                return r22;
            }
            r22 += r32;
        }
        return -1;
    }

    private void hideViewInternal(View view) {
        this.mHiddenViews.add(view);
        this.mCallback.onEnteredHiddenState(view);
    }

    private boolean unhideViewInternal(View view) {
        if (!this.mHiddenViews.remove(view)) {
            return false;
        }
        this.mCallback.onLeftHiddenState(view);
        return true;
    }

    public void addView(View view, int r32, boolean z10) {
        int childCount = r32 < 0 ? this.mCallback.getChildCount() : getOffset(r32);
        this.mBucket.insert(childCount, z10);
        if (z10) {
            hideViewInternal(view);
        }
        this.mCallback.addView(view, childCount);
    }

    public void addView(View view, boolean z10) {
        addView(view, -1, z10);
    }

    public void attachViewToParent(View view, int r32, ViewGroup.LayoutParams layoutParams, boolean z10) {
        int childCount = r32 < 0 ? this.mCallback.getChildCount() : getOffset(r32);
        this.mBucket.insert(childCount, z10);
        if (z10) {
            hideViewInternal(view);
        }
        this.mCallback.attachViewToParent(view, childCount, layoutParams);
    }

    public void detachViewFromParent(int r22) {
        int offset = getOffset(r22);
        this.mBucket.remove(offset);
        this.mCallback.detachViewFromParent(offset);
    }

    public View findHiddenNonRemovedView(int r6) {
        int size = this.mHiddenViews.size();
        for (int r12 = 0; r12 < size; r12++) {
            View view = this.mHiddenViews.get(r12);
            RecyclerView.ViewHolder childViewHolder = this.mCallback.getChildViewHolder(view);
            if (childViewHolder.getLayoutPosition() == r6 && !childViewHolder.isInvalid() && !childViewHolder.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    public View getChildAt(int r22) {
        return this.mCallback.getChildAt(getOffset(r22));
    }

    public int getChildCount() {
        return this.mCallback.getChildCount() - this.mHiddenViews.size();
    }

    public View getUnfilteredChildAt(int r22) {
        return this.mCallback.getChildAt(r22);
    }

    public int getUnfilteredChildCount() {
        return this.mCallback.getChildCount();
    }

    public void hide(View view) {
        int r02 = this.mCallback.indexOfChild(view);
        if (r02 >= 0) {
            this.mBucket.set(r02);
            hideViewInternal(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    public int indexOfChild(View view) {
        int r32 = this.mCallback.indexOfChild(view);
        if (r32 == -1 || this.mBucket.get(r32)) {
            return -1;
        }
        return r32 - this.mBucket.countOnesBefore(r32);
    }

    public boolean isHidden(View view) {
        return this.mHiddenViews.contains(view);
    }

    public void removeAllViewsUnfiltered() {
        this.mBucket.reset();
        for (int size = this.mHiddenViews.size() - 1; size >= 0; size--) {
            this.mCallback.onLeftHiddenState(this.mHiddenViews.get(size));
            this.mHiddenViews.remove(size);
        }
        this.mCallback.removeAllViews();
    }

    public void removeView(View view) {
        int r02 = this.mCallback.indexOfChild(view);
        if (r02 < 0) {
            return;
        }
        if (this.mBucket.remove(r02)) {
            unhideViewInternal(view);
        }
        this.mCallback.removeViewAt(r02);
    }

    public void removeViewAt(int r32) {
        int offset = getOffset(r32);
        View childAt = this.mCallback.getChildAt(offset);
        if (childAt == null) {
            return;
        }
        if (this.mBucket.remove(offset)) {
            unhideViewInternal(childAt);
        }
        this.mCallback.removeViewAt(offset);
    }

    public boolean removeViewIfHidden(View view) {
        int r02 = this.mCallback.indexOfChild(view);
        if (r02 == -1) {
            unhideViewInternal(view);
            return true;
        }
        if (!this.mBucket.get(r02)) {
            return false;
        }
        this.mBucket.remove(r02);
        unhideViewInternal(view);
        this.mCallback.removeViewAt(r02);
        return true;
    }

    public String toString() {
        return this.mBucket.toString() + ", hidden list:" + this.mHiddenViews.size();
    }

    public void unhide(View view) {
        int r02 = this.mCallback.indexOfChild(view);
        if (r02 < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (this.mBucket.get(r02)) {
            this.mBucket.clear(r02);
            unhideViewInternal(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }
}
