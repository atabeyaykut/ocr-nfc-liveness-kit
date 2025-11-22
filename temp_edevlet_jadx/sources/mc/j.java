package mc;

import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import m9.b0;

/* loaded from: classes2.dex */
public class j extends i {
    public static final String A(String str, int r52) {
        if (!(r52 >= 0)) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + r52 + '.').toString());
        }
        if (r52 != 0) {
            if (r52 == 1) {
                return str.toString();
            }
            int length = str.length();
            if (length != 0) {
                if (length == 1) {
                    char cCharAt = str.charAt(0);
                    char[] cArr = new char[r52];
                    for (int r02 = 0; r02 < r52; r02++) {
                        cArr[r02] = cCharAt;
                    }
                    return new String(cArr);
                }
                StringBuilder sb2 = new StringBuilder(str.length() * r52);
                ca.d dVar = new ca.d(1, r52);
                ca.c cVar = new ca.c(1, dVar.f2247b, dVar.f2248c);
                while (cVar.f2251c) {
                    cVar.nextInt();
                    sb2.append((CharSequence) str);
                }
                String string = sb2.toString();
                kotlin.jvm.internal.h.e(string, "{\n                    va…tring()\n                }");
                return string;
            }
        }
        return "";
    }

    public static String B(String str, char c10, char c11) {
        kotlin.jvm.internal.h.f(str, "<this>");
        String strReplace = str.replace(c10, c11);
        kotlin.jvm.internal.h.e(strReplace, "this as java.lang.String…replace(oldChar, newChar)");
        return strReplace;
    }

    public static String C(String str, String str2, String str3) {
        kotlin.jvm.internal.h.f(str, "<this>");
        int r12 = n.K(0, str, str2, false);
        if (r12 < 0) {
            return str;
        }
        int length = str2.length();
        int r32 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb2 = new StringBuilder(length2);
        int r52 = 0;
        do {
            sb2.append((CharSequence) str, r52, r12);
            sb2.append(str3);
            r52 = r12 + length;
            if (r12 >= str.length()) {
                break;
            }
            r12 = n.K(r12 + r32, str, str2, false);
        } while (r12 > 0);
        sb2.append((CharSequence) str, r52, str.length());
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "stringBuilder.append(this, i, length).toString()");
        return string;
    }

    public static final boolean D(String str, String prefix, boolean z10) {
        kotlin.jvm.internal.h.f(str, "<this>");
        kotlin.jvm.internal.h.f(prefix, "prefix");
        return !z10 ? str.startsWith(prefix) : z(str, 0, z10, prefix, 0, prefix.length());
    }

    public static final boolean E(String str, String str2, boolean z10, int r92) {
        kotlin.jvm.internal.h.f(str, "<this>");
        return !z10 ? str.startsWith(str2, r92) : z(str, r92, z10, str2, 0, str2.length());
    }

    public static final String v(String str, Locale locale) {
        if (!(str.length() > 0)) {
            return str;
        }
        char cCharAt = str.charAt(0);
        if (!Character.isLowerCase(cCharAt)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        char titleCase = Character.toTitleCase(cCharAt);
        if (titleCase != Character.toUpperCase(cCharAt)) {
            sb2.append(titleCase);
        } else {
            String strSubstring = str.substring(0, 1);
            kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String upperCase = strSubstring.toUpperCase(locale);
            kotlin.jvm.internal.h.e(upperCase, "this as java.lang.String).toUpperCase(locale)");
            sb2.append(upperCase);
        }
        String strSubstring2 = str.substring(1);
        kotlin.jvm.internal.h.e(strSubstring2, "this as java.lang.String).substring(startIndex)");
        sb2.append(strSubstring2);
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static final boolean w(String str, String str2, boolean z10) {
        kotlin.jvm.internal.h.f(str, "<this>");
        return !z10 ? str.endsWith(str2) : z(str, str.length() - str2.length(), true, str2, 0, str2.length());
    }

    public static final boolean x(String str, String str2) {
        return str == null ? str2 == null : str.equalsIgnoreCase(str2);
    }

    public static final boolean y(CharSequence charSequence) {
        boolean z10;
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        if (charSequence.length() == 0) {
            return true;
        }
        Iterable dVar = new ca.d(0, charSequence.length() - 1);
        if ((dVar instanceof Collection) && ((Collection) dVar).isEmpty()) {
            z10 = true;
        } else {
            Iterator<Integer> it = dVar.iterator();
            while (((ca.c) it).f2251c) {
                if (!a6.a.t(charSequence.charAt(((b0) it).nextInt()))) {
                    z10 = false;
                    break;
                }
            }
            z10 = true;
        }
        return z10;
    }

    public static final boolean z(String str, int r72, boolean z10, String other, int r10, int r11) {
        kotlin.jvm.internal.h.f(str, "<this>");
        kotlin.jvm.internal.h.f(other, "other");
        return !z10 ? str.regionMatches(r72, other, r10, r11) : str.regionMatches(z10, r72, other, r10, r11);
    }
}
