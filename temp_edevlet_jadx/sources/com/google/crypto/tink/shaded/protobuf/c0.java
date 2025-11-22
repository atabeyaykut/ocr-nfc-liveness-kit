package com.google.crypto.tink.shaded.protobuf;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class c0 extends d0 {

    public static class a<K> implements Map.Entry<K, Object> {

        /* renamed from: a, reason: collision with root package name */
        public final Map.Entry<K, c0> f4242a;

        public a() {
            throw null;
        }

        public a(Map.Entry entry) {
            this.f4242a = entry;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f4242a.getKey();
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            c0 value = this.f4242a.getValue();
            if (value == null) {
                return null;
            }
            return value.a(null);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (!(obj instanceof q0)) {
                throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
            }
            c0 value = this.f4242a.getValue();
            q0 q0Var = value.f4250a;
            value.f4251b = null;
            value.f4250a = (q0) obj;
            return q0Var;
        }
    }

    public static class b<K> implements Iterator<Map.Entry<K, Object>> {

        /* renamed from: a, reason: collision with root package name */
        public final Iterator<Map.Entry<K, Object>> f4243a;

        public b(Iterator<Map.Entry<K, Object>> it) {
            this.f4243a = it;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f4243a.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            Map.Entry<K, Object> next = this.f4243a.next();
            return next.getValue() instanceof c0 ? new a(next) : next;
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.f4243a.remove();
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d0
    public final boolean equals(Object obj) {
        return a(null).equals(obj);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d0
    public final int hashCode() {
        return a(null).hashCode();
    }

    public final String toString() {
        return a(null).toString();
    }
}
