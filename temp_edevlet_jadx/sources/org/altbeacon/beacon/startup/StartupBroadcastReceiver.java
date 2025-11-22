package org.altbeacon.beacon.startup;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.media.a;
import androidx.work.WorkRequest;
import gd.e;
import id.b;
import java.util.ArrayList;
import kd.l;
import kd.m;

/* loaded from: classes2.dex */
public class StartupBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        b.a("StartupBroadcastReceiver", "onReceive called in startup broadcast receiver", new Object[0]);
        if (intent != null && intent.getAction() != null && intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
            b.d("StartupBroadcastReceiver", "Android Beacon Library restarted via ACTION_BOOT_COMPLETED", new Object[0]);
            e.g(context.getApplicationContext());
        }
        e eVarG = e.g(context.getApplicationContext());
        if (!eVarG.h() && !eVarG.f6653o) {
            b.a("StartupBroadcastReceiver", "No consumers are bound.  Ignoring broadcast receiver.", new Object[0]);
            return;
        }
        int intExtra = intent.getIntExtra("android.bluetooth.le.extra.CALLBACK_TYPE", -1);
        if (intExtra == -1) {
            if (intent.getBooleanExtra("wakeup", false)) {
                b.a("StartupBroadcastReceiver", "got wake up intent", new Object[0]);
                return;
            } else {
                b.a("StartupBroadcastReceiver", "Already started.  Ignoring intent: %s of type: %s", intent, intent.getStringExtra("wakeup"));
                return;
            }
        }
        b.a("StartupBroadcastReceiver", a.d("Passive background scan callback type: ", intExtra), new Object[0]);
        b.a("StartupBroadcastReceiver", "got Android background scan via intent", new Object[0]);
        int intExtra2 = intent.getIntExtra("android.bluetooth.le.extra.ERROR_CODE", -1);
        if (intExtra2 != -1) {
            b.f("StartupBroadcastReceiver", a.d("Passive background scan failed.  Code; ", intExtra2), new Object[0]);
        }
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("android.bluetooth.le.extra.LIST_SCAN_RESULT");
        if (eVarG.f6653o) {
            l lVarC = l.c();
            if (parcelableArrayListExtra != null) {
                lVarC.f8894b.addAll(parcelableArrayListExtra);
            }
            synchronized (lVarC) {
                if (System.currentTimeMillis() - lVarC.f8893a.longValue() > WorkRequest.MIN_BACKOFF_MILLIS) {
                    b.a("l", "scheduling an immediate scan job because last did " + (System.currentTimeMillis() - lVarC.f8893a.longValue()) + "millis ago.", new Object[0]);
                    lVarC.f8893a = Long.valueOf(System.currentTimeMillis());
                    lVarC.d(context, m.d(context), true);
                } else {
                    b.a("l", "Not scheduling an immediate scan job because we just did recently.", new Object[0]);
                }
            }
        }
    }
}
