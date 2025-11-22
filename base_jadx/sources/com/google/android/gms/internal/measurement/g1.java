package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class g1 extends y1 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f3480e;
    public final /* synthetic */ Object f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f3481g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g1(c2 c2Var, Activity activity) {
        super(c2Var.f3407a, true);
        this.f3480e = 2;
        this.f = c2Var;
        this.f3481g = activity;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() throws RemoteException {
        switch (this.f3480e) {
            case 0:
                v0 v0Var = ((d2) this.f).f;
                r3.r.i(v0Var);
                v0Var.setConditionalUserProperty((Bundle) this.f3481g, this.f3840a);
                break;
            case 1:
                v0 v0Var2 = ((d2) this.f).f;
                r3.r.i(v0Var2);
                v0Var2.getCachedAppInstanceId((r0) this.f3481g);
                break;
            default:
                v0 v0Var3 = ((c2) this.f).f3407a.f;
                r3.r.i(v0Var3);
                v0Var3.onActivityPaused(new z3.d((Activity) this.f3481g), this.f3841b);
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void b() {
        switch (this.f3480e) {
            case 1:
                ((r0) this.f3481g).a(null);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g1(d2 d2Var, Object obj, int r32) {
        super(d2Var, true);
        this.f3480e = r32;
        this.f = d2Var;
        this.f3481g = obj;
    }
}
