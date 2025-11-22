package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import android.os.SystemClock;

/* loaded from: classes.dex */
public abstract class y1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final long f3840a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3841b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3842c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d2 f3843d;

    public y1(d2 d2Var, boolean z10) {
        this.f3843d = d2Var;
        d2Var.getClass();
        this.f3840a = System.currentTimeMillis();
        this.f3841b = SystemClock.elapsedRealtime();
        this.f3842c = z10;
    }

    public abstract void a() throws RemoteException;

    public void b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        d2 d2Var = this.f3843d;
        if (d2Var.f3439e) {
            b();
            return;
        }
        try {
            a();
        } catch (Exception e10) {
            d2Var.a(e10, false, this.f3842c);
            b();
        }
    }
}
