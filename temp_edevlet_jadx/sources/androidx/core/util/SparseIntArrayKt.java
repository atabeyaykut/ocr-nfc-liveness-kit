package androidx.core.util;

import android.util.SparseIntArray;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import m9.b0;
import x9.p;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\u001d\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000H\u0086\u0002\u001a\u0015\u0010\n\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\b\u001a\u0015\u0010\u000b\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0001H\u0086\b\u001a\u001d\u0010\r\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u0001H\u0086\b\u001a&\u0010\u000f\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00010\u000eH\u0086\bø\u0001\u0000\u001a\r\u0010\u0010\u001a\u00020\u0003*\u00020\u0000H\u0086\b\u001a\r\u0010\u0011\u001a\u00020\u0003*\u00020\u0000H\u0086\b\u001a\u001a\u0010\u0012\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001\u001a\u0012\u0010\u0013\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000\u001a*\u0010\u0016\u001a\u00020\u0006*\u00020\u00002\u0018\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0014H\u0086\bø\u0001\u0000\u001a\n\u0010\u0018\u001a\u00020\u0017*\u00020\u0000\u001a\n\u0010\u0019\u001a\u00020\u0017*\u00020\u0000\"\u0016\u0010\u001c\u001a\u00020\u0001*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001d"}, d2 = {"Landroid/util/SparseIntArray;", "", "key", "", "contains", "value", "Ll9/m;", "set", "other", "plus", "containsKey", "containsValue", "defaultValue", "getOrDefault", "Lkotlin/Function0;", "getOrElse", "isEmpty", "isNotEmpty", "remove", "putAll", "Lkotlin/Function2;", "action", "forEach", "Lm9/b0;", "keyIterator", "valueIterator", "getSize", "(Landroid/util/SparseIntArray;)I", "size", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class SparseIntArrayKt {
    public static final boolean contains(SparseIntArray sparseIntArray, int r22) {
        h.f(sparseIntArray, "<this>");
        return sparseIntArray.indexOfKey(r22) >= 0;
    }

    public static final boolean containsKey(SparseIntArray sparseIntArray, int r22) {
        h.f(sparseIntArray, "<this>");
        return sparseIntArray.indexOfKey(r22) >= 0;
    }

    public static final boolean containsValue(SparseIntArray sparseIntArray, int r22) {
        h.f(sparseIntArray, "<this>");
        return sparseIntArray.indexOfValue(r22) >= 0;
    }

    public static final void forEach(SparseIntArray sparseIntArray, p<? super Integer, ? super Integer, m> action) {
        h.f(sparseIntArray, "<this>");
        h.f(action, "action");
        int size = sparseIntArray.size();
        for (int r12 = 0; r12 < size; r12++) {
            action.mo7invoke(Integer.valueOf(sparseIntArray.keyAt(r12)), Integer.valueOf(sparseIntArray.valueAt(r12)));
        }
    }

    public static final int getOrDefault(SparseIntArray sparseIntArray, int r22, int r32) {
        h.f(sparseIntArray, "<this>");
        return sparseIntArray.get(r22, r32);
    }

    public static final int getOrElse(SparseIntArray sparseIntArray, int r22, x9.a<Integer> defaultValue) {
        h.f(sparseIntArray, "<this>");
        h.f(defaultValue, "defaultValue");
        int r23 = sparseIntArray.indexOfKey(r22);
        return r23 >= 0 ? sparseIntArray.valueAt(r23) : defaultValue.invoke().intValue();
    }

    public static final int getSize(SparseIntArray sparseIntArray) {
        h.f(sparseIntArray, "<this>");
        return sparseIntArray.size();
    }

    public static final boolean isEmpty(SparseIntArray sparseIntArray) {
        h.f(sparseIntArray, "<this>");
        return sparseIntArray.size() == 0;
    }

    public static final boolean isNotEmpty(SparseIntArray sparseIntArray) {
        h.f(sparseIntArray, "<this>");
        return sparseIntArray.size() != 0;
    }

    public static final b0 keyIterator(final SparseIntArray sparseIntArray) {
        h.f(sparseIntArray, "<this>");
        return new b0() { // from class: androidx.core.util.SparseIntArrayKt.keyIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseIntArray.size();
            }

            @Override // m9.b0
            public int nextInt() {
                SparseIntArray sparseIntArray2 = sparseIntArray;
                int r12 = this.index;
                this.index = r12 + 1;
                return sparseIntArray2.keyAt(r12);
            }

            public final void setIndex(int r12) {
                this.index = r12;
            }
        };
    }

    public static final SparseIntArray plus(SparseIntArray sparseIntArray, SparseIntArray other) {
        h.f(sparseIntArray, "<this>");
        h.f(other, "other");
        SparseIntArray sparseIntArray2 = new SparseIntArray(other.size() + sparseIntArray.size());
        putAll(sparseIntArray2, sparseIntArray);
        putAll(sparseIntArray2, other);
        return sparseIntArray2;
    }

    public static final void putAll(SparseIntArray sparseIntArray, SparseIntArray other) {
        h.f(sparseIntArray, "<this>");
        h.f(other, "other");
        int size = other.size();
        for (int r12 = 0; r12 < size; r12++) {
            sparseIntArray.put(other.keyAt(r12), other.valueAt(r12));
        }
    }

    public static final boolean remove(SparseIntArray sparseIntArray, int r22, int r32) {
        h.f(sparseIntArray, "<this>");
        int r23 = sparseIntArray.indexOfKey(r22);
        if (r23 < 0 || r32 != sparseIntArray.valueAt(r23)) {
            return false;
        }
        sparseIntArray.removeAt(r23);
        return true;
    }

    public static final void set(SparseIntArray sparseIntArray, int r22, int r32) {
        h.f(sparseIntArray, "<this>");
        sparseIntArray.put(r22, r32);
    }

    public static final b0 valueIterator(final SparseIntArray sparseIntArray) {
        h.f(sparseIntArray, "<this>");
        return new b0() { // from class: androidx.core.util.SparseIntArrayKt.valueIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseIntArray.size();
            }

            @Override // m9.b0
            public int nextInt() {
                SparseIntArray sparseIntArray2 = sparseIntArray;
                int r12 = this.index;
                this.index = r12 + 1;
                return sparseIntArray2.valueAt(r12);
            }

            public final void setIndex(int r12) {
                this.index = r12;
            }
        };
    }
}
