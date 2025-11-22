package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class j1 extends y1 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Activity f3563e;
    public final /* synthetic */ String f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f3564g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ d2 f3565h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j1(d2 d2Var, Activity activity, String str, String str2) {
        super(d2Var, true);
        this.f3565h = d2Var;
        this.f3563e = activity;
        this.f = str;
        this.f3564g = str2;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        v0 v0Var = this.f3565h.f;
        r3.r.i(v0Var);
        v0Var.setCurrentScreen(new z3.d(this.f3563e), this.f, this.f3564g, this.f3840a);
    }
}
