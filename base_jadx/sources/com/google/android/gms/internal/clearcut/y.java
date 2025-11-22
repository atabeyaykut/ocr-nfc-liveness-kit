package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class y implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f3348a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f3349b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x f3350c;

    public y(x xVar) {
        this.f3350c = xVar;
        this.f3349b = xVar.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3348a < this.f3349b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            x xVar = this.f3350c;
            int r12 = this.f3348a;
            this.f3348a = r12 + 1;
            return Byte.valueOf(xVar.w(r12));
        } catch (IndexOutOfBoundsException e10) {
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
