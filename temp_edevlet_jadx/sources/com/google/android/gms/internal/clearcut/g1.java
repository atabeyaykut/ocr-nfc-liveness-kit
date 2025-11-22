package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class g1<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator<Map.Entry<K, Object>> f3138a;

    public g1(Iterator<Map.Entry<K, Object>> it) {
        this.f3138a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3138a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f3138a.next();
        return next.getValue() instanceof e1 ? new f1(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f3138a.remove();
    }
}
