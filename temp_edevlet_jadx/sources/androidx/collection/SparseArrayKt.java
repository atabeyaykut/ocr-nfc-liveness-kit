package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import m9.b0;
import x9.p;
import y9.a;

@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\b\u0005\u001a!\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\n\u001a0\u0010\b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00028\u0000H\u0086\n¢\u0006\u0004\b\b\u0010\t\u001a-\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\u0002\u001a0\u0010\r\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00028\u0000H\u0086\b¢\u0006\u0004\b\r\u0010\u000e\u001a6\u0010\u0010\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0086\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0019\u0010\u0012\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\b\u001a/\u0010\u0013\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0013\u0010\u0014\u001a3\u0010\u0017\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0018\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0015H\u0086\b\u001a\u0016\u0010\u0019\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a\u001c\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001a\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\"\"\u0010\u001e\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00018Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/collection/SparseArrayCompat;", "", "key", "", "contains", "value", "Ll9/m;", "set", "(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)V", "other", "plus", "defaultValue", "getOrDefault", "(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)Ljava/lang/Object;", "Lkotlin/Function0;", "getOrElse", "(Landroidx/collection/SparseArrayCompat;ILx9/a;)Ljava/lang/Object;", "isNotEmpty", "remove", "(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)Z", "Lkotlin/Function2;", "action", "forEach", "Lm9/b0;", "keyIterator", "", "valueIterator", "getSize", "(Landroidx/collection/SparseArrayCompat;)I", "size", "collection-ktx"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class SparseArrayKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\t\u0010\b\u001a\u00020\tH\u0096\u0002J\u0016\u0010\n\u001a\n \u000b*\u0004\u0018\u00018\u00008\u0000H\u0096\u0002¢\u0006\u0002\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"androidx/collection/SparseArrayKt$valueIterator$1", "", "index", "", "getIndex", "()I", "setIndex", "(I)V", "hasNext", "", "next", "kotlin.jvm.PlatformType", "()Ljava/lang/Object;", "collection-ktx"}, k = 1, mv = {1, 1, 13})
    /* renamed from: androidx.collection.SparseArrayKt$valueIterator$1, reason: invalid class name and case insensitive filesystem */
    public static final class C03231<T> implements Iterator<T>, a {
        final /* synthetic */ SparseArrayCompat $this_valueIterator;
        private int index;

        public C03231(SparseArrayCompat<T> sparseArrayCompat) {
            this.$this_valueIterator = sparseArrayCompat;
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
            SparseArrayCompat sparseArrayCompat = this.$this_valueIterator;
            int r12 = this.index;
            this.index = r12 + 1;
            return (T) sparseArrayCompat.valueAt(r12);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final void setIndex(int r12) {
            this.index = r12;
        }
    }

    public static final <T> boolean contains(SparseArrayCompat<T> receiver$0, int r22) {
        h.g(receiver$0, "receiver$0");
        return receiver$0.containsKey(r22);
    }

    public static final <T> void forEach(SparseArrayCompat<T> receiver$0, p<? super Integer, ? super T, m> action) {
        h.g(receiver$0, "receiver$0");
        h.g(action, "action");
        int size = receiver$0.size();
        for (int r12 = 0; r12 < size; r12++) {
            action.mo7invoke(Integer.valueOf(receiver$0.keyAt(r12)), receiver$0.valueAt(r12));
        }
    }

    public static final <T> T getOrDefault(SparseArrayCompat<T> receiver$0, int r22, T t10) {
        h.g(receiver$0, "receiver$0");
        return receiver$0.get(r22, t10);
    }

    public static final <T> T getOrElse(SparseArrayCompat<T> receiver$0, int r22, x9.a<? extends T> defaultValue) {
        h.g(receiver$0, "receiver$0");
        h.g(defaultValue, "defaultValue");
        T t10 = receiver$0.get(r22);
        return t10 != null ? t10 : defaultValue.invoke();
    }

    public static final <T> int getSize(SparseArrayCompat<T> receiver$0) {
        h.g(receiver$0, "receiver$0");
        return receiver$0.size();
    }

    public static final <T> boolean isNotEmpty(SparseArrayCompat<T> receiver$0) {
        h.g(receiver$0, "receiver$0");
        return !receiver$0.isEmpty();
    }

    public static final <T> b0 keyIterator(final SparseArrayCompat<T> receiver$0) {
        h.g(receiver$0, "receiver$0");
        return new b0() { // from class: androidx.collection.SparseArrayKt.keyIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < receiver$0.size();
            }

            @Override // m9.b0
            public int nextInt() {
                SparseArrayCompat sparseArrayCompat = receiver$0;
                int r12 = this.index;
                this.index = r12 + 1;
                return sparseArrayCompat.keyAt(r12);
            }

            public final void setIndex(int r12) {
                this.index = r12;
            }
        };
    }

    public static final <T> SparseArrayCompat<T> plus(SparseArrayCompat<T> receiver$0, SparseArrayCompat<T> other) {
        h.g(receiver$0, "receiver$0");
        h.g(other, "other");
        SparseArrayCompat<T> sparseArrayCompat = new SparseArrayCompat<>(other.size() + receiver$0.size());
        sparseArrayCompat.putAll(receiver$0);
        sparseArrayCompat.putAll(other);
        return sparseArrayCompat;
    }

    public static final <T> boolean remove(SparseArrayCompat<T> receiver$0, int r22, T t10) {
        h.g(receiver$0, "receiver$0");
        return receiver$0.remove(r22, t10);
    }

    public static final <T> void set(SparseArrayCompat<T> receiver$0, int r22, T t10) {
        h.g(receiver$0, "receiver$0");
        receiver$0.put(r22, t10);
    }

    public static final <T> Iterator<T> valueIterator(SparseArrayCompat<T> receiver$0) {
        h.g(receiver$0, "receiver$0");
        return new C03231(receiver$0);
    }
}
