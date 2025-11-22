package a3;

import a3.e;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.RequiresApi;
import c5.w;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.Adler32;
import u2.s;

@RequiresApi(api = 21)
/* loaded from: classes.dex */
public final class d implements p {

    /* renamed from: a, reason: collision with root package name */
    public final Context f57a;

    /* renamed from: b, reason: collision with root package name */
    public final b3.d f58b;

    /* renamed from: c, reason: collision with root package name */
    public final e f59c;

    public d(Context context, b3.d dVar, e eVar) {
        this.f57a = context;
        this.f58b = dVar;
        this.f59c = eVar;
    }

    @Override // a3.p
    public final void a(s sVar, int r18, boolean z10) {
        boolean z11;
        Context context = this.f57a;
        ComponentName componentName = new ComponentName(context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(context.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(sVar.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(e3.a.a(sVar.d())).array());
        if (sVar.c() != null) {
            adler32.update(sVar.c());
        }
        int value = (int) adler32.getValue();
        if (!z10) {
            Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JobInfo next = it.next();
                int r13 = next.getExtras().getInt("attemptNumber");
                if (next.getId() == value) {
                    z11 = r13 >= r18;
                }
            }
            if (z11) {
                w.l(sVar, "JobInfoScheduler", "Upload for context %s is already scheduled. Returning...");
                return;
            }
        }
        long jD = this.f58b.D(sVar);
        JobInfo.Builder builder = new JobInfo.Builder(value, componentName);
        r2.d dVarD = sVar.d();
        e eVar = this.f59c;
        builder.setMinimumLatency(eVar.b(dVarD, jD, r18));
        Set<e.b> setB = eVar.c().get(dVarD).b();
        if (setB.contains(e.b.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (setB.contains(e.b.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (setB.contains(e.b.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", r18);
        persistableBundle.putString("backendName", sVar.b());
        persistableBundle.putInt("priority", e3.a.a(sVar.d()));
        if (sVar.c() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(sVar.c(), 0));
        }
        builder.setExtras(persistableBundle);
        Log.d(w.u("JobInfoScheduler"), String.format("Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", sVar, Integer.valueOf(value), Long.valueOf(eVar.b(sVar.d(), jD, r18)), Long.valueOf(jD), Integer.valueOf(r18)));
        jobScheduler.schedule(builder.build());
    }

    @Override // a3.p
    public final void b(s sVar, int r32) {
        a(sVar, r32, false);
    }
}
