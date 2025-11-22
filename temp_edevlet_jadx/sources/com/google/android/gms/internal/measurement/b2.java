package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class b2 extends y1 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Activity f3384e;
    public final /* synthetic */ r0 f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ c2 f3385g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b2(c2 c2Var, Activity activity, r0 r0Var) {
        super(c2Var.f3407a, true);
        this.f3385g = c2Var;
        this.f3384e = activity;
        this.f = r0Var;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        v0 v0Var = this.f3385g.f3407a.f;
        r3.r.i(v0Var);
        v0Var.onActivitySaveInstanceState(new z3.d(this.f3384e), this.f, this.f3841b);
    }
}
