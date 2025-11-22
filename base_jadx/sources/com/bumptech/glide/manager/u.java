package com.bumptech.glide.manager;

import android.util.Log;
import com.bumptech.glide.manager.s;

/* loaded from: classes.dex */
public final class u implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s.e f2820a;

    public u(s.e eVar) {
        this.f2820a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10 = this.f2820a.f2813d;
        s.e eVar = this.f2820a;
        eVar.f2813d = eVar.c();
        if (z10 != this.f2820a.f2813d) {
            if (Log.isLoggable("ConnectivityMonitor", 3)) {
                Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + this.f2820a.f2813d);
            }
            s.e eVar2 = this.f2820a;
            q1.m.e().post(new v(eVar2, eVar2.f2813d));
        }
    }
}
