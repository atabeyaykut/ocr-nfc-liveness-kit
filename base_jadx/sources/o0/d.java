package o0;

import androidx.annotation.Nullable;
import ed.d0;
import ed.e;
import ed.g;
import ed.h;
import java.io.EOFException;
import java.io.IOException;
import net.sf.scuba.smartcards.ISO7816;
import o0.c;

/* loaded from: classes.dex */
public final class d extends c {

    /* renamed from: m, reason: collision with root package name */
    public static final h f11050m;

    /* renamed from: n, reason: collision with root package name */
    public static final h f11051n;

    /* renamed from: p, reason: collision with root package name */
    public static final h f11052p;
    public final g f;

    /* renamed from: g, reason: collision with root package name */
    public final e f11053g;

    /* renamed from: h, reason: collision with root package name */
    public int f11054h = 0;

    /* renamed from: j, reason: collision with root package name */
    public long f11055j;

    /* renamed from: k, reason: collision with root package name */
    public int f11056k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public String f11057l;

    static {
        h hVar = h.f5315d;
        f11050m = h.a.b("'\\");
        f11051n = h.a.b("\"\\");
        f11052p = h.a.b("{}[]:, \n\t\r\f/\\;#=");
        h.a.b("\n\r");
        h.a.b("*/");
    }

    public d(d0 d0Var) {
        this.f = d0Var;
        this.f11053g = d0Var.f5301b;
        m(6);
    }

    public final int B(boolean z10) throws IOException {
        int r02 = 0;
        while (true) {
            int r12 = r02 + 1;
            g gVar = this.f;
            if (!gVar.Y(r12)) {
                if (z10) {
                    throw new EOFException("End of input");
                }
                return -1;
            }
            long j10 = r02;
            e eVar = this.f11053g;
            byte bF = eVar.f(j10);
            if (bF != 10 && bF != 32 && bF != 13 && bF != 9) {
                eVar.skip(r12 - 1);
                if (bF == 47) {
                    if (!gVar.Y(2L)) {
                        return bF;
                    }
                    r();
                    throw null;
                }
                if (bF != 35) {
                    return bF;
                }
                r();
                throw null;
            }
            r02 = r12;
        }
    }

    public final String E(h hVar) throws IOException {
        StringBuilder sb2 = null;
        while (true) {
            long jH = this.f.H(hVar);
            if (jH == -1) {
                q("Unterminated string");
                throw null;
            }
            e eVar = this.f11053g;
            if (eVar.f(jH) != 92) {
                String strS = eVar.s(jH);
                if (sb2 == null) {
                    eVar.readByte();
                    return strS;
                }
                sb2.append(strS);
                eVar.readByte();
                return sb2.toString();
            }
            if (sb2 == null) {
                sb2 = new StringBuilder();
            }
            sb2.append(eVar.s(jH));
            eVar.readByte();
            sb2.append(J());
        }
    }

    public final String F() throws IOException {
        long jH = this.f.H(f11052p);
        e eVar = this.f11053g;
        return jH != -1 ? eVar.s(jH) : eVar.r();
    }

    public final char J() throws IOException {
        int r82;
        int r83;
        g gVar = this.f;
        if (!gVar.Y(1L)) {
            q("Unterminated escape sequence");
            throw null;
        }
        e eVar = this.f11053g;
        byte b10 = eVar.readByte();
        if (b10 == 10 || b10 == 34 || b10 == 39 || b10 == 47 || b10 == 92) {
            return (char) b10;
        }
        if (b10 == 98) {
            return '\b';
        }
        if (b10 == 102) {
            return '\f';
        }
        if (b10 == 110) {
            return '\n';
        }
        if (b10 == 114) {
            return '\r';
        }
        if (b10 == 116) {
            return '\t';
        }
        if (b10 != 117) {
            q("Invalid escape sequence: \\" + ((char) b10));
            throw null;
        }
        if (!gVar.Y(4L)) {
            throw new EOFException("Unterminated escape sequence at path " + getPath());
        }
        char c10 = 0;
        for (int r02 = 0; r02 < 4; r02++) {
            byte bF = eVar.f(r02);
            char c11 = (char) (c10 << 4);
            if (bF < 48 || bF > 57) {
                if (bF >= 97 && bF <= 102) {
                    r82 = bF - 97;
                } else {
                    if (bF < 65 || bF > 70) {
                        q("\\u".concat(eVar.s(4L)));
                        throw null;
                    }
                    r82 = bF - 65;
                }
                r83 = r82 + 10;
            } else {
                r83 = bF + ISO7816.INS_WRITE_BINARY;
            }
            c10 = (char) (r83 + c11);
        }
        eVar.skip(4L);
        return c10;
    }

    public final void O(h hVar) throws IOException {
        while (true) {
            long jH = this.f.H(hVar);
            if (jH == -1) {
                q("Unterminated string");
                throw null;
            }
            e eVar = this.f11053g;
            byte bF = eVar.f(jH);
            eVar.skip(jH + 1);
            if (bF != 92) {
                return;
            } else {
                J();
            }
        }
    }

    @Override // o0.c
    public final void a() throws IOException {
        int r02 = this.f11054h;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 3) {
            m(1);
            this.f11047d[this.f11044a - 1] = 0;
            this.f11054h = 0;
        } else {
            throw new a("Expected BEGIN_ARRAY but was " + androidx.camera.core.impl.a.m(k()) + " at path " + getPath());
        }
    }

    @Override // o0.c
    public final void b() throws IOException {
        int r02 = this.f11054h;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 1) {
            m(3);
            this.f11054h = 0;
        } else {
            throw new a("Expected BEGIN_OBJECT but was " + androidx.camera.core.impl.a.m(k()) + " at path " + getPath());
        }
    }

    @Override // o0.c
    public final void c() throws IOException {
        int r02 = this.f11054h;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 != 4) {
            throw new a("Expected END_ARRAY but was " + androidx.camera.core.impl.a.m(k()) + " at path " + getPath());
        }
        int r03 = this.f11044a - 1;
        this.f11044a = r03;
        int[] r12 = this.f11047d;
        int r04 = r03 - 1;
        r12[r04] = r12[r04] + 1;
        this.f11054h = 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f11054h = 0;
        this.f11045b[0] = 8;
        this.f11044a = 1;
        this.f11053g.b();
        this.f.close();
    }

    @Override // o0.c
    public final void d() throws IOException {
        int r02 = this.f11054h;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 != 2) {
            throw new a("Expected END_OBJECT but was " + androidx.camera.core.impl.a.m(k()) + " at path " + getPath());
        }
        int r03 = this.f11044a - 1;
        this.f11044a = r03;
        this.f11046c[r03] = null;
        int[] r12 = this.f11047d;
        int r04 = r03 - 1;
        r12[r04] = r12[r04] + 1;
        this.f11054h = 0;
    }

    @Override // o0.c
    public final boolean e() throws IOException {
        int r02 = this.f11054h;
        if (r02 == 0) {
            r02 = s();
        }
        return (r02 == 2 || r02 == 4 || r02 == 18) ? false : true;
    }

    @Override // o0.c
    public final boolean f() throws IOException {
        int r02 = this.f11054h;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 5) {
            this.f11054h = 0;
            int[] r03 = this.f11047d;
            int r12 = this.f11044a - 1;
            r03[r12] = r03[r12] + 1;
            return true;
        }
        if (r02 == 6) {
            this.f11054h = 0;
            int[] r04 = this.f11047d;
            int r13 = this.f11044a - 1;
            r04[r13] = r04[r13] + 1;
            return false;
        }
        throw new a("Expected a boolean but was " + androidx.camera.core.impl.a.m(k()) + " at path " + getPath());
    }

    @Override // o0.c
    public final double g() throws IOException {
        String strF;
        h hVar;
        double d10;
        int r02 = this.f11054h;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 16) {
            this.f11054h = 0;
            int[] r03 = this.f11047d;
            int r12 = this.f11044a - 1;
            r03[r12] = r03[r12] + 1;
            return this.f11055j;
        }
        try {
            if (r02 == 17) {
                strF = this.f11053g.s(this.f11056k);
            } else {
                if (r02 == 9) {
                    hVar = f11051n;
                } else if (r02 == 8) {
                    hVar = f11050m;
                } else {
                    if (r02 != 10) {
                        if (r02 != 11) {
                            throw new a("Expected a double but was " + androidx.camera.core.impl.a.m(k()) + " at path " + getPath());
                        }
                        this.f11054h = 11;
                        d10 = Double.parseDouble(this.f11057l);
                        if (!Double.isNaN(d10) || Double.isInfinite(d10)) {
                            throw new b("JSON forbids NaN and infinities: " + d10 + " at path " + getPath());
                        }
                        this.f11057l = null;
                        this.f11054h = 0;
                        int[] r22 = this.f11047d;
                        int r32 = this.f11044a - 1;
                        r22[r32] = r22[r32] + 1;
                        return d10;
                    }
                    strF = F();
                }
                strF = E(hVar);
            }
            d10 = Double.parseDouble(this.f11057l);
            if (Double.isNaN(d10)) {
            }
            throw new b("JSON forbids NaN and infinities: " + d10 + " at path " + getPath());
        } catch (NumberFormatException unused) {
            throw new a("Expected a double but was " + this.f11057l + " at path " + getPath());
        }
        this.f11057l = strF;
        this.f11054h = 11;
    }

    @Override // o0.c
    public final int i() throws IOException {
        int r02 = this.f11054h;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 16) {
            long j10 = this.f11055j;
            int r52 = (int) j10;
            if (j10 == r52) {
                this.f11054h = 0;
                int[] r03 = this.f11047d;
                int r12 = this.f11044a - 1;
                r03[r12] = r03[r12] + 1;
                return r52;
            }
            throw new a("Expected an int but was " + this.f11055j + " at path " + getPath());
        }
        if (r02 == 17) {
            this.f11057l = this.f11053g.s(this.f11056k);
        } else if (r02 == 9 || r02 == 8) {
            String strE = E(r02 == 9 ? f11051n : f11050m);
            this.f11057l = strE;
            try {
                int r04 = Integer.parseInt(strE);
                this.f11054h = 0;
                int[] r13 = this.f11047d;
                int r6 = this.f11044a - 1;
                r13[r6] = r13[r6] + 1;
                return r04;
            } catch (NumberFormatException unused) {
            }
        } else if (r02 != 11) {
            throw new a("Expected an int but was " + androidx.camera.core.impl.a.m(k()) + " at path " + getPath());
        }
        this.f11054h = 11;
        try {
            double d10 = Double.parseDouble(this.f11057l);
            int r53 = (int) d10;
            if (r53 != d10) {
                throw new a("Expected an int but was " + this.f11057l + " at path " + getPath());
            }
            this.f11057l = null;
            this.f11054h = 0;
            int[] r05 = this.f11047d;
            int r14 = this.f11044a - 1;
            r05[r14] = r05[r14] + 1;
            return r53;
        } catch (NumberFormatException unused2) {
            throw new a("Expected an int but was " + this.f11057l + " at path " + getPath());
        }
    }

    @Override // o0.c
    public final String j() throws IOException {
        String strS;
        h hVar;
        int r02 = this.f11054h;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 10) {
            strS = F();
        } else {
            if (r02 == 9) {
                hVar = f11051n;
            } else if (r02 == 8) {
                hVar = f11050m;
            } else if (r02 == 11) {
                strS = this.f11057l;
                this.f11057l = null;
            } else if (r02 == 16) {
                strS = Long.toString(this.f11055j);
            } else {
                if (r02 != 17) {
                    throw new a("Expected a string but was " + androidx.camera.core.impl.a.m(k()) + " at path " + getPath());
                }
                strS = this.f11053g.s(this.f11056k);
            }
            strS = E(hVar);
        }
        this.f11054h = 0;
        int[] r12 = this.f11047d;
        int r22 = this.f11044a - 1;
        r12[r22] = r12[r22] + 1;
        return strS;
    }

    @Override // o0.c
    public final int k() throws IOException {
        int r02 = this.f11054h;
        if (r02 == 0) {
            r02 = s();
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
            case 15:
                return 5;
            case 16:
            case 17:
                return 7;
            case 18:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    @Override // o0.c
    public final int n(c.a aVar) throws IOException {
        int r02 = this.f11054h;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 < 12 || r02 > 15) {
            return -1;
        }
        if (r02 == 15) {
            return t(this.f11057l, aVar);
        }
        int r03 = this.f.h0(aVar.f11049b);
        if (r03 != -1) {
            this.f11054h = 0;
            this.f11046c[this.f11044a - 1] = aVar.f11048a[r03];
            return r03;
        }
        String str = this.f11046c[this.f11044a - 1];
        String strY = y();
        int r52 = t(strY, aVar);
        if (r52 == -1) {
            this.f11054h = 15;
            this.f11057l = strY;
            this.f11046c[this.f11044a - 1] = str;
        }
        return r52;
    }

    @Override // o0.c
    public final void o() throws IOException {
        h hVar;
        int r02 = this.f11054h;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 14) {
            long jH = this.f.H(f11052p);
            e eVar = this.f11053g;
            if (jH == -1) {
                jH = eVar.f5304b;
            }
            eVar.skip(jH);
        } else {
            if (r02 == 13) {
                hVar = f11051n;
            } else if (r02 == 12) {
                hVar = f11050m;
            } else if (r02 != 15) {
                throw new a("Expected a name but was " + androidx.camera.core.impl.a.m(k()) + " at path " + getPath());
            }
            O(hVar);
        }
        this.f11054h = 0;
        this.f11046c[this.f11044a - 1] = "null";
    }

    @Override // o0.c
    public final void p() throws IOException {
        h hVar;
        int r12 = 0;
        do {
            int r22 = this.f11054h;
            if (r22 == 0) {
                r22 = s();
            }
            if (r22 == 3) {
                m(1);
            } else if (r22 == 1) {
                m(3);
            } else {
                if (r22 == 4) {
                    r12--;
                    if (r12 < 0) {
                        throw new a("Expected a value but was " + androidx.camera.core.impl.a.m(k()) + " at path " + getPath());
                    }
                } else if (r22 == 2) {
                    r12--;
                    if (r12 < 0) {
                        throw new a("Expected a value but was " + androidx.camera.core.impl.a.m(k()) + " at path " + getPath());
                    }
                } else {
                    e eVar = this.f11053g;
                    if (r22 == 14 || r22 == 10) {
                        long jH = this.f.H(f11052p);
                        if (jH == -1) {
                            jH = eVar.f5304b;
                        }
                        eVar.skip(jH);
                    } else {
                        if (r22 == 9 || r22 == 13) {
                            hVar = f11051n;
                        } else if (r22 == 8 || r22 == 12) {
                            hVar = f11050m;
                        } else if (r22 == 17) {
                            eVar.skip(this.f11056k);
                        } else if (r22 == 18) {
                            throw new a("Expected a value but was " + androidx.camera.core.impl.a.m(k()) + " at path " + getPath());
                        }
                        O(hVar);
                    }
                    this.f11054h = 0;
                }
                this.f11044a--;
                this.f11054h = 0;
            }
            r12++;
            this.f11054h = 0;
        } while (r12 != 0);
        int[] r02 = this.f11047d;
        int r13 = this.f11044a;
        int r23 = r13 - 1;
        r02[r23] = r02[r23] + 1;
        this.f11046c[r13 - 1] = "null";
    }

    public final void r() throws IOException {
        q("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x0190, code lost:
    
        if (v(r14) != false) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0192, code lost:
    
        if (r6 != 2) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0194, code lost:
    
        if (r7 == false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x019a, code lost:
    
        if (r9 != Long.MIN_VALUE) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x019c, code lost:
    
        if (r11 == false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x01a0, code lost:
    
        if (r9 != 0) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01a2, code lost:
    
        if (r11 != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x01a4, code lost:
    
        if (r11 == false) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x01a7, code lost:
    
        r9 = -r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x01a8, code lost:
    
        r19.f11055j = r9;
        r5.skip(r3);
        r13 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x01b3, code lost:
    
        if (r6 == 2) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x01b6, code lost:
    
        if (r6 == 4) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x01b9, code lost:
    
        if (r6 != 7) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x01bb, code lost:
    
        r19.f11056k = r3;
        r13 = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x01c1, code lost:
    
        r19.f11054h = r13;
     */
    /* JADX WARN: Removed duplicated region for block: B:175:0x01f3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0110 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0111  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int s() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 667
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o0.d.s():int");
    }

    public final int t(String str, c.a aVar) {
        int length = aVar.f11048a.length;
        for (int r22 = 0; r22 < length; r22++) {
            if (str.equals(aVar.f11048a[r22])) {
                this.f11054h = 0;
                this.f11046c[this.f11044a - 1] = str;
                return r22;
            }
        }
        return -1;
    }

    public final String toString() {
        return "JsonReader(" + this.f + ")";
    }

    public final boolean v(int r22) throws IOException {
        if (r22 == 9 || r22 == 10 || r22 == 12 || r22 == 13 || r22 == 32) {
            return false;
        }
        if (r22 != 35) {
            if (r22 == 44) {
                return false;
            }
            if (r22 != 47 && r22 != 61) {
                if (r22 == 123 || r22 == 125 || r22 == 58) {
                    return false;
                }
                if (r22 != 59) {
                    switch (r22) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        r();
        throw null;
    }

    public final String y() throws IOException {
        String strE;
        h hVar;
        int r02 = this.f11054h;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 14) {
            strE = F();
        } else {
            if (r02 == 13) {
                hVar = f11051n;
            } else if (r02 == 12) {
                hVar = f11050m;
            } else {
                if (r02 != 15) {
                    throw new a("Expected a name but was " + androidx.camera.core.impl.a.m(k()) + " at path " + getPath());
                }
                strE = this.f11057l;
            }
            strE = E(hVar);
        }
        this.f11054h = 0;
        this.f11046c[this.f11044a - 1] = strE;
        return strE;
    }
}
