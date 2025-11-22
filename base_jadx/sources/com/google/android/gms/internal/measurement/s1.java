package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class s1 extends y1 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f3728e;
    public final /* synthetic */ String f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ boolean f3729g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ r0 f3730h;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ d2 f3731j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s1(d2 d2Var, String str, String str2, boolean z10, r0 r0Var) {
        super(d2Var, true);
        this.f3731j = d2Var;
        this.f3728e = str;
        this.f = str2;
        this.f3729g = z10;
        this.f3730h = r0Var;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        v0 v0Var = this.f3731j.f;
        r3.r.i(v0Var);
        v0Var.getUserProperties(this.f3728e, this.f, this.f3729g, this.f3730h);
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void b() {
        this.f3730h.a(null);
    }
}
