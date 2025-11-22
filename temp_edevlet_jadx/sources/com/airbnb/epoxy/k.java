package com.airbnb.epoxy;

import android.util.Log;

/* loaded from: classes.dex */
public final class k implements n0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f2593a;

    /* renamed from: b, reason: collision with root package name */
    public long f2594b = -1;

    /* renamed from: c, reason: collision with root package name */
    public String f2595c = null;

    public k(String str) {
        this.f2593a = str;
    }

    @Override // com.airbnb.epoxy.n0
    public final void b(String str) {
        if (this.f2594b != -1) {
            throw new IllegalStateException("Timer was already started");
        }
        this.f2594b = System.nanoTime();
        this.f2595c = str;
    }

    @Override // com.airbnb.epoxy.n0
    public final void stop() {
        if (this.f2594b == -1) {
            throw new IllegalStateException("Timer was not started");
        }
        Log.d(this.f2593a, String.format(androidx.camera.camera2.internal.c.h(new StringBuilder(), this.f2595c, ": %.3fms"), Float.valueOf((System.nanoTime() - this.f2594b) / 1000000.0f)));
        this.f2594b = -1L;
        this.f2595c = null;
    }
}
