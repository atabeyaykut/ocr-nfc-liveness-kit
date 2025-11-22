package s4;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class x8 {

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public static r0 f15231j;

    /* renamed from: a, reason: collision with root package name */
    public final String f15232a;

    /* renamed from: b, reason: collision with root package name */
    public final String f15233b;

    /* renamed from: c, reason: collision with root package name */
    public final w8 f15234c;

    /* renamed from: d, reason: collision with root package name */
    public final v7.l f15235d;

    /* renamed from: e, reason: collision with root package name */
    public final h5.z f15236e;
    public final h5.z f;

    /* renamed from: g, reason: collision with root package name */
    public final String f15237g;

    /* renamed from: h, reason: collision with root package name */
    public final HashMap f15238h = new HashMap();

    /* renamed from: i, reason: collision with root package name */
    public final HashMap f15239i = new HashMap();

    public x8(Context context, v7.l lVar, t8 t8Var, final String str) {
        this.f15232a = context.getPackageName();
        this.f15233b = v7.c.a(context);
        this.f15235d = lVar;
        this.f15234c = t8Var;
        this.f15237g = str;
        v7.g gVarA = v7.g.a();
        Callable callable = new Callable() { // from class: s4.v8
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r3.n.f14021c.a(str);
            }
        };
        gVarA.getClass();
        this.f15236e = v7.g.b(callable);
        v7.g gVarA2 = v7.g.a();
        lVar.getClass();
        com.google.android.gms.internal.measurement.a aVar = new com.google.android.gms.internal.measurement.a(1, lVar);
        gVarA2.getClass();
        this.f = v7.g.b(aVar);
    }

    @VisibleForTesting
    public static long a(List<Long> list, double d10) {
        return list.get(Math.max(((int) Math.ceil((d10 / 100.0d) * list.size())) - 1, 0)).longValue();
    }

    public final void b(final a9 a9Var, final z6 z6Var, final String str) {
        Object obj = v7.g.f18264b;
        v7.q.f18286a.execute(new Runnable() { // from class: s4.u8
            /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    r15 = this;
                    s4.x8 r0 = r15.f15191a
                    s4.a9 r1 = r2
                    s4.z6 r2 = r3
                    java.lang.String r3 = r4
                    r0.getClass()
                    java.lang.Object r4 = r1.f14896b
                    s4.a7 r4 = (s4.a7) r4
                    r4.f14891b = r2
                    s4.n8 r2 = r4.f14890a
                    if (r2 == 0) goto L21
                    java.lang.String r2 = r2.f15104d
                    boolean r4 = x5.a.D(r2)
                    if (r4 != 0) goto L21
                    r3.r.i(r2)
                    goto L23
                L21:
                    java.lang.String r2 = "NA"
                L23:
                    s4.m8 r4 = new s4.m8
                    r4.<init>()
                    java.lang.String r5 = r0.f15232a
                    r4.f15086a = r5
                    java.lang.String r5 = r0.f15233b
                    r4.f15087b = r5
                    java.lang.Class<s4.x8> r5 = s4.x8.class
                    monitor-enter(r5)
                    s4.r0 r6 = s4.x8.f15231j     // Catch: java.lang.Throwable -> Lcc
                    r7 = 2147483647(0x7fffffff, float:NaN)
                    if (r6 == 0) goto L3b
                    goto L8f
                L3b:
                    android.content.res.Resources r6 = android.content.res.Resources.getSystem()     // Catch: java.lang.Throwable -> Lcc
                    android.content.res.Configuration r6 = r6.getConfiguration()     // Catch: java.lang.Throwable -> Lcc
                    androidx.core.os.LocaleListCompat r6 = androidx.core.os.ConfigurationCompat.getLocales(r6)     // Catch: java.lang.Throwable -> Lcc
                    r8 = 4
                    java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch: java.lang.Throwable -> Lcc
                    r9 = 0
                    r10 = 0
                L4c:
                    int r11 = r6.size()     // Catch: java.lang.Throwable -> Lcc
                    if (r9 >= r11) goto L81
                    java.util.Locale r11 = r6.get(r9)     // Catch: java.lang.Throwable -> Lcc
                    r3.j r12 = v7.c.f18261a     // Catch: java.lang.Throwable -> Lcc
                    java.lang.String r11 = r11.toLanguageTag()     // Catch: java.lang.Throwable -> Lcc
                    r11.getClass()     // Catch: java.lang.Throwable -> Lcc
                    int r12 = r10 + 1
                    int r13 = r8.length     // Catch: java.lang.Throwable -> Lcc
                    if (r13 >= r12) goto L7b
                    int r14 = r13 >> 1
                    int r13 = r13 + r14
                    int r13 = r13 + 1
                    if (r13 >= r12) goto L72
                    int r13 = r12 + (-1)
                    int r13 = java.lang.Integer.highestOneBit(r13)     // Catch: java.lang.Throwable -> Lcc
                    int r13 = r13 + r13
                L72:
                    if (r13 >= 0) goto L77
                    r13 = 2147483647(0x7fffffff, float:NaN)
                L77:
                    java.lang.Object[] r8 = java.util.Arrays.copyOf(r8, r13)     // Catch: java.lang.Throwable -> Lcc
                L7b:
                    r8[r10] = r11     // Catch: java.lang.Throwable -> Lcc
                    int r9 = r9 + 1
                    r10 = r12
                    goto L4c
                L81:
                    s4.b0 r6 = s4.d0.f14947b     // Catch: java.lang.Throwable -> Lcc
                    if (r10 != 0) goto L88
                    s4.r0 r6 = s4.r0.f15143e     // Catch: java.lang.Throwable -> Lcc
                    goto L8d
                L88:
                    s4.r0 r6 = new s4.r0     // Catch: java.lang.Throwable -> Lcc
                    r6.<init>(r8, r10)     // Catch: java.lang.Throwable -> Lcc
                L8d:
                    s4.x8.f15231j = r6     // Catch: java.lang.Throwable -> Lcc
                L8f:
                    monitor-exit(r5)
                    r4.f15090e = r6
                    java.lang.Boolean r5 = java.lang.Boolean.TRUE
                    r4.f15092h = r5
                    r4.f15089d = r2
                    r4.f15088c = r3
                    h5.z r2 = r0.f
                    boolean r2 = r2.m()
                    if (r2 == 0) goto Lab
                    h5.z r2 = r0.f
                    java.lang.Object r2 = r2.i()
                    java.lang.String r2 = (java.lang.String) r2
                    goto Lb1
                Lab:
                    v7.l r2 = r0.f15235d
                    java.lang.String r2 = r2.a()
                Lb1:
                    r4.f = r2
                    r2 = 10
                    java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                    int r2 = r2.intValue()
                    r2 = r2 & r7
                    java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                    r4.f15094j = r2
                    r1.f14897c = r4
                    s4.w8 r0 = r0.f15234c
                    r0.a(r1)
                    return
                Lcc:
                    r0 = move-exception
                    monitor-exit(r5)
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: s4.u8.run():void");
            }
        });
    }

    @WorkerThread
    public final String c() {
        h5.z zVar = this.f15236e;
        return zVar.m() ? (String) zVar.i() : r3.n.f14021c.a(this.f15237g);
    }

    @WorkerThread
    public final boolean d(z6 z6Var, long j10) {
        HashMap map = this.f15238h;
        return map.get(z6Var) == null || j10 - ((Long) map.get(z6Var)).longValue() > TimeUnit.SECONDS.toMillis(30L);
    }
}
