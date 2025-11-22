package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import a3.f;
import a3.m;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import e3.a;
import u2.j;
import u2.s;
import u2.w;

/* loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f2931a = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int r22 = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int r6 = intent.getExtras().getInt("attemptNumber");
        w.b(context);
        j.a aVarA = s.a();
        aVarA.b(queryParameter);
        aVarA.c(a.b(r22));
        if (queryParameter2 != null) {
            aVarA.f17840b = Base64.decode(queryParameter2, 0);
        }
        m mVar = w.a().f17865d;
        j jVarA = aVarA.a();
        Runnable runnable = new Runnable() { // from class: a3.a
            @Override // java.lang.Runnable
            public final void run() {
                int r02 = AlarmManagerSchedulerBroadcastReceiver.f2931a;
            }
        };
        mVar.getClass();
        mVar.f88e.execute(new f(mVar, jVarA, r6, runnable));
    }
}
