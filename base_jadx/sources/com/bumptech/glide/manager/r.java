package com.bumptech.glide.manager;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final Set<m1.d> f2795a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f2796b = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public boolean f2797c;

    public final boolean a(@Nullable m1.d dVar) {
        boolean z10 = true;
        if (dVar == null) {
            return true;
        }
        boolean zRemove = this.f2795a.remove(dVar);
        if (!this.f2796b.remove(dVar) && !zRemove) {
            z10 = false;
        }
        if (z10) {
            dVar.clear();
        }
        return z10;
    }

    public final void b() {
        Iterator it = q1.m.d(this.f2795a).iterator();
        while (it.hasNext()) {
            m1.d dVar = (m1.d) it.next();
            if (!dVar.j() && !dVar.g()) {
                dVar.clear();
                if (this.f2797c) {
                    this.f2796b.add(dVar);
                } else {
                    dVar.i();
                }
            }
        }
    }

    public final String toString() {
        return super.toString() + "{numRequests=" + this.f2795a.size() + ", isPaused=" + this.f2797c + "}";
    }
}
