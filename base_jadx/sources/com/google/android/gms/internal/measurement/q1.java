package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class q1 extends y1 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ r0 f3691e;
    public final /* synthetic */ d2 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q1(d2 d2Var, r0 r0Var) {
        super(d2Var, true);
        this.f = d2Var;
        this.f3691e = r0Var;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        v0 v0Var = this.f.f;
        r3.r.i(v0Var);
        v0Var.getCurrentScreenName(this.f3691e);
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void b() {
        this.f3691e.a(null);
    }
}
