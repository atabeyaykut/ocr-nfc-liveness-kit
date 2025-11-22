package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.legacy.content.WakefulBroadcastReceiver;
import c5.c3;
import c5.e3;
import c5.i4;
import c5.w3;
import c5.x3;

/* loaded from: classes.dex */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements w3 {

    /* renamed from: a, reason: collision with root package name */
    public x3 f4195a;

    @Override // android.content.BroadcastReceiver
    @MainThread
    public final void onReceive(@NonNull Context context, @NonNull Intent intent) {
        String str;
        if (this.f4195a == null) {
            this.f4195a = new x3(this);
        }
        x3 x3Var = this.f4195a;
        x3Var.getClass();
        e3 e3Var = i4.r(context, null, null).f1635j;
        i4.e(e3Var);
        if (intent == null) {
            str = "Receiver called with null intent";
        } else {
            String action = intent.getAction();
            c3 c3Var = e3Var.f1513p;
            c3Var.b(action, "Local receiver got");
            if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
                Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
                className.setAction("com.google.android.gms.measurement.UPLOAD");
                c3Var.a("Starting wakeful intent.");
                ((AppMeasurementReceiver) x3Var.f2114a).getClass();
                WakefulBroadcastReceiver.startWakefulService(context, className);
                return;
            }
            if (!"com.android.vending.INSTALL_REFERRER".equals(action)) {
                return;
            } else {
                str = "Install Referrer Broadcasts are deprecated";
            }
        }
        e3Var.f1508j.a(str);
    }
}
