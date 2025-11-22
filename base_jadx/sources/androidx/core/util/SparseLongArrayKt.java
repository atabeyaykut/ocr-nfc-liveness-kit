package androidx.core.util;

import android.annotation.SuppressLint;
import android.util.SparseLongArray;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import m9.b0;
import m9.c0;
import x9.p;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u001d\u0010\b\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\n\u001a\u0015\u0010\n\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u0002\u001a\u0015\u0010\u000b\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\f\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a\u001d\u0010\u000e\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0005H\u0087\b\u001a&\u0010\u0010\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u000fH\u0087\bø\u0001\u0000\u001a\r\u0010\u0011\u001a\u00020\u0003*\u00020\u0000H\u0087\b\u001a\r\u0010\u0012\u001a\u00020\u0003*\u00020\u0000H\u0087\b\u001a\u001c\u0010\u0013\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0007\u001a\u0014\u0010\u0014\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0007\u001a*\u0010\u0017\u001a\u00020\u0007*\u00020\u00002\u0018\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\u0015H\u0087\bø\u0001\u0000\u001a\f\u0010\u0019\u001a\u00020\u0018*\u00020\u0000H\u0007\u001a\f\u0010\u001b\u001a\u00020\u001a*\u00020\u0000H\u0007\"\u0016\u0010\u001e\u001a\u00020\u0001*\u00020\u00008Ç\u0002¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001f"}, d2 = {"Landroid/util/SparseLongArray;", "", "key", "", "contains", "", "value", "Ll9/m;", "set", "other", "plus", "containsKey", "containsValue", "defaultValue", "getOrDefault", "Lkotlin/Function0;", "getOrElse", "isEmpty", "isNotEmpty", "remove", "putAll", "Lkotlin/Function2;", "action", "forEach", "Lm9/b0;", "keyIterator", "Lm9/c0;", "valueIterator", "getSize", "(Landroid/util/SparseLongArray;)I", "size", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class SparseLongArrayKt {
    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean contains(SparseLongArray sparseLongArray, int r22) {
        h.f(sparseLongArray, "<this>");
        return sparseLongArray.indexOfKey(r22) >= 0;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean containsKey(SparseLongArray sparseLongArray, int r22) {
        h.f(sparseLongArray, "<this>");
        return sparseLongArray.indexOfKey(r22) >= 0;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean containsValue(SparseLongArray sparseLongArray, long j10) {
        h.f(sparseLongArray, "<this>");
        return sparseLongArray.indexOfValue(j10) >= 0;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final void forEach(SparseLongArray sparseLongArray, p<? super Integer, ? super Long, m> action) {
        h.f(sparseLongArray, "<this>");
        h.f(action, "action");
        int size = sparseLongArray.size();
        for (int r12 = 0; r12 < size; r12++) {
            action.mo7invoke(Integer.valueOf(sparseLongArray.keyAt(r12)), Long.valueOf(sparseLongArray.valueAt(r12)));
        }
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long getOrDefault(SparseLongArray sparseLongArray, int r22, long j10) {
        h.f(sparseLongArray, "<this>");
        return sparseLongArray.get(r22, j10);
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long getOrElse(SparseLongArray sparseLongArray, int r22, x9.a<Long> defaultValue) {
        h.f(sparseLongArray, "<this>");
        h.f(defaultValue, "defaultValue");
        int r23 = sparseLongArray.indexOfKey(r22);
        return r23 >= 0 ? sparseLongArray.valueAt(r23) : defaultValue.invoke().longValue();
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final int getSize(SparseLongArray sparseLongArray) {
        h.f(sparseLongArray, "<this>");
        return sparseLongArray.size();
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean isEmpty(SparseLongArray sparseLongArray) {
        h.f(sparseLongArray, "<this>");
        return sparseLongArray.size() == 0;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean isNotEmpty(SparseLongArray sparseLongArray) {
        h.f(sparseLongArray, "<this>");
        return sparseLongArray.size() != 0;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final b0 keyIterator(final SparseLongArray sparseLongArray) {
        h.f(sparseLongArray, "<this>");
        return new b0() { // from class: androidx.core.util.SparseLongArrayKt.keyIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseLongArray.size();
            }

            @Override // m9.b0
            public int nextInt() {
                SparseLongArray sparseLongArray2 = sparseLongArray;
                int r12 = this.index;
                this.index = r12 + 1;
                return sparseLongArray2.keyAt(r12);
            }

            public final void setIndex(int r12) {
                this.index = r12;
            }
        };
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final SparseLongArray plus(SparseLongArray sparseLongArray, SparseLongArray other) {
        h.f(sparseLongArray, "<this>");
        h.f(other, "other");
        SparseLongArray sparseLongArray2 = new SparseLongArray(other.size() + sparseLongArray.size());
        putAll(sparseLongArray2, sparseLongArray);
        putAll(sparseLongArray2, other);
        return sparseLongArray2;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final void putAll(SparseLongArray sparseLongArray, SparseLongArray other) {
        h.f(sparseLongArray, "<this>");
        h.f(other, "other");
        int size = other.size();
        for (int r12 = 0; r12 < size; r12++) {
            sparseLongArray.put(other.keyAt(r12), other.valueAt(r12));
        }
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean remove(SparseLongArray sparseLongArray, int r42, long j10) {
        h.f(sparseLongArray, "<this>");
        int r43 = sparseLongArray.indexOfKey(r42);
        if (r43 < 0 || j10 != sparseLongArray.valueAt(r43)) {
            return false;
        }
        sparseLongArray.removeAt(r43);
        return true;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final void set(SparseLongArray sparseLongArray, int r22, long j10) {
        h.f(sparseLongArray, "<this>");
        sparseLongArray.put(r22, j10);
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final c0 valueIterator(final SparseLongArray sparseLongArray) {
        h.f(sparseLongArray, "<this>");
        return new c0() { // from class: androidx.core.util.SparseLongArrayKt.valueIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseLongArray.size();
            }

            @Override // m9.c0
            public long nextLong() {
                SparseLongArray sparseLongArray2 = sparseLongArray;
                int r12 = this.index;
                this.index = r12 + 1;
                return sparseLongArray2.valueAt(r12);
            }

            public final void setIndex(int r12) {
                this.index = r12;
            }
        };
    }
}
