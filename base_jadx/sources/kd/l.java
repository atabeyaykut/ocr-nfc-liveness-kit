package kd;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.altbeacon.beacon.service.ScanJob;

@RequiresApi(api = 21)
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: e, reason: collision with root package name */
    public static final Object f8892e = new Object();

    @Nullable
    public static volatile l f;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public gd.d f8895c;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public Long f8893a = 0L;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public ArrayList f8894b = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public boolean f8896d = true;

    @NonNull
    public static l c() {
        l lVar = f;
        if (lVar == null) {
            synchronized (f8892e) {
                lVar = f;
                if (lVar == null) {
                    lVar = new l();
                    f = lVar;
                }
            }
        }
        return lVar;
    }

    public final void a(Context context, gd.e eVar) {
        HashSet hashSet;
        HashMap map;
        f fVar;
        boolean z10 = false;
        id.b.a("l", "Applying settings to ScanJob", new Object[0]);
        m mVarD = m.d(context);
        mVarD.f8899c = new HashSet(eVar.f6647i);
        mVarD.f = eVar.f6656r;
        mVarD.f8902g = eVar.f6657s;
        mVarD.f8901e = eVar.f6658t;
        mVarD.f8903h = eVar.f6649k;
        ArrayList arrayList = new ArrayList(mVarD.f8898b.f());
        ArrayList arrayList2 = new ArrayList(mVarD.f8897a.keySet());
        e eVarC = e.c(eVar.f6640a);
        synchronized (eVarC) {
            hashSet = new HashSet();
            for (gd.l lVar : eVarC.d().keySet()) {
                if (eVarC.d().get(lVar).f8869d) {
                    hashSet.add(lVar);
                }
            }
        }
        ArrayList arrayList3 = new ArrayList(hashSet);
        ArrayList arrayList4 = new ArrayList(Collections.unmodifiableSet(eVar.f));
        id.b.a("m", "ranged regions: old=" + arrayList2.size() + " new=" + arrayList4.size(), new Object[0]);
        id.b.a("m", "monitored regions: old=" + arrayList.size() + " new=" + arrayList3.size(), new Object[0]);
        Iterator it = arrayList4.iterator();
        while (it.hasNext()) {
            gd.l lVar2 = (gd.l) it.next();
            if (arrayList2.contains(lVar2)) {
                gd.l lVar3 = (gd.l) arrayList2.get(arrayList2.indexOf(lVar2));
                if (lVar2.b(lVar3)) {
                    mVarD.f8897a.remove(lVar3);
                    map = mVarD.f8897a;
                    mVarD.f8904j.getPackageName();
                    fVar = new f(new a());
                }
            } else {
                id.b.a("m", "Starting ranging region: " + lVar2, new Object[0]);
                map = mVarD.f8897a;
                mVarD.f8904j.getPackageName();
                fVar = new f(new a());
            }
            map.put(lVar2, fVar);
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            gd.l lVar4 = (gd.l) it2.next();
            if (!arrayList4.contains(lVar4)) {
                id.b.a("m", "Stopping ranging region: " + lVar4, new Object[0]);
                mVarD.f8897a.remove(lVar4);
            }
        }
        id.b.a("m", "Updated state with " + arrayList4.size() + " ranging regions and " + arrayList3.size() + " monitoring regions.", new Object[0]);
        mVarD.e();
        StringBuilder sb2 = new StringBuilder("Applying scan job settings with background mode ");
        sb2.append(mVarD.a());
        id.b.a("l", sb2.toString(), new Object[0]);
        if (this.f8896d && mVarD.a().booleanValue()) {
            id.b.a("l", "This is the first time we schedule a job and we are in background, set immediate scan flag to true in order to trigger the HW filter install.", new Object[0]);
            z10 = true;
        }
        d(context, mVarD, z10);
    }

    public final void b() {
        gd.d dVar;
        if (this.f8895c == null) {
            synchronized (gd.d.class) {
                if (gd.d.f6635b == null) {
                    gd.d.f6635b = new gd.d();
                }
                dVar = gd.d.f6635b;
            }
            this.f8895c = dVar;
        }
        this.f8895c.c();
    }

    public final void d(Context context, m mVar, boolean z10) {
        gd.d dVar;
        if (this.f8895c == null) {
            synchronized (gd.d.class) {
                if (gd.d.f6635b == null) {
                    gd.d.f6635b = new gd.d();
                }
                dVar = gd.d.f6635b;
            }
            this.f8895c = dVar;
        }
        this.f8895c.c();
        long jB = mVar.b() - mVar.c();
        if (z10) {
            id.b.a("l", "We just woke up in the background based on a new scan result or first run of the app. Start scan job immediately.", new Object[0]);
        } else {
            jElapsedRealtime = jB > 0 ? SystemClock.elapsedRealtime() % mVar.b() : 0L;
            if (jElapsedRealtime < 50) {
                jElapsedRealtime = 50;
            }
        }
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (mVar.f8897a.size() + mVar.f8898b.f().size() <= 0) {
            id.b.a("l", "We are not monitoring or ranging any regions.  We are going to cancel all scan jobs.", new Object[0]);
            jobScheduler.cancel(ScanJob.b(context, "immediateScanJobId"));
            jobScheduler.cancel(ScanJob.b(context, "periodicScanJobId"));
            if (Build.VERSION.SDK_INT >= 26) {
                new k(context).h();
                return;
            }
            return;
        }
        if (!z10 && mVar.a().booleanValue()) {
            id.b.a("l", "Not scheduling an immediate scan because we are in background mode.   Cancelling existing immediate ScanJob.", new Object[0]);
            jobScheduler.cancel(ScanJob.b(context, "immediateScanJobId"));
        } else if (jElapsedRealtime < mVar.b() - 50) {
            id.b.a("l", "Scheduling immediate ScanJob to run in " + jElapsedRealtime + " millis", new Object[0]);
            int r13 = jobScheduler.schedule(new JobInfo.Builder(ScanJob.b(context, "immediateScanJobId"), new ComponentName(context, (Class<?>) ScanJob.class)).setPersisted(true).setExtras(new PersistableBundle()).setMinimumLatency(jElapsedRealtime).setOverrideDeadline(jElapsedRealtime).build());
            if (r13 < 0) {
                id.b.c("l", android.support.v4.media.a.d("Failed to schedule an immediate scan job.  Beacons will not be detected. Error: ", r13), new Object[0]);
            } else if (this.f8896d) {
                id.b.a("l", "First immediate scan job scheduled successful, change the flag to false.", new Object[0]);
                this.f8896d = false;
            }
        } else {
            id.b.a("l", "Not scheduling immediate scan, assuming periodic is about to run", new Object[0]);
        }
        JobInfo.Builder extras = new JobInfo.Builder(ScanJob.b(context, "periodicScanJobId"), new ComponentName(context, (Class<?>) ScanJob.class)).setPersisted(true).setExtras(new PersistableBundle());
        (Build.VERSION.SDK_INT >= 24 ? extras.setPeriodic(mVar.b(), 0L) : extras.setPeriodic(mVar.b())).build();
        JobInfo jobInfoBuild = extras.build();
        id.b.a("l", "Scheduling periodic ScanJob " + jobInfoBuild + " to run every " + mVar.b() + " millis", new Object[0]);
        int r11 = jobScheduler.schedule(jobInfoBuild);
        if (r11 < 0) {
            id.b.c("l", android.support.v4.media.a.d("Failed to schedule a periodic scan job.  Beacons will not be detected. Error: ", r11), new Object[0]);
        }
    }
}
