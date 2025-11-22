package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class p1 extends y1 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f3673e;
    public final /* synthetic */ Object f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f3674g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p1(c2 c2Var, Activity activity) {
        super(c2Var.f3407a, true);
        this.f3673e = 2;
        this.f = c2Var;
        this.f3674g = activity;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        switch (this.f3673e) {
            case 0:
                v0 v0Var = ((d2) this.f).f;
                r3.r.i(v0Var);
                v0Var.generateEventId((r0) this.f3674g);
                break;
            case 1:
                v0 v0Var2 = ((d2) this.f).f;
                r3.r.i(v0Var2);
                v0Var2.registerOnMeasurementEventListener((z1) this.f3674g);
                break;
            default:
                v0 v0Var3 = ((c2) this.f).f3407a.f;
                r3.r.i(v0Var3);
                v0Var3.onActivityStopped(new z3.d((Activity) this.f3674g), this.f3841b);
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void b() {
        switch (this.f3673e) {
            case 0:
                ((r0) this.f3674g).a(null);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p1(d2 d2Var, j0 j0Var, int r32) {
        super(d2Var, true);
        this.f3673e = r32;
        this.f = d2Var;
        this.f3674g = j0Var;
    }
}
