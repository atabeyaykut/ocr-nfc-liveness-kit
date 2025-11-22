package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class w1 extends y1 {
    public final /* synthetic */ String f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f3811g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Bundle f3812h;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f3813j;

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ d2 f3815l;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Long f3810e = null;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ boolean f3814k = true;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w1(d2 d2Var, String str, String str2, Bundle bundle, boolean z10) {
        super(d2Var, true);
        this.f3815l = d2Var;
        this.f = str;
        this.f3811g = str2;
        this.f3812h = bundle;
        this.f3813j = z10;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        Long l5 = this.f3810e;
        long jLongValue = l5 == null ? this.f3840a : l5.longValue();
        v0 v0Var = this.f3815l.f;
        r3.r.i(v0Var);
        v0Var.logEvent(this.f, this.f3811g, this.f3812h, this.f3813j, this.f3814k, jLongValue);
    }
}
