package com.bumptech.glide.manager;

import androidx.lifecycle.Lifecycle;

/* loaded from: classes.dex */
public final class l implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Lifecycle f2777a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f2778b;

    public l(m mVar, Lifecycle lifecycle) {
        this.f2778b = mVar;
        this.f2777a = lifecycle;
    }

    @Override // com.bumptech.glide.manager.k
    public final void g() {
        this.f2778b.f2779a.remove(this.f2777a);
    }

    @Override // com.bumptech.glide.manager.k
    public final void i() {
    }

    @Override // com.bumptech.glide.manager.k
    public final void onStart() {
    }
}
