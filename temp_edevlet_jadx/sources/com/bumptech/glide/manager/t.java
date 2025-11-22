package com.bumptech.glide.manager;

import com.bumptech.glide.manager.s;

/* loaded from: classes.dex */
public final class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f2818a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s.d.a f2819b;

    public t(s.d.a aVar, boolean z10) {
        this.f2819b = aVar;
        this.f2818a = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        s.d.a aVar = this.f2819b;
        aVar.getClass();
        q1.m.a();
        s.d dVar = s.d.this;
        boolean z10 = dVar.f2804a;
        boolean z11 = this.f2818a;
        dVar.f2804a = z11;
        if (z10 != z11) {
            dVar.f2805b.a(z11);
        }
    }
}
