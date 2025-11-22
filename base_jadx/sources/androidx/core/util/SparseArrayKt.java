package androidx.core.util;

import android.util.SparseArray;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import m9.b0;
import x9.p;

@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\b\u0005\u001a!\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\n\u001a0\u0010\b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00028\u0000H\u0086\n¢\u0006\u0004\b\b\u0010\t\u001a-\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\u0002\u001a!\u0010\f\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\b\u001a(\u0010\r\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0006\u001a\u00028\u0000H\u0086\b¢\u0006\u0004\b\r\u0010\u000e\u001a0\u0010\u0010\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00028\u0000H\u0086\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a9\u0010\u0013\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0019\u0010\u0015\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\b\u001a\u0019\u0010\u0016\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\b\u001a-\u0010\u0017\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00028\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a$\u0010\u0019\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a6\u0010\u001c\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0018\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u001aH\u0086\bø\u0001\u0000\u001a\u0016\u0010\u001e\u001a\u00020\u001d\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001f\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\"\"\u0010#\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00018Æ\u0002¢\u0006\u0006\u001a\u0004\b!\u0010\"\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006$"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Landroid/util/SparseArray;", "", "key", "", "contains", "value", "Ll9/m;", "set", "(Landroid/util/SparseArray;ILjava/lang/Object;)V", "other", "plus", "containsKey", "containsValue", "(Landroid/util/SparseArray;Ljava/lang/Object;)Z", "defaultValue", "getOrDefault", "(Landroid/util/SparseArray;ILjava/lang/Object;)Ljava/lang/Object;", "Lkotlin/Function0;", "getOrElse", "(Landroid/util/SparseArray;ILx9/a;)Ljava/lang/Object;", "isEmpty", "isNotEmpty", "remove", "(Landroid/util/SparseArray;ILjava/lang/Object;)Z", "putAll", "Lkotlin/Function2;", "action", "forEach", "Lm9/b0;", "keyIterator", "", "valueIterator", "getSize", "(Landroid/util/SparseArray;)I", "size", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class SparseArrayKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\t\u0010\b\u001a\u00020\tH\u0096\u0002J\u0016\u0010\n\u001a\n \u000b*\u0004\u0018\u00018\u00008\u0000H\u0096\u0002¢\u0006\u0002\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"androidx/core/util/SparseArrayKt$valueIterator$1", "", "index", "", "getIndex", "()I", "setIndex", "(I)V", "hasNext", "", "next", "kotlin.jvm.PlatformType", "()Ljava/lang/Object;", "core-ktx_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* renamed from: androidx.core.util.SparseArrayKt$valueIterator$1, reason: invalid class name and case insensitive filesystem */
    public static final class C03281<T> implements Iterator<T>, y9.a {
        final /* synthetic */ SparseArray<T> $this_valueIterator;
        private int index;

        public C03281(SparseArray<T> sparseArray) {
            this.$this_valueIterator = sparseArray;
        }

        public final int getIndex() {
            return this.index;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.$this_valueIterator.size();
        }

        @Override // java.util.Iterator
        public T next() {
            SparseArray<T> sparseArray = this.$this_valueIterator;
            int r12 = this.index;
            this.index = r12 + 1;
            return sparseArray.valueAt(r12);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final void setIndex(int r12) {
            this.index = r12;
        }
    }

    public static final <T> boolean contains(SparseArray<T> sparseArray, int r22) {
        h.f(sparseArray, "<this>");
        return sparseArray.indexOfKey(r22) >= 0;
    }

    public static final <T> boolean containsKey(SparseArray<T> sparseArray, int r22) {
        h.f(sparseArray, "<this>");
        return sparseArray.indexOfKey(r22) >= 0;
    }

    public static final <T> boolean containsValue(SparseArray<T> sparseArray, T t10) {
        h.f(sparseArray, "<this>");
        return sparseArray.indexOfValue(t10) >= 0;
    }

    public static final <T> void forEach(SparseArray<T> sparseArray, p<? super Integer, ? super T, m> action) {
        h.f(sparseArray, "<this>");
        h.f(action, "action");
        int size = sparseArray.size();
        for (int r12 = 0; r12 < size; r12++) {
            action.mo7invoke(Integer.valueOf(sparseArray.keyAt(r12)), sparseArray.valueAt(r12));
        }
    }

    public static final <T> T getOrDefault(SparseArray<T> sparseArray, int r22, T t10) {
        h.f(sparseArray, "<this>");
        T t11 = sparseArray.get(r22);
        return t11 == null ? t10 : t11;
    }

    public static final <T> T getOrElse(SparseArray<T> sparseArray, int r22, x9.a<? extends T> defaultValue) {
        h.f(sparseArray, "<this>");
        h.f(defaultValue, "defaultValue");
        T t10 = sparseArray.get(r22);
        return t10 == null ? defaultValue.invoke() : t10;
    }

    public static final <T> int getSize(SparseArray<T> sparseArray) {
        h.f(sparseArray, "<this>");
        return sparseArray.size();
    }

    public static final <T> boolean isEmpty(SparseArray<T> sparseArray) {
        h.f(sparseArray, "<this>");
        return sparseArray.size() == 0;
    }

    public static final <T> boolean isNotEmpty(SparseArray<T> sparseArray) {
        h.f(sparseArray, "<this>");
        return sparseArray.size() != 0;
    }

    public static final <T> b0 keyIterator(final SparseArray<T> sparseArray) {
        h.f(sparseArray, "<this>");
        return new b0() { // from class: androidx.core.util.SparseArrayKt.keyIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseArray.size();
            }

            @Override // m9.b0
            public int nextInt() {
                SparseArray<T> sparseArray2 = sparseArray;
                int r12 = this.index;
                this.index = r12 + 1;
                return sparseArray2.keyAt(r12);
            }

            public final void setIndex(int r12) {
                this.index = r12;
            }
        };
    }

    public static final <T> SparseArray<T> plus(SparseArray<T> sparseArray, SparseArray<T> other) {
        h.f(sparseArray, "<this>");
        h.f(other, "other");
        SparseArray<T> sparseArray2 = new SparseArray<>(other.size() + sparseArray.size());
        putAll(sparseArray2, sparseArray);
        putAll(sparseArray2, other);
        return sparseArray2;
    }

    public static final <T> void putAll(SparseArray<T> sparseArray, SparseArray<T> other) {
        h.f(sparseArray, "<this>");
        h.f(other, "other");
        int size = other.size();
        for (int r12 = 0; r12 < size; r12++) {
            sparseArray.put(other.keyAt(r12), other.valueAt(r12));
        }
    }

    public static final <T> boolean remove(SparseArray<T> sparseArray, int r22, T t10) {
        h.f(sparseArray, "<this>");
        int r23 = sparseArray.indexOfKey(r22);
        if (r23 < 0 || !h.a(t10, sparseArray.valueAt(r23))) {
            return false;
        }
        sparseArray.removeAt(r23);
        return true;
    }

    public static final <T> void set(SparseArray<T> sparseArray, int r22, T t10) {
        h.f(sparseArray, "<this>");
        sparseArray.put(r22, t10);
    }

    public static final <T> Iterator<T> valueIterator(SparseArray<T> sparseArray) {
        h.f(sparseArray, "<this>");
        return new C03281(sparseArray);
    }
}
