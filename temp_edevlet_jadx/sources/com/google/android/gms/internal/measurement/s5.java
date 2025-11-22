package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class s5 implements Iterator {
    @Override // java.util.Iterator
    public final Object next() {
        r5 r5Var = (r5) this;
        int r12 = r5Var.f3711a;
        if (r12 >= r5Var.f3712b) {
            throw new NoSuchElementException();
        }
        r5Var.f3711a = r12 + 1;
        return Byte.valueOf(r5Var.f3713c.l(r12));
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
