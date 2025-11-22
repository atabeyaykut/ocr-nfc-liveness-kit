package ge;

import android.os.Build;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.h;
import mc.j;
import mc.o;

/* loaded from: classes3.dex */
public final class f {
    public static final String a(String str) {
        if (!(str.length() > 0)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        char cCharAt = str.charAt(0);
        sb2.append((Object) (Character.isLowerCase(cCharAt) ? a6.a.D(cCharAt, new Locale("tr")) : String.valueOf(cCharAt)));
        String strSubstring = str.substring(1);
        h.e(strSubstring, "this as java.lang.String).substring(startIndex)");
        sb2.append(strSubstring);
        return sb2.toString();
    }

    public static final String b(String str) {
        String str2;
        String str3;
        h.f(str, "<this>");
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                LocalDateTime localDateTime = LocalDateTime.parse(str, DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ssZZZZZ"));
                DateTimeFormatter dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("dd.MM.yyyy / HH:mm");
                h.e(dateTimeFormatterOfPattern, "ofPattern(\"dd.MM.yyyy / HH:mm\")");
                str2 = localDateTime.format(dateTimeFormatterOfPattern);
            } catch (Exception e10) {
                e10.printStackTrace();
                try {
                    str2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ").format(new Date(str));
                } catch (Exception unused) {
                    str2 = "-";
                }
            }
            str3 = "{\n    try {\n        val …    \"-\"\n        }\n    }\n}";
        } else {
            try {
                str2 = new SimpleDateFormat("dd.MM.yyyy").format(new Date(str));
            } catch (Exception e11) {
                e11.printStackTrace();
                str2 = "--";
            }
            str3 = "{\n    try {\n        val …ce()\n        \"--\"\n    }\n}";
        }
        h.e(str2, str3);
        return str2;
    }

    public static final String c(String str) {
        String str2;
        String str3;
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                try {
                    LocalDateTime localDateTime = LocalDateTime.parse(str, DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"));
                    DateTimeFormatter dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("dd.MM.yyyy / HH:mm");
                    h.e(dateTimeFormatterOfPattern, "ofPattern(\"dd.MM.yyyy / HH:mm\")");
                    str2 = localDateTime.format(dateTimeFormatterOfPattern);
                } catch (Exception unused) {
                    str2 = "-";
                }
            } catch (Exception unused2) {
                LocalDateTime localDateTime2 = LocalDateTime.parse(str, DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSZZZZZ"));
                DateTimeFormatter dateTimeFormatterOfPattern2 = DateTimeFormatter.ofPattern("dd.MM.yyyy / HH:mm");
                h.e(dateTimeFormatterOfPattern2, "ofPattern(\"dd.MM.yyyy / HH:mm\")");
                str2 = localDateTime2.format(dateTimeFormatterOfPattern2);
            }
            str3 = "{\n        try {\n        …        }\n        }\n    }";
        } else {
            try {
                str2 = new SimpleDateFormat("dd.MM.yyyy").format(new Date(str));
            } catch (Exception unused3) {
                str2 = "--";
            }
            str3 = "{\n        try {\n        …     \"--\"\n        }\n    }";
        }
        h.e(str2, str3);
        return str2;
    }

    public static final String d(String str) {
        h.f(str, "<this>");
        if (!(str.length() > 0)) {
            return "-";
        }
        if (str.length() == 3 && o.k0(str) == '0') {
            String strSubstring = str.substring(1, 3);
            h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return strSubstring;
        }
        if (str.length() <= 2 || o.k0(str) != '0') {
            return str;
        }
        if (str.charAt(1) == '0') {
            str = o.j0(1, str);
        }
        return j.C(str, " ", "");
    }
}
