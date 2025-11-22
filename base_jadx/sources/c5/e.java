package c5;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class e extends x4 {

    /* renamed from: b, reason: collision with root package name */
    public Boolean f1484b;

    /* renamed from: c, reason: collision with root package name */
    public d f1485c;

    /* renamed from: d, reason: collision with root package name */
    public Boolean f1486d;

    public e(i4 i4Var) {
        super(i4Var);
        this.f1485c = a0.b.f4a;
    }

    public final String c(String str) {
        e3 e3Var;
        String str2;
        z4 z4Var = this.f2115a;
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            r3.r.i(str3);
            return str3;
        } catch (ClassNotFoundException e10) {
            e = e10;
            e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            str2 = "Could not find SystemProperties class";
            e3Var.f.b(e, str2);
            return "";
        } catch (IllegalAccessException e11) {
            e = e11;
            e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            str2 = "Could not access SystemProperties.get()";
            e3Var.f.b(e, str2);
            return "";
        } catch (NoSuchMethodException e12) {
            e = e12;
            e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            str2 = "Could not find SystemProperties.get() method";
            e3Var.f.b(e, str2);
            return "";
        } catch (InvocationTargetException e13) {
            e = e13;
            e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            str2 = "SystemProperties.get() threw an exception";
            e3Var.f.b(e, str2);
            return "";
        }
    }

    public final int d() {
        v7 v7Var = ((i4) this.f2115a).f1638m;
        i4.c(v7Var);
        Boolean bool = ((i4) v7Var.f2115a).s().f2004e;
        if (v7Var.j0() < 201500) {
            return (bool == null || bool.booleanValue()) ? 25 : 100;
        }
        return 100;
    }

    @WorkerThread
    public final int e(String str, q2<Integer> q2Var) {
        if (str != null) {
            String strF = this.f1485c.f(str, q2Var.f1865a);
            if (!TextUtils.isEmpty(strF)) {
                try {
                    return q2Var.a(Integer.valueOf(Integer.parseInt(strF))).intValue();
                } catch (NumberFormatException unused) {
                }
            }
        }
        return q2Var.a(null).intValue();
    }

    public final void g() {
        ((i4) this.f2115a).getClass();
    }

    @WorkerThread
    public final long h(String str, q2<Long> q2Var) {
        if (str != null) {
            String strF = this.f1485c.f(str, q2Var.f1865a);
            if (!TextUtils.isEmpty(strF)) {
                try {
                    return q2Var.a(Long.valueOf(Long.parseLong(strF))).longValue();
                } catch (NumberFormatException unused) {
                }
            }
        }
        return q2Var.a(null).longValue();
    }

    public final Bundle n() {
        z4 z4Var = this.f2115a;
        try {
            if (((i4) z4Var).f1628a.getPackageManager() == null) {
                e3 e3Var = ((i4) z4Var).f1635j;
                i4.e(e3Var);
                e3Var.f.a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfoA = y3.c.a(((i4) z4Var).f1628a).a(128, ((i4) z4Var).f1628a.getPackageName());
            if (applicationInfoA != null) {
                return applicationInfoA.metaData;
            }
            e3 e3Var2 = ((i4) z4Var).f1635j;
            i4.e(e3Var2);
            e3Var2.f.a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e10) {
            e3 e3Var3 = ((i4) z4Var).f1635j;
            i4.e(e3Var3);
            e3Var3.f.b(e10, "Failed to load metadata: Package name not found");
            return null;
        }
    }

    public final Boolean o(@Size(min = 1) String str) {
        r3.r.f(str);
        Bundle bundleN = n();
        if (bundleN != null) {
            if (bundleN.containsKey(str)) {
                return Boolean.valueOf(bundleN.getBoolean(str));
            }
            return null;
        }
        e3 e3Var = ((i4) this.f2115a).f1635j;
        i4.e(e3Var);
        e3Var.f.a("Failed to load metadata: Metadata bundle is null");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0003  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean p(java.lang.String r4, c5.q2<java.lang.Boolean> r5) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto Le
        L3:
            java.lang.Object r4 = r5.a(r0)
        L7:
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            return r4
        Le:
            c5.d r1 = r3.f1485c
            java.lang.String r2 = r5.f1865a
            java.lang.String r4 = r1.f(r4, r2)
            boolean r1 = android.text.TextUtils.isEmpty(r4)
            if (r1 != 0) goto L3
            c5.z4 r1 = r3.f2115a
            c5.i4 r1 = (c5.i4) r1
            c5.e r1 = r1.f1633g
            c5.q2<java.lang.Boolean> r2 = c5.r2.f1933x0
            boolean r0 = r1.p(r0, r2)
            if (r0 == 0) goto L31
            java.lang.String r0 = "1"
            boolean r4 = r0.equals(r4)
            goto L35
        L31:
            boolean r4 = java.lang.Boolean.parseBoolean(r4)
        L35:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            java.lang.Object r4 = r5.a(r4)
            goto L7
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.e.p(java.lang.String, c5.q2):boolean");
    }

    public final boolean q() {
        Boolean boolO = o("google_analytics_automatic_screen_reporting_enabled");
        return boolO == null || boolO.booleanValue();
    }

    public final boolean r() {
        ((i4) this.f2115a).getClass();
        Boolean boolO = o("firebase_analytics_collection_deactivated");
        return boolO != null && boolO.booleanValue();
    }

    public final boolean s(String str) {
        return "1".equals(this.f1485c.f(str, "measurement.event_sampling_enabled"));
    }

    @WorkerThread
    public final boolean t() {
        if (this.f1484b == null) {
            Boolean boolO = o("app_measurement_lite");
            this.f1484b = boolO;
            if (boolO == null) {
                this.f1484b = Boolean.FALSE;
            }
        }
        return this.f1484b.booleanValue() || !((i4) this.f2115a).f1632e;
    }
}
