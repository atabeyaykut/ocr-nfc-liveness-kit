package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class o0 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f4041a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f4042b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p0 f4043c;

    public o0(p0 p0Var) {
        this.f4043c = p0Var;
        this.f4042b = p0Var.x();
    }

    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object next() {
        int r02 = this.f4041a;
        if (r02 >= this.f4042b) {
            throw new NoSuchElementException();
        }
        this.f4041a = r02 + 1;
        return Byte.valueOf(this.f4043c.y(r02));
    }

    public final void b() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f4041a < this.f4042b;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ void remove() {
        b();
        throw null;
    }
}
