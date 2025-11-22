package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class l1 extends y1 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f3605e;
    public final /* synthetic */ d2 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l1(d2 d2Var, String str) {
        super(d2Var, true);
        this.f = d2Var;
        this.f3605e = str;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        v0 v0Var = this.f.f;
        r3.r.i(v0Var);
        v0Var.beginAdUnitExposure(this.f3605e, this.f3841b);
    }
}
