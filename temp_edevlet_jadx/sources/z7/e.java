package z7;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.ArrayList;
import java.util.List;
import p4.o7;
import p4.v9;
import p4.x9;

/* loaded from: classes2.dex */
public final class e extends v7.f<List<x7.a>, a8.a> {

    /* renamed from: j, reason: collision with root package name */
    public static final b8.d f19861j = b8.d.f1176a;

    /* renamed from: k, reason: collision with root package name */
    @VisibleForTesting
    public static boolean f19862k = true;

    /* renamed from: d, reason: collision with root package name */
    public final x7.c f19863d;

    /* renamed from: e, reason: collision with root package name */
    public final f f19864e;
    public final v9 f;

    /* renamed from: g, reason: collision with root package name */
    public final x9 f19865g;

    /* renamed from: h, reason: collision with root package name */
    public final b8.a f19866h = new b8.a();

    /* renamed from: i, reason: collision with root package name */
    public boolean f19867i;

    public e(v7.h hVar, x7.c cVar, f fVar, v9 v9Var) {
        if (hVar == null) {
            throw new NullPointerException("MlKitContext can not be null");
        }
        this.f19863d = cVar;
        this.f19864e = fVar;
        this.f = v9Var;
        this.f19865g = new x9(hVar.b());
    }

    @Override // v7.j
    @WorkerThread
    public final synchronized void b() throws r7.a {
        this.f19867i = this.f19864e.c();
    }

    @Override // v7.j
    @WorkerThread
    public final synchronized void c() {
        this.f19864e.b();
        f19862k = true;
    }

    @Override // v7.f
    @WorkerThread
    public final Object d(@NonNull a8.a aVar) throws r7.a {
        ArrayList arrayListA;
        synchronized (this) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.f19866h.a(aVar);
            try {
                arrayListA = this.f19864e.a(aVar);
                e(o7.NO_ERROR, jElapsedRealtime, aVar, arrayListA);
                f19862k = false;
            } catch (r7.a e10) {
                e(e10.f14333a == 14 ? o7.MODEL_NOT_DOWNLOADED : o7.UNKNOWN_ERROR, jElapsedRealtime, aVar, null);
                throw e10;
            }
        }
        return arrayListA;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0051 A[SYNTHETIC] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(final p4.o7 r22, long r23, @androidx.annotation.NonNull final a8.a r25, @androidx.annotation.Nullable java.util.List<x7.a> r26) {
        /*
            Method dump skipped, instructions count: 607
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: z7.e.e(p4.o7, long, a8.a, java.util.List):void");
    }
}
