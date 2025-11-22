package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class LinearSnapHelper extends SnapHelper {
    private static final float INVALID_DISTANCE = 1.0f;

    @Nullable
    private OrientationHelper mHorizontalHelper;

    @Nullable
    private OrientationHelper mVerticalHelper;

    private float computeDistancePerChild(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int childCount = layoutManager.getChildCount();
        if (childCount == 0) {
            return 1.0f;
        }
        View view = null;
        View view2 = null;
        int r42 = Integer.MAX_VALUE;
        int r52 = Integer.MIN_VALUE;
        for (int r6 = 0; r6 < childCount; r6++) {
            View childAt = layoutManager.getChildAt(r6);
            int position = layoutManager.getPosition(childAt);
            if (position != -1) {
                if (position < r42) {
                    view = childAt;
                    r42 = position;
                }
                if (position > r52) {
                    view2 = childAt;
                    r52 = position;
                }
            }
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int r12 = Math.max(orientationHelper.getDecoratedEnd(view), orientationHelper.getDecoratedEnd(view2)) - Math.min(orientationHelper.getDecoratedStart(view), orientationHelper.getDecoratedStart(view2));
        if (r12 == 0) {
            return 1.0f;
        }
        return (r12 * 1.0f) / ((r52 - r42) + 1);
    }

    private int distanceToCenter(@NonNull View view, OrientationHelper orientationHelper) {
        return ((orientationHelper.getDecoratedMeasurement(view) / 2) + orientationHelper.getDecoratedStart(view)) - ((orientationHelper.getTotalSpace() / 2) + orientationHelper.getStartAfterPadding());
    }

    private int estimateNextPositionDiffForFling(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper, int r52, int r6) {
        int[] r53 = calculateScrollDistance(r52, r6);
        float fComputeDistancePerChild = computeDistancePerChild(layoutManager, orientationHelper);
        if (fComputeDistancePerChild <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(r53[0]) > Math.abs(r53[1]) ? r53[0] : r53[1]) / fComputeDistancePerChild);
    }

    @Nullable
    private View findCenterView(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int totalSpace = (orientationHelper.getTotalSpace() / 2) + orientationHelper.getStartAfterPadding();
        int r22 = Integer.MAX_VALUE;
        for (int r42 = 0; r42 < childCount; r42++) {
            View childAt = layoutManager.getChildAt(r42);
            int r6 = Math.abs(((orientationHelper.getDecoratedMeasurement(childAt) / 2) + orientationHelper.getDecoratedStart(childAt)) - totalSpace);
            if (r6 < r22) {
                view = childAt;
                r22 = r6;
            }
        }
        return view;
    }

    @NonNull
    private OrientationHelper getHorizontalHelper(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.mHorizontalHelper;
        if (orientationHelper == null || orientationHelper.mLayoutManager != layoutManager) {
            this.mHorizontalHelper = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.mHorizontalHelper;
    }

    @NonNull
    private OrientationHelper getVerticalHelper(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.mVerticalHelper;
        if (orientationHelper == null || orientationHelper.mLayoutManager != layoutManager) {
            this.mVerticalHelper = OrientationHelper.createVerticalHelper(layoutManager);
        }
        return this.mVerticalHelper;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] r02 = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            r02[0] = distanceToCenter(view, getHorizontalHelper(layoutManager));
        } else {
            r02[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            r02[1] = distanceToCenter(view, getVerticalHelper(layoutManager));
        } else {
            r02[1] = 0;
        }
        return r02;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper horizontalHelper;
        if (layoutManager.canScrollVertically()) {
            horizontalHelper = getVerticalHelper(layoutManager);
        } else {
            if (!layoutManager.canScrollHorizontally()) {
                return null;
            }
            horizontalHelper = getHorizontalHelper(layoutManager);
        }
        return findCenterView(layoutManager, horizontalHelper);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int r10, int r11) {
        int itemCount;
        View viewFindSnapView;
        int position;
        int r42;
        PointF pointFComputeScrollVectorForPosition;
        int r102;
        int r112;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (itemCount = layoutManager.getItemCount()) == 0 || (viewFindSnapView = findSnapView(layoutManager)) == null || (position = layoutManager.getPosition(viewFindSnapView)) == -1 || (pointFComputeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return -1;
        }
        if (layoutManager.canScrollHorizontally()) {
            r102 = estimateNextPositionDiffForFling(layoutManager, getHorizontalHelper(layoutManager), r10, 0);
            if (pointFComputeScrollVectorForPosition.x < 0.0f) {
                r102 = -r102;
            }
        } else {
            r102 = 0;
        }
        if (layoutManager.canScrollVertically()) {
            r112 = estimateNextPositionDiffForFling(layoutManager, getVerticalHelper(layoutManager), 0, r11);
            if (pointFComputeScrollVectorForPosition.y < 0.0f) {
                r112 = -r112;
            }
        } else {
            r112 = 0;
        }
        if (layoutManager.canScrollVertically()) {
            r102 = r112;
        }
        if (r102 == 0) {
            return -1;
        }
        int r22 = position + r102;
        int r72 = r22 >= 0 ? r22 : 0;
        return r72 >= itemCount ? r42 : r72;
    }
}
