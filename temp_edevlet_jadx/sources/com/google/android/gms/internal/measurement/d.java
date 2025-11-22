package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class d implements Iterator<p> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Iterator f3432a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Iterator f3433b;

    public d(Iterator it, Iterator it2) {
        this.f3432a = it;
        this.f3433b = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f3432a.hasNext()) {
            return true;
        }
        return this.f3433b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ p next() {
        Iterator it = this.f3432a;
        if (it.hasNext()) {
            return new t(((Integer) it.next()).toString());
        }
        Iterator it2 = this.f3433b;
        if (it2.hasNext()) {
            return new t((String) it2.next());
        }
        throw new NoSuchElementException();
    }
}
