package rc;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final String f14534a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14535b;

    /* renamed from: c, reason: collision with root package name */
    public final String[] f14536c;
    public static final a f = new a();

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f14532d = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: e, reason: collision with root package name */
    public static final Pattern f14533e = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    public static final class a {
        public static t a(String toMediaType) {
            kotlin.jvm.internal.h.f(toMediaType, "$this$toMediaType");
            Matcher matcher = t.f14532d.matcher(toMediaType);
            if (!matcher.lookingAt()) {
                throw new IllegalArgumentException(("No subtype found for: \"" + toMediaType + '\"').toString());
            }
            String strGroup = matcher.group(1);
            kotlin.jvm.internal.h.e(strGroup, "typeSubtype.group(1)");
            Locale locale = Locale.US;
            kotlin.jvm.internal.h.e(locale, "Locale.US");
            String lowerCase = strGroup.toLowerCase(locale);
            kotlin.jvm.internal.h.e(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            String strGroup2 = matcher.group(2);
            kotlin.jvm.internal.h.e(strGroup2, "typeSubtype.group(2)");
            kotlin.jvm.internal.h.e(strGroup2.toLowerCase(locale), "(this as java.lang.String).toLowerCase(locale)");
            ArrayList arrayList = new ArrayList();
            Matcher matcher2 = t.f14533e.matcher(toMediaType);
            for (int r02 = matcher.end(); r02 < toMediaType.length(); r02 = matcher2.end()) {
                matcher2.region(r02, toMediaType.length());
                if (!matcher2.lookingAt()) {
                    StringBuilder sb2 = new StringBuilder("Parameter is not formatted correctly: \"");
                    String strSubstring = toMediaType.substring(r02);
                    kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.String).substring(startIndex)");
                    sb2.append(strSubstring);
                    sb2.append("\" for: \"");
                    sb2.append(toMediaType);
                    sb2.append('\"');
                    throw new IllegalArgumentException(sb2.toString().toString());
                }
                String strGroup3 = matcher2.group(1);
                if (strGroup3 != null) {
                    String strGroup4 = matcher2.group(2);
                    if (strGroup4 == null) {
                        strGroup4 = matcher2.group(3);
                    } else if (mc.j.D(strGroup4, "'", false) && mc.j.w(strGroup4, "'", false) && strGroup4.length() > 2) {
                        strGroup4 = strGroup4.substring(1, strGroup4.length() - 1);
                        kotlin.jvm.internal.h.e(strGroup4, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    }
                    arrayList.add(strGroup3);
                    arrayList.add(strGroup4);
                }
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                return new t(toMediaType, lowerCase, (String[]) array);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
    }

    public t(String str, String str2, String[] strArr) {
        this.f14534a = str;
        this.f14535b = str2;
        this.f14536c = strArr;
    }

    public final Charset a(Charset charset) {
        String str;
        String[] strArr = this.f14536c;
        kotlin.jvm.internal.h.f(strArr, "<this>");
        ca.b bVarJ0 = b8.f.j0(new ca.d(0, strArr.length - 1), 2);
        int r22 = bVarJ0.f2246a;
        int r32 = bVarJ0.f2247b;
        int r02 = bVarJ0.f2248c;
        if (r02 < 0 ? r22 < r32 : r22 > r32) {
            str = null;
            break;
        }
        while (!mc.j.x(strArr[r22], "charset")) {
            if (r22 == r32) {
                str = null;
                break;
            }
            r22 += r02;
        }
        str = strArr[r22 + 1];
        if (str == null) {
            return charset;
        }
        try {
            return Charset.forName(str);
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof t) && kotlin.jvm.internal.h.a(((t) obj).f14534a, this.f14534a);
    }

    public final int hashCode() {
        return this.f14534a.hashCode();
    }

    public final String toString() {
        return this.f14534a;
    }
}
