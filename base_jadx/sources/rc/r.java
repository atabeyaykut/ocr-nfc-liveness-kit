package rc;

import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.math.Primes;

/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f14516a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14517b;

    /* renamed from: c, reason: collision with root package name */
    public final String f14518c;

    /* renamed from: d, reason: collision with root package name */
    public final String f14519d;

    /* renamed from: e, reason: collision with root package name */
    public final String f14520e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final List<String> f14521g;

    /* renamed from: h, reason: collision with root package name */
    public final List<String> f14522h;

    /* renamed from: i, reason: collision with root package name */
    public final String f14523i;

    /* renamed from: j, reason: collision with root package name */
    public final String f14524j;

    /* renamed from: l, reason: collision with root package name */
    public static final b f14515l = new b();

    /* renamed from: k, reason: collision with root package name */
    public static final char[] f14514k = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public String f14525a;

        /* renamed from: d, reason: collision with root package name */
        public String f14528d;
        public final ArrayList f;

        /* renamed from: g, reason: collision with root package name */
        public ArrayList f14530g;

        /* renamed from: h, reason: collision with root package name */
        public String f14531h;

        /* renamed from: b, reason: collision with root package name */
        public String f14526b = "";

        /* renamed from: c, reason: collision with root package name */
        public String f14527c = "";

        /* renamed from: e, reason: collision with root package name */
        public int f14529e = -1;

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f = arrayList;
            arrayList.add("");
        }

        public final r a() {
            int r6;
            ArrayList arrayList;
            String str = this.f14525a;
            if (str == null) {
                throw new IllegalStateException("scheme == null");
            }
            b bVar = r.f14515l;
            String strD = b.d(bVar, this.f14526b, 0, 0, false, 7);
            String strD2 = b.d(bVar, this.f14527c, 0, 0, false, 7);
            String str2 = this.f14528d;
            if (str2 == null) {
                throw new IllegalStateException("host == null");
            }
            int r32 = this.f14529e;
            if (r32 != -1) {
                r6 = r32;
            } else {
                String str3 = this.f14525a;
                kotlin.jvm.internal.h.c(str3);
                bVar.getClass();
                r6 = b.b(str3);
            }
            ArrayList arrayList2 = this.f;
            ArrayList arrayList3 = new ArrayList(m9.n.Q0(arrayList2));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(b.d(r.f14515l, (String) it.next(), 0, 0, false, 7));
            }
            ArrayList<String> arrayList4 = this.f14530g;
            if (arrayList4 != null) {
                arrayList = new ArrayList(m9.n.Q0(arrayList4));
                for (String str4 : arrayList4) {
                    arrayList.add(str4 != null ? b.d(r.f14515l, str4, 0, 0, true, 3) : null);
                }
            } else {
                arrayList = null;
            }
            String str5 = this.f14531h;
            return new r(str, strD, strD2, str2, r6, arrayList3, arrayList, str5 != null ? b.d(r.f14515l, str5, 0, 0, false, 7) : null, toString());
        }

        public final void b(String str) {
            this.f14530g = str != null ? b.e(b.a(r.f14515l, str, 0, 0, " \"'<>#", true, false, true, false, null, Primes.SMALL_FACTOR_LIMIT)) : null;
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0129  */
        /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void c(rc.r r27, java.lang.String r28) {
            /*
                Method dump skipped, instructions count: 1115
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: rc.r.a.c(rc.r, java.lang.String):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0098  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String toString() {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: rc.r.a.toString():java.lang.String");
        }
    }

    public static final class b {
        public static String a(b bVar, String canonicalize, int r72, int r82, String str, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset, int r15) {
            if ((r15 & 1) != 0) {
                r72 = 0;
            }
            if ((r15 & 2) != 0) {
                r82 = canonicalize.length();
            }
            if ((r15 & 8) != 0) {
                z10 = false;
            }
            if ((r15 & 16) != 0) {
                z11 = false;
            }
            if ((r15 & 32) != 0) {
                z12 = false;
            }
            if ((r15 & 64) != 0) {
                z13 = false;
            }
            int r02 = 128;
            if ((r15 & 128) != 0) {
                charset = null;
            }
            bVar.getClass();
            kotlin.jvm.internal.h.f(canonicalize, "$this$canonicalize");
            int r52 = r72;
            while (r52 < r82) {
                int r12 = canonicalize.codePointAt(r52);
                int r22 = CertificateBody.profileType;
                int r42 = 32;
                if (r12 < 32 || r12 == 127 || ((r12 >= r02 && !z13) || mc.n.H(str, (char) r12) || ((r12 == 37 && (!z10 || (z11 && !c(r52, r82, canonicalize)))) || (r12 == 43 && z12)))) {
                    ed.e eVar = new ed.e();
                    eVar.e0(r72, r52, canonicalize);
                    ed.e eVar2 = null;
                    while (r52 < r82) {
                        int r13 = canonicalize.codePointAt(r52);
                        if (!z10 || (r13 != 9 && r13 != 10 && r13 != 12 && r13 != 13)) {
                            if (r13 == 43 && z12) {
                                eVar.i0(z10 ? "+" : "%2B");
                            } else if (r13 < r42 || r13 == r22 || ((r13 >= 128 && !z13) || mc.n.H(str, (char) r13) || (r13 == 37 && (!z10 || (z11 && !c(r52, r82, canonicalize)))))) {
                                if (eVar2 == null) {
                                    eVar2 = new ed.e();
                                }
                                if (charset == null || kotlin.jvm.internal.h.a(charset, StandardCharsets.UTF_8)) {
                                    eVar2.o0(r13);
                                } else {
                                    int r23 = Character.charCount(r13) + r52;
                                    if (!(r52 >= 0)) {
                                        throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Integer.valueOf(r52), "beginIndex < 0: ").toString());
                                    }
                                    if (!(r23 >= r52)) {
                                        throw new IllegalArgumentException(androidx.constraintlayout.core.a.c("endIndex < beginIndex: ", r23, " < ", r52).toString());
                                    }
                                    if (!(r23 <= canonicalize.length())) {
                                        StringBuilder sbE = androidx.appcompat.widget.v.e("endIndex > string.length: ", r23, " > ");
                                        sbE.append(canonicalize.length());
                                        throw new IllegalArgumentException(sbE.toString().toString());
                                    }
                                    if (kotlin.jvm.internal.h.a(charset, mc.a.f10357a)) {
                                        eVar2.e0(r52, r23, canonicalize);
                                    } else {
                                        String strSubstring = canonicalize.substring(r52, r23);
                                        kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                        byte[] bytes = strSubstring.getBytes(charset);
                                        kotlin.jvm.internal.h.e(bytes, "(this as java.lang.String).getBytes(charset)");
                                        eVar2.m31write(bytes, 0, bytes.length);
                                    }
                                }
                                while (!eVar2.I()) {
                                    int r24 = eVar2.readByte() & 255;
                                    eVar.O(37);
                                    char[] cArr = r.f14514k;
                                    eVar.O(cArr[(r24 >> 4) & 15]);
                                    eVar.O(cArr[r24 & 15]);
                                }
                            } else {
                                eVar.o0(r13);
                            }
                        }
                        r52 += Character.charCount(r13);
                        r22 = CertificateBody.profileType;
                        r42 = 32;
                    }
                    return eVar.r();
                }
                r52 += Character.charCount(r12);
                r02 = 128;
            }
            String strSubstring2 = canonicalize.substring(r72, r82);
            kotlin.jvm.internal.h.e(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return strSubstring2;
        }

        public static int b(String scheme) {
            kotlin.jvm.internal.h.f(scheme, "scheme");
            int r02 = scheme.hashCode();
            if (r02 != 3213448) {
                if (r02 == 99617003 && scheme.equals("https")) {
                    return 443;
                }
            } else if (scheme.equals("http")) {
                return 80;
            }
            return -1;
        }

        public static boolean c(int r22, int r32, String str) {
            int r02 = r22 + 2;
            return r02 < r32 && str.charAt(r22) == '%' && sc.c.q(str.charAt(r22 + 1)) != -1 && sc.c.q(str.charAt(r02)) != -1;
        }

        public static String d(b bVar, String percentDecode, int r82, int r92, boolean z10, int r11) {
            int r22;
            if ((r11 & 1) != 0) {
                r82 = 0;
            }
            if ((r11 & 2) != 0) {
                r92 = percentDecode.length();
            }
            if ((r11 & 4) != 0) {
                z10 = false;
            }
            bVar.getClass();
            kotlin.jvm.internal.h.f(percentDecode, "$this$percentDecode");
            int r6 = r82;
            while (r6 < r92) {
                char cCharAt = percentDecode.charAt(r6);
                if (cCharAt == '%' || (cCharAt == '+' && z10)) {
                    ed.e eVar = new ed.e();
                    eVar.e0(r82, r6, percentDecode);
                    while (r6 < r92) {
                        int r83 = percentDecode.codePointAt(r6);
                        if (r83 == 37 && (r22 = r6 + 2) < r92) {
                            int r32 = sc.c.q(percentDecode.charAt(r6 + 1));
                            int r42 = sc.c.q(percentDecode.charAt(r22));
                            if (r32 == -1 || r42 == -1) {
                                eVar.o0(r83);
                                r6 += Character.charCount(r83);
                            } else {
                                eVar.O((r32 << 4) + r42);
                                r6 = Character.charCount(r83) + r22;
                            }
                        } else if (r83 == 43 && z10) {
                            eVar.O(32);
                            r6++;
                        } else {
                            eVar.o0(r83);
                            r6 += Character.charCount(r83);
                        }
                    }
                    return eVar.r();
                }
                r6++;
            }
            String strSubstring = percentDecode.substring(r82, r92);
            kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return strSubstring;
        }

        public static ArrayList e(String str) {
            String strSubstring;
            ArrayList arrayList = new ArrayList();
            int r22 = 0;
            while (r22 <= str.length()) {
                int length = mc.n.M(str, '&', r22, false, 4);
                if (length == -1) {
                    length = str.length();
                }
                int r42 = mc.n.M(str, '=', r22, false, 4);
                if (r42 == -1 || r42 > length) {
                    String strSubstring2 = str.substring(r22, length);
                    kotlin.jvm.internal.h.e(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring2);
                    strSubstring = null;
                } else {
                    String strSubstring3 = str.substring(r22, r42);
                    kotlin.jvm.internal.h.e(strSubstring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring3);
                    strSubstring = str.substring(r42 + 1, length);
                    kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                }
                arrayList.add(strSubstring);
                r22 = length + 1;
            }
            return arrayList;
        }

        public static void f(StringBuilder sb2, List toQueryString) {
            kotlin.jvm.internal.h.f(toQueryString, "$this$toQueryString");
            ca.b bVarJ0 = b8.f.j0(b8.f.r0(0, toQueryString.size()), 2);
            int r12 = bVarJ0.f2246a;
            int r22 = bVarJ0.f2247b;
            int r02 = bVarJ0.f2248c;
            if (r02 >= 0) {
                if (r12 > r22) {
                    return;
                }
            } else if (r12 < r22) {
                return;
            }
            while (true) {
                String str = (String) toQueryString.get(r12);
                String str2 = (String) toQueryString.get(r12 + 1);
                if (r12 > 0) {
                    sb2.append('&');
                }
                sb2.append(str);
                if (str2 != null) {
                    sb2.append('=');
                    sb2.append(str2);
                }
                if (r12 == r22) {
                    return;
                } else {
                    r12 += r02;
                }
            }
        }
    }

    public r(String str, String str2, String str3, String str4, int r52, ArrayList arrayList, ArrayList arrayList2, String str5, String str6) {
        this.f14517b = str;
        this.f14518c = str2;
        this.f14519d = str3;
        this.f14520e = str4;
        this.f = r52;
        this.f14521g = arrayList;
        this.f14522h = arrayList2;
        this.f14523i = str5;
        this.f14524j = str6;
        this.f14516a = kotlin.jvm.internal.h.a(str, "https");
    }

    public final String a() {
        if (this.f14519d.length() == 0) {
            return "";
        }
        int length = this.f14517b.length() + 3;
        String str = this.f14524j;
        int r02 = mc.n.M(str, ':', length, false, 4) + 1;
        int r12 = mc.n.M(str, '@', 0, false, 6);
        if (str == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        String strSubstring = str.substring(r02, r12);
        kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final String b() {
        int length = this.f14517b.length() + 3;
        String str = this.f14524j;
        int r02 = mc.n.M(str, '/', length, false, 4);
        String strSubstring = str.substring(r02, sc.c.e(r02, str.length(), str, "?#"));
        kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final ArrayList c() {
        int length = this.f14517b.length() + 3;
        String str = this.f14524j;
        int r02 = mc.n.M(str, '/', length, false, 4);
        int r12 = sc.c.e(r02, str.length(), str, "?#");
        ArrayList arrayList = new ArrayList();
        while (r02 < r12) {
            int r03 = r02 + 1;
            int r52 = sc.c.f(str, '/', r03, r12);
            String strSubstring = str.substring(r03, r52);
            kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            arrayList.add(strSubstring);
            r02 = r52;
        }
        return arrayList;
    }

    public final String d() {
        if (this.f14522h == null) {
            return null;
        }
        String str = this.f14524j;
        int r02 = mc.n.M(str, '?', 0, false, 6) + 1;
        String strSubstring = str.substring(r02, sc.c.f(str, '#', r02, str.length()));
        kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final String e() {
        if (this.f14518c.length() == 0) {
            return "";
        }
        int length = this.f14517b.length() + 3;
        String str = this.f14524j;
        int r12 = sc.c.e(length, str.length(), str, ":@");
        if (str == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        String strSubstring = str.substring(length, r12);
        kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof r) && kotlin.jvm.internal.h.a(((r) obj).f14524j, this.f14524j);
    }

    public final String f() {
        a aVar;
        try {
            aVar = new a();
            aVar.c(this, "/...");
        } catch (IllegalArgumentException unused) {
            aVar = null;
        }
        kotlin.jvm.internal.h.c(aVar);
        b bVar = f14515l;
        aVar.f14526b = b.a(bVar, "", 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251);
        aVar.f14527c = b.a(bVar, "", 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251);
        return aVar.a().f14524j;
    }

    public final URI g() {
        String strSubstring;
        String strReplaceAll;
        a aVar = new a();
        String str = this.f14517b;
        aVar.f14525a = str;
        aVar.f14526b = e();
        aVar.f14527c = a();
        aVar.f14528d = this.f14520e;
        f14515l.getClass();
        int r22 = b.b(str);
        int r32 = this.f;
        if (r32 == r22) {
            r32 = -1;
        }
        aVar.f14529e = r32;
        ArrayList arrayList = aVar.f;
        arrayList.clear();
        arrayList.addAll(c());
        aVar.b(d());
        if (this.f14523i == null) {
            strSubstring = null;
        } else {
            String str2 = this.f14524j;
            int r42 = mc.n.M(str2, '#', 0, false, 6) + 1;
            if (str2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            strSubstring = str2.substring(r42);
            kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.String).substring(startIndex)");
        }
        aVar.f14531h = strSubstring;
        String str3 = aVar.f14528d;
        if (str3 != null) {
            Pattern patternCompile = Pattern.compile("[\"<>^`{|}]");
            kotlin.jvm.internal.h.e(patternCompile, "compile(pattern)");
            strReplaceAll = patternCompile.matcher(str3).replaceAll("");
            kotlin.jvm.internal.h.e(strReplaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        } else {
            strReplaceAll = null;
        }
        aVar.f14528d = strReplaceAll;
        int size = arrayList.size();
        for (int r92 = 0; r92 < size; r92++) {
            arrayList.set(r92, b.a(f14515l, (String) arrayList.get(r92), 0, 0, "[]", true, true, false, false, null, 227));
        }
        ArrayList arrayList2 = aVar.f14530g;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int r33 = 0; r33 < size2; r33++) {
                String str4 = (String) arrayList2.get(r33);
                arrayList2.set(r33, str4 != null ? b.a(f14515l, str4, 0, 0, "\\^`{|}", true, true, true, false, null, 195) : null);
            }
        }
        String str5 = aVar.f14531h;
        aVar.f14531h = str5 != null ? b.a(f14515l, str5, 0, 0, " \"#<>\\^`{|}", true, true, false, true, null, 163) : null;
        String string = aVar.toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e10) {
            try {
                Pattern patternCompile2 = Pattern.compile("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]");
                kotlin.jvm.internal.h.e(patternCompile2, "compile(pattern)");
                String strReplaceAll2 = patternCompile2.matcher(string).replaceAll("");
                kotlin.jvm.internal.h.e(strReplaceAll2, "nativePattern.matcher(in…).replaceAll(replacement)");
                URI r02 = URI.create(strReplaceAll2);
                kotlin.jvm.internal.h.e(r02, "try {\n        val stripp…e) // Unexpected!\n      }");
                return r02;
            } catch (Exception unused) {
                throw new RuntimeException(e10);
            }
        }
    }

    public final int hashCode() {
        return this.f14524j.hashCode();
    }

    public final String toString() {
        return this.f14524j;
    }
}
