package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;

/* loaded from: classes.dex */
public final class k1 extends y1 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f3593e;
    public final /* synthetic */ Bundle f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ d2 f3594g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k1(d2 d2Var, Context context, Bundle bundle) {
        super(d2Var, true);
        this.f3594g = d2Var;
        this.f3593e = context;
        this.f = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.y1
    public final void a() {
        v0 v0VarAsInterface;
        try {
            r3.r.i(this.f3593e);
            d2 d2Var = this.f3594g;
            Context context = this.f3593e;
            d2Var.getClass();
            try {
                v0VarAsInterface = u0.asInterface(DynamiteModule.c(context, DynamiteModule.f3003d, ModuleDescriptor.MODULE_ID).b("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
            } catch (DynamiteModule.a e10) {
                d2Var.a(e10, true, false);
                v0VarAsInterface = null;
            }
            d2Var.f = v0VarAsInterface;
            if (this.f3594g.f == null) {
                this.f3594g.getClass();
                Log.w("FA", "Failed to connect to measurement client.");
                return;
            }
            int r12 = DynamiteModule.a(this.f3593e, ModuleDescriptor.MODULE_ID);
            e1 e1Var = new e1(46000L, Math.max(r12, r0), DynamiteModule.d(this.f3593e, ModuleDescriptor.MODULE_ID, false) < r12, null, null, null, this.f, c5.d4.a(this.f3593e));
            v0 v0Var = this.f3594g.f;
            r3.r.i(v0Var);
            v0Var.initialize(new z3.d(this.f3593e), e1Var, this.f3840a);
        } catch (Exception e11) {
            this.f3594g.a(e11, true, false);
        }
    }
}
