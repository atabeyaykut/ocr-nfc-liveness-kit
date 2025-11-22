package androidx.recyclerview.widget;

import androidx.camera.core.impl.a;
import androidx.core.util.Pools;
import androidx.recyclerview.widget.OpReorderer;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
final class AdapterHelper implements OpReorderer.Callback {
    private static final boolean DEBUG = false;
    static final int POSITION_TYPE_INVISIBLE = 0;
    static final int POSITION_TYPE_NEW_OR_LAID_OUT = 1;
    private static final String TAG = "AHT";
    final Callback mCallback;
    final boolean mDisableRecycler;
    private int mExistingUpdateTypes;
    Runnable mOnItemProcessedCallback;
    final OpReorderer mOpReorderer;
    final ArrayList<UpdateOp> mPendingUpdates;
    final ArrayList<UpdateOp> mPostponedList;
    private Pools.Pool<UpdateOp> mUpdateOpPool;

    public interface Callback {
        RecyclerView.ViewHolder findViewHolder(int r12);

        void markViewHoldersUpdated(int r12, int r22, Object obj);

        void offsetPositionsForAdd(int r12, int r22);

        void offsetPositionsForMove(int r12, int r22);

        void offsetPositionsForRemovingInvisible(int r12, int r22);

        void offsetPositionsForRemovingLaidOutOrNewView(int r12, int r22);

        void onDispatchFirstPass(UpdateOp updateOp);

        void onDispatchSecondPass(UpdateOp updateOp);
    }

    public static final class UpdateOp {
        static final int ADD = 1;
        static final int MOVE = 8;
        static final int POOL_SIZE = 30;
        static final int REMOVE = 2;
        static final int UPDATE = 4;
        int cmd;
        int itemCount;
        Object payload;
        int positionStart;

        public UpdateOp(int r12, int r22, int r32, Object obj) {
            this.cmd = r12;
            this.positionStart = r22;
            this.itemCount = r32;
            this.payload = obj;
        }

        public String cmdToString() {
            int r02 = this.cmd;
            return r02 != 1 ? r02 != 2 ? r02 != 4 ? r02 != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UpdateOp)) {
                return false;
            }
            UpdateOp updateOp = (UpdateOp) obj;
            int r12 = this.cmd;
            if (r12 != updateOp.cmd) {
                return false;
            }
            if (r12 == 8 && Math.abs(this.itemCount - this.positionStart) == 1 && this.itemCount == updateOp.positionStart && this.positionStart == updateOp.itemCount) {
                return true;
            }
            if (this.itemCount != updateOp.itemCount || this.positionStart != updateOp.positionStart) {
                return false;
            }
            Object obj2 = this.payload;
            Object obj3 = updateOp.payload;
            if (obj2 != null) {
                if (!obj2.equals(obj3)) {
                    return false;
                }
            } else if (obj3 != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.cmd * 31) + this.positionStart) * 31) + this.itemCount;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Integer.toHexString(System.identityHashCode(this)));
            sb2.append("[");
            sb2.append(cmdToString());
            sb2.append(",s:");
            sb2.append(this.positionStart);
            sb2.append("c:");
            sb2.append(this.itemCount);
            sb2.append(",p:");
            return a.e(sb2, this.payload, "]");
        }
    }

    public AdapterHelper(Callback callback) {
        this(callback, false);
    }

    public AdapterHelper(Callback callback, boolean z10) {
        this.mUpdateOpPool = new Pools.SimplePool(30);
        this.mPendingUpdates = new ArrayList<>();
        this.mPostponedList = new ArrayList<>();
        this.mExistingUpdateTypes = 0;
        this.mCallback = callback;
        this.mDisableRecycler = z10;
        this.mOpReorderer = new OpReorderer(this);
    }

    private void applyAdd(UpdateOp updateOp) {
        postponeAndUpdateViewHolders(updateOp);
    }

    private void applyMove(UpdateOp updateOp) {
        postponeAndUpdateViewHolders(updateOp);
    }

    private void applyRemove(UpdateOp updateOp) {
        boolean z10;
        char c10;
        int r02 = updateOp.positionStart;
        int r12 = updateOp.itemCount + r02;
        char c11 = 65535;
        int r42 = r02;
        int r52 = 0;
        while (r42 < r12) {
            if (this.mCallback.findViewHolder(r42) != null || canFindInPreLayout(r42)) {
                if (c11 == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(2, r02, r52, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                c10 = 1;
            } else {
                if (c11 == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(2, r02, r52, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                c10 = 0;
            }
            if (z10) {
                r42 -= r52;
                r12 -= r52;
                r52 = 1;
            } else {
                r52++;
            }
            r42++;
            c11 = c10;
        }
        if (r52 != updateOp.itemCount) {
            recycleUpdateOp(updateOp);
            updateOp = obtainUpdateOp(2, r02, r52, null);
        }
        if (c11 == 0) {
            dispatchAndUpdateViewHolders(updateOp);
        } else {
            postponeAndUpdateViewHolders(updateOp);
        }
    }

    private void applyUpdate(UpdateOp updateOp) {
        int r02 = updateOp.positionStart;
        int r12 = updateOp.itemCount + r02;
        int r32 = r02;
        char c10 = 65535;
        int r52 = 0;
        while (r02 < r12) {
            if (this.mCallback.findViewHolder(r02) != null || canFindInPreLayout(r02)) {
                if (c10 == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(4, r32, r52, updateOp.payload));
                    r32 = r02;
                    r52 = 0;
                }
                c10 = 1;
            } else {
                if (c10 == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(4, r32, r52, updateOp.payload));
                    r32 = r02;
                    r52 = 0;
                }
                c10 = 0;
            }
            r52++;
            r02++;
        }
        if (r52 != updateOp.itemCount) {
            Object obj = updateOp.payload;
            recycleUpdateOp(updateOp);
            updateOp = obtainUpdateOp(4, r32, r52, obj);
        }
        if (c10 == 0) {
            dispatchAndUpdateViewHolders(updateOp);
        } else {
            postponeAndUpdateViewHolders(updateOp);
        }
    }

    private boolean canFindInPreLayout(int r82) {
        int size = this.mPostponedList.size();
        for (int r22 = 0; r22 < size; r22++) {
            UpdateOp updateOp = this.mPostponedList.get(r22);
            int r42 = updateOp.cmd;
            if (r42 == 8) {
                if (findPositionOffset(updateOp.itemCount, r22 + 1) == r82) {
                    return true;
                }
            } else if (r42 == 1) {
                int r43 = updateOp.positionStart;
                int r32 = updateOp.itemCount + r43;
                while (r43 < r32) {
                    if (findPositionOffset(r43, r22 + 1) == r82) {
                        return true;
                    }
                    r43++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void dispatchAndUpdateViewHolders(UpdateOp updateOp) {
        int r32;
        int r02 = updateOp.cmd;
        if (r02 == 1 || r02 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int r03 = updatePositionWithPostponed(updateOp.positionStart, r02);
        int r22 = updateOp.positionStart;
        int r33 = updateOp.cmd;
        if (r33 == 2) {
            r32 = 0;
        } else {
            if (r33 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + updateOp);
            }
            r32 = 1;
        }
        int r82 = 1;
        for (int r72 = 1; r72 < updateOp.itemCount; r72++) {
            int r92 = updatePositionWithPostponed((r32 * r72) + updateOp.positionStart, updateOp.cmd);
            int r10 = updateOp.cmd;
            if (r10 == 2 ? r92 == r03 : r10 == 4 && r92 == r03 + 1) {
                r82++;
            } else {
                UpdateOp updateOpObtainUpdateOp = obtainUpdateOp(r10, r03, r82, updateOp.payload);
                dispatchFirstPassAndUpdateViewHolders(updateOpObtainUpdateOp, r22);
                recycleUpdateOp(updateOpObtainUpdateOp);
                if (updateOp.cmd == 4) {
                    r22 += r82;
                }
                r03 = r92;
                r82 = 1;
            }
        }
        Object obj = updateOp.payload;
        recycleUpdateOp(updateOp);
        if (r82 > 0) {
            UpdateOp updateOpObtainUpdateOp2 = obtainUpdateOp(updateOp.cmd, r03, r82, obj);
            dispatchFirstPassAndUpdateViewHolders(updateOpObtainUpdateOp2, r22);
            recycleUpdateOp(updateOpObtainUpdateOp2);
        }
    }

    private void postponeAndUpdateViewHolders(UpdateOp updateOp) {
        this.mPostponedList.add(updateOp);
        int r02 = updateOp.cmd;
        if (r02 == 1) {
            this.mCallback.offsetPositionsForAdd(updateOp.positionStart, updateOp.itemCount);
            return;
        }
        if (r02 == 2) {
            this.mCallback.offsetPositionsForRemovingLaidOutOrNewView(updateOp.positionStart, updateOp.itemCount);
            return;
        }
        if (r02 == 4) {
            this.mCallback.markViewHoldersUpdated(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
        } else if (r02 == 8) {
            this.mCallback.offsetPositionsForMove(updateOp.positionStart, updateOp.itemCount);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + updateOp);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int updatePositionWithPostponed(int r9, int r10) {
        /*
            r8 = this;
            java.util.ArrayList<androidx.recyclerview.widget.AdapterHelper$UpdateOp> r0 = r8.mPostponedList
            int r0 = r0.size()
            r1 = 1
            int r0 = r0 - r1
        L8:
            r2 = 8
            if (r0 < 0) goto L7d
            java.util.ArrayList<androidx.recyclerview.widget.AdapterHelper$UpdateOp> r3 = r8.mPostponedList
            java.lang.Object r3 = r3.get(r0)
            androidx.recyclerview.widget.AdapterHelper$UpdateOp r3 = (androidx.recyclerview.widget.AdapterHelper.UpdateOp) r3
            int r4 = r3.cmd
            r5 = 2
            if (r4 != r2) goto L5e
            int r2 = r3.positionStart
            int r4 = r3.itemCount
            if (r2 >= r4) goto L22
            r6 = r2
            r7 = r4
            goto L24
        L22:
            r7 = r2
            r6 = r4
        L24:
            if (r9 < r6) goto L48
            if (r9 > r7) goto L48
            if (r6 != r2) goto L39
            if (r10 != r1) goto L31
            int r4 = r4 + 1
        L2e:
            r3.itemCount = r4
            goto L36
        L31:
            if (r10 != r5) goto L36
            int r4 = r4 + (-1)
            goto L2e
        L36:
            int r9 = r9 + 1
            goto L7a
        L39:
            if (r10 != r1) goto L40
            int r2 = r2 + 1
        L3d:
            r3.positionStart = r2
            goto L45
        L40:
            if (r10 != r5) goto L45
            int r2 = r2 + (-1)
            goto L3d
        L45:
            int r9 = r9 + (-1)
            goto L7a
        L48:
            if (r9 >= r2) goto L7a
            if (r10 != r1) goto L55
            int r2 = r2 + 1
            r3.positionStart = r2
            int r4 = r4 + 1
        L52:
            r3.itemCount = r4
            goto L7a
        L55:
            if (r10 != r5) goto L7a
            int r2 = r2 + (-1)
            r3.positionStart = r2
            int r4 = r4 + (-1)
            goto L52
        L5e:
            int r2 = r3.positionStart
            if (r2 > r9) goto L6e
            if (r4 != r1) goto L68
            int r2 = r3.itemCount
            int r9 = r9 - r2
            goto L7a
        L68:
            if (r4 != r5) goto L7a
            int r2 = r3.itemCount
            int r9 = r9 + r2
            goto L7a
        L6e:
            if (r10 != r1) goto L75
            int r2 = r2 + 1
        L72:
            r3.positionStart = r2
            goto L7a
        L75:
            if (r10 != r5) goto L7a
            int r2 = r2 + (-1)
            goto L72
        L7a:
            int r0 = r0 + (-1)
            goto L8
        L7d:
            java.util.ArrayList<androidx.recyclerview.widget.AdapterHelper$UpdateOp> r10 = r8.mPostponedList
            int r10 = r10.size()
            int r10 = r10 - r1
        L84:
            if (r10 < 0) goto Laa
            java.util.ArrayList<androidx.recyclerview.widget.AdapterHelper$UpdateOp> r0 = r8.mPostponedList
            java.lang.Object r0 = r0.get(r10)
            androidx.recyclerview.widget.AdapterHelper$UpdateOp r0 = (androidx.recyclerview.widget.AdapterHelper.UpdateOp) r0
            int r1 = r0.cmd
            if (r1 != r2) goto L9b
            int r1 = r0.itemCount
            int r3 = r0.positionStart
            if (r1 == r3) goto L9f
            if (r1 >= 0) goto La7
            goto L9f
        L9b:
            int r1 = r0.itemCount
            if (r1 > 0) goto La7
        L9f:
            java.util.ArrayList<androidx.recyclerview.widget.AdapterHelper$UpdateOp> r1 = r8.mPostponedList
            r1.remove(r10)
            r8.recycleUpdateOp(r0)
        La7:
            int r10 = r10 + (-1)
            goto L84
        Laa:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.AdapterHelper.updatePositionWithPostponed(int, int):int");
    }

    public AdapterHelper addUpdateOp(UpdateOp... updateOpArr) {
        Collections.addAll(this.mPendingUpdates, updateOpArr);
        return this;
    }

    public int applyPendingUpdatesToPosition(int r6) {
        int size = this.mPendingUpdates.size();
        for (int r12 = 0; r12 < size; r12++) {
            UpdateOp updateOp = this.mPendingUpdates.get(r12);
            int r32 = updateOp.cmd;
            if (r32 != 1) {
                if (r32 == 2) {
                    int r33 = updateOp.positionStart;
                    if (r33 <= r6) {
                        int r22 = updateOp.itemCount;
                        if (r33 + r22 > r6) {
                            return -1;
                        }
                        r6 -= r22;
                    } else {
                        continue;
                    }
                } else if (r32 == 8) {
                    int r34 = updateOp.positionStart;
                    if (r34 == r6) {
                        r6 = updateOp.itemCount;
                    } else {
                        if (r34 < r6) {
                            r6--;
                        }
                        if (updateOp.itemCount <= r6) {
                            r6++;
                        }
                    }
                }
            } else if (updateOp.positionStart <= r6) {
                r6 += updateOp.itemCount;
            }
        }
        return r6;
    }

    public void consumePostponedUpdates() {
        int size = this.mPostponedList.size();
        for (int r22 = 0; r22 < size; r22++) {
            this.mCallback.onDispatchSecondPass(this.mPostponedList.get(r22));
        }
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    public void consumeUpdatesInOnePass() {
        consumePostponedUpdates();
        int size = this.mPendingUpdates.size();
        for (int r22 = 0; r22 < size; r22++) {
            UpdateOp updateOp = this.mPendingUpdates.get(r22);
            int r42 = updateOp.cmd;
            if (r42 == 1) {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.offsetPositionsForAdd(updateOp.positionStart, updateOp.itemCount);
            } else if (r42 == 2) {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.offsetPositionsForRemovingInvisible(updateOp.positionStart, updateOp.itemCount);
            } else if (r42 == 4) {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.markViewHoldersUpdated(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
            } else if (r42 == 8) {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.offsetPositionsForMove(updateOp.positionStart, updateOp.itemCount);
            }
            Runnable runnable = this.mOnItemProcessedCallback;
            if (runnable != null) {
                runnable.run();
            }
        }
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        this.mExistingUpdateTypes = 0;
    }

    public void dispatchFirstPassAndUpdateViewHolders(UpdateOp updateOp, int r42) {
        this.mCallback.onDispatchFirstPass(updateOp);
        int r02 = updateOp.cmd;
        if (r02 == 2) {
            this.mCallback.offsetPositionsForRemovingInvisible(r42, updateOp.itemCount);
        } else {
            if (r02 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            this.mCallback.markViewHoldersUpdated(r42, updateOp.itemCount, updateOp.payload);
        }
    }

    public int findPositionOffset(int r22) {
        return findPositionOffset(r22, 0);
    }

    public int findPositionOffset(int r6, int r72) {
        int size = this.mPostponedList.size();
        while (r72 < size) {
            UpdateOp updateOp = this.mPostponedList.get(r72);
            int r22 = updateOp.cmd;
            if (r22 == 8) {
                int r23 = updateOp.positionStart;
                if (r23 == r6) {
                    r6 = updateOp.itemCount;
                } else {
                    if (r23 < r6) {
                        r6--;
                    }
                    if (updateOp.itemCount <= r6) {
                        r6++;
                    }
                }
            } else {
                int r32 = updateOp.positionStart;
                if (r32 > r6) {
                    continue;
                } else if (r22 == 2) {
                    int r12 = updateOp.itemCount;
                    if (r6 < r32 + r12) {
                        return -1;
                    }
                    r6 -= r12;
                } else if (r22 == 1) {
                    r6 += updateOp.itemCount;
                }
            }
            r72++;
        }
        return r6;
    }

    public boolean hasAnyUpdateTypes(int r22) {
        return (r22 & this.mExistingUpdateTypes) != 0;
    }

    public boolean hasPendingUpdates() {
        return this.mPendingUpdates.size() > 0;
    }

    public boolean hasUpdates() {
        return (this.mPostponedList.isEmpty() || this.mPendingUpdates.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    public UpdateOp obtainUpdateOp(int r22, int r32, int r42, Object obj) {
        UpdateOp updateOpAcquire = this.mUpdateOpPool.acquire();
        if (updateOpAcquire == null) {
            return new UpdateOp(r22, r32, r42, obj);
        }
        updateOpAcquire.cmd = r22;
        updateOpAcquire.positionStart = r32;
        updateOpAcquire.itemCount = r42;
        updateOpAcquire.payload = obj;
        return updateOpAcquire;
    }

    public boolean onItemRangeChanged(int r52, int r6, Object obj) {
        if (r6 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(4, r52, r6, obj));
        this.mExistingUpdateTypes |= 4;
        return this.mPendingUpdates.size() == 1;
    }

    public boolean onItemRangeInserted(int r52, int r6) {
        if (r6 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(1, r52, r6, null));
        this.mExistingUpdateTypes |= 1;
        return this.mPendingUpdates.size() == 1;
    }

    public boolean onItemRangeMoved(int r52, int r6, int r72) {
        if (r52 == r6) {
            return false;
        }
        if (r72 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.mPendingUpdates.add(obtainUpdateOp(8, r52, r6, null));
        this.mExistingUpdateTypes |= 8;
        return this.mPendingUpdates.size() == 1;
    }

    public boolean onItemRangeRemoved(int r6, int r72) {
        if (r72 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(2, r6, r72, null));
        this.mExistingUpdateTypes |= 2;
        return this.mPendingUpdates.size() == 1;
    }

    public void preProcess() {
        this.mOpReorderer.reorderOps(this.mPendingUpdates);
        int size = this.mPendingUpdates.size();
        for (int r12 = 0; r12 < size; r12++) {
            UpdateOp updateOp = this.mPendingUpdates.get(r12);
            int r32 = updateOp.cmd;
            if (r32 == 1) {
                applyAdd(updateOp);
            } else if (r32 == 2) {
                applyRemove(updateOp);
            } else if (r32 == 4) {
                applyUpdate(updateOp);
            } else if (r32 == 8) {
                applyMove(updateOp);
            }
            Runnable runnable = this.mOnItemProcessedCallback;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.mPendingUpdates.clear();
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    public void recycleUpdateOp(UpdateOp updateOp) {
        if (this.mDisableRecycler) {
            return;
        }
        updateOp.payload = null;
        this.mUpdateOpPool.release(updateOp);
    }

    public void recycleUpdateOpsAndClearList(List<UpdateOp> list) {
        int size = list.size();
        for (int r12 = 0; r12 < size; r12++) {
            recycleUpdateOp(list.get(r12));
        }
        list.clear();
    }

    public void reset() {
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }
}
