package q7;

import java.io.Closeable;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import l7.p;

/* loaded from: classes2.dex */
public class a implements Closeable {

    /* renamed from: r, reason: collision with root package name */
    public static final char[] f13407r = ")]}'\n".toCharArray();

    /* renamed from: a, reason: collision with root package name */
    public final Reader f13408a;

    /* renamed from: j, reason: collision with root package name */
    public long f13415j;

    /* renamed from: k, reason: collision with root package name */
    public int f13416k;

    /* renamed from: l, reason: collision with root package name */
    public String f13417l;

    /* renamed from: m, reason: collision with root package name */
    public int[] f13418m;

    /* renamed from: p, reason: collision with root package name */
    public String[] f13420p;

    /* renamed from: q, reason: collision with root package name */
    public int[] f13421q;

    /* renamed from: b, reason: collision with root package name */
    public boolean f13409b = false;

    /* renamed from: c, reason: collision with root package name */
    public final char[] f13410c = new char[1024];

    /* renamed from: d, reason: collision with root package name */
    public int f13411d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f13412e = 0;
    public int f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f13413g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f13414h = 0;

    /* renamed from: n, reason: collision with root package name */
    public int f13419n = 1;

    /* renamed from: q7.a$a, reason: collision with other inner class name */
    public static class C0224a extends p {
    }

    static {
        p.f9449a = new C0224a();
    }

    public a(StringReader stringReader) {
        int[] r22 = new int[32];
        this.f13418m = r22;
        r22[0] = 6;
        this.f13420p = new String[32];
        this.f13421q = new int[32];
        this.f13408a = stringReader;
    }

    public int B() throws IOException {
        int r02 = this.f13414h;
        if (r02 == 0) {
            r02 = d();
        }
        switch (r02) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            case 17:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    public final void E(int r72) {
        int r02 = this.f13419n;
        int[] r12 = this.f13418m;
        if (r02 == r12.length) {
            int[] r22 = new int[r02 * 2];
            int[] r32 = new int[r02 * 2];
            String[] strArr = new String[r02 * 2];
            System.arraycopy(r12, 0, r22, 0, r02);
            System.arraycopy(this.f13421q, 0, r32, 0, this.f13419n);
            System.arraycopy(this.f13420p, 0, strArr, 0, this.f13419n);
            this.f13418m = r22;
            this.f13421q = r32;
            this.f13420p = strArr;
        }
        int[] r03 = this.f13418m;
        int r13 = this.f13419n;
        this.f13419n = r13 + 1;
        r03[r13] = r72;
    }

    public final char F() throws IOException {
        int r72;
        int r73;
        if (this.f13411d == this.f13412e && !g(1)) {
            W("Unterminated escape sequence");
            throw null;
        }
        int r02 = this.f13411d;
        int r12 = r02 + 1;
        this.f13411d = r12;
        char[] cArr = this.f13410c;
        char c10 = cArr[r02];
        if (c10 == '\n') {
            this.f++;
            this.f13413g = r12;
        } else if (c10 != '\"' && c10 != '\'' && c10 != '/' && c10 != '\\') {
            if (c10 == 'b') {
                return '\b';
            }
            if (c10 == 'f') {
                return '\f';
            }
            if (c10 == 'n') {
                return '\n';
            }
            if (c10 == 'r') {
                return '\r';
            }
            if (c10 == 't') {
                return '\t';
            }
            if (c10 != 'u') {
                W("Invalid escape sequence");
                throw null;
            }
            if (r12 + 4 > this.f13412e && !g(4)) {
                W("Unterminated escape sequence");
                throw null;
            }
            int r13 = this.f13411d;
            int r22 = r13 + 4;
            char c11 = 0;
            while (r13 < r22) {
                char c12 = cArr[r13];
                char c13 = (char) (c11 << 4);
                if (c12 < '0' || c12 > '9') {
                    if (c12 >= 'a' && c12 <= 'f') {
                        r72 = c12 - 'a';
                    } else {
                        if (c12 < 'A' || c12 > 'F') {
                            throw new NumberFormatException("\\u".concat(new String(cArr, this.f13411d, 4)));
                        }
                        r72 = c12 - 'A';
                    }
                    r73 = r72 + 10;
                } else {
                    r73 = c12 - '0';
                }
                c11 = (char) (r73 + c13);
                r13++;
            }
            this.f13411d += 4;
            return c11;
        }
        return c10;
    }

    public final void J(char c10) throws IOException {
        while (true) {
            int r02 = this.f13411d;
            int r12 = this.f13412e;
            while (true) {
                if (r02 < r12) {
                    int r32 = r02 + 1;
                    char c11 = this.f13410c[r02];
                    if (c11 == c10) {
                        this.f13411d = r32;
                        return;
                    }
                    if (c11 == '\\') {
                        this.f13411d = r32;
                        F();
                        break;
                    } else {
                        if (c11 == '\n') {
                            this.f++;
                            this.f13413g = r32;
                        }
                        r02 = r32;
                    }
                } else {
                    this.f13411d = r02;
                    if (!g(1)) {
                        W("Unterminated string");
                        throw null;
                    }
                }
            }
        }
    }

    public final void O() throws IOException {
        char c10;
        do {
            if (this.f13411d >= this.f13412e && !g(1)) {
                return;
            }
            int r02 = this.f13411d;
            int r12 = r02 + 1;
            this.f13411d = r12;
            c10 = this.f13410c[r02];
            if (c10 == '\n') {
                this.f++;
                this.f13413g = r12;
                return;
            }
        } while (c10 != '\r');
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x0099, code lost:
    
        c();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:61:0x0093. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void P() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q7.a.P():void");
    }

    public final void W(String str) throws IOException {
        StringBuilder sbE = androidx.constraintlayout.core.a.e(str);
        sbE.append(k());
        throw new c(sbE.toString());
    }

    public void a() throws IOException {
        int r02 = this.f13414h;
        if (r02 == 0) {
            r02 = d();
        }
        if (r02 == 3) {
            E(1);
            this.f13421q[this.f13419n - 1] = 0;
            this.f13414h = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + androidx.fragment.app.a.j(B()) + k());
        }
    }

    public void b() throws IOException {
        int r02 = this.f13414h;
        if (r02 == 0) {
            r02 = d();
        }
        if (r02 == 1) {
            E(3);
            this.f13414h = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + androidx.fragment.app.a.j(B()) + k());
        }
    }

    public final void c() throws IOException {
        if (this.f13409b) {
            return;
        }
        W("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13414h = 0;
        this.f13418m[0] = 8;
        this.f13419n = 1;
        this.f13408a.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:162:0x0201, code lost:
    
        if (j(r1) != false) goto L199;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x016c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x026d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int d() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 795
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q7.a.d():int");
    }

    public void e() throws IOException {
        int r02 = this.f13414h;
        if (r02 == 0) {
            r02 = d();
        }
        if (r02 != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + androidx.fragment.app.a.j(B()) + k());
        }
        int r03 = this.f13419n - 1;
        this.f13419n = r03;
        int[] r12 = this.f13421q;
        int r04 = r03 - 1;
        r12[r04] = r12[r04] + 1;
        this.f13414h = 0;
    }

    public void f() throws IOException {
        int r02 = this.f13414h;
        if (r02 == 0) {
            r02 = d();
        }
        if (r02 != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + androidx.fragment.app.a.j(B()) + k());
        }
        int r03 = this.f13419n - 1;
        this.f13419n = r03;
        this.f13420p[r03] = null;
        int[] r12 = this.f13421q;
        int r04 = r03 - 1;
        r12[r04] = r12[r04] + 1;
        this.f13414h = 0;
    }

    public final boolean g(int r82) throws IOException {
        int r12;
        int r02;
        int r03 = this.f13413g;
        int r13 = this.f13411d;
        this.f13413g = r03 - r13;
        int r04 = this.f13412e;
        char[] cArr = this.f13410c;
        if (r04 != r13) {
            int r05 = r04 - r13;
            this.f13412e = r05;
            System.arraycopy(cArr, r13, cArr, 0, r05);
        } else {
            this.f13412e = 0;
        }
        this.f13411d = 0;
        do {
            int r06 = this.f13412e;
            int r07 = this.f13408a.read(cArr, r06, cArr.length - r06);
            if (r07 == -1) {
                return false;
            }
            r12 = this.f13412e + r07;
            this.f13412e = r12;
            if (this.f == 0 && (r02 = this.f13413g) == 0 && r12 > 0 && cArr[0] == 65279) {
                this.f13411d++;
                this.f13413g = r02 + 1;
                r82++;
            }
        } while (r12 < r82);
        return true;
    }

    public String getPath() {
        StringBuilder sb2 = new StringBuilder("$");
        int r12 = this.f13419n;
        for (int r22 = 0; r22 < r12; r22++) {
            int r32 = this.f13418m[r22];
            if (r32 == 1 || r32 == 2) {
                sb2.append('[');
                sb2.append(this.f13421q[r22]);
                sb2.append(']');
            } else if (r32 == 3 || r32 == 4 || r32 == 5) {
                sb2.append('.');
                String str = this.f13420p[r22];
                if (str != null) {
                    sb2.append(str);
                }
            }
        }
        return sb2.toString();
    }

    public boolean i() throws IOException {
        int r02 = this.f13414h;
        if (r02 == 0) {
            r02 = d();
        }
        return (r02 == 2 || r02 == 4) ? false : true;
    }

    public final boolean j(char c10) throws IOException {
        if (c10 == '\t' || c10 == '\n' || c10 == '\f' || c10 == '\r' || c10 == ' ') {
            return false;
        }
        if (c10 != '#') {
            if (c10 == ',') {
                return false;
            }
            if (c10 != '/' && c10 != '=') {
                if (c10 == '{' || c10 == '}' || c10 == ':') {
                    return false;
                }
                if (c10 != ';') {
                    switch (c10) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        c();
        return false;
    }

    public final String k() {
        StringBuilder sbF = androidx.constraintlayout.core.a.f(" at line ", this.f + 1, " column ", (this.f13411d - this.f13413g) + 1, " path ");
        sbF.append(getPath());
        return sbF.toString();
    }

    public boolean m() throws IOException {
        int r02 = this.f13414h;
        if (r02 == 0) {
            r02 = d();
        }
        if (r02 == 5) {
            this.f13414h = 0;
            int[] r03 = this.f13421q;
            int r12 = this.f13419n - 1;
            r03[r12] = r03[r12] + 1;
            return true;
        }
        if (r02 != 6) {
            throw new IllegalStateException("Expected a boolean but was " + androidx.fragment.app.a.j(B()) + k());
        }
        this.f13414h = 0;
        int[] r04 = this.f13421q;
        int r13 = this.f13419n - 1;
        r04[r13] = r04[r13] + 1;
        return false;
    }

    public double n() throws IOException, NumberFormatException {
        String strT;
        int r02 = this.f13414h;
        if (r02 == 0) {
            r02 = d();
        }
        if (r02 == 15) {
            this.f13414h = 0;
            int[] r03 = this.f13421q;
            int r12 = this.f13419n - 1;
            r03[r12] = r03[r12] + 1;
            return this.f13415j;
        }
        if (r02 == 16) {
            this.f13417l = new String(this.f13410c, this.f13411d, this.f13416k);
            this.f13411d += this.f13416k;
        } else {
            if (r02 == 8 || r02 == 9) {
                strT = t(r02 == 8 ? '\'' : '\"');
            } else if (r02 == 10) {
                strT = y();
            } else if (r02 != 11) {
                throw new IllegalStateException("Expected a double but was " + androidx.fragment.app.a.j(B()) + k());
            }
            this.f13417l = strT;
        }
        this.f13414h = 11;
        double d10 = Double.parseDouble(this.f13417l);
        if (!this.f13409b && (Double.isNaN(d10) || Double.isInfinite(d10))) {
            throw new c("JSON forbids NaN and infinities: " + d10 + k());
        }
        this.f13417l = null;
        this.f13414h = 0;
        int[] r22 = this.f13421q;
        int r32 = this.f13419n - 1;
        r22[r32] = r22[r32] + 1;
        return d10;
    }

    public int o() throws IOException {
        String strT;
        int r02 = this.f13414h;
        if (r02 == 0) {
            r02 = d();
        }
        if (r02 == 15) {
            long j10 = this.f13415j;
            int r42 = (int) j10;
            if (j10 != r42) {
                throw new NumberFormatException("Expected an int but was " + this.f13415j + k());
            }
            this.f13414h = 0;
            int[] r03 = this.f13421q;
            int r12 = this.f13419n - 1;
            r03[r12] = r03[r12] + 1;
            return r42;
        }
        if (r02 == 16) {
            this.f13417l = new String(this.f13410c, this.f13411d, this.f13416k);
            this.f13411d += this.f13416k;
        } else {
            if (r02 != 8 && r02 != 9 && r02 != 10) {
                throw new IllegalStateException("Expected an int but was " + androidx.fragment.app.a.j(B()) + k());
            }
            if (r02 == 10) {
                strT = y();
            } else {
                strT = t(r02 == 8 ? '\'' : '\"');
            }
            this.f13417l = strT;
            try {
                int r04 = Integer.parseInt(this.f13417l);
                this.f13414h = 0;
                int[] r13 = this.f13421q;
                int r43 = this.f13419n - 1;
                r13[r43] = r13[r43] + 1;
                return r04;
            } catch (NumberFormatException unused) {
            }
        }
        this.f13414h = 11;
        double d10 = Double.parseDouble(this.f13417l);
        int r44 = (int) d10;
        if (r44 != d10) {
            throw new NumberFormatException("Expected an int but was " + this.f13417l + k());
        }
        this.f13417l = null;
        this.f13414h = 0;
        int[] r05 = this.f13421q;
        int r14 = this.f13419n - 1;
        r05[r14] = r05[r14] + 1;
        return r44;
    }

    public long p() throws IOException, NumberFormatException {
        String strT;
        int r02 = this.f13414h;
        if (r02 == 0) {
            r02 = d();
        }
        if (r02 == 15) {
            this.f13414h = 0;
            int[] r03 = this.f13421q;
            int r12 = this.f13419n - 1;
            r03[r12] = r03[r12] + 1;
            return this.f13415j;
        }
        if (r02 == 16) {
            this.f13417l = new String(this.f13410c, this.f13411d, this.f13416k);
            this.f13411d += this.f13416k;
        } else {
            if (r02 != 8 && r02 != 9 && r02 != 10) {
                throw new IllegalStateException("Expected a long but was " + androidx.fragment.app.a.j(B()) + k());
            }
            if (r02 == 10) {
                strT = y();
            } else {
                strT = t(r02 == 8 ? '\'' : '\"');
            }
            this.f13417l = strT;
            try {
                long j10 = Long.parseLong(this.f13417l);
                this.f13414h = 0;
                int[] r42 = this.f13421q;
                int r52 = this.f13419n - 1;
                r42[r52] = r42[r52] + 1;
                return j10;
            } catch (NumberFormatException unused) {
            }
        }
        this.f13414h = 11;
        double d10 = Double.parseDouble(this.f13417l);
        long j11 = (long) d10;
        if (j11 != d10) {
            throw new NumberFormatException("Expected a long but was " + this.f13417l + k());
        }
        this.f13417l = null;
        this.f13414h = 0;
        int[] r04 = this.f13421q;
        int r13 = this.f13419n - 1;
        r04[r13] = r04[r13] + 1;
        return j11;
    }

    public String q() throws IOException {
        char c10;
        String strT;
        int r02 = this.f13414h;
        if (r02 == 0) {
            r02 = d();
        }
        if (r02 == 14) {
            strT = y();
        } else {
            if (r02 == 12) {
                c10 = '\'';
            } else {
                if (r02 != 13) {
                    throw new IllegalStateException("Expected a name but was " + androidx.fragment.app.a.j(B()) + k());
                }
                c10 = '\"';
            }
            strT = t(c10);
        }
        this.f13414h = 0;
        this.f13420p[this.f13419n - 1] = strT;
        return strT;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0052, code lost:
    
        if (r0 != '/') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0054, code lost:
    
        r9.f13411d = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0057, code lost:
    
        if (r3 != r1) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0059, code lost:
    
        r9.f13411d = r3 - 1;
        r1 = g(2);
        r9.f13411d++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0066, code lost:
    
        if (r1 != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0068, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0069, code lost:
    
        c();
        r1 = r9.f13411d;
        r3 = r4[r1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0072, code lost:
    
        if (r3 == '*') goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0074, code lost:
    
        if (r3 == '/') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0076, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0077, code lost:
    
        r9.f13411d = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007c, code lost:
    
        r9.f13411d = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0080, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0086, code lost:
    
        if ((r9.f13411d + 2) <= r9.f13412e) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008c, code lost:
    
        if (g(2) == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008f, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0091, code lost:
    
        r0 = r9.f13411d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0095, code lost:
    
        if (r4[r0] != '\n') goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0097, code lost:
    
        r9.f++;
        r9.f13413g = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a1, code lost:
    
        if (r3 >= 2) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ae, code lost:
    
        if (r4[r9.f13411d + r3] == "*\/".charAt(r3)) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b0, code lost:
    
        r9.f13411d++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b6, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b9, code lost:
    
        if (r2 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c0, code lost:
    
        W("Unterminated comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c6, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00c7, code lost:
    
        r9.f13411d = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00cb, code lost:
    
        if (r0 != '#') goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00cd, code lost:
    
        c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d5, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int r(boolean r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q7.a.r(boolean):int");
    }

    public void s() throws IOException {
        int r02 = this.f13414h;
        if (r02 == 0) {
            r02 = d();
        }
        if (r02 != 7) {
            throw new IllegalStateException("Expected null but was " + androidx.fragment.app.a.j(B()) + k());
        }
        this.f13414h = 0;
        int[] r03 = this.f13421q;
        int r12 = this.f13419n - 1;
        r03[r12] = r03[r12] + 1;
    }

    public final String t(char c10) throws IOException {
        StringBuilder sb2 = null;
        while (true) {
            int r22 = this.f13411d;
            int r32 = this.f13412e;
            int r42 = r22;
            while (true) {
                char[] cArr = this.f13410c;
                if (r42 < r32) {
                    int r82 = r42 + 1;
                    char c11 = cArr[r42];
                    if (c11 == c10) {
                        this.f13411d = r82;
                        int r83 = (r82 - r22) - 1;
                        if (sb2 == null) {
                            return new String(cArr, r22, r83);
                        }
                        sb2.append(cArr, r22, r83);
                        return sb2.toString();
                    }
                    if (c11 == '\\') {
                        this.f13411d = r82;
                        int r84 = (r82 - r22) - 1;
                        if (sb2 == null) {
                            sb2 = new StringBuilder(Math.max((r84 + 1) * 2, 16));
                        }
                        sb2.append(cArr, r22, r84);
                        sb2.append(F());
                    } else {
                        if (c11 == '\n') {
                            this.f++;
                            this.f13413g = r82;
                        }
                        r42 = r82;
                    }
                } else {
                    if (sb2 == null) {
                        sb2 = new StringBuilder(Math.max((r42 - r22) * 2, 16));
                    }
                    sb2.append(cArr, r22, r42 - r22);
                    this.f13411d = r42;
                    if (!g(1)) {
                        W("Unterminated string");
                        throw null;
                    }
                }
            }
        }
    }

    public String toString() {
        return getClass().getSimpleName() + k();
    }

    public String v() throws IOException {
        String str;
        char c10;
        int r02 = this.f13414h;
        if (r02 == 0) {
            r02 = d();
        }
        if (r02 == 10) {
            str = y();
        } else {
            if (r02 == 8) {
                c10 = '\'';
            } else if (r02 == 9) {
                c10 = '\"';
            } else if (r02 == 11) {
                str = this.f13417l;
                this.f13417l = null;
            } else if (r02 == 15) {
                str = Long.toString(this.f13415j);
            } else {
                if (r02 != 16) {
                    throw new IllegalStateException("Expected a string but was " + androidx.fragment.app.a.j(B()) + k());
                }
                str = new String(this.f13410c, this.f13411d, this.f13416k);
                this.f13411d += this.f13416k;
            }
            str = t(c10);
        }
        this.f13414h = 0;
        int[] r12 = this.f13421q;
        int r22 = this.f13419n - 1;
        r12[r22] = r12[r22] + 1;
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
    
        c();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String y() throws java.io.IOException {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = 0
        L3:
            int r3 = r7.f13411d
            int r4 = r3 + r2
            int r5 = r7.f13412e
            char[] r6 = r7.f13410c
            if (r4 >= r5) goto L4e
            int r3 = r3 + r2
            char r3 = r6[r3]
            r4 = 9
            if (r3 == r4) goto L5a
            r4 = 10
            if (r3 == r4) goto L5a
            r4 = 12
            if (r3 == r4) goto L5a
            r4 = 13
            if (r3 == r4) goto L5a
            r4 = 32
            if (r3 == r4) goto L5a
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5a
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5a
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5a
            r4 = 58
            if (r3 == r4) goto L5a
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5a;
                case 92: goto L4a;
                case 93: goto L5a;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r7.c()
            goto L5a
        L4e:
            int r3 = r6.length
            if (r2 >= r3) goto L5c
            int r3 = r2 + 1
            boolean r3 = r7.g(r3)
            if (r3 == 0) goto L5a
            goto L3
        L5a:
            r1 = r2
            goto L7a
        L5c:
            if (r0 != 0) goto L69
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r0.<init>(r3)
        L69:
            int r3 = r7.f13411d
            r0.append(r6, r3, r2)
            int r3 = r7.f13411d
            int r3 = r3 + r2
            r7.f13411d = r3
            r2 = 1
            boolean r2 = r7.g(r2)
            if (r2 != 0) goto L2
        L7a:
            if (r0 != 0) goto L84
            java.lang.String r0 = new java.lang.String
            int r2 = r7.f13411d
            r0.<init>(r6, r2, r1)
            goto L8d
        L84:
            int r2 = r7.f13411d
            r0.append(r6, r2, r1)
            java.lang.String r0 = r0.toString()
        L8d:
            int r2 = r7.f13411d
            int r2 = r2 + r1
            r7.f13411d = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: q7.a.y():java.lang.String");
    }
}
