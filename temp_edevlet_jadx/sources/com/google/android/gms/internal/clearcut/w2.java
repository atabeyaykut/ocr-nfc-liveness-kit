package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class w2 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f3335a = -1;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3336b;

    /* renamed from: c, reason: collision with root package name */
    public Iterator f3337c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ r2 f3338d;

    public w2(r2 r2Var) {
        this.f3338d = r2Var;
    }

    public final Iterator a() {
        if (this.f3337c == null) {
            this.f3337c = this.f3338d.f3294c.entrySet().iterator();
        }
        return this.f3337c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int r02 = this.f3335a + 1;
        r2 r2Var = this.f3338d;
        return r02 < r2Var.f3293b.size() || (!r2Var.f3294c.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.f3336b = true;
        int r12 = this.f3335a + 1;
        this.f3335a = r12;
        r2 r2Var = this.f3338d;
        return (Map.Entry) (r12 < r2Var.f3293b.size() ? r2Var.f3293b.get(this.f3335a) : a().next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f3336b) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f3336b = false;
        int r02 = r2.f3291g;
        r2 r2Var = this.f3338d;
        r2Var.g();
        if (this.f3335a >= r2Var.f3293b.size()) {
            a().remove();
            return;
        }
        int r12 = this.f3335a;
        this.f3335a = r12 - 1;
        r2Var.d(r12);
    }
}
