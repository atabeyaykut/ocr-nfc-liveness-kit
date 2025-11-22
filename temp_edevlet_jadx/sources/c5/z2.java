package c5;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class z2 {

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReference<String[]> f2177b = new AtomicReference<>();

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReference<String[]> f2178c = new AtomicReference<>();

    /* renamed from: d, reason: collision with root package name */
    public static final AtomicReference<String[]> f2179d = new AtomicReference<>();

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.w5 f2180a;

    public z2(com.google.android.gms.internal.measurement.w5 w5Var) {
        this.f2180a = w5Var;
    }

    public static final String g(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        r3.r.i(atomicReference);
        r3.r.a(strArr.length == strArr2.length);
        for (int r22 = 0; r22 < strArr.length; r22++) {
            if (v7.W(str, strArr[r22])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    str2 = strArr3[r22];
                    if (str2 == null) {
                        str2 = strArr2[r22] + "(" + strArr[r22] + ")";
                        strArr3[r22] = str2;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    public final String a(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder sbE = androidx.constraintlayout.core.a.e("[");
        for (Object obj : objArr) {
            String strB = obj instanceof Bundle ? b((Bundle) obj) : String.valueOf(obj);
            if (strB != null) {
                if (sbE.length() != 1) {
                    sbE.append(", ");
                }
                sbE.append(strB);
            }
        }
        sbE.append("]");
        return sbE.toString();
    }

    public final String b(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!this.f2180a.c()) {
            return bundle.toString();
        }
        StringBuilder sbE = androidx.constraintlayout.core.a.e("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sbE.length() != 8) {
                sbE.append(", ");
            }
            sbE.append(e(str));
            sbE.append("=");
            Object obj = bundle.get(str);
            sbE.append(obj instanceof Bundle ? a(new Object[]{obj}) : obj instanceof Object[] ? a((Object[]) obj) : obj instanceof ArrayList ? a(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        sbE.append("}]");
        return sbE.toString();
    }

    public final String c(s sVar) {
        com.google.android.gms.internal.measurement.w5 w5Var = this.f2180a;
        if (!w5Var.c()) {
            return sVar.toString();
        }
        StringBuilder sb2 = new StringBuilder("origin=");
        sb2.append(sVar.f1958c);
        sb2.append(",name=");
        sb2.append(d(sVar.f1956a));
        sb2.append(",params=");
        q qVar = sVar.f1957b;
        sb2.append(qVar == null ? null : !w5Var.c() ? qVar.toString() : b(qVar.E()));
        return sb2.toString();
    }

    public final String d(String str) {
        if (str == null) {
            return null;
        }
        return !this.f2180a.c() ? str : g(str, a6.a.f114e, a6.a.f112c, f2177b);
    }

    public final String e(String str) {
        if (str == null) {
            return null;
        }
        return !this.f2180a.c() ? str : g(str, y.f2126c, y.f2125b, f2178c);
    }

    public final String f(String str) {
        if (str == null) {
            return null;
        }
        return !this.f2180a.c() ? str : str.startsWith("_exp_") ? androidx.browser.browseractions.a.a("experiment_id(", str, ")") : g(str, u.f2015c, u.f2014b, f2179d);
    }
}
