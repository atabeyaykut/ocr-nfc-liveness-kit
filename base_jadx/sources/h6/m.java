package h6;

import android.app.ActivityManager;
import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.measurement.s3;
import j6.k;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.TreeSet;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class m implements Callable<h5.k<Void>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f6932a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Throwable f6933b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Thread f6934c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ o6.d f6935d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ t f6936e;

    public m(t tVar, long j10, Throwable th2, Thread thread, o6.d dVar) {
        this.f6936e = tVar;
        this.f6932a = j10;
        this.f6933b = th2;
        this.f6934c = thread;
        this.f6935d = dVar;
    }

    @Override // java.util.concurrent.Callable
    public final h5.k<Void> call() throws Exception {
        ActivityManager.RunningAppProcessInfo next;
        Boolean boolValueOf;
        m6.f fVar;
        String str;
        Thread thread;
        long j10 = this.f6932a;
        long j11 = j10 / 1000;
        t tVar = this.f6936e;
        m6.e eVar = tVar.f6968k.f6938b;
        eVar.getClass();
        NavigableSet navigableSetDescendingSet = new TreeSet(m6.f.d(eVar.f10040b.f10043b.list())).descendingSet();
        String str2 = !navigableSetDescendingSet.isEmpty() ? (String) navigableSetDescendingSet.first() : null;
        if (str2 == null) {
            Log.e("FirebaseCrashlytics", "Tried to write a fatal exception while no session was open.", null);
            return h5.n.e(null);
        }
        tVar.f6961c.a();
        m0 m0Var = tVar.f6968k;
        m0Var.getClass();
        String strConcat = "Persisting fatal event for session ".concat(str2);
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", strConcat, null);
        }
        z zVar = m0Var.f6937a;
        Context context = zVar.f6993a;
        int r12 = context.getResources().getConfiguration().orientation;
        Throwable th2 = this.f6933b;
        q6.b bVar = zVar.f6996d;
        s3 s3Var = new s3(th2, bVar);
        k.a aVar = new k.a();
        aVar.f8199b = "crash";
        aVar.f8198a = Long.valueOf(j11);
        String str3 = zVar.f6995c.f6880d;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
            while (it.hasNext()) {
                next = it.next();
                if (next.processName.equals(str3)) {
                    break;
                }
            }
            next = null;
        } else {
            next = null;
        }
        if (next != null) {
            boolValueOf = Boolean.valueOf(next.importance != 100);
        } else {
            boolValueOf = null;
        }
        Integer numValueOf = Integer.valueOf(r12);
        ArrayList arrayList = new ArrayList();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) s3Var.f3734c;
        Thread thread2 = this.f6934c;
        arrayList.add(z.e(thread2, stackTraceElementArr, 4));
        Iterator<Map.Entry<Thread, StackTraceElement[]>> it2 = Thread.getAllStackTraces().entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<Thread, StackTraceElement[]> next2 = it2.next();
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it3 = it2;
            Thread key = next2.getKey();
            if (key.equals(thread2)) {
                thread = thread2;
            } else {
                thread = thread2;
                arrayList.add(z.e(key, bVar.e(next2.getValue()), 0));
            }
            thread2 = thread;
            it2 = it3;
        }
        j6.b0 b0Var = new j6.b0(arrayList);
        j6.o oVarC = z.c(s3Var, 0);
        Long l5 = 0L;
        String str4 = l5 == null ? " address" : "";
        if (!str4.isEmpty()) {
            throw new IllegalStateException("Missing required properties:".concat(str4));
        }
        j6.m mVar = new j6.m(b0Var, oVarC, null, new j6.p("0", "0", l5.longValue()), zVar.a());
        String strConcat2 = numValueOf == null ? "".concat(" uiOrientation") : "";
        if (!strConcat2.isEmpty()) {
            throw new IllegalStateException("Missing required properties:".concat(strConcat2));
        }
        aVar.f8200c = new j6.l(mVar, null, null, boolValueOf, numValueOf.intValue());
        aVar.f8201d = zVar.b(r12);
        m0Var.f6938b.c(m0.a(aVar.a(), m0Var.f6940d, m0Var.f6941e), str2, true);
        try {
            fVar = tVar.f;
            str = ".ae" + j10;
            fVar.getClass();
        } catch (IOException e10) {
            Log.w("FirebaseCrashlytics", "Could not create app exception marker file.", e10);
        }
        if (!new File(fVar.f10042a, str).createNewFile()) {
            throw new IOException("Create new file failed.");
        }
        o6.d dVar = this.f6935d;
        tVar.c(false, dVar);
        t.a(tVar);
        if (!tVar.f6960b.a()) {
            return h5.n.e(null);
        }
        Executor executor = tVar.f6962d.f6910a;
        return ((o6.c) dVar).f11256i.get().f6841a.n(executor, new l(this, executor));
    }
}
