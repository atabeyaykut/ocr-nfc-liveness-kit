package c5;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.WorkerThread;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes.dex */
public final class i4 implements z4 {
    public static volatile i4 L;
    public Boolean B;
    public long C;
    public volatile Boolean D;
    public final Boolean E;
    public final Boolean F;
    public volatile boolean G;
    public int H;
    public final long K;

    /* renamed from: a, reason: collision with root package name */
    public final Context f1628a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1629b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1630c;

    /* renamed from: d, reason: collision with root package name */
    public final String f1631d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f1632e;
    public final com.google.android.gms.internal.clearcut.z f;

    /* renamed from: g, reason: collision with root package name */
    public final e f1633g;

    /* renamed from: h, reason: collision with root package name */
    public final s3 f1634h;

    /* renamed from: j, reason: collision with root package name */
    public final e3 f1635j;

    /* renamed from: k, reason: collision with root package name */
    public final h4 f1636k;

    /* renamed from: l, reason: collision with root package name */
    public final e7 f1637l;

    /* renamed from: m, reason: collision with root package name */
    public final v7 f1638m;

    /* renamed from: n, reason: collision with root package name */
    public final z2 f1639n;

    /* renamed from: p, reason: collision with root package name */
    public final w f1640p;

    /* renamed from: q, reason: collision with root package name */
    public final f6 f1641q;

    /* renamed from: r, reason: collision with root package name */
    public final v5 f1642r;

    /* renamed from: s, reason: collision with root package name */
    public final u1 f1643s;

    /* renamed from: t, reason: collision with root package name */
    public final z5 f1644t;

    /* renamed from: v, reason: collision with root package name */
    public final String f1645v;
    public y2 w;

    /* renamed from: x, reason: collision with root package name */
    public t6 f1646x;

    /* renamed from: y, reason: collision with root package name */
    public m f1647y;

    /* renamed from: z, reason: collision with root package name */
    public w2 f1648z;
    public boolean A = false;
    public final AtomicInteger I = new AtomicInteger(0);

    public i4(c5 c5Var) throws IllegalStateException {
        c3 c3Var;
        String str;
        Bundle bundle;
        Context context = c5Var.f1447a;
        com.google.android.gms.internal.clearcut.z zVar = new com.google.android.gms.internal.clearcut.z((ab.b) null);
        this.f = zVar;
        x5.a.f19155h = zVar;
        this.f1628a = context;
        this.f1629b = c5Var.f1448b;
        this.f1630c = c5Var.f1449c;
        this.f1631d = c5Var.f1450d;
        this.f1632e = c5Var.f1453h;
        this.D = c5Var.f1451e;
        this.f1645v = c5Var.f1455j;
        int r22 = 1;
        this.G = true;
        com.google.android.gms.internal.measurement.e1 e1Var = c5Var.f1452g;
        if (e1Var != null && (bundle = e1Var.f3456g) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.E = (Boolean) obj;
            }
            Object obj2 = e1Var.f3456g.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.F = (Boolean) obj2;
            }
        }
        synchronized (com.google.android.gms.internal.measurement.b5.f) {
            try {
                com.google.android.gms.internal.measurement.k4 k4Var = com.google.android.gms.internal.measurement.b5.f3386g;
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                if (k4Var == null || k4Var.f3595a != applicationContext) {
                    com.google.android.gms.internal.measurement.n4.d();
                    com.google.android.gms.internal.measurement.c5.c();
                    com.google.android.gms.internal.measurement.r4.d();
                    com.google.android.gms.internal.measurement.b5.f3386g = new com.google.android.gms.internal.measurement.k4(applicationContext, b8.f.y0(new com.google.android.gms.internal.measurement.l4(r22, applicationContext)));
                    com.google.android.gms.internal.measurement.b5.f3387h.incrementAndGet();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f1640p = w.f2088h;
        Long l5 = c5Var.f1454i;
        this.K = l5 != null ? l5.longValue() : System.currentTimeMillis();
        this.f1633g = new e(this);
        s3 s3Var = new s3(this);
        s3Var.e();
        this.f1634h = s3Var;
        e3 e3Var = new e3(this);
        e3Var.e();
        this.f1635j = e3Var;
        v7 v7Var = new v7(this);
        v7Var.e();
        this.f1638m = v7Var;
        this.f1639n = new z2(new com.google.android.gms.internal.measurement.w5(this));
        this.f1643s = new u1(this);
        f6 f6Var = new f6(this);
        f6Var.d();
        this.f1641q = f6Var;
        v5 v5Var = new v5(this);
        v5Var.d();
        this.f1642r = v5Var;
        e7 e7Var = new e7(this);
        e7Var.d();
        this.f1637l = e7Var;
        z5 z5Var = new z5(this);
        z5Var.e();
        this.f1644t = z5Var;
        h4 h4Var = new h4(this);
        h4Var.e();
        this.f1636k = h4Var;
        com.google.android.gms.internal.measurement.e1 e1Var2 = c5Var.f1452g;
        boolean z10 = e1Var2 == null || e1Var2.f3452b == 0;
        if (context.getApplicationContext() instanceof Application) {
            d(v5Var);
            if (((i4) v5Var.f2115a).f1628a.getApplicationContext() instanceof Application) {
                Application application = (Application) ((i4) v5Var.f2115a).f1628a.getApplicationContext();
                if (v5Var.f2060c == null) {
                    v5Var.f2060c = new t5(v5Var);
                }
                if (z10) {
                    application.unregisterActivityLifecycleCallbacks(v5Var.f2060c);
                    application.registerActivityLifecycleCallbacks(v5Var.f2060c);
                    e3 e3Var2 = ((i4) v5Var.f2115a).f1635j;
                    e(e3Var2);
                    c3Var = e3Var2.f1513p;
                    str = "Registered activity lifecycle callback";
                }
            }
            h4Var.p(new k(r22, this, c5Var));
        }
        e(e3Var);
        c3Var = e3Var.f1508j;
        str = "Application context is not an Application";
        c3Var.a(str);
        h4Var.p(new k(r22, this, c5Var));
    }

    public static final void c(y4 y4Var) {
        if (y4Var == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    public static final void d(r3 r3Var) {
        if (r3Var == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!r3Var.f1937b) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(r3Var.getClass())));
        }
    }

    public static final void e(y4 y4Var) {
        if (y4Var == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!y4Var.f2147b) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(y4Var.getClass())));
        }
    }

    public static i4 r(Context context, com.google.android.gms.internal.measurement.e1 e1Var, Long l5) {
        Bundle bundle;
        if (e1Var != null && (e1Var.f3455e == null || e1Var.f == null)) {
            e1Var = new com.google.android.gms.internal.measurement.e1(e1Var.f3451a, e1Var.f3452b, e1Var.f3453c, e1Var.f3454d, null, null, e1Var.f3456g, null);
        }
        r3.r.i(context);
        r3.r.i(context.getApplicationContext());
        if (L == null) {
            synchronized (i4.class) {
                if (L == null) {
                    L = new i4(new c5(context, e1Var, l5));
                }
            }
        } else if (e1Var != null && (bundle = e1Var.f3456g) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            r3.r.i(L);
            L.D = Boolean.valueOf(e1Var.f3456g.getBoolean("dataCollectionDefaultEnabled"));
        }
        r3.r.i(L);
        return L;
    }

    @WorkerThread
    public final boolean a() {
        return f() == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b7  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b() {
        /*
            r7 = this;
            boolean r0 = r7.A
            if (r0 == 0) goto Lc5
            c5.h4 r0 = r7.f1636k
            e(r0)
            r0.b()
            java.lang.Boolean r0 = r7.B
            c5.w r1 = r7.f1640p
            if (r0 == 0) goto L34
            long r2 = r7.C
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L34
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto Lbe
            r1.getClass()
            long r2 = android.os.SystemClock.elapsedRealtime()
            long r4 = r7.C
            long r2 = r2 - r4
            long r2 = java.lang.Math.abs(r2)
            r4 = 1000(0x3e8, double:4.94E-321)
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto Lbe
        L34:
            r1.getClass()
            long r0 = android.os.SystemClock.elapsedRealtime()
            r7.C = r0
            c5.v7 r0 = r7.f1638m
            c(r0)
            java.lang.String r1 = "android.permission.INTERNET"
            boolean r1 = r0.O(r1)
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L76
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r1 = r0.O(r1)
            if (r1 == 0) goto L76
            android.content.Context r1 = r7.f1628a
            y3.b r4 = y3.c.a(r1)
            boolean r4 = r4.c()
            if (r4 != 0) goto L74
            c5.e r4 = r7.f1633g
            boolean r4 = r4.t()
            if (r4 != 0) goto L74
            boolean r4 = c5.v7.U(r1)
            if (r4 == 0) goto L76
            boolean r1 = c5.v7.V(r1)
            if (r1 == 0) goto L76
        L74:
            r1 = 1
            goto L77
        L76:
            r1 = 0
        L77:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r7.B = r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto Lbe
            c5.w2 r1 = r7.o()
            java.lang.String r1 = r1.n()
            c5.w2 r4 = r7.o()
            r4.c()
            java.lang.String r4 = r4.f2099m
            c5.w2 r5 = r7.o()
            r5.c()
            java.lang.String r6 = r5.f2100n
            r3.r.i(r6)
            java.lang.String r5 = r5.f2100n
            boolean r0 = r0.G(r1, r4, r5)
            if (r0 != 0) goto Lb7
            c5.w2 r0 = r7.o()
            r0.c()
            java.lang.String r0 = r0.f2099m
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lb8
        Lb7:
            r2 = 1
        Lb8:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r2)
            r7.B = r0
        Lbe:
            java.lang.Boolean r0 = r7.B
            boolean r0 = r0.booleanValue()
            return r0
        Lc5:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "AppMeasurement is not initialized"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.i4.b():boolean");
    }

    @WorkerThread
    public final int f() {
        h4 h4Var = this.f1636k;
        e(h4Var);
        h4Var.b();
        if (this.f1633g.r()) {
            return 1;
        }
        Boolean bool = this.F;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        h4 h4Var2 = this.f1636k;
        e(h4Var2);
        h4Var2.b();
        if (!this.G) {
            return 8;
        }
        s3 s3Var = this.f1634h;
        c(s3Var);
        Boolean boolO = s3Var.o();
        if (boolO != null) {
            return boolO.booleanValue() ? 0 : 3;
        }
        e eVar = this.f1633g;
        com.google.android.gms.internal.clearcut.z zVar = ((i4) eVar.f2115a).f;
        Boolean boolO2 = eVar.o("firebase_analytics_collection_enabled");
        if (boolO2 != null) {
            return boolO2.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.E;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (!this.f1633g.p(null, r2.T) || this.D == null || this.D.booleanValue()) ? 0 : 7;
    }

    @Pure
    public final u1 g() {
        u1 u1Var = this.f1643s;
        if (u1Var != null) {
            return u1Var;
        }
        throw new IllegalStateException("Component not created");
    }

    @Pure
    public final e h() {
        return this.f1633g;
    }

    @Override // c5.z4
    @Pure
    public final w3.a i() {
        return this.f1640p;
    }

    @Override // c5.z4
    @Pure
    public final com.google.android.gms.internal.clearcut.z j() {
        return this.f;
    }

    @Override // c5.z4
    @Pure
    public final Context k() {
        return this.f1628a;
    }

    @Override // c5.z4
    @Pure
    public final h4 l() {
        h4 h4Var = this.f1636k;
        e(h4Var);
        return h4Var;
    }

    @Override // c5.z4
    @Pure
    public final e3 m() {
        e3 e3Var = this.f1635j;
        e(e3Var);
        return e3Var;
    }

    @Pure
    public final m n() {
        e(this.f1647y);
        return this.f1647y;
    }

    @Pure
    public final w2 o() {
        d(this.f1648z);
        return this.f1648z;
    }

    @Pure
    public final y2 p() {
        d(this.w);
        return this.w;
    }

    @Pure
    public final z2 q() {
        return this.f1639n;
    }

    @Pure
    public final t6 s() {
        d(this.f1646x);
        return this.f1646x;
    }
}
