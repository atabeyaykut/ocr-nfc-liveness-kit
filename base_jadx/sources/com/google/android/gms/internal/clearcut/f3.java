package com.google.android.gms.internal.clearcut;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class f3 implements Iterator<String> {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator<String> f3117a;

    public f3(d3 d3Var) {
        this.f3117a = d3Var.f3082a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3117a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f3117a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
