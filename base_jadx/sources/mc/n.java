package mc;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import lc.s;
import lc.w;

/* loaded from: classes2.dex */
public class n extends j {
    public static final boolean G(CharSequence charSequence, CharSequence other, boolean z10) {
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        kotlin.jvm.internal.h.f(other, "other");
        if (other instanceof String) {
            if (N(charSequence, (String) other, 0, z10, 2) < 0) {
                return false;
            }
        } else if (L(charSequence, other, 0, charSequence.length(), z10, false) < 0) {
            return false;
        }
        return true;
    }

    public static boolean H(CharSequence charSequence, char c10) {
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        return M(charSequence, c10, 0, false, 2) >= 0;
    }

    public static boolean I(CharSequence charSequence, char c10) {
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        return charSequence.length() > 0 && a6.a.l(charSequence.charAt(J(charSequence)), c10, false);
    }

    public static final int J(CharSequence charSequence) {
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int K(int r6, CharSequence charSequence, String string, boolean z10) {
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        kotlin.jvm.internal.h.f(string, "string");
        return (z10 || !(charSequence instanceof String)) ? L(charSequence, string, r6, charSequence.length(), z10, false) : ((String) charSequence).indexOf(string, r6);
    }

    public static final int L(CharSequence charSequence, CharSequence charSequence2, int r10, int r11, boolean z10, boolean z11) {
        ca.b bVar;
        if (z11) {
            int r13 = J(charSequence);
            if (r10 > r13) {
                r10 = r13;
            }
            if (r11 < 0) {
                r11 = 0;
            }
            bVar = new ca.b(r10, r11, -1);
        } else {
            if (r10 < 0) {
                r10 = 0;
            }
            int length = charSequence.length();
            if (r11 > length) {
                r11 = length;
            }
            bVar = new ca.d(r10, r11);
        }
        boolean z12 = charSequence instanceof String;
        int r112 = bVar.f2246a;
        int r12 = bVar.f2248c;
        int r132 = bVar.f2247b;
        if (z12 && (charSequence2 instanceof String)) {
            if ((r12 > 0 && r112 <= r132) || (r12 < 0 && r132 <= r112)) {
                while (!j.z((String) charSequence2, 0, z10, (String) charSequence, r112, charSequence2.length())) {
                    if (r112 != r132) {
                        r112 += r12;
                    }
                }
                return r112;
            }
        } else if ((r12 > 0 && r112 <= r132) || (r12 < 0 && r132 <= r112)) {
            while (!T(charSequence2, 0, charSequence, r112, charSequence2.length(), z10)) {
                if (r112 != r132) {
                    r112 += r12;
                }
            }
            return r112;
        }
        return -1;
    }

    public static int M(CharSequence charSequence, char c10, int r42, boolean z10, int r6) {
        if ((r6 & 2) != 0) {
            r42 = 0;
        }
        if ((r6 & 4) != 0) {
            z10 = false;
        }
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        return (z10 || !(charSequence instanceof String)) ? O(r42, charSequence, z10, new char[]{c10}) : ((String) charSequence).indexOf(c10, r42);
    }

    public static /* synthetic */ int N(CharSequence charSequence, String str, int r42, boolean z10, int r6) {
        if ((r6 & 2) != 0) {
            r42 = 0;
        }
        if ((r6 & 4) != 0) {
            z10 = false;
        }
        return K(r42, charSequence, str, z10);
    }

    public static final int O(int r72, CharSequence charSequence, boolean z10, char[] chars) {
        boolean z11;
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        kotlin.jvm.internal.h.f(chars, "chars");
        if (!z10 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(m9.k.x0(chars), r72);
        }
        if (r72 < 0) {
            r72 = 0;
        }
        ca.d dVar = new ca.d(r72, J(charSequence));
        ca.c cVar = new ca.c(r72, dVar.f2247b, dVar.f2248c);
        while (cVar.f2251c) {
            int r73 = cVar.nextInt();
            char cCharAt = charSequence.charAt(r73);
            int length = chars.length;
            int r52 = 0;
            while (true) {
                if (r52 >= length) {
                    z11 = false;
                    break;
                }
                if (a6.a.l(chars[r52], cCharAt, z10)) {
                    z11 = true;
                    break;
                }
                r52++;
            }
            if (z11) {
                return r73;
            }
        }
        return -1;
    }

    public static int P(CharSequence charSequence, char c10, int r42, int r52) {
        if ((r52 & 2) != 0) {
            r42 = J(charSequence);
        }
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(c10, r42);
        }
        char[] cArr = {c10};
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(m9.k.x0(cArr), r42);
        }
        int r32 = J(charSequence);
        if (r42 > r32) {
            r42 = r32;
        }
        while (-1 < r42) {
            if (a6.a.l(cArr[0], charSequence.charAt(r42), false)) {
                return r42;
            }
            r42--;
        }
        return -1;
    }

    public static int Q(CharSequence charSequence, String string, int r82) {
        int r22 = (r82 & 2) != 0 ? J(charSequence) : 0;
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        kotlin.jvm.internal.h.f(string, "string");
        return !(charSequence instanceof String) ? L(charSequence, string, r22, 0, false, true) : ((String) charSequence).lastIndexOf(string, r22);
    }

    public static final List<String> R(CharSequence charSequence) {
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        return b8.f.Z(w.c1(w.Z0(S(charSequence, new String[]{"\r\n", "\n", "\r"}, false, 0), new m(charSequence))));
    }

    public static b S(CharSequence charSequence, String[] strArr, boolean z10, int r52) {
        V(r52);
        return new b(charSequence, 0, r52, new l(m9.i.g0(strArr), z10));
    }

    public static final boolean T(CharSequence charSequence, int r52, CharSequence other, int r72, int r82, boolean z10) {
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        kotlin.jvm.internal.h.f(other, "other");
        if (r72 < 0 || r52 < 0 || r52 > charSequence.length() - r82 || r72 > other.length() - r82) {
            return false;
        }
        for (int r12 = 0; r12 < r82; r12++) {
            if (!a6.a.l(charSequence.charAt(r52 + r12), other.charAt(r72 + r12), z10)) {
                return false;
            }
        }
        return true;
    }

    public static final String U(CharSequence charSequence, String str) {
        kotlin.jvm.internal.h.f(str, "<this>");
        if (!(charSequence instanceof String ? j.D(str, (String) charSequence, false) : T(str, 0, charSequence, 0, charSequence.length(), false))) {
            return str;
        }
        String strSubstring = str.substring(charSequence.length());
        kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public static final void V(int r12) {
        if (!(r12 >= 0)) {
            throw new IllegalArgumentException(android.support.v4.media.a.d("Limit must be non-negative, but was ", r12).toString());
        }
    }

    public static final List W(int r72, CharSequence charSequence, String str, boolean z10) {
        V(r72);
        int length = 0;
        int r12 = K(0, charSequence, str, z10);
        if (r12 == -1 || r72 == 1) {
            return b8.f.S(charSequence.toString());
        }
        boolean z11 = r72 > 0;
        int r6 = 10;
        if (z11 && r72 <= 10) {
            r6 = r72;
        }
        ArrayList arrayList = new ArrayList(r6);
        do {
            arrayList.add(charSequence.subSequence(length, r12).toString());
            length = str.length() + r12;
            if (z11 && arrayList.size() == r72 - 1) {
                break;
            }
            r12 = K(length, charSequence, str, z10);
        } while (r12 != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static List X(CharSequence charSequence, char[] cArr) {
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        if (cArr.length == 1) {
            return W(0, charSequence, String.valueOf(cArr[0]), false);
        }
        V(0);
        s sVar = new s(new b(charSequence, 0, 0, new k(cArr, false)));
        ArrayList arrayList = new ArrayList(m9.n.Q0(sVar));
        Iterator<Object> it = sVar.iterator();
        while (it.hasNext()) {
            arrayList.add(a0(charSequence, (ca.d) it.next()));
        }
        return arrayList;
    }

    public static List Y(String str, String[] strArr) {
        kotlin.jvm.internal.h.f(str, "<this>");
        if (strArr.length == 1) {
            String str2 = strArr[0];
            if (!(str2.length() == 0)) {
                return W(0, str, str2, false);
            }
        }
        s sVar = new s(S(str, strArr, false, 0));
        ArrayList arrayList = new ArrayList(m9.n.Q0(sVar));
        Iterator<Object> it = sVar.iterator();
        while (it.hasNext()) {
            arrayList.add(a0(str, (ca.d) it.next()));
        }
        return arrayList;
    }

    public static boolean Z(String str, char c10) {
        return str.length() > 0 && a6.a.l(str.charAt(0), c10, false);
    }

    public static final String a0(CharSequence charSequence, ca.d range) {
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        kotlin.jvm.internal.h.f(range, "range");
        return charSequence.subSequence(Integer.valueOf(range.f2246a).intValue(), Integer.valueOf(range.f2247b).intValue() + 1).toString();
    }

    public static final String b0(String str, String delimiter, String missingDelimiterValue) {
        kotlin.jvm.internal.h.f(delimiter, "delimiter");
        kotlin.jvm.internal.h.f(missingDelimiterValue, "missingDelimiterValue");
        int r02 = N(str, delimiter, 0, false, 6);
        if (r02 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(delimiter.length() + r02, str.length());
        kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static String c0(String str) {
        int r02 = M(str, '$', 0, false, 6);
        if (r02 == -1) {
            return str;
        }
        String strSubstring = str.substring(r02 + 1, str.length());
        kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final String d0(char c10, String str, String missingDelimiterValue) {
        kotlin.jvm.internal.h.f(str, "<this>");
        kotlin.jvm.internal.h.f(missingDelimiterValue, "missingDelimiterValue");
        int r22 = P(str, c10, 0, 6);
        if (r22 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(r22 + 1, str.length());
        kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static String e0(String missingDelimiterValue, char c10) {
        kotlin.jvm.internal.h.f(missingDelimiterValue, "<this>");
        kotlin.jvm.internal.h.f(missingDelimiterValue, "missingDelimiterValue");
        int r32 = M(missingDelimiterValue, c10, 0, false, 6);
        if (r32 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = missingDelimiterValue.substring(0, r32);
        kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static String f0(String missingDelimiterValue, String str) {
        kotlin.jvm.internal.h.f(missingDelimiterValue, "<this>");
        kotlin.jvm.internal.h.f(missingDelimiterValue, "missingDelimiterValue");
        int r32 = N(missingDelimiterValue, str, 0, false, 6);
        if (r32 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = missingDelimiterValue.substring(0, r32);
        kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final String g0(String str, String missingDelimiterValue) {
        kotlin.jvm.internal.h.f(str, "<this>");
        kotlin.jvm.internal.h.f(missingDelimiterValue, "missingDelimiterValue");
        int r02 = Q(str, ".", 6);
        if (r02 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(0, r02);
        kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static String h0(String missingDelimiterValue, char c10) {
        kotlin.jvm.internal.h.f(missingDelimiterValue, "<this>");
        kotlin.jvm.internal.h.f(missingDelimiterValue, "missingDelimiterValue");
        int r32 = P(missingDelimiterValue, c10, 0, 6);
        if (r32 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = missingDelimiterValue.substring(0, r32);
        kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final CharSequence i0(CharSequence charSequence) {
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int r22 = 0;
        boolean z10 = false;
        while (r22 <= length) {
            boolean zT = a6.a.t(charSequence.charAt(!z10 ? r22 : length));
            if (z10) {
                if (!zT) {
                    break;
                }
                length--;
            } else if (zT) {
                r22++;
            } else {
                z10 = true;
            }
        }
        return charSequence.subSequence(r22, length + 1);
    }
}
