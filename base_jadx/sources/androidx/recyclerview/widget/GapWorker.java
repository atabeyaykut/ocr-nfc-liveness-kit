package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;
import androidx.core.location.LocationRequestCompat;
import androidx.core.os.TraceCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class GapWorker implements Runnable {
    static final ThreadLocal<GapWorker> sGapWorker = new ThreadLocal<>();
    static Comparator<Task> sTaskComparator = new Comparator<Task>() { // from class: androidx.recyclerview.widget.GapWorker.1
        @Override // java.util.Comparator
        public int compare(Task task, Task task2) {
            RecyclerView recyclerView = task.view;
            if ((recyclerView == null) != (task2.view == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z10 = task.immediate;
            if (z10 != task2.immediate) {
                return z10 ? -1 : 1;
            }
            int r02 = task2.viewVelocity - task.viewVelocity;
            if (r02 != 0) {
                return r02;
            }
            int r72 = task.distanceToItem - task2.distanceToItem;
            if (r72 != 0) {
                return r72;
            }
            return 0;
        }
    };
    long mFrameIntervalNs;
    long mPostTimeNs;
    ArrayList<RecyclerView> mRecyclerViews = new ArrayList<>();
    private ArrayList<Task> mTasks = new ArrayList<>();

    @SuppressLint({"VisibleForTests"})
    public static class LayoutPrefetchRegistryImpl implements RecyclerView.LayoutManager.LayoutPrefetchRegistry {
        int mCount;
        int[] mPrefetchArray;
        int mPrefetchDx;
        int mPrefetchDy;

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager.LayoutPrefetchRegistry
        public void addPosition(int r6, int r72) {
            if (r6 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (r72 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int r02 = this.mCount * 2;
            int[] r12 = this.mPrefetchArray;
            if (r12 == null) {
                int[] r13 = new int[4];
                this.mPrefetchArray = r13;
                Arrays.fill(r13, -1);
            } else if (r02 >= r12.length) {
                int[] r22 = new int[r02 * 2];
                this.mPrefetchArray = r22;
                System.arraycopy(r12, 0, r22, 0, r12.length);
            }
            int[] r14 = this.mPrefetchArray;
            r14[r02] = r6;
            r14[r02 + 1] = r72;
            this.mCount++;
        }

        public void clearPrefetchPositions() {
            int[] r02 = this.mPrefetchArray;
            if (r02 != null) {
                Arrays.fill(r02, -1);
            }
            this.mCount = 0;
        }

        public void collectPrefetchPositionsFromView(RecyclerView recyclerView, boolean z10) {
            this.mCount = 0;
            int[] r02 = this.mPrefetchArray;
            if (r02 != null) {
                Arrays.fill(r02, -1);
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || layoutManager == null || !layoutManager.isItemPrefetchEnabled()) {
                return;
            }
            if (z10) {
                if (!recyclerView.mAdapterHelper.hasPendingUpdates()) {
                    layoutManager.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                layoutManager.collectAdjacentPrefetchPositions(this.mPrefetchDx, this.mPrefetchDy, recyclerView.mState, this);
            }
            int r12 = this.mCount;
            if (r12 > layoutManager.mPrefetchMaxCountObserved) {
                layoutManager.mPrefetchMaxCountObserved = r12;
                layoutManager.mPrefetchMaxObservedInInitialPrefetch = z10;
                recyclerView.mRecycler.updateViewCacheSize();
            }
        }

        public boolean lastPrefetchIncludedPosition(int r52) {
            if (this.mPrefetchArray != null) {
                int r02 = this.mCount * 2;
                for (int r22 = 0; r22 < r02; r22 += 2) {
                    if (this.mPrefetchArray[r22] == r52) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void setPrefetchVector(int r12, int r22) {
            this.mPrefetchDx = r12;
            this.mPrefetchDy = r22;
        }
    }

    public static class Task {
        public int distanceToItem;
        public boolean immediate;
        public int position;
        public RecyclerView view;
        public int viewVelocity;

        public void clear() {
            this.immediate = false;
            this.viewVelocity = 0;
            this.distanceToItem = 0;
            this.view = null;
            this.position = 0;
        }
    }

    private void buildTaskList() {
        Task task;
        int size = this.mRecyclerViews.size();
        int r32 = 0;
        for (int r22 = 0; r22 < size; r22++) {
            RecyclerView recyclerView = this.mRecyclerViews.get(r22);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.collectPrefetchPositionsFromView(recyclerView, false);
                r32 += recyclerView.mPrefetchRegistry.mCount;
            }
        }
        this.mTasks.ensureCapacity(r32);
        int r33 = 0;
        for (int r23 = 0; r23 < size; r23++) {
            RecyclerView recyclerView2 = this.mRecyclerViews.get(r23);
            if (recyclerView2.getWindowVisibility() == 0) {
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView2.mPrefetchRegistry;
                int r72 = Math.abs(layoutPrefetchRegistryImpl.mPrefetchDy) + Math.abs(layoutPrefetchRegistryImpl.mPrefetchDx);
                for (int r6 = 0; r6 < layoutPrefetchRegistryImpl.mCount * 2; r6 += 2) {
                    if (r33 >= this.mTasks.size()) {
                        task = new Task();
                        this.mTasks.add(task);
                    } else {
                        task = this.mTasks.get(r33);
                    }
                    int[] r92 = layoutPrefetchRegistryImpl.mPrefetchArray;
                    int r10 = r92[r6 + 1];
                    task.immediate = r10 <= r72;
                    task.viewVelocity = r72;
                    task.distanceToItem = r10;
                    task.view = recyclerView2;
                    task.position = r92[r6];
                    r33++;
                }
            }
        }
        Collections.sort(this.mTasks, sTaskComparator);
    }

    private void flushTaskWithDeadline(Task task, long j10) {
        RecyclerView.ViewHolder viewHolderPrefetchPositionWithDeadline = prefetchPositionWithDeadline(task.view, task.position, task.immediate ? LocationRequestCompat.PASSIVE_INTERVAL : j10);
        if (viewHolderPrefetchPositionWithDeadline == null || viewHolderPrefetchPositionWithDeadline.mNestedRecyclerView == null || !viewHolderPrefetchPositionWithDeadline.isBound() || viewHolderPrefetchPositionWithDeadline.isInvalid()) {
            return;
        }
        prefetchInnerRecyclerViewWithDeadline(viewHolderPrefetchPositionWithDeadline.mNestedRecyclerView.get(), j10);
    }

    private void flushTasksWithDeadline(long j10) {
        for (int r02 = 0; r02 < this.mTasks.size(); r02++) {
            Task task = this.mTasks.get(r02);
            if (task.view == null) {
                return;
            }
            flushTaskWithDeadline(task, j10);
            task.clear();
        }
    }

    public static boolean isPrefetchPositionAttached(RecyclerView recyclerView, int r6) {
        int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
        for (int r22 = 0; r22 < unfilteredChildCount; r22++) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.getUnfilteredChildAt(r22));
            if (childViewHolderInt.mPosition == r6 && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    private void prefetchInnerRecyclerViewWithDeadline(@Nullable RecyclerView recyclerView, long j10) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.getUnfilteredChildCount() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
        layoutPrefetchRegistryImpl.collectPrefetchPositionsFromView(recyclerView, true);
        if (layoutPrefetchRegistryImpl.mCount != 0) {
            try {
                TraceCompat.beginSection("RV Nested Prefetch");
                recyclerView.mState.prepareForNestedPrefetch(recyclerView.mAdapter);
                for (int r12 = 0; r12 < layoutPrefetchRegistryImpl.mCount * 2; r12 += 2) {
                    prefetchPositionWithDeadline(recyclerView, layoutPrefetchRegistryImpl.mPrefetchArray[r12], j10);
                }
            } finally {
                TraceCompat.endSection();
            }
        }
    }

    private RecyclerView.ViewHolder prefetchPositionWithDeadline(RecyclerView recyclerView, int r42, long j10) {
        if (isPrefetchPositionAttached(recyclerView, r42)) {
            return null;
        }
        RecyclerView.Recycler recycler = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.ViewHolder viewHolderTryGetViewHolderForPositionByDeadline = recycler.tryGetViewHolderForPositionByDeadline(r42, false, j10);
            if (viewHolderTryGetViewHolderForPositionByDeadline != null) {
                if (!viewHolderTryGetViewHolderForPositionByDeadline.isBound() || viewHolderTryGetViewHolderForPositionByDeadline.isInvalid()) {
                    recycler.addViewHolderToRecycledViewPool(viewHolderTryGetViewHolderForPositionByDeadline, false);
                } else {
                    recycler.recycleView(viewHolderTryGetViewHolderForPositionByDeadline.itemView);
                }
            }
            return viewHolderTryGetViewHolderForPositionByDeadline;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    public void add(RecyclerView recyclerView) {
        if (RecyclerView.sDebugAssertionsEnabled && this.mRecyclerViews.contains(recyclerView)) {
            throw new IllegalStateException("RecyclerView already present in worker list!");
        }
        this.mRecyclerViews.add(recyclerView);
    }

    public void postFromTraversal(RecyclerView recyclerView, int r72, int r82) {
        if (recyclerView.isAttachedToWindow()) {
            if (RecyclerView.sDebugAssertionsEnabled && !this.mRecyclerViews.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.mPostTimeNs == 0) {
                this.mPostTimeNs = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        recyclerView.mPrefetchRegistry.setPrefetchVector(r72, r82);
    }

    public void prefetch(long j10) {
        buildTaskList();
        flushTasksWithDeadline(j10);
    }

    public void remove(RecyclerView recyclerView) {
        boolean zRemove = this.mRecyclerViews.remove(recyclerView);
        if (RecyclerView.sDebugAssertionsEnabled && !zRemove) {
            throw new IllegalStateException("RecyclerView removal failed!");
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            TraceCompat.beginSection("RV Prefetch");
            if (!this.mRecyclerViews.isEmpty()) {
                int size = this.mRecyclerViews.size();
                long jMax = 0;
                for (int r32 = 0; r32 < size; r32++) {
                    RecyclerView recyclerView = this.mRecyclerViews.get(r32);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    prefetch(TimeUnit.MILLISECONDS.toNanos(jMax) + this.mFrameIntervalNs);
                }
            }
        } finally {
            this.mPostTimeNs = 0L;
            TraceCompat.endSection();
        }
    }
}
