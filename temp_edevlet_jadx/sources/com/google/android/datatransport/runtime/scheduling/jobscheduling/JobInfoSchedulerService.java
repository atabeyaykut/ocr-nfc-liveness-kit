package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import a3.f;
import a3.m;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.q;
import e3.a;
import u2.j;
import u2.s;
import u2.w;

@RequiresApi(api = 21)
/* loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f2932a = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int r22 = jobParameters.getExtras().getInt("priority");
        int r32 = jobParameters.getExtras().getInt("attemptNumber");
        w.b(getApplicationContext());
        j.a aVarA = s.a();
        aVarA.b(string);
        aVarA.c(a.b(r22));
        if (string2 != null) {
            aVarA.f17840b = Base64.decode(string2, 0);
        }
        m mVar = w.a().f17865d;
        j jVarA = aVarA.a();
        q qVar = new q(2, this, jobParameters);
        mVar.getClass();
        mVar.f88e.execute(new f(mVar, jVarA, r32, qVar));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
