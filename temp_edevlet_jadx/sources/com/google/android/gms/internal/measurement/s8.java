package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class s8 implements Iterator<String> {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator<String> f3739a;

    public s8(t8 t8Var) {
        this.f3739a = t8Var.f3778a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3739a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.f3739a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
