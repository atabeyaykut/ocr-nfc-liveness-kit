package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class v1<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator<Map.Entry<K, Object>> f4108a;

    public v1(Iterator<Map.Entry<K, Object>> it) {
        this.f4108a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f4108a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f4108a.next();
        return next.getValue() instanceof u1 ? new w1(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f4108a.remove();
    }
}
