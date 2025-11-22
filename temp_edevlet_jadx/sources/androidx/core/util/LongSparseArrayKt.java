package androidx.core.util;

import android.annotation.SuppressLint;
import android.util.LongSparseArray;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import m9.c0;
import x9.p;

@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u001a!\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\n\u001a0\u0010\b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00028\u0000H\u0087\n¢\u0006\u0004\b\b\u0010\t\u001a-\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087\u0002\u001a!\u0010\f\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a(\u0010\r\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0006\u001a\u00028\u0000H\u0087\b¢\u0006\u0004\b\r\u0010\u000e\u001a0\u0010\u0010\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00028\u0000H\u0087\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a9\u0010\u0013\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0019\u0010\u0015\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087\b\u001a\u0019\u0010\u0016\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087\b\u001a/\u0010\u0017\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0017\u0010\u0018\u001a&\u0010\u0019\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0007\u001a6\u0010\u001c\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0018\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u001aH\u0087\bø\u0001\u0000\u001a\u0018\u0010\u001e\u001a\u00020\u001d\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0007\u001a\u001e\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001f\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0007\"\"\u0010$\u001a\u00020!\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00018Ç\u0002¢\u0006\u0006\u001a\u0004\b\"\u0010#\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006%"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Landroid/util/LongSparseArray;", "", "key", "", "contains", "value", "Ll9/m;", "set", "(Landroid/util/LongSparseArray;JLjava/lang/Object;)V", "other", "plus", "containsKey", "containsValue", "(Landroid/util/LongSparseArray;Ljava/lang/Object;)Z", "defaultValue", "getOrDefault", "(Landroid/util/LongSparseArray;JLjava/lang/Object;)Ljava/lang/Object;", "Lkotlin/Function0;", "getOrElse", "(Landroid/util/LongSparseArray;JLx9/a;)Ljava/lang/Object;", "isEmpty", "isNotEmpty", "remove", "(Landroid/util/LongSparseArray;JLjava/lang/Object;)Z", "putAll", "Lkotlin/Function2;", "action", "forEach", "Lm9/c0;", "keyIterator", "", "valueIterator", "", "getSize", "(Landroid/util/LongSparseArray;)I", "size", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class LongSparseArrayKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\t\u0010\b\u001a\u00020\tH\u0097\u0002J\u0016\u0010\n\u001a\n \u000b*\u0004\u0018\u00018\u00008\u0000H\u0097\u0002¢\u0006\u0002\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"androidx/core/util/LongSparseArrayKt$valueIterator$1", "", "index", "", "getIndex", "()I", "setIndex", "(I)V", "hasNext", "", "next", "kotlin.jvm.PlatformType", "()Ljava/lang/Object;", "core-ktx_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* renamed from: androidx.core.util.LongSparseArrayKt$valueIterator$1, reason: invalid class name and case insensitive filesystem */
    public static final class C03271<T> implements Iterator<T>, y9.a {
        final /* synthetic */ LongSparseArray<T> $this_valueIterator;
        private int index;

        public C03271(LongSparseArray<T> longSparseArray) {
            this.$this_valueIterator = longSparseArray;
        }

        public final int getIndex() {
            return this.index;
        }

        @Override // java.util.Iterator
        @SuppressLint({"ClassVerificationFailure"})
        public boolean hasNext() {
            return this.index < this.$this_valueIterator.size();
        }

        @Override // java.util.Iterator
        @SuppressLint({"ClassVerificationFailure"})
        public T next() {
            LongSparseArray<T> longSparseArray = this.$this_valueIterator;
            int r12 = this.index;
            this.index = r12 + 1;
            return longSparseArray.valueAt(r12);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final void setIndex(int r12) {
            this.index = r12;
        }
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> boolean contains(LongSparseArray<T> longSparseArray, long j10) {
        h.f(longSparseArray, "<this>");
        return longSparseArray.indexOfKey(j10) >= 0;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> boolean containsKey(LongSparseArray<T> longSparseArray, long j10) {
        h.f(longSparseArray, "<this>");
        return longSparseArray.indexOfKey(j10) >= 0;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> boolean containsValue(LongSparseArray<T> longSparseArray, T t10) {
        h.f(longSparseArray, "<this>");
        return longSparseArray.indexOfValue(t10) >= 0;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> void forEach(LongSparseArray<T> longSparseArray, p<? super Long, ? super T, m> action) {
        h.f(longSparseArray, "<this>");
        h.f(action, "action");
        int size = longSparseArray.size();
        for (int r12 = 0; r12 < size; r12++) {
            action.mo7invoke(Long.valueOf(longSparseArray.keyAt(r12)), longSparseArray.valueAt(r12));
        }
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> T getOrDefault(LongSparseArray<T> longSparseArray, long j10, T t10) {
        h.f(longSparseArray, "<this>");
        T t11 = longSparseArray.get(j10);
        return t11 == null ? t10 : t11;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> T getOrElse(LongSparseArray<T> longSparseArray, long j10, x9.a<? extends T> defaultValue) {
        h.f(longSparseArray, "<this>");
        h.f(defaultValue, "defaultValue");
        T t10 = longSparseArray.get(j10);
        return t10 == null ? defaultValue.invoke() : t10;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> int getSize(LongSparseArray<T> longSparseArray) {
        h.f(longSparseArray, "<this>");
        return longSparseArray.size();
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> boolean isEmpty(LongSparseArray<T> longSparseArray) {
        h.f(longSparseArray, "<this>");
        return longSparseArray.size() == 0;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> boolean isNotEmpty(LongSparseArray<T> longSparseArray) {
        h.f(longSparseArray, "<this>");
        return longSparseArray.size() != 0;
    }

    @RequiresApi(16)
    public static final <T> c0 keyIterator(final LongSparseArray<T> longSparseArray) {
        h.f(longSparseArray, "<this>");
        return new c0() { // from class: androidx.core.util.LongSparseArrayKt.keyIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            @SuppressLint({"ClassVerificationFailure"})
            public boolean hasNext() {
                return this.index < longSparseArray.size();
            }

            @Override // m9.c0
            @SuppressLint({"ClassVerificationFailure"})
            public long nextLong() {
                LongSparseArray<T> longSparseArray2 = longSparseArray;
                int r12 = this.index;
                this.index = r12 + 1;
                return longSparseArray2.keyAt(r12);
            }

            public final void setIndex(int r12) {
                this.index = r12;
            }
        };
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> LongSparseArray<T> plus(LongSparseArray<T> longSparseArray, LongSparseArray<T> other) {
        h.f(longSparseArray, "<this>");
        h.f(other, "other");
        LongSparseArray<T> longSparseArray2 = new LongSparseArray<>(other.size() + longSparseArray.size());
        putAll(longSparseArray2, longSparseArray);
        putAll(longSparseArray2, other);
        return longSparseArray2;
    }

    @RequiresApi(16)
    public static final <T> void putAll(LongSparseArray<T> longSparseArray, LongSparseArray<T> other) {
        h.f(longSparseArray, "<this>");
        h.f(other, "other");
        int size = other.size();
        for (int r12 = 0; r12 < size; r12++) {
            longSparseArray.put(other.keyAt(r12), other.valueAt(r12));
        }
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> boolean remove(LongSparseArray<T> longSparseArray, long j10, T t10) {
        h.f(longSparseArray, "<this>");
        int r22 = longSparseArray.indexOfKey(j10);
        if (r22 < 0 || !h.a(t10, longSparseArray.valueAt(r22))) {
            return false;
        }
        longSparseArray.removeAt(r22);
        return true;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> void set(LongSparseArray<T> longSparseArray, long j10, T t10) {
        h.f(longSparseArray, "<this>");
        longSparseArray.put(j10, t10);
    }

    @RequiresApi(16)
    public static final <T> Iterator<T> valueIterator(LongSparseArray<T> longSparseArray) {
        h.f(longSparseArray, "<this>");
        return new C03271(longSparseArray);
    }
}
