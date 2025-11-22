package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class r implements Iterator<p> {

    /* renamed from: a, reason: collision with root package name */
    public int f3702a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f3703b;

    public r(t tVar) {
        this.f3703b = tVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3702a < this.f3703b.f3766a.length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ p next() {
        if (this.f3702a >= this.f3703b.f3766a.length()) {
            throw new NoSuchElementException();
        }
        int r12 = this.f3702a;
        this.f3702a = r12 + 1;
        return new t(String.valueOf(r12));
    }
}
