package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class l3 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f4026a = -1;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4027b;

    /* renamed from: c, reason: collision with root package name */
    public Iterator f4028c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g3 f4029d;

    public l3(g3 g3Var) {
        this.f4029d = g3Var;
    }

    public final Iterator a() {
        if (this.f4028c == null) {
            this.f4028c = this.f4029d.f3969c.entrySet().iterator();
        }
        return this.f4028c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int r02 = this.f4026a + 1;
        g3 g3Var = this.f4029d;
        return r02 < g3Var.f3968b.size() || (!g3Var.f3969c.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.f4027b = true;
        int r12 = this.f4026a + 1;
        this.f4026a = r12;
        g3 g3Var = this.f4029d;
        return (Map.Entry) (r12 < g3Var.f3968b.size() ? g3Var.f3968b.get(this.f4026a) : a().next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f4027b) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f4027b = false;
        int r02 = g3.f3966g;
        g3 g3Var = this.f4029d;
        g3Var.i();
        if (this.f4026a >= g3Var.f3968b.size()) {
            a().remove();
            return;
        }
        int r12 = this.f4026a;
        this.f4026a = r12 - 1;
        g3Var.f(r12);
    }
}
