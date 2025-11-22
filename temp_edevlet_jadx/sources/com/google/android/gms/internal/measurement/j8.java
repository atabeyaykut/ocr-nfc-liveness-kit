package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class j8 implements Iterator<Map.Entry> {

    /* renamed from: a, reason: collision with root package name */
    public int f3583a = -1;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3584b;

    /* renamed from: c, reason: collision with root package name */
    public Iterator<Map.Entry> f3585c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ l8 f3586d;

    public final Iterator<Map.Entry> a() {
        if (this.f3585c == null) {
            this.f3585c = this.f3586d.f3614c.entrySet().iterator();
        }
        return this.f3585c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int r02 = this.f3583a + 1;
        l8 l8Var = this.f3586d;
        if (r02 >= l8Var.f3613b.size()) {
            return !l8Var.f3614c.isEmpty() && a().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Map.Entry next() {
        this.f3584b = true;
        int r12 = this.f3583a + 1;
        this.f3583a = r12;
        l8 l8Var = this.f3586d;
        return (Map.Entry) (r12 < l8Var.f3613b.size() ? l8Var.f3613b.get(this.f3583a) : a().next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f3584b) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f3584b = false;
        int r02 = l8.f3611g;
        l8 l8Var = this.f3586d;
        l8Var.f();
        if (this.f3583a >= l8Var.f3613b.size()) {
            a().remove();
            return;
        }
        int r12 = this.f3583a;
        this.f3583a = r12 - 1;
        l8Var.d(r12);
    }
}
