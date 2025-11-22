package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class s implements Iterator<p> {

    /* renamed from: a, reason: collision with root package name */
    public int f3722a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f3723b;

    public s(t tVar) {
        this.f3723b = tVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3722a < this.f3723b.f3766a.length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ p next() {
        int r02 = this.f3722a;
        t tVar = this.f3723b;
        if (r02 >= tVar.f3766a.length()) {
            throw new NoSuchElementException();
        }
        String str = tVar.f3766a;
        int r22 = this.f3722a;
        this.f3722a = r22 + 1;
        return new t(String.valueOf(str.charAt(r22)));
    }
}
