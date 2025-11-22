package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class i1 extends y1 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f3543e;
    public final /* synthetic */ String f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ r0 f3544g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ d2 f3545h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i1(d2 d2Var, String str, String str2, r0 r0Var) {
        super(d2Var, true);
        this.f3545h = d2Var;
        this.f3543e = str;
        this.f = str2;
        this.f3544g = r0Var;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        v0 v0Var = this.f3545h.f;
        r3.r.i(v0Var);
        v0Var.getConditionalUserProperties(this.f3543e, this.f, this.f3544g);
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void b() {
        this.f3544g.a(null);
    }
}
