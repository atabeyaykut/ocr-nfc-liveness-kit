package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class v1 extends y1 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f3789e;
    public final /* synthetic */ r0 f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ d2 f3790g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v1(d2 d2Var, String str, r0 r0Var) {
        super(d2Var, true);
        this.f3790g = d2Var;
        this.f3789e = str;
        this.f = r0Var;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        v0 v0Var = this.f3790g.f;
        r3.r.i(v0Var);
        v0Var.getMaxUserProperties(this.f3789e, this.f);
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void b() {
        this.f.a(null);
    }
}
