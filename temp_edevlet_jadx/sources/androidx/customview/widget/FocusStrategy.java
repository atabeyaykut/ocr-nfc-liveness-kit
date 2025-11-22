package androidx.customview.widget;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* loaded from: classes.dex */
class FocusStrategy {

    public interface BoundsAdapter<T> {
        void obtainBounds(T t10, Rect rect);
    }

    public interface CollectionAdapter<T, V> {
        V get(T t10, int r22);

        int size(T t10);
    }

    public static class SequentialComparator<T> implements Comparator<T> {
        private final BoundsAdapter<T> mAdapter;
        private final boolean mIsLayoutRtl;
        private final Rect mTemp1 = new Rect();
        private final Rect mTemp2 = new Rect();

        public SequentialComparator(boolean z10, BoundsAdapter<T> boundsAdapter) {
            this.mIsLayoutRtl = z10;
            this.mAdapter = boundsAdapter;
        }

        @Override // java.util.Comparator
        public int compare(T t10, T t11) {
            Rect rect = this.mTemp1;
            Rect rect2 = this.mTemp2;
            this.mAdapter.obtainBounds(t10, rect);
            this.mAdapter.obtainBounds(t11, rect2);
            int r52 = rect.top;
            int r6 = rect2.top;
            if (r52 < r6) {
                return -1;
            }
            if (r52 > r6) {
                return 1;
            }
            int r53 = rect.left;
            int r62 = rect2.left;
            if (r53 < r62) {
                return this.mIsLayoutRtl ? 1 : -1;
            }
            if (r53 > r62) {
                return this.mIsLayoutRtl ? -1 : 1;
            }
            int r54 = rect.bottom;
            int r63 = rect2.bottom;
            if (r54 < r63) {
                return -1;
            }
            if (r54 > r63) {
                return 1;
            }
            int r55 = rect.right;
            int r64 = rect2.right;
            if (r55 < r64) {
                return this.mIsLayoutRtl ? 1 : -1;
            }
            if (r55 > r64) {
                return this.mIsLayoutRtl ? -1 : 1;
            }
            return 0;
        }
    }

    private FocusStrategy() {
    }

    private static boolean beamBeats(int r32, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        boolean zBeamsOverlap = beamsOverlap(r32, rect, rect2);
        if (beamsOverlap(r32, rect, rect3) || !zBeamsOverlap) {
            return false;
        }
        return !isToDirectionOf(r32, rect, rect3) || r32 == 17 || r32 == 66 || majorAxisDistance(r32, rect, rect2) < majorAxisDistanceToFarEdge(r32, rect, rect3);
    }

    private static boolean beamsOverlap(int r32, @NonNull Rect rect, @NonNull Rect rect2) {
        if (r32 != 17) {
            if (r32 != 33) {
                if (r32 != 66) {
                    if (r32 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <L, T> T findNextFocusInAbsoluteDirection(@androidx.annotation.NonNull L r7, @androidx.annotation.NonNull androidx.customview.widget.FocusStrategy.CollectionAdapter<L, T> r8, @androidx.annotation.NonNull androidx.customview.widget.FocusStrategy.BoundsAdapter<T> r9, @androidx.annotation.Nullable T r10, @androidx.annotation.NonNull android.graphics.Rect r11, int r12) {
        /*
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>(r11)
            r1 = 17
            r2 = 0
            if (r12 == r1) goto L38
            r1 = 33
            if (r12 == r1) goto L2e
            r1 = 66
            if (r12 == r1) goto L26
            r1 = 130(0x82, float:1.82E-43)
            if (r12 != r1) goto L1e
            int r1 = r11.height()
            int r1 = r1 + 1
            int r1 = -r1
            goto L34
        L1e:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r8 = "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
            r7.<init>(r8)
            throw r7
        L26:
            int r1 = r11.width()
            int r1 = r1 + 1
            int r1 = -r1
            goto L3e
        L2e:
            int r1 = r11.height()
            int r1 = r1 + 1
        L34:
            r0.offset(r2, r1)
            goto L41
        L38:
            int r1 = r11.width()
            int r1 = r1 + 1
        L3e:
            r0.offset(r1, r2)
        L41:
            int r1 = r8.size(r7)
            android.graphics.Rect r3 = new android.graphics.Rect
            r3.<init>()
            r4 = 0
        L4b:
            if (r2 >= r1) goto L64
            java.lang.Object r5 = r8.get(r7, r2)
            if (r5 != r10) goto L54
            goto L61
        L54:
            r9.obtainBounds(r5, r3)
            boolean r6 = isBetterCandidate(r12, r11, r3, r0)
            if (r6 == 0) goto L61
            r0.set(r3)
            r4 = r5
        L61:
            int r2 = r2 + 1
            goto L4b
        L64:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.FocusStrategy.findNextFocusInAbsoluteDirection(java.lang.Object, androidx.customview.widget.FocusStrategy$CollectionAdapter, androidx.customview.widget.FocusStrategy$BoundsAdapter, java.lang.Object, android.graphics.Rect, int):java.lang.Object");
    }

    public static <L, T> T findNextFocusInRelativeDirection(@NonNull L l5, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t10, int r82, boolean z10, boolean z11) {
        int size = collectionAdapter.size(l5);
        ArrayList arrayList = new ArrayList(size);
        for (int r22 = 0; r22 < size; r22++) {
            arrayList.add(collectionAdapter.get(l5, r22));
        }
        Collections.sort(arrayList, new SequentialComparator(z10, boundsAdapter));
        if (r82 == 1) {
            return (T) getPreviousFocusable(t10, arrayList, z11);
        }
        if (r82 == 2) {
            return (T) getNextFocusable(t10, arrayList, z11);
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
    }

    private static <T> T getNextFocusable(T t10, ArrayList<T> arrayList, boolean z10) {
        int size = arrayList.size();
        int r12 = (t10 == null ? -1 : arrayList.lastIndexOf(t10)) + 1;
        if (r12 < size) {
            return arrayList.get(r12);
        }
        if (!z10 || size <= 0) {
            return null;
        }
        return arrayList.get(0);
    }

    private static <T> T getPreviousFocusable(T t10, ArrayList<T> arrayList, boolean z10) {
        int size = arrayList.size();
        int r12 = (t10 == null ? size : arrayList.indexOf(t10)) - 1;
        if (r12 >= 0) {
            return arrayList.get(r12);
        }
        if (!z10 || size <= 0) {
            return null;
        }
        return arrayList.get(size - 1);
    }

    private static int getWeightedDistanceFor(int r12, int r22) {
        return (r22 * r22) + (r12 * 13 * r12);
    }

    private static boolean isBetterCandidate(int r32, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        if (!isCandidate(rect, rect2, r32)) {
            return false;
        }
        if (isCandidate(rect, rect3, r32) && !beamBeats(r32, rect, rect2, rect3)) {
            return !beamBeats(r32, rect, rect3, rect2) && getWeightedDistanceFor(majorAxisDistance(r32, rect, rect2), minorAxisDistance(r32, rect, rect2)) < getWeightedDistanceFor(majorAxisDistance(r32, rect, rect3), minorAxisDistance(r32, rect, rect3));
        }
        return true;
    }

    private static boolean isCandidate(@NonNull Rect rect, @NonNull Rect rect2, int r52) {
        if (r52 == 17) {
            int r53 = rect.right;
            int r02 = rect2.right;
            return (r53 > r02 || rect.left >= r02) && rect.left > rect2.left;
        }
        if (r52 == 33) {
            int r54 = rect.bottom;
            int r03 = rect2.bottom;
            return (r54 > r03 || rect.top >= r03) && rect.top > rect2.top;
        }
        if (r52 == 66) {
            int r55 = rect.left;
            int r04 = rect2.left;
            return (r55 < r04 || rect.right <= r04) && rect.right < rect2.right;
        }
        if (r52 != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        int r56 = rect.top;
        int r05 = rect2.top;
        return (r56 < r05 || rect.bottom <= r05) && rect.bottom < rect2.bottom;
    }

    private static boolean isToDirectionOf(int r32, @NonNull Rect rect, @NonNull Rect rect2) {
        if (r32 == 17) {
            return rect.left >= rect2.right;
        }
        if (r32 == 33) {
            return rect.top >= rect2.bottom;
        }
        if (r32 == 66) {
            return rect.right <= rect2.left;
        }
        if (r32 == 130) {
            return rect.bottom <= rect2.top;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
    }

    private static int majorAxisDistance(int r12, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(0, majorAxisDistanceRaw(r12, rect, rect2));
    }

    private static int majorAxisDistanceRaw(int r12, @NonNull Rect rect, @NonNull Rect rect2) {
        int r13;
        int r22;
        if (r12 == 17) {
            r13 = rect.left;
            r22 = rect2.right;
        } else if (r12 == 33) {
            r13 = rect.top;
            r22 = rect2.bottom;
        } else if (r12 == 66) {
            r13 = rect2.left;
            r22 = rect.right;
        } else {
            if (r12 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            r13 = rect2.top;
            r22 = rect.bottom;
        }
        return r13 - r22;
    }

    private static int majorAxisDistanceToFarEdge(int r12, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(1, majorAxisDistanceToFarEdgeRaw(r12, rect, rect2));
    }

    private static int majorAxisDistanceToFarEdgeRaw(int r12, @NonNull Rect rect, @NonNull Rect rect2) {
        int r13;
        int r22;
        if (r12 == 17) {
            r13 = rect.left;
            r22 = rect2.left;
        } else if (r12 == 33) {
            r13 = rect.top;
            r22 = rect2.top;
        } else if (r12 == 66) {
            r13 = rect2.right;
            r22 = rect.right;
        } else {
            if (r12 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            r13 = rect2.bottom;
            r22 = rect.bottom;
        }
        return r13 - r22;
    }

    private static int minorAxisDistance(int r12, @NonNull Rect rect, @NonNull Rect rect2) {
        int r22;
        int r13;
        int r32;
        if (r12 == 17) {
            r22 = (rect.height() / 2) + rect.top;
            r13 = rect2.top;
            r32 = rect2.height();
        } else {
            if (r12 != 33) {
                if (r12 != 66) {
                    if (r12 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
                r22 = (rect.height() / 2) + rect.top;
                r13 = rect2.top;
                r32 = rect2.height();
            }
            r22 = (rect.width() / 2) + rect.left;
            r13 = rect2.left;
            r32 = rect2.width();
        }
        return Math.abs(r22 - ((r32 / 2) + r13));
    }
}
