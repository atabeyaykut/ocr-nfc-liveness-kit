package p4;

import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class v9 {

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public static d1 f12746j;

    /* renamed from: a, reason: collision with root package name */
    public final String f12747a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12748b;

    /* renamed from: c, reason: collision with root package name */
    public final u9 f12749c;

    /* renamed from: d, reason: collision with root package name */
    public final v7.l f12750d;

    /* renamed from: e, reason: collision with root package name */
    public final h5.z f12751e;
    public final h5.z f;

    /* renamed from: g, reason: collision with root package name */
    public final String f12752g;

    /* renamed from: h, reason: collision with root package name */
    public final HashMap f12753h = new HashMap();

    /* renamed from: i, reason: collision with root package name */
    public final HashMap f12754i = new HashMap();

    public v9(Context context, final v7.l lVar, p9 p9Var, String str) {
        this.f12747a = context.getPackageName();
        this.f12748b = v7.c.a(context);
        this.f12750d = lVar;
        this.f12749c = p9Var;
        this.f12752g = str;
        v7.g gVarA = v7.g.a();
        s9 s9Var = new s9(0, str);
        gVarA.getClass();
        this.f12751e = v7.g.b(s9Var);
        v7.g gVarA2 = v7.g.a();
        lVar.getClass();
        Callable callable = new Callable() { // from class: p4.r9
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return lVar.a();
            }
        };
        gVarA2.getClass();
        this.f = v7.g.b(callable);
    }

    @VisibleForTesting
    public static long a(List<Long> list, double d10) {
        return list.get(Math.max(((int) Math.ceil((d10 / 100.0d) * list.size())) - 1, 0)).longValue();
    }

    @WorkerThread
    public final void b(t9 t9Var, p7 p7Var) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (e(p7Var, jElapsedRealtime)) {
            this.f12753h.put(p7Var, Long.valueOf(jElapsedRealtime));
            c(t9Var.a(), p7Var, d());
        }
    }

    public final void c(final y9 y9Var, final p7 p7Var, final String str) {
        Object obj = v7.g.f18264b;
        v7.q.f18286a.execute(new Runnable() { // from class: p4.q9
            /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 220
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p4.q9.run():void");
            }
        });
    }

    @WorkerThread
    public final String d() {
        h5.z zVar = this.f12751e;
        return zVar.m() ? (String) zVar.i() : r3.n.f14021c.a(this.f12752g);
    }

    @WorkerThread
    public final boolean e(p7 p7Var, long j10) {
        HashMap map = this.f12753h;
        return map.get(p7Var) == null || j10 - ((Long) map.get(p7Var)).longValue() > TimeUnit.SECONDS.toMillis(30L);
    }
}
