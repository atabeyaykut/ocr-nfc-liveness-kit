package com.google.android.gms.internal.vision;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class u3 implements Iterator<String> {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator<String> f4104a;

    public u3(s3 s3Var) {
        this.f4104a = s3Var.f4083a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f4104a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f4104a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
