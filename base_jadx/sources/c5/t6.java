package c5;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.WorkerThread;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class t6 extends r3 {

    /* renamed from: c, reason: collision with root package name */
    public final s6 f2002c;

    /* renamed from: d, reason: collision with root package name */
    public v2 f2003d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Boolean f2004e;
    public final k6 f;

    /* renamed from: g, reason: collision with root package name */
    public final f7 f2005g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f2006h;

    /* renamed from: j, reason: collision with root package name */
    public final l6 f2007j;

    public t6(i4 i4Var) {
        super(i4Var);
        this.f2006h = new ArrayList();
        this.f2005g = new f7(i4Var.f1640p);
        this.f2002c = new s6(this);
        this.f = new k6(this, i4Var);
        this.f2007j = new l6(this, i4Var);
    }

    public static void u(t6 t6Var, ComponentName componentName) {
        t6Var.b();
        if (t6Var.f2003d != null) {
            t6Var.f2003d = null;
            e3 e3Var = ((i4) t6Var.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f1513p.b(componentName, "Disconnected from device MeasurementService");
            t6Var.b();
            t6Var.v();
        }
    }

    @Override // c5.r3
    public final boolean e() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x0273 A[Catch: all -> 0x02e5, TRY_ENTER, TryCatch #2 {all -> 0x02e5, blocks: (B:30:0x00d5, B:32:0x00db, B:34:0x00e8, B:36:0x00ee, B:40:0x0104, B:76:0x0195, B:140:0x0273, B:142:0x0279, B:143:0x027c, B:160:0x02ba, B:152:0x02a3, B:50:0x0127, B:51:0x012a, B:49:0x0122, B:54:0x0130, B:56:0x0144, B:64:0x0160, B:65:0x0163, B:61:0x0159, B:67:0x0166, B:69:0x017a, B:77:0x0199, B:78:0x019c, B:74:0x018f, B:81:0x01a0, B:83:0x01b9, B:82:0x01ad, B:90:0x01cd, B:92:0x01d9, B:94:0x01e9, B:95:0x01f8), top: B:215:0x00d5 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02d3 A[PHI: r7 r8 r16 r17 r18
      0x02d3: PHI (r7v9 android.database.sqlite.SQLiteDatabase) = 
      (r7v7 android.database.sqlite.SQLiteDatabase)
      (r7v8 android.database.sqlite.SQLiteDatabase)
      (r7v10 android.database.sqlite.SQLiteDatabase)
     binds: [B:147:0x0292, B:164:0x02d1, B:156:0x02ad] A[DONT_GENERATE, DONT_INLINE]
      0x02d3: PHI (r8v21 java.lang.String) = (r8v15 java.lang.String), (r8v18 java.lang.String), (r8v22 java.lang.String) binds: [B:147:0x0292, B:164:0x02d1, B:156:0x02ad] A[DONT_GENERATE, DONT_INLINE]
      0x02d3: PHI (r16v5 int) = (r16v1 int), (r16v3 int), (r16v6 int) binds: [B:147:0x0292, B:164:0x02d1, B:156:0x02ad] A[DONT_GENERATE, DONT_INLINE]
      0x02d3: PHI (r17v7 java.lang.String) = (r17v3 java.lang.String), (r17v5 java.lang.String), (r17v8 java.lang.String) binds: [B:147:0x0292, B:164:0x02d1, B:156:0x02ad] A[DONT_GENERATE, DONT_INLINE]
      0x02d3: PHI (r18v13 int) = (r18v9 int), (r18v11 int), (r18v14 int) binds: [B:147:0x0292, B:164:0x02d1, B:156:0x02ad] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x02d9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0195 A[Catch: SQLiteException -> 0x020b, SQLiteFullException -> 0x020f, SQLiteDatabaseLockedException -> 0x021c, all -> 0x02e5, PHI: r0 r18
      0x0195: PHI (r0v94 android.os.Parcelable) = (r0v78 android.os.Parcelable), (r0v89 android.os.Parcelable), (r0v105 android.os.Parcelable) binds: [B:75:0x0193, B:63:0x015f, B:41:0x0107] A[DONT_GENERATE, DONT_INLINE]
      0x0195: PHI (r18v40 int) = (r18v38 int), (r18v38 int), (r18v44 int) binds: [B:75:0x0193, B:63:0x015f, B:41:0x0107] A[DONT_GENERATE, DONT_INLINE], TryCatch #2 {all -> 0x02e5, blocks: (B:30:0x00d5, B:32:0x00db, B:34:0x00e8, B:36:0x00ee, B:40:0x0104, B:76:0x0195, B:140:0x0273, B:142:0x0279, B:143:0x027c, B:160:0x02ba, B:152:0x02a3, B:50:0x0127, B:51:0x012a, B:49:0x0122, B:54:0x0130, B:56:0x0144, B:64:0x0160, B:65:0x0163, B:61:0x0159, B:67:0x0166, B:69:0x017a, B:77:0x0199, B:78:0x019c, B:74:0x018f, B:81:0x01a0, B:83:0x01b9, B:82:0x01ad, B:90:0x01cd, B:92:0x01d9, B:94:0x01e9, B:95:0x01f8), top: B:215:0x00d5 }] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(c5.v2 r29, s3.a r30, c5.y7 r31) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 894
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.t6.g(c5.v2, s3.a, c5.y7):void");
    }

    @WorkerThread
    public final void h(b bVar) throws IllegalStateException {
        boolean zO;
        b();
        c();
        i4 i4Var = (i4) this.f2115a;
        i4Var.getClass();
        y2 y2VarP = i4Var.p();
        i4 i4Var2 = (i4) y2VarP.f2115a;
        v7 v7Var = i4Var2.f1638m;
        i4.c(v7Var);
        v7Var.getClass();
        byte[] bArrY = v7.Y(bVar);
        if (bArrY.length > 131072) {
            e3 e3Var = i4Var2.f1635j;
            i4.e(e3Var);
            e3Var.f1506g.a("Conditional user property too long for local database. Sending directly to service");
            zO = false;
        } else {
            zO = y2VarP.o(2, bArrY);
        }
        t(new n6(this, q(true), zO, new b(bVar)));
    }

    @WorkerThread
    public final boolean n() {
        b();
        c();
        return this.f2003d != null;
    }

    @WorkerThread
    public final boolean o() {
        b();
        c();
        if (!p()) {
            return true;
        }
        v7 v7Var = ((i4) this.f2115a).f1638m;
        i4.c(v7Var);
        return v7Var.j0() >= r2.f1913m0.a(null).intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0144  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean p() {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.t6.p():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02a2  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final c5.y7 q(boolean r36) {
        /*
            Method dump skipped, instructions count: 717
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.t6.q(boolean):c5.y7");
    }

    @WorkerThread
    public final void r() {
        b();
        i4 i4Var = (i4) this.f2115a;
        e3 e3Var = i4Var.f1635j;
        i4.e(e3Var);
        ArrayList arrayList = this.f2006h;
        e3Var.f1513p.b(Integer.valueOf(arrayList.size()), "Processing queued up service tasks");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                ((Runnable) it.next()).run();
            } catch (RuntimeException e10) {
                e3 e3Var2 = i4Var.f1635j;
                i4.e(e3Var2);
                e3Var2.f.b(e10, "Task exception while flushing queue");
            }
        }
        arrayList.clear();
        this.f2007j.a();
    }

    @WorkerThread
    public final void s() {
        b();
        f7 f7Var = this.f2005g;
        ((w) f7Var.f1557a).getClass();
        f7Var.f1558b = SystemClock.elapsedRealtime();
        ((i4) this.f2115a).getClass();
        this.f.c(r2.J.a(null).longValue());
    }

    @WorkerThread
    public final void t(Runnable runnable) throws IllegalStateException {
        b();
        if (n()) {
            runnable.run();
            return;
        }
        ArrayList arrayList = this.f2006h;
        int size = arrayList.size();
        i4 i4Var = (i4) this.f2115a;
        i4Var.getClass();
        if (size >= 1000) {
            e3 e3Var = i4Var.f1635j;
            i4.e(e3Var);
            e3Var.f.a("Discarding data. Max runnable queue size reached");
        } else {
            arrayList.add(runnable);
            this.f2007j.c(60000L);
            v();
        }
    }

    @WorkerThread
    public final void v() {
        c3 c3Var;
        String str;
        b();
        c();
        if (n()) {
            return;
        }
        if (!p()) {
            if (((i4) this.f2115a).f1633g.t()) {
                return;
            }
            ((i4) this.f2115a).getClass();
            List<ResolveInfo> listQueryIntentServices = ((i4) this.f2115a).f1628a.getPackageManager().queryIntentServices(new Intent().setClassName(((i4) this.f2115a).f1628a, "com.google.android.gms.measurement.AppMeasurementService"), 65536);
            if (listQueryIntentServices == null || listQueryIntentServices.size() <= 0) {
                e3 e3Var = ((i4) this.f2115a).f1635j;
                i4.e(e3Var);
                e3Var.f.a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
                return;
            } else {
                Intent intent = new Intent("com.google.android.gms.measurement.START");
                i4 i4Var = (i4) this.f2115a;
                Context context = i4Var.f1628a;
                i4Var.getClass();
                intent.setComponent(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
                this.f2002c.b(intent);
                return;
            }
        }
        s6 s6Var = this.f2002c;
        s6Var.f1992c.b();
        Context context2 = ((i4) s6Var.f1992c.f2115a).f1628a;
        synchronized (s6Var) {
            if (s6Var.f1990a) {
                e3 e3Var2 = ((i4) s6Var.f1992c.f2115a).f1635j;
                i4.e(e3Var2);
                c3Var = e3Var2.f1513p;
                str = "Connection attempt already in progress";
            } else if (s6Var.f1991b == null || !(s6Var.f1991b.e() || s6Var.f1991b.isConnected())) {
                s6Var.f1991b = new a3(context2, Looper.getMainLooper(), s6Var, s6Var);
                e3 e3Var3 = ((i4) s6Var.f1992c.f2115a).f1635j;
                i4.e(e3Var3);
                e3Var3.f1513p.a("Connecting to remote service");
                s6Var.f1990a = true;
                r3.r.i(s6Var.f1991b);
                s6Var.f1991b.p();
            } else {
                e3 e3Var4 = ((i4) s6Var.f1992c.f2115a).f1635j;
                i4.e(e3Var4);
                c3Var = e3Var4.f1513p;
                str = "Already awaiting connection attempt";
            }
            c3Var.a(str);
        }
    }

    @WorkerThread
    public final void w() {
        b();
        c();
        s6 s6Var = this.f2002c;
        if (s6Var.f1991b != null && (s6Var.f1991b.isConnected() || s6Var.f1991b.e())) {
            s6Var.f1991b.h();
        }
        s6Var.f1991b = null;
        try {
            v3.a.b().c(((i4) this.f2115a).f1628a, this.f2002c);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f2003d = null;
    }

    @WorkerThread
    public final void x(AtomicReference<String> atomicReference) {
        b();
        c();
        t(new s4(this, atomicReference, q(false), 1));
    }
}
