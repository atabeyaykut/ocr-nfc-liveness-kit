package androidx.core.util;

import android.util.SparseBooleanArray;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import m9.b0;
import x9.p;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\u001d\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000H\u0086\u0002\u001a\u0015\u0010\n\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\b\u001a\u0015\u0010\u000b\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0003H\u0086\b\u001a\u001d\u0010\r\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u0003H\u0086\b\u001a&\u0010\u000f\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u000eH\u0086\bø\u0001\u0000\u001a\r\u0010\u0010\u001a\u00020\u0003*\u00020\u0000H\u0086\b\u001a\r\u0010\u0011\u001a\u00020\u0003*\u00020\u0000H\u0086\b\u001a\u001a\u0010\u0012\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0003\u001a\u0012\u0010\u0013\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000\u001a*\u0010\u0016\u001a\u00020\u0006*\u00020\u00002\u0018\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0014H\u0086\bø\u0001\u0000\u001a\n\u0010\u0018\u001a\u00020\u0017*\u00020\u0000\u001a\n\u0010\u001a\u001a\u00020\u0019*\u00020\u0000\"\u0016\u0010\u001d\u001a\u00020\u0001*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001e"}, d2 = {"Landroid/util/SparseBooleanArray;", "", "key", "", "contains", "value", "Ll9/m;", "set", "other", "plus", "containsKey", "containsValue", "defaultValue", "getOrDefault", "Lkotlin/Function0;", "getOrElse", "isEmpty", "isNotEmpty", "remove", "putAll", "Lkotlin/Function2;", "action", "forEach", "Lm9/b0;", "keyIterator", "Lm9/m;", "valueIterator", "getSize", "(Landroid/util/SparseBooleanArray;)I", "size", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class SparseBooleanArrayKt {
    public static final boolean contains(SparseBooleanArray sparseBooleanArray, int r22) {
        h.f(sparseBooleanArray, "<this>");
        return sparseBooleanArray.indexOfKey(r22) >= 0;
    }

    public static final boolean containsKey(SparseBooleanArray sparseBooleanArray, int r22) {
        h.f(sparseBooleanArray, "<this>");
        return sparseBooleanArray.indexOfKey(r22) >= 0;
    }

    public static final boolean containsValue(SparseBooleanArray sparseBooleanArray, boolean z10) {
        h.f(sparseBooleanArray, "<this>");
        return sparseBooleanArray.indexOfValue(z10) >= 0;
    }

    public static final void forEach(SparseBooleanArray sparseBooleanArray, p<? super Integer, ? super Boolean, m> action) {
        h.f(sparseBooleanArray, "<this>");
        h.f(action, "action");
        int size = sparseBooleanArray.size();
        for (int r12 = 0; r12 < size; r12++) {
            action.mo7invoke(Integer.valueOf(sparseBooleanArray.keyAt(r12)), Boolean.valueOf(sparseBooleanArray.valueAt(r12)));
        }
    }

    public static final boolean getOrDefault(SparseBooleanArray sparseBooleanArray, int r22, boolean z10) {
        h.f(sparseBooleanArray, "<this>");
        return sparseBooleanArray.get(r22, z10);
    }

    public static final boolean getOrElse(SparseBooleanArray sparseBooleanArray, int r22, x9.a<Boolean> defaultValue) {
        h.f(sparseBooleanArray, "<this>");
        h.f(defaultValue, "defaultValue");
        int r23 = sparseBooleanArray.indexOfKey(r22);
        return r23 >= 0 ? sparseBooleanArray.valueAt(r23) : defaultValue.invoke().booleanValue();
    }

    public static final int getSize(SparseBooleanArray sparseBooleanArray) {
        h.f(sparseBooleanArray, "<this>");
        return sparseBooleanArray.size();
    }

    public static final boolean isEmpty(SparseBooleanArray sparseBooleanArray) {
        h.f(sparseBooleanArray, "<this>");
        return sparseBooleanArray.size() == 0;
    }

    public static final boolean isNotEmpty(SparseBooleanArray sparseBooleanArray) {
        h.f(sparseBooleanArray, "<this>");
        return sparseBooleanArray.size() != 0;
    }

    public static final b0 keyIterator(final SparseBooleanArray sparseBooleanArray) {
        h.f(sparseBooleanArray, "<this>");
        return new b0() { // from class: androidx.core.util.SparseBooleanArrayKt.keyIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseBooleanArray.size();
            }

            @Override // m9.b0
            public int nextInt() {
                SparseBooleanArray sparseBooleanArray2 = sparseBooleanArray;
                int r12 = this.index;
                this.index = r12 + 1;
                return sparseBooleanArray2.keyAt(r12);
            }

            public final void setIndex(int r12) {
                this.index = r12;
            }
        };
    }

    public static final SparseBooleanArray plus(SparseBooleanArray sparseBooleanArray, SparseBooleanArray other) {
        h.f(sparseBooleanArray, "<this>");
        h.f(other, "other");
        SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray(other.size() + sparseBooleanArray.size());
        putAll(sparseBooleanArray2, sparseBooleanArray);
        putAll(sparseBooleanArray2, other);
        return sparseBooleanArray2;
    }

    public static final void putAll(SparseBooleanArray sparseBooleanArray, SparseBooleanArray other) {
        h.f(sparseBooleanArray, "<this>");
        h.f(other, "other");
        int size = other.size();
        for (int r12 = 0; r12 < size; r12++) {
            sparseBooleanArray.put(other.keyAt(r12), other.valueAt(r12));
        }
    }

    public static final boolean remove(SparseBooleanArray sparseBooleanArray, int r22, boolean z10) {
        h.f(sparseBooleanArray, "<this>");
        int r02 = sparseBooleanArray.indexOfKey(r22);
        if (r02 < 0 || z10 != sparseBooleanArray.valueAt(r02)) {
            return false;
        }
        sparseBooleanArray.delete(r22);
        return true;
    }

    public static final void set(SparseBooleanArray sparseBooleanArray, int r22, boolean z10) {
        h.f(sparseBooleanArray, "<this>");
        sparseBooleanArray.put(r22, z10);
    }

    public static final m9.m valueIterator(final SparseBooleanArray sparseBooleanArray) {
        h.f(sparseBooleanArray, "<this>");
        return new m9.m() { // from class: androidx.core.util.SparseBooleanArrayKt.valueIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseBooleanArray.size();
            }

            @Override // m9.m
            public boolean nextBoolean() {
                SparseBooleanArray sparseBooleanArray2 = sparseBooleanArray;
                int r12 = this.index;
                this.index = r12 + 1;
                return sparseBooleanArray2.valueAt(r12);
            }

            public final void setIndex(int r12) {
                this.index = r12;
            }
        };
    }
}
