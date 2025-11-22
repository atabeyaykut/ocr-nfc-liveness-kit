package com.bumptech.glide.manager;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class x implements k {

    /* renamed from: a, reason: collision with root package name */
    public final Set<n1.g<?>> f2829a = Collections.newSetFromMap(new WeakHashMap());

    @Override // com.bumptech.glide.manager.k
    public final void g() {
        Iterator it = q1.m.d(this.f2829a).iterator();
        while (it.hasNext()) {
            ((n1.g) it.next()).g();
        }
    }

    @Override // com.bumptech.glide.manager.k
    public final void i() {
        Iterator it = q1.m.d(this.f2829a).iterator();
        while (it.hasNext()) {
            ((n1.g) it.next()).i();
        }
    }

    @Override // com.bumptech.glide.manager.k
    public final void onStart() {
        Iterator it = q1.m.d(this.f2829a).iterator();
        while (it.hasNext()) {
            ((n1.g) it.next()).onStart();
        }
    }
}
