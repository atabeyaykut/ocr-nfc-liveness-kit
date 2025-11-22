package d8;

import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.core.location.LocationRequestCompat;
import com.google.android.gms.internal.measurement.x;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import r3.o;
import r3.v;
import s4.a2;
import s4.a7;
import s4.a9;
import s4.d9;
import s4.e0;
import s4.h8;
import s4.i;
import s4.l;
import s4.l6;
import s4.m6;
import s4.p;
import s4.p6;
import s4.q6;
import s4.s6;
import s4.x1;
import s4.x8;
import s4.y1;
import s4.y6;
import s4.z1;
import s4.z6;
import s4.z8;
import x0.t;

/* loaded from: classes2.dex */
public final class h extends v7.f<c8.a, a8.a> {

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    public static boolean f4706h = true;

    /* renamed from: i, reason: collision with root package name */
    public static final b8.d f4707i = b8.d.f1176a;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    @GuardedBy("this")
    public final e f4708d;

    /* renamed from: e, reason: collision with root package name */
    public final x8 f4709e;
    public final z8 f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4710g;

    public h(@NonNull v7.h hVar, @NonNull c8.e eVar) {
        x8 x8VarE = d9.e(eVar.a());
        Context contextB = hVar.b();
        m3.f.f9946b.getClass();
        e aVar = (m3.f.a(contextB) >= 204700000 || eVar.d()) ? new a(contextB, eVar) : new b(contextB);
        int r42 = eVar.e();
        this.f4709e = x8VarE;
        this.f4708d = aVar;
        this.f = new z8(v7.h.c().b());
        this.f4710g = r42;
    }

    @Override // v7.j
    @WorkerThread
    public final synchronized void b() throws r7.a {
        this.f4708d.b();
    }

    @Override // v7.j
    @WorkerThread
    public final synchronized void c() {
        f4706h = true;
        this.f4708d.c();
    }

    @Override // v7.f
    @WorkerThread
    public final Object d(@NonNull a8.a aVar) throws r7.a {
        c8.a aVarA;
        synchronized (this) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            try {
                aVarA = this.f4708d.a(aVar);
                e(jElapsedRealtime, y6.NO_ERROR, aVar);
                f4706h = false;
            } catch (r7.a e10) {
                e(jElapsedRealtime, e10.f14333a == 14 ? y6.MODEL_NOT_DOWNLOADED : y6.UNKNOWN_ERROR, aVar);
                throw e10;
            }
        }
        return aVarA;
    }

    @WorkerThread
    public final void e(long j10, y6 y6Var, a8.a aVar) {
        long jLongValue;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j10;
        x8 x8Var = this.f4709e;
        z6 z6Var = z6.ON_DEVICE_TEXT_DETECT;
        x8Var.getClass();
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        if (x8Var.d(z6Var, jElapsedRealtime2)) {
            x8Var.f15238h.put(z6Var, Long.valueOf(jElapsedRealtime2));
            x xVar = new x(2);
            f2.a aVar2 = new f2.a();
            aVar2.f5500a = Long.valueOf(Long.valueOf(jElapsedRealtime).longValue() & LocationRequestCompat.PASSIVE_INTERVAL);
            aVar2.f5501b = y6Var;
            aVar2.f5502c = Boolean.valueOf(f4706h);
            Boolean bool = Boolean.TRUE;
            aVar2.f5503d = bool;
            aVar2.f5504e = bool;
            xVar.f3826a = new s6(aVar2);
            f4707i.getClass();
            int r13 = aVar.f135g;
            int r82 = b8.d.b(aVar);
            t tVar = new t(2);
            tVar.f19087a = r13 != -1 ? r13 != 35 ? r13 != 842094169 ? r13 != 16 ? r13 != 17 ? p6.UNKNOWN_FORMAT : p6.NV21 : p6.NV16 : p6.YV12 : p6.YUV_420_888 : p6.BITMAP;
            tVar.f19088b = Integer.valueOf(Integer.valueOf(r82).intValue() & Integer.MAX_VALUE);
            xVar.f3827b = new q6(tVar);
            h8 h8Var = new h8(xVar);
            a7 a7Var = new a7();
            a7Var.f14892c = Boolean.FALSE;
            a7Var.f14893d = h8Var;
            x8Var.b(new a9(a7Var, 0), z6Var, x8Var.c());
        }
        y1 y1Var = new y1();
        y1Var.f15242a = y6Var;
        y1Var.f15243b = Boolean.valueOf(f4706h);
        z1 z1Var = new z1(y1Var);
        x8 x8Var2 = this.f4709e;
        z6 z6Var2 = z6.AGGREGATED_ON_DEVICE_TEXT_DETECTION;
        HashMap map = x8Var2.f15239i;
        if (!map.containsKey(z6Var2)) {
            map.put(z6Var2, new p());
        }
        e0 e0Var = (e0) map.get(z6Var2);
        e0Var.b(z1Var, Long.valueOf(jElapsedRealtime));
        long jElapsedRealtime3 = SystemClock.elapsedRealtime();
        if (x8Var2.d(z6Var2, jElapsedRealtime3)) {
            x8Var2.f15238h.put(z6Var2, Long.valueOf(jElapsedRealtime3));
            for (Object obj : e0Var.j()) {
                l lVarA = e0Var.a(obj);
                Collections.sort(lVarA);
                l6 l6Var = new l6();
                Iterator it = lVarA.iterator();
                while (true) {
                    i iVar = (i) it;
                    jLongValue = iVar.hasNext() ? ((Long) iVar.next()).longValue() + jLongValue : 0L;
                }
                l6Var.f15063c = Long.valueOf(Long.valueOf(jLongValue / lVarA.size()).longValue() & LocationRequestCompat.PASSIVE_INTERVAL);
                l6Var.f15061a = Long.valueOf(Long.valueOf(x8.a(lVarA, 100.0d)).longValue() & LocationRequestCompat.PASSIVE_INTERVAL);
                l6Var.f = Long.valueOf(Long.valueOf(x8.a(lVarA, 75.0d)).longValue() & LocationRequestCompat.PASSIVE_INTERVAL);
                l6Var.f15065e = Long.valueOf(Long.valueOf(x8.a(lVarA, 50.0d)).longValue() & LocationRequestCompat.PASSIVE_INTERVAL);
                l6Var.f15064d = Long.valueOf(Long.valueOf(x8.a(lVarA, 25.0d)).longValue() & LocationRequestCompat.PASSIVE_INTERVAL);
                l6Var.f15062b = Long.valueOf(Long.valueOf(x8.a(lVarA, 0.0d)).longValue() & LocationRequestCompat.PASSIVE_INTERVAL);
                m6 m6Var = new m6(l6Var);
                int size = e0Var.a(obj).size();
                a7 a7Var2 = new a7();
                a7Var2.f14892c = Boolean.FALSE;
                x1 x1Var = new x1();
                x1Var.f15221a = Integer.valueOf(Integer.valueOf(size).intValue() & Integer.MAX_VALUE);
                x1Var.f15222b = (z1) obj;
                x1Var.f15223c = m6Var;
                a7Var2.f14894e = new a2(x1Var);
                x8Var2.b(new a9(a7Var2, 0), z6Var2, x8Var2.c());
            }
            map.remove(z6Var2);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        final z8 z8Var = this.f;
        int r52 = this.f4710g;
        int r02 = y6Var.f15255a;
        long j11 = jCurrentTimeMillis - jElapsedRealtime;
        synchronized (z8Var) {
            final long jElapsedRealtime4 = SystemClock.elapsedRealtime();
            if (z8Var.f15271b.get() == -1 || jElapsedRealtime4 - z8Var.f15271b.get() > TimeUnit.MINUTES.toMillis(30L)) {
                z8Var.f15270a.d(new v(0, Arrays.asList(new o(r52, r02, j11, jCurrentTimeMillis)))).p(new h5.f() { // from class: s4.y8
                    @Override // h5.f
                    public final void e(Exception exc) {
                        z8Var.f15271b.set(jElapsedRealtime4);
                    }
                });
            }
        }
    }
}
