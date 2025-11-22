package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class k implements Iterator<p> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Iterator f3591a;

    public k(Iterator it) {
        this.f3591a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3591a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ p next() {
        return new t((String) this.f3591a.next());
    }
}
