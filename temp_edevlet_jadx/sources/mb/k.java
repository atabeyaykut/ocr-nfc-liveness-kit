package mb;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class k extends l {

    public static class a<K> implements Map.Entry<K, Object> {

        /* renamed from: a, reason: collision with root package name */
        public final Map.Entry<K, k> f10299a;

        public a(Map.Entry entry) {
            this.f10299a = entry;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f10299a.getKey();
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            k value = this.f10299a.getValue();
            if (value == null) {
                return null;
            }
            return value.a();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (!(obj instanceof p)) {
                throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
            }
            k value = this.f10299a.getValue();
            p pVar = value.f10302b;
            value.f10302b = (p) obj;
            value.f10301a = true;
            return pVar;
        }
    }

    public static class b<K> implements Iterator<Map.Entry<K, Object>> {

        /* renamed from: a, reason: collision with root package name */
        public final Iterator<Map.Entry<K, Object>> f10300a;

        public b(Iterator<Map.Entry<K, Object>> it) {
            this.f10300a = it;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f10300a.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            Map.Entry<K, Object> next = this.f10300a.next();
            return next.getValue() instanceof k ? new a(next) : next;
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.f10300a.remove();
        }
    }

    public final p a() {
        if (this.f10302b == null) {
            synchronized (this) {
                if (this.f10302b == null) {
                    try {
                        this.f10302b = null;
                    } catch (IOException unused) {
                    }
                }
            }
        }
        return this.f10302b;
    }

    public final boolean equals(Object obj) {
        return a().equals(obj);
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a().toString();
    }
}
