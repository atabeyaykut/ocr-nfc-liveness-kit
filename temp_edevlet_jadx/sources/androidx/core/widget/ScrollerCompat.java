package androidx.core.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

@Deprecated
/* loaded from: classes.dex */
public final class ScrollerCompat {
    OverScroller mScroller;

    public ScrollerCompat(Context context, Interpolator interpolator) {
        this.mScroller = interpolator != null ? new OverScroller(context, interpolator) : new OverScroller(context);
    }

    @Deprecated
    public static ScrollerCompat create(Context context) {
        return create(context, null);
    }

    @Deprecated
    public static ScrollerCompat create(Context context, Interpolator interpolator) {
        return new ScrollerCompat(context, interpolator);
    }

    @Deprecated
    public void abortAnimation() {
        this.mScroller.abortAnimation();
    }

    @Deprecated
    public boolean computeScrollOffset() {
        return this.mScroller.computeScrollOffset();
    }

    @Deprecated
    public void fling(int r11, int r12, int r13, int r14, int r15, int r16, int r17, int r18) {
        this.mScroller.fling(r11, r12, r13, r14, r15, r16, r17, r18);
    }

    @Deprecated
    public void fling(int r13, int r14, int r15, int r16, int r17, int r18, int r19, int r20, int r21, int r22) {
        this.mScroller.fling(r13, r14, r15, r16, r17, r18, r19, r20, r21, r22);
    }

    @Deprecated
    public float getCurrVelocity() {
        return this.mScroller.getCurrVelocity();
    }

    @Deprecated
    public int getCurrX() {
        return this.mScroller.getCurrX();
    }

    @Deprecated
    public int getCurrY() {
        return this.mScroller.getCurrY();
    }

    @Deprecated
    public int getFinalX() {
        return this.mScroller.getFinalX();
    }

    @Deprecated
    public int getFinalY() {
        return this.mScroller.getFinalY();
    }

    @Deprecated
    public boolean isFinished() {
        return this.mScroller.isFinished();
    }

    @Deprecated
    public boolean isOverScrolled() {
        return this.mScroller.isOverScrolled();
    }

    @Deprecated
    public void notifyHorizontalEdgeReached(int r22, int r32, int r42) {
        this.mScroller.notifyHorizontalEdgeReached(r22, r32, r42);
    }

    @Deprecated
    public void notifyVerticalEdgeReached(int r22, int r32, int r42) {
        this.mScroller.notifyVerticalEdgeReached(r22, r32, r42);
    }

    @Deprecated
    public boolean springBack(int r82, int r92, int r10, int r11, int r12, int r13) {
        return this.mScroller.springBack(r82, r92, r10, r11, r12, r13);
    }

    @Deprecated
    public void startScroll(int r22, int r32, int r42, int r52) {
        this.mScroller.startScroll(r22, r32, r42, r52);
    }

    @Deprecated
    public void startScroll(int r72, int r82, int r92, int r10, int r11) {
        this.mScroller.startScroll(r72, r82, r92, r10, r11);
    }
}
