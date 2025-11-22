package androidx.recyclerview.widget;

import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import androidx.recyclerview.widget.ThreadUtil;
import androidx.recyclerview.widget.TileList;

/* loaded from: classes.dex */
public class AsyncListUtil<T> {
    static final boolean DEBUG = false;
    static final String TAG = "AsyncListUtil";
    boolean mAllowScrollHints;
    private final ThreadUtil.BackgroundCallback<T> mBackgroundCallback;
    final ThreadUtil.BackgroundCallback<T> mBackgroundProxy;
    final DataCallback<T> mDataCallback;
    private final ThreadUtil.MainThreadCallback<T> mMainThreadCallback;
    final ThreadUtil.MainThreadCallback<T> mMainThreadProxy;
    final Class<T> mTClass;
    final TileList<T> mTileList;
    final int mTileSize;
    final ViewCallback mViewCallback;
    final int[] mTmpRange = new int[2];
    final int[] mPrevRange = new int[2];
    final int[] mTmpRangeExtended = new int[2];
    private int mScrollHint = 0;
    int mItemCount = 0;
    int mDisplayedGeneration = 0;
    int mRequestedGeneration = 0;
    final SparseIntArray mMissingPositions = new SparseIntArray();

    public static abstract class DataCallback<T> {
        @WorkerThread
        public abstract void fillData(@NonNull T[] tArr, int r22, int r32);

        @WorkerThread
        public int getMaxCachedTiles() {
            return 10;
        }

        @WorkerThread
        public void recycleData(@NonNull T[] tArr, int r22) {
        }

        @WorkerThread
        public abstract int refreshData();
    }

    public static abstract class ViewCallback {
        public static final int HINT_SCROLL_ASC = 2;
        public static final int HINT_SCROLL_DESC = 1;
        public static final int HINT_SCROLL_NONE = 0;

        @UiThread
        public void extendRangeInto(@NonNull int[] r72, @NonNull int[] r82, int r92) {
            int r12 = r72[1];
            int r73 = r72[0];
            int r32 = (r12 - r73) + 1;
            int r42 = r32 / 2;
            r82[0] = r73 - (r92 == 1 ? r32 : r42);
            if (r92 != 2) {
                r32 = r42;
            }
            r82[1] = r12 + r32;
        }

        @UiThread
        public abstract void getItemRangeInto(@NonNull int[] r12);

        @UiThread
        public abstract void onDataRefresh();

        @UiThread
        public abstract void onItemLoaded(int r12);
    }

    public AsyncListUtil(@NonNull Class<T> cls, int r42, @NonNull DataCallback<T> dataCallback, @NonNull ViewCallback viewCallback) {
        ThreadUtil.MainThreadCallback<T> mainThreadCallback = new ThreadUtil.MainThreadCallback<T>() { // from class: androidx.recyclerview.widget.AsyncListUtil.1
            private boolean isRequestedGeneration(int r22) {
                return r22 == AsyncListUtil.this.mRequestedGeneration;
            }

            private void recycleAllTiles() {
                for (int r02 = 0; r02 < AsyncListUtil.this.mTileList.size(); r02++) {
                    AsyncListUtil asyncListUtil = AsyncListUtil.this;
                    asyncListUtil.mBackgroundProxy.recycleTile(asyncListUtil.mTileList.getAtIndex(r02));
                }
                AsyncListUtil.this.mTileList.clear();
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
            public void addTile(int r43, TileList.Tile<T> tile) {
                if (!isRequestedGeneration(r43)) {
                    AsyncListUtil.this.mBackgroundProxy.recycleTile(tile);
                    return;
                }
                TileList.Tile<T> tileAddOrReplace = AsyncListUtil.this.mTileList.addOrReplace(tile);
                if (tileAddOrReplace != null) {
                    Log.e(AsyncListUtil.TAG, "duplicate tile @" + tileAddOrReplace.mStartPosition);
                    AsyncListUtil.this.mBackgroundProxy.recycleTile(tileAddOrReplace);
                }
                int r44 = tile.mStartPosition + tile.mItemCount;
                int r02 = 0;
                while (r02 < AsyncListUtil.this.mMissingPositions.size()) {
                    int r12 = AsyncListUtil.this.mMissingPositions.keyAt(r02);
                    if (tile.mStartPosition > r12 || r12 >= r44) {
                        r02++;
                    } else {
                        AsyncListUtil.this.mMissingPositions.removeAt(r02);
                        AsyncListUtil.this.mViewCallback.onItemLoaded(r12);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
            public void removeTile(int r22, int r32) {
                if (isRequestedGeneration(r22)) {
                    TileList.Tile<T> tileRemoveAtPos = AsyncListUtil.this.mTileList.removeAtPos(r32);
                    if (tileRemoveAtPos != null) {
                        AsyncListUtil.this.mBackgroundProxy.recycleTile(tileRemoveAtPos);
                        return;
                    }
                    Log.e(AsyncListUtil.TAG, "tile not found @" + r32);
                }
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
            public void updateItemCount(int r12, int r22) {
                if (isRequestedGeneration(r12)) {
                    AsyncListUtil asyncListUtil = AsyncListUtil.this;
                    asyncListUtil.mItemCount = r22;
                    asyncListUtil.mViewCallback.onDataRefresh();
                    AsyncListUtil asyncListUtil2 = AsyncListUtil.this;
                    asyncListUtil2.mDisplayedGeneration = asyncListUtil2.mRequestedGeneration;
                    recycleAllTiles();
                    AsyncListUtil asyncListUtil3 = AsyncListUtil.this;
                    asyncListUtil3.mAllowScrollHints = false;
                    asyncListUtil3.updateRange();
                }
            }
        };
        this.mMainThreadCallback = mainThreadCallback;
        ThreadUtil.BackgroundCallback<T> backgroundCallback = new ThreadUtil.BackgroundCallback<T>() { // from class: androidx.recyclerview.widget.AsyncListUtil.2
            private int mFirstRequiredTileStart;
            private int mGeneration;
            private int mItemCount;
            private int mLastRequiredTileStart;
            final SparseBooleanArray mLoadedTiles = new SparseBooleanArray();
            private TileList.Tile<T> mRecycledRoot;

            private TileList.Tile<T> acquireTile() {
                TileList.Tile<T> tile = this.mRecycledRoot;
                if (tile != null) {
                    this.mRecycledRoot = tile.mNext;
                    return tile;
                }
                AsyncListUtil asyncListUtil = AsyncListUtil.this;
                return new TileList.Tile<>(asyncListUtil.mTClass, asyncListUtil.mTileSize);
            }

            private void addTile(TileList.Tile<T> tile) {
                this.mLoadedTiles.put(tile.mStartPosition, true);
                AsyncListUtil.this.mMainThreadProxy.addTile(this.mGeneration, tile);
            }

            private void flushTileCache(int r82) {
                int maxCachedTiles = AsyncListUtil.this.mDataCallback.getMaxCachedTiles();
                while (this.mLoadedTiles.size() >= maxCachedTiles) {
                    int r12 = this.mLoadedTiles.keyAt(0);
                    SparseBooleanArray sparseBooleanArray = this.mLoadedTiles;
                    int r22 = sparseBooleanArray.keyAt(sparseBooleanArray.size() - 1);
                    int r32 = this.mFirstRequiredTileStart - r12;
                    int r52 = r22 - this.mLastRequiredTileStart;
                    if (r32 > 0 && (r32 >= r52 || r82 == 2)) {
                        removeTile(r12);
                    } else {
                        if (r52 <= 0) {
                            return;
                        }
                        if (r32 >= r52 && r82 != 1) {
                            return;
                        } else {
                            removeTile(r22);
                        }
                    }
                }
            }

            private int getTileStart(int r22) {
                return r22 - (r22 % AsyncListUtil.this.mTileSize);
            }

            private boolean isTileLoaded(int r22) {
                return this.mLoadedTiles.get(r22);
            }

            private void log(String str, Object... objArr) {
                Log.d(AsyncListUtil.TAG, "[BKGR] " + String.format(str, objArr));
            }

            private void removeTile(int r32) {
                this.mLoadedTiles.delete(r32);
                AsyncListUtil.this.mMainThreadProxy.removeTile(this.mGeneration, r32);
            }

            private void requestTiles(int r43, int r52, int r6, boolean z10) {
                int r02 = r43;
                while (r02 <= r52) {
                    AsyncListUtil.this.mBackgroundProxy.loadTile(z10 ? (r52 + r43) - r02 : r02, r6);
                    r02 += AsyncListUtil.this.mTileSize;
                }
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void loadTile(int r52, int r6) {
                if (isTileLoaded(r52)) {
                    return;
                }
                TileList.Tile<T> tileAcquireTile = acquireTile();
                tileAcquireTile.mStartPosition = r52;
                int r53 = Math.min(AsyncListUtil.this.mTileSize, this.mItemCount - r52);
                tileAcquireTile.mItemCount = r53;
                AsyncListUtil.this.mDataCallback.fillData(tileAcquireTile.mItems, tileAcquireTile.mStartPosition, r53);
                flushTileCache(r6);
                addTile(tileAcquireTile);
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void recycleTile(TileList.Tile<T> tile) {
                AsyncListUtil.this.mDataCallback.recycleData(tile.mItems, tile.mItemCount);
                tile.mNext = this.mRecycledRoot;
                this.mRecycledRoot = tile;
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void refresh(int r32) {
                this.mGeneration = r32;
                this.mLoadedTiles.clear();
                int r33 = AsyncListUtil.this.mDataCallback.refreshData();
                this.mItemCount = r33;
                AsyncListUtil.this.mMainThreadProxy.updateItemCount(this.mGeneration, r33);
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void updateRange(int r22, int r32, int r43, int r52, int r6) {
                if (r22 > r32) {
                    return;
                }
                int tileStart = getTileStart(r22);
                int tileStart2 = getTileStart(r32);
                this.mFirstRequiredTileStart = getTileStart(r43);
                int tileStart3 = getTileStart(r52);
                this.mLastRequiredTileStart = tileStart3;
                if (r6 == 1) {
                    requestTiles(this.mFirstRequiredTileStart, tileStart2, r6, true);
                    requestTiles(tileStart2 + AsyncListUtil.this.mTileSize, this.mLastRequiredTileStart, r6, false);
                } else {
                    requestTiles(tileStart, tileStart3, r6, false);
                    requestTiles(this.mFirstRequiredTileStart, tileStart - AsyncListUtil.this.mTileSize, r6, true);
                }
            }
        };
        this.mBackgroundCallback = backgroundCallback;
        this.mTClass = cls;
        this.mTileSize = r42;
        this.mDataCallback = dataCallback;
        this.mViewCallback = viewCallback;
        this.mTileList = new TileList<>(r42);
        MessageThreadUtil messageThreadUtil = new MessageThreadUtil();
        this.mMainThreadProxy = messageThreadUtil.getMainThreadProxy(mainThreadCallback);
        this.mBackgroundProxy = messageThreadUtil.getBackgroundProxy(backgroundCallback);
        refresh();
    }

    private boolean isRefreshPending() {
        return this.mRequestedGeneration != this.mDisplayedGeneration;
    }

    @Nullable
    public T getItem(int r42) {
        if (r42 < 0 || r42 >= this.mItemCount) {
            throw new IndexOutOfBoundsException(r42 + " is not within 0 and " + this.mItemCount);
        }
        T itemAt = this.mTileList.getItemAt(r42);
        if (itemAt == null && !isRefreshPending()) {
            this.mMissingPositions.put(r42, 0);
        }
        return itemAt;
    }

    public int getItemCount() {
        return this.mItemCount;
    }

    public void log(String str, Object... objArr) {
        Log.d(TAG, "[MAIN] " + String.format(str, objArr));
    }

    public void onRangeChanged() {
        if (isRefreshPending()) {
            return;
        }
        updateRange();
        this.mAllowScrollHints = true;
    }

    public void refresh() {
        this.mMissingPositions.clear();
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.mBackgroundProxy;
        int r12 = this.mRequestedGeneration + 1;
        this.mRequestedGeneration = r12;
        backgroundCallback.refresh(r12);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateRange() {
        /*
            r10 = this;
            androidx.recyclerview.widget.AsyncListUtil$ViewCallback r0 = r10.mViewCallback
            int[] r1 = r10.mTmpRange
            r0.getItemRangeInto(r1)
            int[] r0 = r10.mTmpRange
            r1 = 0
            r2 = r0[r1]
            r3 = 1
            r4 = r0[r3]
            if (r2 > r4) goto L7e
            if (r2 >= 0) goto L14
            goto L7e
        L14:
            int r5 = r10.mItemCount
            if (r4 < r5) goto L19
            return
        L19:
            boolean r5 = r10.mAllowScrollHints
            if (r5 != 0) goto L20
        L1d:
            r10.mScrollHint = r1
            goto L35
        L20:
            int[] r5 = r10.mPrevRange
            r6 = r5[r3]
            if (r2 > r6) goto L1d
            r5 = r5[r1]
            if (r5 <= r4) goto L2b
            goto L1d
        L2b:
            if (r2 >= r5) goto L30
            r10.mScrollHint = r3
            goto L35
        L30:
            if (r2 <= r5) goto L35
            r5 = 2
            r10.mScrollHint = r5
        L35:
            int[] r5 = r10.mPrevRange
            r5[r1] = r2
            r5[r3] = r4
            androidx.recyclerview.widget.AsyncListUtil$ViewCallback r2 = r10.mViewCallback
            int[] r4 = r10.mTmpRangeExtended
            int r5 = r10.mScrollHint
            r2.extendRangeInto(r0, r4, r5)
            int[] r0 = r10.mTmpRangeExtended
            int[] r2 = r10.mTmpRange
            r2 = r2[r1]
            r4 = r0[r1]
            int r4 = java.lang.Math.max(r4, r1)
            int r2 = java.lang.Math.min(r2, r4)
            r0[r1] = r2
            int[] r0 = r10.mTmpRangeExtended
            int[] r2 = r10.mTmpRange
            r2 = r2[r3]
            r4 = r0[r3]
            int r5 = r10.mItemCount
            int r5 = r5 - r3
            int r4 = java.lang.Math.min(r4, r5)
            int r2 = java.lang.Math.max(r2, r4)
            r0[r3] = r2
            androidx.recyclerview.widget.ThreadUtil$BackgroundCallback<T> r4 = r10.mBackgroundProxy
            int[] r0 = r10.mTmpRange
            r5 = r0[r1]
            r6 = r0[r3]
            int[] r0 = r10.mTmpRangeExtended
            r7 = r0[r1]
            r8 = r0[r3]
            int r9 = r10.mScrollHint
            r4.updateRange(r5, r6, r7, r8, r9)
        L7e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.AsyncListUtil.updateRange():void");
    }
}
