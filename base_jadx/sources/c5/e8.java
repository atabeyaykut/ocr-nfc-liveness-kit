package c5;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes.dex */
public abstract class e8 {

    /* renamed from: a, reason: collision with root package name */
    public final String f1525a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1526b;

    /* renamed from: c, reason: collision with root package name */
    public Boolean f1527c;

    /* renamed from: d, reason: collision with root package name */
    public Boolean f1528d;

    /* renamed from: e, reason: collision with root package name */
    public Long f1529e;
    public Long f;

    public e8(String str, int r22) {
        this.f1525a = str;
        this.f1526b = r22;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x00e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Boolean d(java.math.BigDecimal r8, com.google.android.gms.internal.measurement.m2 r9, double r10) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.e8.d(java.math.BigDecimal, com.google.android.gms.internal.measurement.m2, double):java.lang.Boolean");
    }

    public static Boolean e(String str, com.google.android.gms.internal.measurement.r2 r2Var, e3 e3Var) {
        List<String> listV;
        boolean zStartsWith;
        r3.r.i(r2Var);
        if (str == null || !r2Var.z() || r2Var.A() == 1) {
            return null;
        }
        if (r2Var.A() == 7) {
            if (r2Var.r() == 0) {
                return null;
            }
        } else if (!r2Var.y()) {
            return null;
        }
        int r12 = r2Var.A();
        boolean zW = r2Var.w();
        String strU = (zW || r12 == 2 || r12 == 7) ? r2Var.u() : r2Var.u().toUpperCase(Locale.ENGLISH);
        if (r2Var.r() == 0) {
            listV = null;
        } else {
            listV = r2Var.v();
            if (!zW) {
                ArrayList arrayList = new ArrayList(listV.size());
                Iterator<String> it = listV.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().toUpperCase(Locale.ENGLISH));
                }
                listV = Collections.unmodifiableList(arrayList);
            }
        }
        String str2 = r12 == 2 ? strU : null;
        if (r12 == 7) {
            if (listV == null || listV.size() == 0) {
                return null;
            }
        } else if (strU == null) {
            return null;
        }
        if (!zW && r12 != 2) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (r12 - 1) {
            case 1:
                if (str2 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str2, true != zW ? 66 : 0).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    e3Var.f1508j.b(str2, "Invalid regular expression in REGEXP audience filter. expression");
                    return null;
                }
            case 2:
                zStartsWith = str.startsWith(strU);
                break;
            case 3:
                zStartsWith = str.endsWith(strU);
                break;
            case 4:
                zStartsWith = str.contains(strU);
                break;
            case 5:
                zStartsWith = str.equals(strU);
                break;
            case 6:
                if (listV != null) {
                    zStartsWith = listV.contains(str);
                    break;
                } else {
                    return null;
                }
            default:
                return null;
        }
        return Boolean.valueOf(zStartsWith);
    }

    public static Boolean f(Boolean bool, boolean z10) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z10);
    }

    public abstract int a();

    public abstract boolean b();

    public abstract boolean c();
}
