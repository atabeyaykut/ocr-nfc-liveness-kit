package com.bumptech.glide.manager;

import com.bumptech.glide.manager.s;

/* loaded from: classes.dex */
public final class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f2821a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s.e f2822b;

    public v(s.e eVar, boolean z10) {
        this.f2822b = eVar;
        this.f2821a = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2822b.f2811b.a(this.f2821a);
    }
}
