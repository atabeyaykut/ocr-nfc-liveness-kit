package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class e implements Iterator<p> {

    /* renamed from: a, reason: collision with root package name */
    public int f3449a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f3450b;

    public e(f fVar) {
        this.f3450b = fVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3449a < this.f3450b.y();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ p next() {
        int r02 = this.f3449a;
        f fVar = this.f3450b;
        if (r02 >= fVar.y()) {
            throw new NoSuchElementException(androidx.appcompat.widget.v.c(32, "Out of bounds index: ", this.f3449a));
        }
        int r03 = this.f3449a;
        this.f3449a = r03 + 1;
        return fVar.z(r03);
    }
}
