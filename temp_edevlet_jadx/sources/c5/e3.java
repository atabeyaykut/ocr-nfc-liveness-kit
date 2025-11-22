package c5;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* loaded from: classes.dex */
public final class e3 extends y4 {

    /* renamed from: c, reason: collision with root package name */
    public char f1503c;

    /* renamed from: d, reason: collision with root package name */
    public long f1504d;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    public String f1505e;
    public final c3 f;

    /* renamed from: g, reason: collision with root package name */
    public final c3 f1506g;

    /* renamed from: h, reason: collision with root package name */
    public final c3 f1507h;

    /* renamed from: j, reason: collision with root package name */
    public final c3 f1508j;

    /* renamed from: k, reason: collision with root package name */
    public final c3 f1509k;

    /* renamed from: l, reason: collision with root package name */
    public final c3 f1510l;

    /* renamed from: m, reason: collision with root package name */
    public final c3 f1511m;

    /* renamed from: n, reason: collision with root package name */
    public final c3 f1512n;

    /* renamed from: p, reason: collision with root package name */
    public final c3 f1513p;

    public e3(i4 i4Var) {
        super(i4Var);
        this.f1503c = (char) 0;
        this.f1504d = -1L;
        this.f = new c3(this, 6, false, false);
        this.f1506g = new c3(this, 6, true, false);
        this.f1507h = new c3(this, 6, false, true);
        this.f1508j = new c3(this, 5, false, false);
        this.f1509k = new c3(this, 5, true, false);
        this.f1510l = new c3(this, 5, false, true);
        this.f1511m = new c3(this, 4, false, false);
        this.f1512n = new c3(this, 3, false, false);
        this.f1513p = new c3(this, 2, false, false);
    }

    public static d3 q(String str) {
        if (str == null) {
            return null;
        }
        return new d3(str);
    }

    public static String r(boolean z10, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String strS = s(obj, z10);
        String strS2 = s(obj2, z10);
        String strS3 = s(obj3, z10);
        StringBuilder sb2 = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb2.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(strS)) {
            sb2.append(str2);
            sb2.append(strS);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(strS2)) {
            str3 = str2;
        } else {
            sb2.append(str2);
            sb2.append(strS2);
        }
        if (!TextUtils.isEmpty(strS3)) {
            sb2.append(str3);
            sb2.append(strS3);
        }
        return sb2.toString();
    }

    public static String s(Object obj, boolean z10) {
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            if (!z10) {
                return obj.toString();
            }
            Long l5 = (Long) obj;
            long jAbs = Math.abs(l5.longValue());
            String string = obj.toString();
            if (jAbs < 100) {
                return string;
            }
            String str = string.charAt(0) == '-' ? "-" : "";
            String strValueOf = String.valueOf(Math.abs(l5.longValue()));
            long jRound = Math.round(Math.pow(10.0d, strValueOf.length() - 1));
            long jRound2 = Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
            StringBuilder sb2 = new StringBuilder(str.length() + str.length() + 43);
            sb2.append(str);
            sb2.append(jRound);
            sb2.append("...");
            sb2.append(str);
            sb2.append(jRound2);
            return sb2.toString();
        }
        if (obj instanceof Boolean) {
            return obj.toString();
        }
        if (!(obj instanceof Throwable)) {
            return obj instanceof d3 ? ((d3) obj).f1473a : z10 ? "-" : obj.toString();
        }
        Throwable th2 = (Throwable) obj;
        StringBuilder sb3 = new StringBuilder(z10 ? th2.getClass().getName() : th2.toString());
        String canonicalName = i4.class.getCanonicalName();
        if (TextUtils.isEmpty(canonicalName)) {
            canonicalName = "";
        } else {
            int r42 = canonicalName.lastIndexOf(46);
            if (r42 != -1) {
                canonicalName = canonicalName.substring(0, r42);
            }
        }
        StackTraceElement[] stackTrace = th2.getStackTrace();
        int length = stackTrace.length;
        int r6 = 0;
        while (true) {
            if (r6 >= length) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[r6];
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null) {
                if (TextUtils.isEmpty(className)) {
                    className = "";
                } else {
                    int r92 = className.lastIndexOf(46);
                    if (r92 != -1) {
                        className = className.substring(0, r92);
                    }
                }
                if (className.equals(canonicalName)) {
                    sb3.append(": ");
                    sb3.append(stackTraceElement);
                    break;
                }
            }
            r6++;
        }
        return sb3.toString();
    }

    @Override // c5.y4
    public final boolean c() {
        return false;
    }

    public final c3 g() {
        return this.f1512n;
    }

    public final c3 h() {
        return this.f;
    }

    public final c3 n() {
        return this.f1513p;
    }

    public final c3 o() {
        return this.f1508j;
    }

    public final c3 p() {
        return this.f1510l;
    }

    @EnsuresNonNull({"logTagDoNotUseDirectly"})
    public final String t() {
        String str;
        String str2;
        synchronized (this) {
            try {
                if (this.f1505e == null) {
                    z4 z4Var = this.f2115a;
                    if (((i4) z4Var).f1631d != null) {
                        str2 = ((i4) z4Var).f1631d;
                    } else {
                        ((i4) ((i4) z4Var).f1633g.f2115a).getClass();
                        str2 = "FA";
                    }
                    this.f1505e = str2;
                }
                r3.r.i(this.f1505e);
                str = this.f1505e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    public final void u(int r82, boolean z10, boolean z11, String str, Object obj, Object obj2, Object obj3) {
        String strT;
        String str2;
        if (!z10 && Log.isLoggable(t(), r82)) {
            Log.println(r82, t(), r(false, str, obj, obj2, obj3));
        }
        if (z11 || r82 < 5) {
            return;
        }
        r3.r.i(str);
        h4 h4Var = ((i4) this.f2115a).f1636k;
        if (h4Var == null) {
            strT = t();
            str2 = "Scheduler not set. Not logging error/warn";
        } else if (h4Var.f2147b) {
            h4Var.p(new b3(this, r82 >= 9 ? 8 : r82, str, obj, obj2, obj3));
            return;
        } else {
            strT = t();
            str2 = "Scheduler not initialized. Not logging error/warn";
        }
        Log.println(6, strT, str2);
    }
}
