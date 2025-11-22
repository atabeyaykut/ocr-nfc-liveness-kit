package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class m1 extends y1 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f3624e = 1;
    public final /* synthetic */ Object f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f3625g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m1(c2 c2Var, Activity activity) {
        super(c2Var.f3407a, true);
        this.f3625g = c2Var;
        this.f = activity;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        switch (this.f3624e) {
            case 0:
                v0 v0Var = ((d2) this.f3625g).f;
                r3.r.i(v0Var);
                v0Var.endAdUnitExposure((String) this.f, this.f3841b);
                break;
            default:
                v0 v0Var2 = ((c2) this.f3625g).f3407a.f;
                r3.r.i(v0Var2);
                v0Var2.onActivityStarted(new z3.d((Activity) this.f), this.f3841b);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m1(d2 d2Var, String str) {
        super(d2Var, true);
        this.f3625g = d2Var;
        this.f = str;
    }
}
