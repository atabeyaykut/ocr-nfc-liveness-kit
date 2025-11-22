package androidx.recyclerview.widget;

import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
class ViewBoundsCheck {
    static final int CVE_PVE_POS = 12;
    static final int CVE_PVS_POS = 8;
    static final int CVS_PVE_POS = 4;
    static final int CVS_PVS_POS = 0;
    static final int EQ = 2;
    static final int FLAG_CVE_EQ_PVE = 8192;
    static final int FLAG_CVE_EQ_PVS = 512;
    static final int FLAG_CVE_GT_PVE = 4096;
    static final int FLAG_CVE_GT_PVS = 256;
    static final int FLAG_CVE_LT_PVE = 16384;
    static final int FLAG_CVE_LT_PVS = 1024;
    static final int FLAG_CVS_EQ_PVE = 32;
    static final int FLAG_CVS_EQ_PVS = 2;
    static final int FLAG_CVS_GT_PVE = 16;
    static final int FLAG_CVS_GT_PVS = 1;
    static final int FLAG_CVS_LT_PVE = 64;
    static final int FLAG_CVS_LT_PVS = 4;
    static final int GT = 1;
    static final int LT = 4;
    static final int MASK = 7;
    BoundFlags mBoundFlags = new BoundFlags();
    final Callback mCallback;

    public static class BoundFlags {
        int mBoundFlags = 0;
        int mChildEnd;
        int mChildStart;
        int mRvEnd;
        int mRvStart;

        public void addFlags(int r22) {
            this.mBoundFlags = r22 | this.mBoundFlags;
        }

        public boolean boundsMatch() {
            int r02 = this.mBoundFlags;
            if ((r02 & 7) != 0 && (r02 & (compare(this.mChildStart, this.mRvStart) << 0)) == 0) {
                return false;
            }
            int r03 = this.mBoundFlags;
            if ((r03 & 112) != 0 && (r03 & (compare(this.mChildStart, this.mRvEnd) << 4)) == 0) {
                return false;
            }
            int r04 = this.mBoundFlags;
            if ((r04 & 1792) != 0 && (r04 & (compare(this.mChildEnd, this.mRvStart) << 8)) == 0) {
                return false;
            }
            int r05 = this.mBoundFlags;
            return (r05 & 28672) == 0 || (r05 & (compare(this.mChildEnd, this.mRvEnd) << 12)) != 0;
        }

        public int compare(int r12, int r22) {
            if (r12 > r22) {
                return 1;
            }
            return r12 == r22 ? 2 : 4;
        }

        public void resetFlags() {
            this.mBoundFlags = 0;
        }

        public void setBounds(int r12, int r22, int r32, int r42) {
            this.mRvStart = r12;
            this.mRvEnd = r22;
            this.mChildStart = r32;
            this.mChildEnd = r42;
        }
    }

    public interface Callback {
        View getChildAt(int r12);

        int getChildEnd(View view);

        int getChildStart(View view);

        int getParentEnd();

        int getParentStart();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ViewBounds {
    }

    public ViewBoundsCheck(Callback callback) {
        this.mCallback = callback;
    }

    public View findOneViewWithinBoundFlags(int r92, int r10, int r11, int r12) {
        int parentStart = this.mCallback.getParentStart();
        int parentEnd = this.mCallback.getParentEnd();
        int r22 = r10 > r92 ? 1 : -1;
        View view = null;
        while (r92 != r10) {
            View childAt = this.mCallback.getChildAt(r92);
            this.mBoundFlags.setBounds(parentStart, parentEnd, this.mCallback.getChildStart(childAt), this.mCallback.getChildEnd(childAt));
            if (r11 != 0) {
                this.mBoundFlags.resetFlags();
                this.mBoundFlags.addFlags(r11);
                if (this.mBoundFlags.boundsMatch()) {
                    return childAt;
                }
            }
            if (r12 != 0) {
                this.mBoundFlags.resetFlags();
                this.mBoundFlags.addFlags(r12);
                if (this.mBoundFlags.boundsMatch()) {
                    view = childAt;
                }
            }
            r92 += r22;
        }
        return view;
    }

    public boolean isViewWithinBoundFlags(View view, int r72) {
        this.mBoundFlags.setBounds(this.mCallback.getParentStart(), this.mCallback.getParentEnd(), this.mCallback.getChildStart(view), this.mCallback.getChildEnd(view));
        if (r72 == 0) {
            return false;
        }
        this.mBoundFlags.resetFlags();
        this.mBoundFlags.addFlags(r72);
        return this.mBoundFlags.boundsMatch();
    }
}
