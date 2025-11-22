package c5;

import android.app.Application;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.ia;
import com.google.android.gms.internal.measurement.oa;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class v5 extends r3 {

    /* renamed from: c, reason: collision with root package name */
    public t5 f2060c;

    /* renamed from: d, reason: collision with root package name */
    public com.google.android.gms.internal.clearcut.f f2061d;

    /* renamed from: e, reason: collision with root package name */
    public final CopyOnWriteArraySet f2062e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final AtomicReference<String> f2063g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f2064h;

    /* renamed from: j, reason: collision with root package name */
    @GuardedBy("consentLock")
    public f f2065j;

    /* renamed from: k, reason: collision with root package name */
    @GuardedBy("consentLock")
    public int f2066k;

    /* renamed from: l, reason: collision with root package name */
    public final AtomicLong f2067l;

    /* renamed from: m, reason: collision with root package name */
    public long f2068m;

    /* renamed from: n, reason: collision with root package name */
    public int f2069n;

    /* renamed from: p, reason: collision with root package name */
    public final a8 f2070p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f2071q;

    /* renamed from: r, reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.w5 f2072r;

    public v5(i4 i4Var) {
        super(i4Var);
        this.f2062e = new CopyOnWriteArraySet();
        this.f2064h = new Object();
        this.f2071q = true;
        this.f2072r = new com.google.android.gms.internal.measurement.w5(this);
        this.f2063g = new AtomicReference<>();
        this.f2065j = new f(null, null);
        this.f2066k = 100;
        this.f2068m = -1L;
        this.f2069n = 100;
        this.f2067l = new AtomicLong(0L);
        this.f2070p = new a8(i4Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void B(c5.v5 r6, c5.f r7, int r8, long r9, boolean r11, boolean r12) throws java.lang.IllegalStateException {
        /*
            r6.b()
            r6.c()
            long r0 = r6.f2068m
            r2 = 1
            r3 = 0
            c5.z4 r4 = r6.f2115a
            int r5 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r5 > 0) goto L29
            int r0 = r6.f2069n
            if (r0 > r8) goto L16
            r0 = 1
            goto L17
        L16:
            r0 = 0
        L17:
            if (r0 != 0) goto L1a
            goto L29
        L1a:
            c5.i4 r4 = (c5.i4) r4
            c5.e3 r6 = r4.f1635j
            c5.i4.e(r6)
            java.lang.String r8 = "Dropped out-of-date consent setting, proposed settings"
            c5.c3 r6 = r6.f1511m
        L25:
            r6.b(r7, r8)
            return
        L29:
            c5.i4 r4 = (c5.i4) r4
            c5.s3 r0 = r4.f1634h
            c5.i4.c(r0)
            r0.b()
            boolean r1 = r0.s(r8)
            if (r1 == 0) goto L94
            android.content.SharedPreferences r0 = r0.g()
            android.content.SharedPreferences$Editor r0 = r0.edit()
            java.lang.String r1 = "consent_settings"
            java.lang.String r7 = r7.d()
            r0.putString(r1, r7)
            java.lang.String r7 = "consent_source"
            r0.putInt(r7, r8)
            r0.apply()
            r6.f2068m = r9
            r6.f2069n = r8
            c5.t6 r6 = r4.s()
            r6.b()
            r6.c()
            if (r11 == 0) goto L73
            c5.z4 r7 = r6.f2115a
            r8 = r7
            c5.i4 r8 = (c5.i4) r8
            r8.getClass()
            c5.i4 r7 = (c5.i4) r7
            c5.y2 r7 = r7.p()
            r7.h()
        L73:
            boolean r7 = r6.o()
            if (r7 == 0) goto L85
            c5.y7 r7 = r6.q(r3)
            c5.j6 r8 = new c5.j6
            r8.<init>(r6, r7, r2)
            r6.t(r8)
        L85:
            if (r12 == 0) goto L93
            c5.t6 r6 = r4.s()
            java.util.concurrent.atomic.AtomicReference r7 = new java.util.concurrent.atomic.AtomicReference
            r7.<init>()
            r6.x(r7)
        L93:
            return
        L94:
            c5.e3 r6 = r4.f1635j
            c5.i4.e(r6)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r8)
            c5.c3 r6 = r6.f1511m
            java.lang.String r8 = "Lower precedence consent source ignored, proposed source"
            goto L25
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.v5.B(c5.v5, c5.f, int, long, boolean, boolean):void");
    }

    public final String A() {
        return this.f2063g.get();
    }

    @WorkerThread
    public final void C() throws IllegalStateException {
        b();
        c();
        i4 i4Var = (i4) this.f2115a;
        if (i4Var.b()) {
            int r22 = 0;
            if (i4Var.f1633g.p(null, r2.Z)) {
                e eVar = i4Var.f1633g;
                ((i4) eVar.f2115a).getClass();
                Boolean boolO = eVar.o("google_analytics_deferred_deep_link_enabled");
                if (boolO != null && boolO.booleanValue()) {
                    e3 e3Var = i4Var.f1635j;
                    i4.e(e3Var);
                    e3Var.f1512n.a("Deferred Deep Link feature enabled.");
                    h4 h4Var = i4Var.f1636k;
                    i4.e(h4Var);
                    h4Var.p(new d5(this, r22));
                }
            }
            t6 t6VarS = i4Var.s();
            t6VarS.b();
            t6VarS.c();
            y7 y7VarQ = t6VarS.q(true);
            ((i4) t6VarS.f2115a).p().o(3, new byte[0]);
            t6VarS.t(new j6(t6VarS, y7VarQ, r22));
            this.f2071q = false;
            s3 s3Var = i4Var.f1634h;
            i4.c(s3Var);
            s3Var.b();
            String string = s3Var.g().getString("previous_os_version", null);
            ((i4) s3Var.f2115a).n().d();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor editorEdit = s3Var.g().edit();
                editorEdit.putString("previous_os_version", str);
                editorEdit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            i4Var.n().d();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            n("auto", "_ou", bundle);
        }
    }

    public final void D(String str, String str2, Bundle bundle) throws IllegalStateException {
        i4 i4Var = (i4) this.f2115a;
        i4Var.f1640p.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        r3.r.f(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", jCurrentTimeMillis);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        h4 h4Var = i4Var.f1636k;
        i4.e(h4Var);
        h4Var.p(new k(2, this, bundle2));
    }

    @Override // c5.r3
    public final boolean e() {
        return false;
    }

    public final void g() {
        z4 z4Var = this.f2115a;
        if (!(((i4) z4Var).f1628a.getApplicationContext() instanceof Application) || this.f2060c == null) {
            return;
        }
        ((Application) ((i4) z4Var).f1628a.getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f2060c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0091, code lost:
    
        if (r6 > 100) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0078 A[Catch: all -> 0x0157, TryCatch #0 {, blocks: (B:13:0x002b, B:15:0x002f, B:16:0x003c, B:46:0x00e6, B:17:0x0041, B:19:0x004b, B:21:0x0051, B:23:0x005e, B:24:0x0073, B:25:0x0078, B:27:0x0080, B:29:0x0086, B:31:0x0093, B:33:0x00ab, B:35:0x00af, B:39:0x00bd, B:42:0x00c5, B:45:0x00d7, B:48:0x00e9), top: B:99:0x002b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(java.lang.String r21, java.lang.String r22, android.os.Bundle r23, boolean r24, boolean r25, long r26) throws java.lang.IllegalStateException {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.v5.h(java.lang.String, java.lang.String, android.os.Bundle, boolean, boolean, long):void");
    }

    @WorkerThread
    public final void n(String str, String str2, Bundle bundle) {
        b();
        ((i4) this.f2115a).f1640p.getClass();
        o(System.currentTimeMillis(), bundle, str, str2);
    }

    @WorkerThread
    public final void o(long j10, Bundle bundle, String str, String str2) {
        b();
        p(str, str2, j10, bundle, true, this.f2061d == null || v7.S(str2), true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:136:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01b4 A[PHI: r2
      0x01b4: PHI (r2v55 c5.b6) = (r2v7 c5.b6), (r2v57 c5.b6) binds: [B:72:0x01b2, B:64:0x019a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01b6 A[PHI: r2
      0x01b6: PHI (r2v8 c5.b6) = (r2v7 c5.b6), (r2v7 c5.b6), (r2v57 c5.b6), (r2v57 c5.b6) binds: [B:71:0x01b0, B:72:0x01b2, B:63:0x0198, B:64:0x019a] A[DONT_GENERATE, DONT_INLINE]] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p(java.lang.String r21, java.lang.String r22, long r23, android.os.Bundle r25, boolean r26, boolean r27, boolean r28, java.lang.String r29) throws java.lang.IllegalStateException, java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 1372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.v5.p(java.lang.String, java.lang.String, long, android.os.Bundle, boolean, boolean, boolean, java.lang.String):void");
    }

    public final void q(long j10, boolean z10) throws IllegalStateException {
        b();
        c();
        i4 i4Var = (i4) this.f2115a;
        e3 e3Var = i4Var.f1635j;
        i4.e(e3Var);
        e3Var.f1512n.a("Resetting analytics data (FE)");
        e7 e7Var = i4Var.f1637l;
        i4.d(e7Var);
        e7Var.b();
        c7 c7Var = e7Var.f1524e;
        c7Var.f1463c.a();
        c7Var.f1461a = 0L;
        c7Var.f1462b = 0L;
        boolean zA = i4Var.a();
        s3 s3Var = i4Var.f1634h;
        i4.c(s3Var);
        s3Var.f1965e.b(j10);
        i4 i4Var2 = (i4) s3Var.f2115a;
        s3 s3Var2 = i4Var2.f1634h;
        i4.c(s3Var2);
        if (!TextUtils.isEmpty(s3Var2.f1978v.a())) {
            s3Var.f1978v.b(null);
        }
        oa oaVar = oa.f3665b;
        oaVar.f3666a.a().a();
        e eVar = i4Var2.f1633g;
        q2<Boolean> q2Var = r2.f1905i0;
        if (eVar.p(null, q2Var)) {
            s3Var.f1973p.b(0L);
        }
        if (!i4Var2.f1633g.r()) {
            s3Var.q(!zA);
        }
        s3Var.w.b(null);
        s3Var.f1979x.b(0L);
        s3Var.f1980y.b(null);
        int r92 = 1;
        if (z10) {
            t6 t6VarS = i4Var.s();
            t6VarS.b();
            t6VarS.c();
            y7 y7VarQ = t6VarS.q(false);
            z4 z4Var = t6VarS.f2115a;
            ((i4) z4Var).getClass();
            ((i4) z4Var).p().h();
            t6VarS.t(new k4(t6VarS, y7VarQ, r92));
        }
        oaVar.f3666a.a().a();
        if (i4Var.f1633g.p(null, q2Var)) {
            e7 e7Var2 = i4Var.f1637l;
            i4.d(e7Var2);
            e7Var2.f1523d.a();
        }
        this.f2071q = true ^ zA;
    }

    public final void r(Bundle bundle, long j10) throws IllegalStateException {
        r3.r.i(bundle);
        Bundle bundle2 = new Bundle(bundle);
        boolean zIsEmpty = TextUtils.isEmpty(bundle2.getString("app_id"));
        z4 z4Var = this.f2115a;
        if (!zIsEmpty) {
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1508j.a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        a5.b(bundle2, "app_id", String.class, null);
        a5.b(bundle2, "origin", String.class, null);
        a5.b(bundle2, "name", String.class, null);
        a5.b(bundle2, "value", Object.class, null);
        a5.b(bundle2, "trigger_event_name", String.class, null);
        a5.b(bundle2, "trigger_timeout", Long.class, 0L);
        a5.b(bundle2, "timed_out_event_name", String.class, null);
        a5.b(bundle2, "timed_out_event_params", Bundle.class, null);
        a5.b(bundle2, "triggered_event_name", String.class, null);
        a5.b(bundle2, "triggered_event_params", Bundle.class, null);
        a5.b(bundle2, "time_to_live", Long.class, 0L);
        a5.b(bundle2, "expired_event_name", String.class, null);
        a5.b(bundle2, "expired_event_params", Bundle.class, null);
        r3.r.f(bundle2.getString("name"));
        r3.r.f(bundle2.getString("origin"));
        r3.r.i(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j10);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        i4 i4Var = (i4) z4Var;
        v7 v7Var = i4Var.f1638m;
        i4.c(v7Var);
        if (v7Var.i0(string) != 0) {
            e3 e3Var2 = i4Var.f1635j;
            i4.e(e3Var2);
            e3Var2.f.b(i4Var.f1639n.f(string), "Invalid conditional user property name");
            return;
        }
        v7 v7Var2 = i4Var.f1638m;
        i4.c(v7Var2);
        if (v7Var2.e0(obj, string) != 0) {
            e3 e3Var3 = i4Var.f1635j;
            i4.e(e3Var3);
            e3Var3.f.c(i4Var.f1639n.f(string), "Invalid conditional user property value", obj);
            return;
        }
        v7 v7Var3 = i4Var.f1638m;
        i4.c(v7Var3);
        Object objH = v7Var3.h(obj, string);
        if (objH == null) {
            e3 e3Var4 = i4Var.f1635j;
            i4.e(e3Var4);
            e3Var4.f.c(i4Var.f1639n.f(string), "Unable to normalize conditional user property value", obj);
            return;
        }
        a5.c(bundle2, objH);
        long j11 = bundle2.getLong("trigger_timeout");
        if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name"))) {
            i4Var.getClass();
            if (j11 > 15552000000L || j11 < 1) {
                e3 e3Var5 = i4Var.f1635j;
                i4.e(e3Var5);
                e3Var5.f.c(i4Var.f1639n.f(string), "Invalid conditional user property timeout", Long.valueOf(j11));
                return;
            }
        }
        long j12 = bundle2.getLong("time_to_live");
        i4Var.getClass();
        if (j12 <= 15552000000L && j12 >= 1) {
            h4 h4Var = i4Var.f1636k;
            i4.e(h4Var);
            h4Var.p(new f5(this, bundle2, 1));
        } else {
            e3 e3Var6 = i4Var.f1635j;
            i4.e(e3Var6);
            e3Var6.f.c(i4Var.f1639n.f(string), "Invalid conditional user property time to live", Long.valueOf(j12));
        }
    }

    public final void s(Bundle bundle, int r6, long j10) throws IllegalStateException {
        c();
        String string = bundle.getString("ad_storage");
        if ((string == null || f.h(string) != null) && ((string = bundle.getString("analytics_storage")) == null || f.h(string) != null)) {
            string = null;
        }
        if (string != null) {
            z4 z4Var = this.f2115a;
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1510l.b(string, "Ignoring invalid consent setting");
            e3 e3Var2 = ((i4) z4Var).f1635j;
            i4.e(e3Var2);
            e3Var2.f1510l.a("Valid consent values are 'granted', 'denied'");
        }
        t(f.a(bundle), r6, j10);
    }

    public final void t(f fVar, int r13, long j10) throws IllegalStateException {
        boolean z10;
        f fVar2;
        boolean z11;
        boolean z12;
        c();
        if (r13 != -10 && fVar.f1531a == null && fVar.f1532b == null) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f1510l.a("Discarding empty consent settings");
            return;
        }
        synchronized (this.f2064h) {
            try {
                z10 = true;
                boolean z13 = false;
                if (r13 <= this.f2066k) {
                    f fVar3 = this.f2065j;
                    Boolean bool = Boolean.FALSE;
                    z12 = (fVar.f1531a == bool && fVar3.f1531a != bool) || (fVar.f1532b == bool && fVar3.f1532b != bool);
                    if (fVar.f() && !this.f2065j.f()) {
                        z13 = true;
                    }
                    f fVar4 = this.f2065j;
                    Boolean bool2 = fVar.f1531a;
                    if (bool2 == null) {
                        bool2 = fVar4.f1531a;
                    }
                    Boolean bool3 = fVar.f1532b;
                    if (bool3 == null) {
                        bool3 = fVar4.f1532b;
                    }
                    f fVar5 = new f(bool2, bool3);
                    this.f2065j = fVar5;
                    this.f2066k = r13;
                    z11 = z13;
                    fVar2 = fVar5;
                } else {
                    fVar2 = fVar;
                    z11 = false;
                    z12 = false;
                    z10 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!z10) {
            e3 e3Var2 = ((i4) this.f2115a).f1635j;
            i4.e(e3Var2);
            e3Var2.f1511m.b(fVar2, "Ignoring lower-priority consent settings, proposed settings");
            return;
        }
        long andIncrement = this.f2067l.getAndIncrement();
        if (z12) {
            this.f2063g.set(null);
            h4 h4Var = ((i4) this.f2115a).f1636k;
            i4.e(h4Var);
            h4Var.q(new q5(this, fVar2, j10, r13, andIncrement, z11));
            return;
        }
        if (r13 == 30 || r13 == -10) {
            h4 h4Var2 = ((i4) this.f2115a).f1636k;
            i4.e(h4Var2);
            h4Var2.q(new r5(this, fVar2, r13, andIncrement, z11));
        } else {
            h4 h4Var3 = ((i4) this.f2115a).f1636k;
            i4.e(h4Var3);
            h4Var3.p(new s5(this, fVar2, r13, andIncrement, z11));
        }
    }

    @WorkerThread
    public final void u(f fVar) {
        b();
        boolean z10 = (fVar.f() && fVar.e()) || ((i4) this.f2115a).s().o();
        i4 i4Var = (i4) this.f2115a;
        h4 h4Var = i4Var.f1636k;
        i4.e(h4Var);
        h4Var.b();
        if (z10 != i4Var.G) {
            i4 i4Var2 = (i4) this.f2115a;
            h4 h4Var2 = i4Var2.f1636k;
            i4.e(h4Var2);
            h4Var2.b();
            i4Var2.G = z10;
            s3 s3Var = ((i4) this.f2115a).f1634h;
            i4.c(s3Var);
            s3Var.b();
            Boolean boolValueOf = s3Var.g().contains("measurement_enabled_from_api") ? Boolean.valueOf(s3Var.g().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z10 || boolValueOf == null || boolValueOf.booleanValue()) {
                y(Boolean.valueOf(z10), false);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v(java.lang.String r13, java.lang.String r14, java.lang.Object r15, boolean r16, long r17) throws java.lang.IllegalStateException {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.v5.v(java.lang.String, java.lang.String, java.lang.Object, boolean, long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void w(long r10, java.lang.Object r12, java.lang.String r13, java.lang.String r14) throws java.lang.IllegalStateException {
        /*
            r9 = this;
            r3.r.f(r13)
            r3.r.f(r14)
            r9.b()
            r9.c()
            java.lang.String r0 = "allow_personalized_ads"
            boolean r0 = r0.equals(r14)
            r1 = 1
            c5.z4 r2 = r9.f2115a
            if (r0 == 0) goto L67
            boolean r0 = r12 instanceof java.lang.String
            if (r0 == 0) goto L54
            r0 = r12
            java.lang.String r0 = (java.lang.String) r0
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 != 0) goto L54
            java.util.Locale r12 = java.util.Locale.ENGLISH
            java.lang.String r12 = r0.toLowerCase(r12)
            java.lang.String r14 = "false"
            boolean r12 = r14.equals(r12)
            r3 = 1
            if (r1 == r12) goto L37
            r5 = 0
            goto L38
        L37:
            r5 = r3
        L38:
            java.lang.Long r12 = java.lang.Long.valueOf(r5)
            r0 = r2
            c5.i4 r0 = (c5.i4) r0
            c5.s3 r0 = r0.f1634h
            c5.i4.c(r0)
            long r5 = r12.longValue()
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 != 0) goto L4e
            java.lang.String r14 = "true"
        L4e:
            c5.q3 r0 = r0.f1971m
            r0.b(r14)
            goto L65
        L54:
            if (r12 != 0) goto L67
            r14 = r2
            c5.i4 r14 = (c5.i4) r14
            c5.s3 r14 = r14.f1634h
            c5.i4.c(r14)
            c5.q3 r14 = r14.f1971m
            java.lang.String r0 = "unset"
            r14.b(r0)
        L65:
            java.lang.String r14 = "_npa"
        L67:
            r6 = r12
            r7 = r14
            c5.i4 r2 = (c5.i4) r2
            boolean r12 = r2.a()
            if (r12 != 0) goto L7e
            c5.e3 r10 = r2.f1635j
            c5.i4.e(r10)
            java.lang.String r11 = "User property not set since app measurement is disabled"
            c5.c3 r10 = r10.f1513p
            r10.a(r11)
            return
        L7e:
            boolean r12 = r2.b()
            if (r12 != 0) goto L85
            return
        L85:
            c5.r7 r12 = new c5.r7
            r3 = r12
            r4 = r10
            r8 = r13
            r3.<init>(r4, r6, r7, r8)
            c5.t6 r10 = r2.s()
            r10.b()
            r10.c()
            c5.z4 r11 = r10.f2115a
            r13 = r11
            c5.i4 r13 = (c5.i4) r13
            r13.getClass()
            c5.i4 r11 = (c5.i4) r11
            c5.y2 r11 = r11.p()
            r11.getClass()
            android.os.Parcel r13 = android.os.Parcel.obtain()
            c5.s7.a(r12, r13)
            byte[] r14 = r13.marshall()
            r13.recycle()
            int r13 = r14.length
            r0 = 131072(0x20000, float:1.83671E-40)
            if (r13 <= r0) goto Lcd
            c5.z4 r11 = r11.f2115a
            c5.i4 r11 = (c5.i4) r11
            c5.e3 r11 = r11.f1635j
            c5.i4.e(r11)
            java.lang.String r13 = "User property too long for local database. Sending directly to service"
            c5.c3 r11 = r11.f1506g
            r11.a(r13)
            r11 = 0
            goto Ld1
        Lcd:
            boolean r11 = r11.o(r1, r14)
        Ld1:
            c5.y7 r13 = r10.q(r1)
            c5.h6 r14 = new c5.h6
            r14.<init>(r10, r13, r11, r12)
            r10.t(r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.v5.w(long, java.lang.Object, java.lang.String, java.lang.String):void");
    }

    @WorkerThread
    public final void x(Bundle bundle, long j10) throws IllegalStateException {
        ia.f3556b.f3557a.a().a();
        i4 i4Var = (i4) this.f2115a;
        if (!i4Var.f1633g.p(null, r2.f1917o0) || TextUtils.isEmpty(i4Var.o().n())) {
            s(bundle, 0, j10);
            return;
        }
        e3 e3Var = i4Var.f1635j;
        i4.e(e3Var);
        e3Var.f1510l.a("Using developer consent only; google app id found");
    }

    @WorkerThread
    public final void y(Boolean bool, boolean z10) {
        b();
        c();
        i4 i4Var = (i4) this.f2115a;
        e3 e3Var = i4Var.f1635j;
        i4.e(e3Var);
        e3Var.f1512n.b(bool, "Setting app measurement enabled (FE)");
        s3 s3Var = i4Var.f1634h;
        i4.c(s3Var);
        s3Var.p(bool);
        if (z10) {
            s3 s3Var2 = i4Var.f1634h;
            i4.c(s3Var2);
            s3Var2.b();
            SharedPreferences.Editor editorEdit = s3Var2.g().edit();
            if (bool != null) {
                editorEdit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                editorEdit.remove("measurement_enabled_from_api");
            }
            editorEdit.apply();
        }
        h4 h4Var = i4Var.f1636k;
        i4.e(h4Var);
        h4Var.b();
        if (i4Var.G || !(bool == null || bool.booleanValue())) {
            z();
        }
    }

    @WorkerThread
    public final void z() throws IllegalStateException {
        b();
        i4 i4Var = (i4) this.f2115a;
        s3 s3Var = i4Var.f1634h;
        i4.c(s3Var);
        String strA = s3Var.f1971m.a();
        if (strA != null) {
            if ("unset".equals(strA)) {
                i4Var.f1640p.getClass();
                w(System.currentTimeMillis(), null, "app", "_npa");
            } else {
                Long lValueOf = Long.valueOf(true != "true".equals(strA) ? 0L : 1L);
                i4Var.f1640p.getClass();
                w(System.currentTimeMillis(), lValueOf, "app", "_npa");
            }
        }
        if (!i4Var.a() || !this.f2071q) {
            e3 e3Var = i4Var.f1635j;
            i4.e(e3Var);
            e3Var.f1512n.a("Updating Scion state (FE)");
            t6 t6VarS = i4Var.s();
            t6VarS.b();
            t6VarS.c();
            t6VarS.t(new o3.h0(2, t6VarS, t6VarS.q(true)));
            return;
        }
        e3 e3Var2 = i4Var.f1635j;
        i4.e(e3Var2);
        e3Var2.f1512n.a("Recording app launch after enabling measurement for the first time (FE)");
        C();
        oa.f3665b.f3666a.a().a();
        if (i4Var.f1633g.p(null, r2.f1905i0)) {
            e7 e7Var = i4Var.f1637l;
            i4.d(e7Var);
            e7Var.f1523d.a();
        }
        h4 h4Var = i4Var.f1636k;
        i4.e(h4Var);
        h4Var.p(new i5(this));
    }
}
