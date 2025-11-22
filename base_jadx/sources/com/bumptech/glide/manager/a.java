package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class a implements j {

    /* renamed from: a, reason: collision with root package name */
    public final Set<k> f2772a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b, reason: collision with root package name */
    public boolean f2773b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2774c;

    @Override // com.bumptech.glide.manager.j
    public final void a(@NonNull k kVar) {
        this.f2772a.add(kVar);
        if (this.f2774c) {
            kVar.g();
        } else if (this.f2773b) {
            kVar.onStart();
        } else {
            kVar.i();
        }
    }

    @Override // com.bumptech.glide.manager.j
    public final void b(@NonNull k kVar) {
        this.f2772a.remove(kVar);
    }

    public final void c() {
        this.f2774c = true;
        Iterator it = q1.m.d(this.f2772a).iterator();
        while (it.hasNext()) {
            ((k) it.next()).g();
        }
    }

    public final void d() {
        this.f2773b = true;
        Iterator it = q1.m.d(this.f2772a).iterator();
        while (it.hasNext()) {
            ((k) it.next()).onStart();
        }
    }

    public final void e() {
        this.f2773b = false;
        Iterator it = q1.m.d(this.f2772a).iterator();
        while (it.hasNext()) {
            ((k) it.next()).i();
        }
    }
}
