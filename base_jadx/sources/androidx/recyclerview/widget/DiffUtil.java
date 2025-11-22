package androidx.recyclerview.widget;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.v;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DiffUtil {
    private static final Comparator<Diagonal> DIAGONAL_COMPARATOR = new Comparator<Diagonal>() { // from class: androidx.recyclerview.widget.DiffUtil.1
        @Override // java.util.Comparator
        public int compare(Diagonal diagonal, Diagonal diagonal2) {
            return diagonal.f996x - diagonal2.f996x;
        }
    };

    public static abstract class Callback {
        public abstract boolean areContentsTheSame(int r12, int r22);

        public abstract boolean areItemsTheSame(int r12, int r22);

        @Nullable
        public Object getChangePayload(int r12, int r22) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    public static class CenteredArray {
        private final int[] mData;
        private final int mMid;

        public CenteredArray(int r12) {
            int[] r13 = new int[r12];
            this.mData = r13;
            this.mMid = r13.length / 2;
        }

        public int[] backingData() {
            return this.mData;
        }

        public void fill(int r22) {
            Arrays.fill(this.mData, r22);
        }

        public int get(int r32) {
            return this.mData[r32 + this.mMid];
        }

        public void set(int r32, int r42) {
            this.mData[r32 + this.mMid] = r42;
        }
    }

    public static class Diagonal {
        public final int size;

        /* renamed from: x, reason: collision with root package name */
        public final int f996x;

        /* renamed from: y, reason: collision with root package name */
        public final int f997y;

        public Diagonal(int r12, int r22, int r32) {
            this.f996x = r12;
            this.f997y = r22;
            this.size = r32;
        }

        public int endX() {
            return this.f996x + this.size;
        }

        public int endY() {
            return this.f997y + this.size;
        }
    }

    public static class DiffResult {
        private static final int FLAG_CHANGED = 2;
        private static final int FLAG_MASK = 15;
        private static final int FLAG_MOVED = 12;
        private static final int FLAG_MOVED_CHANGED = 4;
        private static final int FLAG_MOVED_NOT_CHANGED = 8;
        private static final int FLAG_NOT_CHANGED = 1;
        private static final int FLAG_OFFSET = 4;
        public static final int NO_POSITION = -1;
        private final Callback mCallback;
        private final boolean mDetectMoves;
        private final List<Diagonal> mDiagonals;
        private final int[] mNewItemStatuses;
        private final int mNewListSize;
        private final int[] mOldItemStatuses;
        private final int mOldListSize;

        public DiffResult(Callback callback, List<Diagonal> list, int[] r32, int[] r42, boolean z10) {
            this.mDiagonals = list;
            this.mOldItemStatuses = r32;
            this.mNewItemStatuses = r42;
            Arrays.fill(r32, 0);
            Arrays.fill(r42, 0);
            this.mCallback = callback;
            this.mOldListSize = callback.getOldListSize();
            this.mNewListSize = callback.getNewListSize();
            this.mDetectMoves = z10;
            addEdgeDiagonals();
            findMatchingItems();
        }

        private void addEdgeDiagonals() {
            Diagonal diagonal = this.mDiagonals.isEmpty() ? null : this.mDiagonals.get(0);
            if (diagonal == null || diagonal.f996x != 0 || diagonal.f997y != 0) {
                this.mDiagonals.add(0, new Diagonal(0, 0, 0));
            }
            this.mDiagonals.add(new Diagonal(this.mOldListSize, this.mNewListSize, 0));
        }

        private void findMatchingAddition(int r6) {
            int size = this.mDiagonals.size();
            int r22 = 0;
            for (int r12 = 0; r12 < size; r12++) {
                Diagonal diagonal = this.mDiagonals.get(r12);
                while (r22 < diagonal.f997y) {
                    if (this.mNewItemStatuses[r22] == 0 && this.mCallback.areItemsTheSame(r6, r22)) {
                        int r02 = this.mCallback.areContentsTheSame(r6, r22) ? 8 : 4;
                        this.mOldItemStatuses[r6] = (r22 << 4) | r02;
                        this.mNewItemStatuses[r22] = (r6 << 4) | r02;
                        return;
                    }
                    r22++;
                }
                r22 = diagonal.endY();
            }
        }

        private void findMatchingItems() {
            for (Diagonal diagonal : this.mDiagonals) {
                for (int r22 = 0; r22 < diagonal.size; r22++) {
                    int r32 = diagonal.f996x + r22;
                    int r42 = diagonal.f997y + r22;
                    int r52 = this.mCallback.areContentsTheSame(r32, r42) ? 1 : 2;
                    this.mOldItemStatuses[r32] = (r42 << 4) | r52;
                    this.mNewItemStatuses[r42] = (r32 << 4) | r52;
                }
            }
            if (this.mDetectMoves) {
                findMoveMatches();
            }
        }

        private void findMoveMatches() {
            int r12 = 0;
            for (Diagonal diagonal : this.mDiagonals) {
                while (r12 < diagonal.f996x) {
                    if (this.mOldItemStatuses[r12] == 0) {
                        findMatchingAddition(r12);
                    }
                    r12++;
                }
                r12 = diagonal.endX();
            }
        }

        @Nullable
        private static PostponedUpdate getPostponedUpdate(Collection<PostponedUpdate> collection, int r32, boolean z10) {
            PostponedUpdate next;
            Iterator<PostponedUpdate> it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (next.posInOwnerList == r32 && next.removal == z10) {
                    it.remove();
                    break;
                }
            }
            while (it.hasNext()) {
                PostponedUpdate next2 = it.next();
                int r12 = next2.currentPos;
                next2.currentPos = z10 ? r12 - 1 : r12 + 1;
            }
            return next;
        }

        public int convertNewPositionToOld(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int r42) {
            if (r42 < 0 || r42 >= this.mNewListSize) {
                StringBuilder sbE = v.e("Index out of bounds - passed position = ", r42, ", new list size = ");
                sbE.append(this.mNewListSize);
                throw new IndexOutOfBoundsException(sbE.toString());
            }
            int r43 = this.mNewItemStatuses[r42];
            if ((r43 & 15) == 0) {
                return -1;
            }
            return r43 >> 4;
        }

        public int convertOldPositionToNew(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int r42) {
            if (r42 < 0 || r42 >= this.mOldListSize) {
                StringBuilder sbE = v.e("Index out of bounds - passed position = ", r42, ", old list size = ");
                sbE.append(this.mOldListSize);
                throw new IndexOutOfBoundsException(sbE.toString());
            }
            int r43 = this.mOldItemStatuses[r42];
            if ((r43 & 15) == 0) {
                return -1;
            }
            return r43 >> 4;
        }

        public void dispatchUpdatesTo(@NonNull ListUpdateCallback listUpdateCallback) {
            int r92;
            BatchingListUpdateCallback batchingListUpdateCallback = listUpdateCallback instanceof BatchingListUpdateCallback ? (BatchingListUpdateCallback) listUpdateCallback : new BatchingListUpdateCallback(listUpdateCallback);
            int r02 = this.mOldListSize;
            ArrayDeque arrayDeque = new ArrayDeque();
            int r22 = this.mOldListSize;
            int r32 = this.mNewListSize;
            for (int size = this.mDiagonals.size() - 1; size >= 0; size--) {
                Diagonal diagonal = this.mDiagonals.get(size);
                int r72 = diagonal.endX();
                int r82 = diagonal.endY();
                while (true) {
                    if (r22 <= r72) {
                        break;
                    }
                    r22--;
                    int r10 = this.mOldItemStatuses[r22];
                    if ((r10 & 12) != 0) {
                        int r11 = r10 >> 4;
                        PostponedUpdate postponedUpdate = getPostponedUpdate(arrayDeque, r11, false);
                        if (postponedUpdate != null) {
                            int r93 = (r02 - postponedUpdate.currentPos) - 1;
                            batchingListUpdateCallback.onMoved(r22, r93);
                            if ((r10 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(r93, 1, this.mCallback.getChangePayload(r22, r11));
                            }
                        } else {
                            arrayDeque.add(new PostponedUpdate(r22, (r02 - r22) - 1, true));
                        }
                    } else {
                        batchingListUpdateCallback.onRemoved(r22, 1);
                        r02--;
                    }
                }
                while (r32 > r82) {
                    r32--;
                    int r73 = this.mNewItemStatuses[r32];
                    if ((r73 & 12) != 0) {
                        int r102 = r73 >> 4;
                        PostponedUpdate postponedUpdate2 = getPostponedUpdate(arrayDeque, r102, true);
                        if (postponedUpdate2 == null) {
                            arrayDeque.add(new PostponedUpdate(r32, r02 - r22, false));
                        } else {
                            batchingListUpdateCallback.onMoved((r02 - postponedUpdate2.currentPos) - 1, r22);
                            if ((r73 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(r22, 1, this.mCallback.getChangePayload(r102, r32));
                            }
                        }
                    } else {
                        batchingListUpdateCallback.onInserted(r22, 1);
                        r02++;
                    }
                }
                int r23 = diagonal.f996x;
                int r33 = diagonal.f997y;
                for (r92 = 0; r92 < diagonal.size; r92++) {
                    if ((this.mOldItemStatuses[r23] & 15) == 2) {
                        batchingListUpdateCallback.onChanged(r23, 1, this.mCallback.getChangePayload(r23, r33));
                    }
                    r23++;
                    r33++;
                }
                r22 = diagonal.f996x;
                r32 = diagonal.f997y;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }

        public void dispatchUpdatesTo(@NonNull RecyclerView.Adapter adapter) {
            dispatchUpdatesTo(new AdapterListUpdateCallback(adapter));
        }
    }

    public static abstract class ItemCallback<T> {
        public abstract boolean areContentsTheSame(@NonNull T t10, @NonNull T t11);

        public abstract boolean areItemsTheSame(@NonNull T t10, @NonNull T t11);

        @Nullable
        public Object getChangePayload(@NonNull T t10, @NonNull T t11) {
            return null;
        }
    }

    public static class PostponedUpdate {
        int currentPos;
        int posInOwnerList;
        boolean removal;

        public PostponedUpdate(int r12, int r22, boolean z10) {
            this.posInOwnerList = r12;
            this.currentPos = r22;
            this.removal = z10;
        }
    }

    public static class Range {
        int newListEnd;
        int newListStart;
        int oldListEnd;
        int oldListStart;

        public Range() {
        }

        public Range(int r12, int r22, int r32, int r42) {
            this.oldListStart = r12;
            this.oldListEnd = r22;
            this.newListStart = r32;
            this.newListEnd = r42;
        }

        public int newSize() {
            return this.newListEnd - this.newListStart;
        }

        public int oldSize() {
            return this.oldListEnd - this.oldListStart;
        }
    }

    public static class Snake {
        public int endX;
        public int endY;
        public boolean reverse;
        public int startX;
        public int startY;

        public int diagonalSize() {
            return Math.min(this.endX - this.startX, this.endY - this.startY);
        }

        public boolean hasAdditionOrRemoval() {
            return this.endY - this.startY != this.endX - this.startX;
        }

        public boolean isAddition() {
            return this.endY - this.startY > this.endX - this.startX;
        }

        @NonNull
        public Diagonal toDiagonal() {
            if (hasAdditionOrRemoval()) {
                return this.reverse ? new Diagonal(this.startX, this.startY, diagonalSize()) : isAddition() ? new Diagonal(this.startX, this.startY + 1, diagonalSize()) : new Diagonal(this.startX + 1, this.startY, diagonalSize());
            }
            int r12 = this.startX;
            return new Diagonal(r12, this.startY, this.endX - r12);
        }
    }

    private DiffUtil() {
    }

    @Nullable
    private static Snake backward(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2, int r15) {
        int r52;
        int r6;
        int r92;
        boolean z10 = (range.oldSize() - range.newSize()) % 2 == 0;
        int r22 = range.oldSize() - range.newSize();
        int r32 = -r15;
        for (int r42 = r32; r42 <= r15; r42 += 2) {
            if (r42 == r32 || (r42 != r15 && centeredArray2.get(r42 + 1) < centeredArray2.get(r42 - 1))) {
                r52 = centeredArray2.get(r42 + 1);
                r6 = r52;
            } else {
                r52 = centeredArray2.get(r42 - 1);
                r6 = r52 - 1;
            }
            int r72 = range.newListEnd - ((range.oldListEnd - r6) - r42);
            int r82 = (r15 == 0 || r6 != r52) ? r72 : r72 + 1;
            while (r6 > range.oldListStart && r72 > range.newListStart && callback.areItemsTheSame(r6 - 1, r72 - 1)) {
                r6--;
                r72--;
            }
            centeredArray2.set(r42, r6);
            if (z10 && (r92 = r22 - r42) >= r32 && r92 <= r15 && centeredArray.get(r92) >= r6) {
                Snake snake = new Snake();
                snake.startX = r6;
                snake.startY = r72;
                snake.endX = r52;
                snake.endY = r82;
                snake.reverse = true;
                return snake;
            }
        }
        return null;
    }

    @NonNull
    public static DiffResult calculateDiff(@NonNull Callback callback) {
        return calculateDiff(callback, true);
    }

    @NonNull
    public static DiffResult calculateDiff(@NonNull Callback callback, boolean z10) {
        int oldListSize = callback.getOldListSize();
        int newListSize = callback.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Range(0, oldListSize, 0, newListSize));
        int r02 = ((((oldListSize + newListSize) + 1) / 2) * 2) + 1;
        CenteredArray centeredArray = new CenteredArray(r02);
        CenteredArray centeredArray2 = new CenteredArray(r02);
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range = (Range) arrayList2.remove(arrayList2.size() - 1);
            Snake snakeMidPoint = midPoint(range, callback, centeredArray, centeredArray2);
            if (snakeMidPoint != null) {
                if (snakeMidPoint.diagonalSize() > 0) {
                    arrayList.add(snakeMidPoint.toDiagonal());
                }
                Range range2 = arrayList3.isEmpty() ? new Range() : (Range) arrayList3.remove(arrayList3.size() - 1);
                range2.oldListStart = range.oldListStart;
                range2.newListStart = range.newListStart;
                range2.oldListEnd = snakeMidPoint.startX;
                range2.newListEnd = snakeMidPoint.startY;
                arrayList2.add(range2);
                range.oldListEnd = range.oldListEnd;
                range.newListEnd = range.newListEnd;
                range.oldListStart = snakeMidPoint.endX;
                range.newListStart = snakeMidPoint.endY;
                arrayList2.add(range);
            } else {
                arrayList3.add(range);
            }
        }
        Collections.sort(arrayList, DIAGONAL_COMPARATOR);
        return new DiffResult(callback, arrayList, centeredArray.backingData(), centeredArray2.backingData(), z10);
    }

    @Nullable
    private static Snake forward(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2, int r15) {
        int r52;
        int r6;
        int r92;
        boolean z10 = Math.abs(range.oldSize() - range.newSize()) % 2 == 1;
        int r02 = range.oldSize() - range.newSize();
        int r32 = -r15;
        for (int r42 = r32; r42 <= r15; r42 += 2) {
            if (r42 == r32 || (r42 != r15 && centeredArray.get(r42 + 1) > centeredArray.get(r42 - 1))) {
                r52 = centeredArray.get(r42 + 1);
                r6 = r52;
            } else {
                r52 = centeredArray.get(r42 - 1);
                r6 = r52 + 1;
            }
            int r82 = ((r6 - range.oldListStart) + range.newListStart) - r42;
            int r72 = (r15 == 0 || r6 != r52) ? r82 : r82 - 1;
            while (r6 < range.oldListEnd && r82 < range.newListEnd && callback.areItemsTheSame(r6, r82)) {
                r6++;
                r82++;
            }
            centeredArray.set(r42, r6);
            if (z10 && (r92 = r02 - r42) >= r32 + 1 && r92 <= r15 - 1 && centeredArray2.get(r92) <= r6) {
                Snake snake = new Snake();
                snake.startX = r52;
                snake.startY = r72;
                snake.endX = r6;
                snake.endY = r82;
                snake.reverse = false;
                return snake;
            }
        }
        return null;
    }

    @Nullable
    private static Snake midPoint(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2) {
        if (range.oldSize() >= 1 && range.newSize() >= 1) {
            int r02 = ((range.oldSize() + range.newSize()) + 1) / 2;
            centeredArray.set(1, range.oldListStart);
            centeredArray2.set(1, range.oldListEnd);
            for (int r22 = 0; r22 < r02; r22++) {
                Snake snakeForward = forward(range, callback, centeredArray, centeredArray2, r22);
                if (snakeForward != null) {
                    return snakeForward;
                }
                Snake snakeBackward = backward(range, callback, centeredArray, centeredArray2, r22);
                if (snakeBackward != null) {
                    return snakeBackward;
                }
            }
        }
        return null;
    }
}
