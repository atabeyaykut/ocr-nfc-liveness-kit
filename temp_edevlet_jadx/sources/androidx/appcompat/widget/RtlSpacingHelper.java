package androidx.appcompat.widget;

/* loaded from: classes.dex */
class RtlSpacingHelper {
    public static final int UNDEFINED = Integer.MIN_VALUE;
    private int mLeft = 0;
    private int mRight = 0;
    private int mStart = Integer.MIN_VALUE;
    private int mEnd = Integer.MIN_VALUE;
    private int mExplicitLeft = 0;
    private int mExplicitRight = 0;
    private boolean mIsRtl = false;
    private boolean mIsRelative = false;

    public int getEnd() {
        return this.mIsRtl ? this.mLeft : this.mRight;
    }

    public int getLeft() {
        return this.mLeft;
    }

    public int getRight() {
        return this.mRight;
    }

    public int getStart() {
        return this.mIsRtl ? this.mRight : this.mLeft;
    }

    public void setAbsolute(int r22, int r32) {
        this.mIsRelative = false;
        if (r22 != Integer.MIN_VALUE) {
            this.mExplicitLeft = r22;
            this.mLeft = r22;
        }
        if (r32 != Integer.MIN_VALUE) {
            this.mExplicitRight = r32;
            this.mRight = r32;
        }
    }

    public void setDirection(boolean z10) {
        int r22;
        if (z10 == this.mIsRtl) {
            return;
        }
        this.mIsRtl = z10;
        if (this.mIsRelative) {
            if (z10) {
                int r23 = this.mEnd;
                if (r23 == Integer.MIN_VALUE) {
                    r23 = this.mExplicitLeft;
                }
                this.mLeft = r23;
                r22 = this.mStart;
                if (r22 == Integer.MIN_VALUE) {
                }
            } else {
                int r24 = this.mStart;
                if (r24 == Integer.MIN_VALUE) {
                    r24 = this.mExplicitLeft;
                }
                this.mLeft = r24;
                r22 = this.mEnd;
                if (r22 == Integer.MIN_VALUE) {
                }
            }
            this.mRight = r22;
        }
        this.mLeft = this.mExplicitLeft;
        r22 = this.mExplicitRight;
        this.mRight = r22;
    }

    public void setRelative(int r32, int r42) {
        this.mStart = r32;
        this.mEnd = r42;
        this.mIsRelative = true;
        if (this.mIsRtl) {
            if (r42 != Integer.MIN_VALUE) {
                this.mLeft = r42;
            }
            if (r32 != Integer.MIN_VALUE) {
                this.mRight = r32;
                return;
            }
            return;
        }
        if (r32 != Integer.MIN_VALUE) {
            this.mLeft = r32;
        }
        if (r42 != Integer.MIN_VALUE) {
            this.mRight = r42;
        }
    }
}
