package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class h1 extends y1 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f3528e;
    public final /* synthetic */ String f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Bundle f3529g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ d2 f3530h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1(d2 d2Var, String str, String str2, Bundle bundle) {
        super(d2Var, true);
        this.f3530h = d2Var;
        this.f3528e = str;
        this.f = str2;
        this.f3529g = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        v0 v0Var = this.f3530h.f;
        r3.r.i(v0Var);
        v0Var.clearConditionalUserProperty(this.f3528e, this.f, this.f3529g);
    }
}
