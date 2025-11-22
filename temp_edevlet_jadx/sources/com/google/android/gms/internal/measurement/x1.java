package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class x1 extends y1 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f3829g;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ d2 f3831j;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f3828e = "fcm";
    public final /* synthetic */ String f = "_ln";

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f3830h = true;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x1(d2 d2Var, String str) {
        super(d2Var, true);
        this.f3831j = d2Var;
        this.f3829g = str;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        v0 v0Var = this.f3831j.f;
        r3.r.i(v0Var);
        v0Var.setUserProperty(this.f3828e, this.f, new z3.d(this.f3829g), this.f3830h, this.f3840a);
    }
}
