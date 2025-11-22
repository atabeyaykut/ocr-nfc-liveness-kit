package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class t1 extends y1 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f3767e;
    public final /* synthetic */ Object f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f3768g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f3769h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t1(c2 c2Var, Bundle bundle, Activity activity) {
        super(c2Var.f3407a, true);
        this.f3767e = 1;
        this.f3769h = c2Var;
        this.f = bundle;
        this.f3768g = activity;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        Bundle bundle = null;
        switch (this.f3767e) {
            case 0:
                v0 v0Var = ((d2) this.f3769h).f;
                r3.r.i(v0Var);
                v0Var.logHealthData(5, (String) this.f, new z3.d(this.f3768g), new z3.d(null), new z3.d(null));
                break;
            default:
                if (((Bundle) this.f) != null) {
                    bundle = new Bundle();
                    if (((Bundle) this.f).containsKey("com.google.app_measurement.screen_service")) {
                        Object obj = ((Bundle) this.f).get("com.google.app_measurement.screen_service");
                        if (obj instanceof Bundle) {
                            bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                        }
                    }
                }
                v0 v0Var2 = ((c2) this.f3769h).f3407a.f;
                r3.r.i(v0Var2);
                v0Var2.onActivityCreated(new z3.d((Activity) this.f3768g), bundle, this.f3841b);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t1(d2 d2Var, Object obj) {
        super(d2Var, false);
        this.f3767e = 0;
        this.f3769h = d2Var;
        this.f = "Error with data collection. Data lost.";
        this.f3768g = obj;
    }
}
