package androidx.customview.widget;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ViewDragHelper {
    private static final int BASE_SETTLE_DURATION = 256;
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    private static final int EDGE_SIZE = 20;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "ViewDragHelper";
    private static final Interpolator sInterpolator = new Interpolator() { // from class: androidx.customview.widget.ViewDragHelper.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f10 = f - 1.0f;
            return (f10 * f10 * f10 * f10 * f10) + 1.0f;
        }
    };
    private final Callback mCallback;
    private View mCapturedView;
    private final int mDefaultEdgeSize;
    private int mDragState;
    private int[] mEdgeDragsInProgress;
    private int[] mEdgeDragsLocked;
    private int mEdgeSize;
    private int[] mInitialEdgesTouched;
    private float[] mInitialMotionX;
    private float[] mInitialMotionY;
    private float[] mLastMotionX;
    private float[] mLastMotionY;
    private float mMaxVelocity;
    private float mMinVelocity;
    private final ViewGroup mParentView;
    private int mPointersDown;
    private boolean mReleaseInProgress;
    private OverScroller mScroller;
    private int mTouchSlop;
    private int mTrackingEdges;
    private VelocityTracker mVelocityTracker;
    private int mActivePointerId = -1;
    private final Runnable mSetIdleRunnable = new Runnable() { // from class: androidx.customview.widget.ViewDragHelper.2
        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper.this.setDragState(0);
        }
    };

    public static abstract class Callback {
        public int clampViewPositionHorizontal(@NonNull View view, int r22, int r32) {
            return 0;
        }

        public int clampViewPositionVertical(@NonNull View view, int r22, int r32) {
            return 0;
        }

        public int getOrderedChildIndex(int r12) {
            return r12;
        }

        public int getViewHorizontalDragRange(@NonNull View view) {
            return 0;
        }

        public int getViewVerticalDragRange(@NonNull View view) {
            return 0;
        }

        public void onEdgeDragStarted(int r12, int r22) {
        }

        public boolean onEdgeLock(int r12) {
            return false;
        }

        public void onEdgeTouched(int r12, int r22) {
        }

        public void onViewCaptured(@NonNull View view, int r22) {
        }

        public void onViewDragStateChanged(int r12) {
        }

        public void onViewPositionChanged(@NonNull View view, int r22, int r32, @Px int r42, @Px int r52) {
        }

        public void onViewReleased(@NonNull View view, float f, float f10) {
        }

        public abstract boolean tryCaptureView(@NonNull View view, int r22);
    }

    private ViewDragHelper(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.mParentView = viewGroup;
        this.mCallback = callback;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        int r42 = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.mDefaultEdgeSize = r42;
        this.mEdgeSize = r42;
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMaxVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mMinVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mScroller = new OverScroller(context, sInterpolator);
    }

    private boolean checkNewEdgeDrag(float f, float f10, int r6, int r72) {
        float fAbs = Math.abs(f);
        float fAbs2 = Math.abs(f10);
        if ((this.mInitialEdgesTouched[r6] & r72) != r72 || (this.mTrackingEdges & r72) == 0 || (this.mEdgeDragsLocked[r6] & r72) == r72 || (this.mEdgeDragsInProgress[r6] & r72) == r72) {
            return false;
        }
        int r02 = this.mTouchSlop;
        if (fAbs <= r02 && fAbs2 <= r02) {
            return false;
        }
        if (fAbs >= fAbs2 * 0.5f || !this.mCallback.onEdgeLock(r72)) {
            return (this.mEdgeDragsInProgress[r6] & r72) == 0 && fAbs > ((float) this.mTouchSlop);
        }
        int[] r42 = this.mEdgeDragsLocked;
        r42[r6] = r42[r6] | r72;
        return false;
    }

    private boolean checkTouchSlop(View view, float f, float f10) {
        if (view == null) {
            return false;
        }
        boolean z10 = this.mCallback.getViewHorizontalDragRange(view) > 0;
        boolean z11 = this.mCallback.getViewVerticalDragRange(view) > 0;
        if (!z10 || !z11) {
            return z10 ? Math.abs(f) > ((float) this.mTouchSlop) : z11 && Math.abs(f10) > ((float) this.mTouchSlop);
        }
        float f11 = (f10 * f10) + (f * f);
        int r52 = this.mTouchSlop;
        return f11 > ((float) (r52 * r52));
    }

    private float clampMag(float f, float f10, float f11) {
        float fAbs = Math.abs(f);
        if (fAbs < f10) {
            return 0.0f;
        }
        return fAbs > f11 ? f > 0.0f ? f11 : -f11 : f;
    }

    private int clampMag(int r22, int r32, int r42) {
        int r02 = Math.abs(r22);
        if (r02 < r32) {
            return 0;
        }
        return r02 > r42 ? r22 > 0 ? r42 : -r42 : r22;
    }

    private void clearMotionHistory() {
        float[] fArr = this.mInitialMotionX;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, 0.0f);
        Arrays.fill(this.mInitialMotionY, 0.0f);
        Arrays.fill(this.mLastMotionX, 0.0f);
        Arrays.fill(this.mLastMotionY, 0.0f);
        Arrays.fill(this.mInitialEdgesTouched, 0);
        Arrays.fill(this.mEdgeDragsInProgress, 0);
        Arrays.fill(this.mEdgeDragsLocked, 0);
        this.mPointersDown = 0;
    }

    private void clearMotionHistory(int r32) {
        if (this.mInitialMotionX == null || !isPointerDown(r32)) {
            return;
        }
        this.mInitialMotionX[r32] = 0.0f;
        this.mInitialMotionY[r32] = 0.0f;
        this.mLastMotionX[r32] = 0.0f;
        this.mLastMotionY[r32] = 0.0f;
        this.mInitialEdgesTouched[r32] = 0;
        this.mEdgeDragsInProgress[r32] = 0;
        this.mEdgeDragsLocked[r32] = 0;
        this.mPointersDown = (~(1 << r32)) & this.mPointersDown;
    }

    private int computeAxisDuration(int r42, int r52, int r6) {
        if (r42 == 0) {
            return 0;
        }
        int width = this.mParentView.getWidth();
        float f = width / 2;
        float fDistanceInfluenceForSnapDuration = (distanceInfluenceForSnapDuration(Math.min(1.0f, Math.abs(r42) / width)) * f) + f;
        int r53 = Math.abs(r52);
        return Math.min(r53 > 0 ? Math.round(Math.abs(fDistanceInfluenceForSnapDuration / r53) * 1000.0f) * 4 : (int) (((Math.abs(r42) / r6) + 1.0f) * 256.0f), 600);
    }

    private int computeSettleDuration(View view, int r82, int r92, int r10, int r11) {
        float f;
        float f10;
        float f11;
        float f12;
        int r102 = clampMag(r10, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        int r112 = clampMag(r11, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        int r02 = Math.abs(r82);
        int r12 = Math.abs(r92);
        int r22 = Math.abs(r102);
        int r32 = Math.abs(r112);
        int r42 = r22 + r32;
        int r52 = r02 + r12;
        if (r102 != 0) {
            f = r22;
            f10 = r42;
        } else {
            f = r02;
            f10 = r52;
        }
        float f13 = f / f10;
        if (r112 != 0) {
            f11 = r32;
            f12 = r42;
        } else {
            f11 = r12;
            f12 = r52;
        }
        return (int) ((computeAxisDuration(r92, r112, this.mCallback.getViewVerticalDragRange(view)) * (f11 / f12)) + (computeAxisDuration(r82, r102, this.mCallback.getViewHorizontalDragRange(view)) * f13));
    }

    public static ViewDragHelper create(@NonNull ViewGroup viewGroup, float f, @NonNull Callback callback) {
        ViewDragHelper viewDragHelperCreate = create(viewGroup, callback);
        viewDragHelperCreate.mTouchSlop = (int) ((1.0f / f) * viewDragHelperCreate.mTouchSlop);
        return viewDragHelperCreate;
    }

    public static ViewDragHelper create(@NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    private void dispatchViewReleased(float f, float f10) {
        this.mReleaseInProgress = true;
        this.mCallback.onViewReleased(this.mCapturedView, f, f10);
        this.mReleaseInProgress = false;
        if (this.mDragState == 1) {
            setDragState(0);
        }
    }

    private float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    private void dragTo(int r11, int r12, int r13, int r14) {
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        if (r13 != 0) {
            r11 = this.mCallback.clampViewPositionHorizontal(this.mCapturedView, r11, r13);
            ViewCompat.offsetLeftAndRight(this.mCapturedView, r11 - left);
        }
        int r6 = r11;
        if (r14 != 0) {
            r12 = this.mCallback.clampViewPositionVertical(this.mCapturedView, r12, r14);
            ViewCompat.offsetTopAndBottom(this.mCapturedView, r12 - top);
        }
        int r72 = r12;
        if (r13 == 0 && r14 == 0) {
            return;
        }
        this.mCallback.onViewPositionChanged(this.mCapturedView, r6, r72, r6 - left, r72 - top);
    }

    private void ensureMotionHistorySizeForId(int r10) {
        float[] fArr = this.mInitialMotionX;
        if (fArr == null || fArr.length <= r10) {
            int r102 = r10 + 1;
            float[] fArr2 = new float[r102];
            float[] fArr3 = new float[r102];
            float[] fArr4 = new float[r102];
            float[] fArr5 = new float[r102];
            int[] r52 = new int[r102];
            int[] r6 = new int[r102];
            int[] r103 = new int[r102];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.mInitialMotionY;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.mLastMotionX;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.mLastMotionY;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] r02 = this.mInitialEdgesTouched;
                System.arraycopy(r02, 0, r52, 0, r02.length);
                int[] r03 = this.mEdgeDragsInProgress;
                System.arraycopy(r03, 0, r6, 0, r03.length);
                int[] r04 = this.mEdgeDragsLocked;
                System.arraycopy(r04, 0, r103, 0, r04.length);
            }
            this.mInitialMotionX = fArr2;
            this.mInitialMotionY = fArr3;
            this.mLastMotionX = fArr4;
            this.mLastMotionY = fArr5;
            this.mInitialEdgesTouched = r52;
            this.mEdgeDragsInProgress = r6;
            this.mEdgeDragsLocked = r103;
        }
    }

    private boolean forceSettleCapturedViewAt(int r11, int r12, int r13, int r14) {
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        int r112 = r11 - left;
        int r122 = r12 - top;
        if (r112 == 0 && r122 == 0) {
            this.mScroller.abortAnimation();
            setDragState(0);
            return false;
        }
        this.mScroller.startScroll(left, top, r112, r122, computeSettleDuration(this.mCapturedView, r112, r122, r13, r14));
        setDragState(2);
        return true;
    }

    private int getEdgesTouched(int r42, int r52) {
        int r02 = r42 < this.mParentView.getLeft() + this.mEdgeSize ? 1 : 0;
        if (r52 < this.mParentView.getTop() + this.mEdgeSize) {
            r02 |= 4;
        }
        if (r42 > this.mParentView.getRight() - this.mEdgeSize) {
            r02 |= 2;
        }
        return r52 > this.mParentView.getBottom() - this.mEdgeSize ? r02 | 8 : r02;
    }

    private boolean isValidPointerForActionMove(int r32) {
        if (isPointerDown(r32)) {
            return true;
        }
        Log.e(TAG, "Ignoring pointerId=" + r32 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    private void releaseViewForPointerUp() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
        dispatchViewReleased(clampMag(this.mVelocityTracker.getXVelocity(this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity), clampMag(this.mVelocityTracker.getYVelocity(this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.customview.widget.ViewDragHelper$Callback] */
    private void reportNewEdgeDrags(float f, float f10, int r52) {
        boolean zCheckNewEdgeDrag = checkNewEdgeDrag(f, f10, r52, 1);
        boolean z10 = zCheckNewEdgeDrag;
        if (checkNewEdgeDrag(f10, f, r52, 4)) {
            z10 = (zCheckNewEdgeDrag ? 1 : 0) | 4;
        }
        boolean z11 = z10;
        if (checkNewEdgeDrag(f, f10, r52, 2)) {
            z11 = (z10 ? 1 : 0) | 2;
        }
        ?? r02 = z11;
        if (checkNewEdgeDrag(f10, f, r52, 8)) {
            r02 = (z11 ? 1 : 0) | 8;
        }
        if (r02 != 0) {
            int[] r32 = this.mEdgeDragsInProgress;
            r32[r52] = r32[r52] | r02;
            this.mCallback.onEdgeDragStarted(r02, r52);
        }
    }

    private void saveInitialMotion(float f, float f10, int r52) {
        ensureMotionHistorySizeForId(r52);
        float[] fArr = this.mInitialMotionX;
        this.mLastMotionX[r52] = f;
        fArr[r52] = f;
        float[] fArr2 = this.mInitialMotionY;
        this.mLastMotionY[r52] = f10;
        fArr2[r52] = f10;
        this.mInitialEdgesTouched[r52] = getEdgesTouched((int) f, (int) f10);
        this.mPointersDown |= 1 << r52;
    }

    private void saveLastMotion(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int r12 = 0; r12 < pointerCount; r12++) {
            int pointerId = motionEvent.getPointerId(r12);
            if (isValidPointerForActionMove(pointerId)) {
                float x10 = motionEvent.getX(r12);
                float y10 = motionEvent.getY(r12);
                this.mLastMotionX[pointerId] = x10;
                this.mLastMotionY[pointerId] = y10;
            }
        }
    }

    public void abort() {
        cancel();
        if (this.mDragState == 2) {
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            this.mScroller.abortAnimation();
            int currX2 = this.mScroller.getCurrX();
            int currY2 = this.mScroller.getCurrY();
            this.mCallback.onViewPositionChanged(this.mCapturedView, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        setDragState(0);
    }

    public boolean canScroll(@NonNull View view, boolean z10, int r16, int r17, int r18, int r19) {
        int r82;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int r6 = r18 + scrollX;
                if (r6 >= childAt.getLeft() && r6 < childAt.getRight() && (r82 = r19 + scrollY) >= childAt.getTop() && r82 < childAt.getBottom() && canScroll(childAt, true, r16, r17, r6 - childAt.getLeft(), r82 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z10 && (view.canScrollHorizontally(-r16) || view.canScrollVertically(-r17));
    }

    public void cancel() {
        this.mActivePointerId = -1;
        clearMotionHistory();
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public void captureChildView(@NonNull View view, int r42) {
        if (view.getParent() != this.mParentView) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.mParentView + ")");
        }
        this.mCapturedView = view;
        this.mActivePointerId = r42;
        this.mCallback.onViewCaptured(view, r42);
        setDragState(1);
    }

    public boolean checkTouchSlop(int r52) {
        int length = this.mInitialMotionX.length;
        for (int r22 = 0; r22 < length; r22++) {
            if (checkTouchSlop(r52, r22)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkTouchSlop(int r72, int r82) {
        if (!isPointerDown(r82)) {
            return false;
        }
        boolean z10 = (r72 & 1) == 1;
        boolean z11 = (r72 & 2) == 2;
        float f = this.mLastMotionX[r82] - this.mInitialMotionX[r82];
        float f10 = this.mLastMotionY[r82] - this.mInitialMotionY[r82];
        if (!z10 || !z11) {
            return z10 ? Math.abs(f) > ((float) this.mTouchSlop) : z11 && Math.abs(f10) > ((float) this.mTouchSlop);
        }
        float f11 = (f10 * f10) + (f * f);
        int r73 = this.mTouchSlop;
        return f11 > ((float) (r73 * r73));
    }

    public boolean continueSettling(boolean z10) {
        if (this.mDragState == 2) {
            boolean zComputeScrollOffset = this.mScroller.computeScrollOffset();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            int left = currX - this.mCapturedView.getLeft();
            int top = currY - this.mCapturedView.getTop();
            if (left != 0) {
                ViewCompat.offsetLeftAndRight(this.mCapturedView, left);
            }
            if (top != 0) {
                ViewCompat.offsetTopAndBottom(this.mCapturedView, top);
            }
            if (left != 0 || top != 0) {
                this.mCallback.onViewPositionChanged(this.mCapturedView, currX, currY, left, top);
            }
            if (zComputeScrollOffset && currX == this.mScroller.getFinalX() && currY == this.mScroller.getFinalY()) {
                this.mScroller.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                if (z10) {
                    this.mParentView.post(this.mSetIdleRunnable);
                } else {
                    setDragState(0);
                }
            }
        }
        return this.mDragState == 2;
    }

    @Nullable
    public View findTopChildUnder(int r42, int r52) {
        for (int childCount = this.mParentView.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.mParentView.getChildAt(this.mCallback.getOrderedChildIndex(childCount));
            if (r42 >= childAt.getLeft() && r42 < childAt.getRight() && r52 >= childAt.getTop() && r52 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public void flingCapturedView(int r11, int r12, int r13, int r14) {
        if (!this.mReleaseInProgress) {
            throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
        }
        this.mScroller.fling(this.mCapturedView.getLeft(), this.mCapturedView.getTop(), (int) this.mVelocityTracker.getXVelocity(this.mActivePointerId), (int) this.mVelocityTracker.getYVelocity(this.mActivePointerId), r11, r13, r12, r14);
        setDragState(2);
    }

    public int getActivePointerId() {
        return this.mActivePointerId;
    }

    @Nullable
    public View getCapturedView() {
        return this.mCapturedView;
    }

    @Px
    public int getDefaultEdgeSize() {
        return this.mDefaultEdgeSize;
    }

    @Px
    public int getEdgeSize() {
        return this.mEdgeSize;
    }

    public float getMinVelocity() {
        return this.mMinVelocity;
    }

    @Px
    public int getTouchSlop() {
        return this.mTouchSlop;
    }

    public int getViewDragState() {
        return this.mDragState;
    }

    public boolean isCapturedViewUnder(int r22, int r32) {
        return isViewUnder(this.mCapturedView, r22, r32);
    }

    public boolean isEdgeTouched(int r52) {
        int length = this.mInitialEdgesTouched.length;
        for (int r22 = 0; r22 < length; r22++) {
            if (isEdgeTouched(r52, r22)) {
                return true;
            }
        }
        return false;
    }

    public boolean isEdgeTouched(int r22, int r32) {
        return isPointerDown(r32) && (r22 & this.mInitialEdgesTouched[r32]) != 0;
    }

    public boolean isPointerDown(int r32) {
        return ((1 << r32) & this.mPointersDown) != 0;
    }

    public boolean isViewUnder(@Nullable View view, int r42, int r52) {
        return view != null && r42 >= view.getLeft() && r42 < view.getRight() && r52 >= view.getTop() && r52 < view.getBottom();
    }

    public void processTouchEvent(@NonNull MotionEvent motionEvent) {
        int r10;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int r22 = 0;
        if (actionMasked == 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewFindTopChildUnder = findTopChildUnder((int) x10, (int) y10);
            saveInitialMotion(x10, y10, pointerId);
            tryCaptureViewForDrag(viewFindTopChildUnder, pointerId);
            int r02 = this.mInitialEdgesTouched[pointerId];
            int r12 = this.mTrackingEdges;
            if ((r02 & r12) != 0) {
                this.mCallback.onEdgeTouched(r02 & r12, pointerId);
                return;
            }
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (this.mDragState != 1) {
                    int pointerCount = motionEvent.getPointerCount();
                    while (r22 < pointerCount) {
                        int pointerId2 = motionEvent.getPointerId(r22);
                        if (isValidPointerForActionMove(pointerId2)) {
                            float x11 = motionEvent.getX(r22);
                            float y11 = motionEvent.getY(r22);
                            float f = x11 - this.mInitialMotionX[pointerId2];
                            float f10 = y11 - this.mInitialMotionY[pointerId2];
                            reportNewEdgeDrags(f, f10, pointerId2);
                            if (this.mDragState != 1) {
                                View viewFindTopChildUnder2 = findTopChildUnder((int) x11, (int) y11);
                                if (checkTouchSlop(viewFindTopChildUnder2, f, f10) && tryCaptureViewForDrag(viewFindTopChildUnder2, pointerId2)) {
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                        r22++;
                    }
                } else {
                    if (!isValidPointerForActionMove(this.mActivePointerId)) {
                        return;
                    }
                    int r03 = motionEvent.findPointerIndex(this.mActivePointerId);
                    float x12 = motionEvent.getX(r03);
                    float y12 = motionEvent.getY(r03);
                    float[] fArr = this.mLastMotionX;
                    int r32 = this.mActivePointerId;
                    int r13 = (int) (x12 - fArr[r32]);
                    int r04 = (int) (y12 - this.mLastMotionY[r32]);
                    dragTo(this.mCapturedView.getLeft() + r13, this.mCapturedView.getTop() + r04, r13, r04);
                }
                saveLastMotion(motionEvent);
                return;
            }
            if (actionMasked != 3) {
                if (actionMasked == 5) {
                    int pointerId3 = motionEvent.getPointerId(actionIndex);
                    float x13 = motionEvent.getX(actionIndex);
                    float y13 = motionEvent.getY(actionIndex);
                    saveInitialMotion(x13, y13, pointerId3);
                    if (this.mDragState != 0) {
                        if (isCapturedViewUnder((int) x13, (int) y13)) {
                            tryCaptureViewForDrag(this.mCapturedView, pointerId3);
                            return;
                        }
                        return;
                    } else {
                        tryCaptureViewForDrag(findTopChildUnder((int) x13, (int) y13), pointerId3);
                        int r102 = this.mInitialEdgesTouched[pointerId3];
                        int r14 = this.mTrackingEdges;
                        if ((r102 & r14) != 0) {
                            this.mCallback.onEdgeTouched(r102 & r14, pointerId3);
                            return;
                        }
                        return;
                    }
                }
                if (actionMasked != 6) {
                    return;
                }
                int pointerId4 = motionEvent.getPointerId(actionIndex);
                if (this.mDragState == 1 && pointerId4 == this.mActivePointerId) {
                    int pointerCount2 = motionEvent.getPointerCount();
                    while (true) {
                        if (r22 >= pointerCount2) {
                            r10 = -1;
                            break;
                        }
                        int pointerId5 = motionEvent.getPointerId(r22);
                        if (pointerId5 != this.mActivePointerId) {
                            View viewFindTopChildUnder3 = findTopChildUnder((int) motionEvent.getX(r22), (int) motionEvent.getY(r22));
                            View view = this.mCapturedView;
                            if (viewFindTopChildUnder3 == view && tryCaptureViewForDrag(view, pointerId5)) {
                                r10 = this.mActivePointerId;
                                break;
                            }
                        }
                        r22++;
                    }
                    if (r10 == -1) {
                        releaseViewForPointerUp();
                    }
                }
                clearMotionHistory(pointerId4);
                return;
            }
            if (this.mDragState == 1) {
                dispatchViewReleased(0.0f, 0.0f);
            }
        } else if (this.mDragState == 1) {
            releaseViewForPointerUp();
        }
        cancel();
    }

    public void setDragState(int r32) {
        this.mParentView.removeCallbacks(this.mSetIdleRunnable);
        if (this.mDragState != r32) {
            this.mDragState = r32;
            this.mCallback.onViewDragStateChanged(r32);
            if (this.mDragState == 0) {
                this.mCapturedView = null;
            }
        }
    }

    public void setEdgeSize(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) @Px int r12) {
        this.mEdgeSize = r12;
    }

    public void setEdgeTrackingEnabled(int r12) {
        this.mTrackingEdges = r12;
    }

    public void setMinVelocity(float f) {
        this.mMinVelocity = f;
    }

    public boolean settleCapturedViewAt(int r42, int r52) {
        if (this.mReleaseInProgress) {
            return forceSettleCapturedViewAt(r42, r52, (int) this.mVelocityTracker.getXVelocity(this.mActivePointerId), (int) this.mVelocityTracker.getYVelocity(this.mActivePointerId));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldInterceptTouchEvent(@androidx.annotation.NonNull android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ViewDragHelper.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean smoothSlideViewTo(@NonNull View view, int r22, int r32) {
        this.mCapturedView = view;
        this.mActivePointerId = -1;
        boolean zForceSettleCapturedViewAt = forceSettleCapturedViewAt(r22, r32, 0, 0);
        if (!zForceSettleCapturedViewAt && this.mDragState == 0 && this.mCapturedView != null) {
            this.mCapturedView = null;
        }
        return zForceSettleCapturedViewAt;
    }

    public boolean tryCaptureViewForDrag(View view, int r42) {
        if (view == this.mCapturedView && this.mActivePointerId == r42) {
            return true;
        }
        if (view == null || !this.mCallback.tryCaptureView(view, r42)) {
            return false;
        }
        this.mActivePointerId = r42;
        captureChildView(view, r42);
        return true;
    }
}
