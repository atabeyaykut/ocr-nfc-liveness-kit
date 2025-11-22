package l8;

import ed.h;
import java.io.EOFException;
import java.io.IOException;
import l8.u;
import net.sf.scuba.smartcards.ISO7816;

/* loaded from: classes2.dex */
public final class v extends u {

    /* renamed from: n, reason: collision with root package name */
    public static final ed.h f9527n;

    /* renamed from: p, reason: collision with root package name */
    public static final ed.h f9528p;

    /* renamed from: q, reason: collision with root package name */
    public static final ed.h f9529q;

    /* renamed from: r, reason: collision with root package name */
    public static final ed.h f9530r;

    /* renamed from: s, reason: collision with root package name */
    public static final ed.h f9531s;

    /* renamed from: g, reason: collision with root package name */
    public final ed.g f9532g;

    /* renamed from: h, reason: collision with root package name */
    public final ed.e f9533h;

    /* renamed from: j, reason: collision with root package name */
    public int f9534j;

    /* renamed from: k, reason: collision with root package name */
    public long f9535k;

    /* renamed from: l, reason: collision with root package name */
    public int f9536l;

    /* renamed from: m, reason: collision with root package name */
    public String f9537m;

    static {
        ed.h hVar = ed.h.f5315d;
        f9527n = h.a.b("'\\");
        f9528p = h.a.b("\"\\");
        f9529q = h.a.b("{}[]:, \n\t\r\f/\\;#=");
        f9530r = h.a.b("\n\r");
        f9531s = h.a.b("*/");
    }

    public v(ed.g gVar) {
        this.f9534j = 0;
        this.f9532g = gVar;
        this.f9533h = gVar.getBuffer();
        m(6);
    }

    public v(v vVar) {
        super(vVar);
        this.f9534j = 0;
        ed.d0 d0VarPeek = vVar.f9532g.peek();
        this.f9532g = d0VarPeek;
        this.f9533h = d0VarPeek.f5301b;
        this.f9534j = vVar.f9534j;
        this.f9535k = vVar.f9535k;
        this.f9536l = vVar.f9536l;
        this.f9537m = vVar.f9537m;
        try {
            d0VarPeek.l0(vVar.f9533h.f5304b);
        } catch (IOException unused) {
            throw new AssertionError();
        }
    }

    public final String B() throws IOException {
        String strF;
        ed.h hVar;
        int r02 = this.f9534j;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 14) {
            strF = J();
        } else {
            if (r02 == 13) {
                hVar = f9528p;
            } else if (r02 == 12) {
                hVar = f9527n;
            } else {
                if (r02 != 15) {
                    throw new r("Expected a name but was " + k() + " at path " + getPath());
                }
                strF = this.f9537m;
            }
            strF = F(hVar);
        }
        this.f9534j = 0;
        this.f9512c[this.f9510a - 1] = strF;
        return strF;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0025, code lost:
    
        r1.skip(r2 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002d, code lost:
    
        if (r3 != 47) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
    
        if (r5.Y(2) != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
    
        r();
        r4 = r1.f(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0043, code lost:
    
        if (r4 == 42) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
    
        if (r4 == 47) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0047, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
    
        r1.readByte();
        r1.readByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004f, code lost:
    
        r1.readByte();
        r1.readByte();
        r3 = r5.j0(l8.v.f9531s);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005f, code lost:
    
        if (r3 == (-1)) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0061, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
    
        if (r0 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0064, code lost:
    
        r3 = r3 + r2.f5316a.length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006a, code lost:
    
        r3 = r1.f5304b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006c, code lost:
    
        r1.skip(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006f, code lost:
    
        if (r0 == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0072, code lost:
    
        q("Unterminated comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0078, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007b, code lost:
    
        if (r3 != 35) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007d, code lost:
    
        r();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
    
        W();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0085, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int E(boolean r9) throws java.io.IOException {
        /*
            r8 = this;
        L0:
            r0 = 0
            r1 = 0
        L2:
            int r2 = r1 + 1
            long r3 = (long) r2
            ed.g r5 = r8.f9532g
            boolean r3 = r5.Y(r3)
            if (r3 == 0) goto L89
            long r3 = (long) r1
            ed.e r1 = r8.f9533h
            byte r3 = r1.f(r3)
            r4 = 10
            if (r3 == r4) goto L86
            r4 = 32
            if (r3 == r4) goto L86
            r4 = 13
            if (r3 == r4) goto L86
            r4 = 9
            if (r3 != r4) goto L25
            goto L86
        L25:
            int r2 = r2 + (-1)
            long r6 = (long) r2
            r1.skip(r6)
            r2 = 47
            if (r3 != r2) goto L79
            r6 = 2
            boolean r4 = r5.Y(r6)
            if (r4 != 0) goto L38
            return r3
        L38:
            r8.r()
            r6 = 1
            byte r4 = r1.f(r6)
            r6 = 42
            if (r4 == r6) goto L4f
            if (r4 == r2) goto L48
            return r3
        L48:
            r1.readByte()
            r1.readByte()
            goto L80
        L4f:
            r1.readByte()
            r1.readByte()
            ed.h r2 = l8.v.f9531s
            long r3 = r5.j0(r2)
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L62
            r0 = 1
        L62:
            if (r0 == 0) goto L6a
            byte[] r2 = r2.f5316a
            int r2 = r2.length
            long r5 = (long) r2
            long r3 = r3 + r5
            goto L6c
        L6a:
            long r3 = r1.f5304b
        L6c:
            r1.skip(r3)
            if (r0 == 0) goto L72
            goto L0
        L72:
            java.lang.String r9 = "Unterminated comment"
            r8.q(r9)
            r9 = 0
            throw r9
        L79:
            r0 = 35
            if (r3 != r0) goto L85
            r8.r()
        L80:
            r8.W()
            goto L0
        L85:
            return r3
        L86:
            r1 = r2
            goto L2
        L89:
            if (r9 != 0) goto L8d
            r9 = -1
            return r9
        L8d:
            java.io.EOFException r9 = new java.io.EOFException
            java.lang.String r0 = "End of input"
            r9.<init>(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: l8.v.E(boolean):int");
    }

    public final String F(ed.h hVar) throws IOException {
        StringBuilder sb2 = null;
        while (true) {
            long jH = this.f9532g.H(hVar);
            if (jH == -1) {
                q("Unterminated string");
                throw null;
            }
            ed.e eVar = this.f9533h;
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
            sb2.append(O());
        }
    }

    public final String J() throws IOException {
        long jH = this.f9532g.H(f9529q);
        ed.e eVar = this.f9533h;
        return jH != -1 ? eVar.s(jH) : eVar.r();
    }

    public final char O() throws IOException {
        int r82;
        int r83;
        ed.g gVar = this.f9532g;
        if (!gVar.Y(1L)) {
            q("Unterminated escape sequence");
            throw null;
        }
        ed.e eVar = this.f9533h;
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
            if (this.f9514e) {
                return (char) b10;
            }
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

    public final void P(ed.h hVar) throws IOException {
        while (true) {
            long jH = this.f9532g.H(hVar);
            if (jH == -1) {
                q("Unterminated string");
                throw null;
            }
            ed.e eVar = this.f9533h;
            byte bF = eVar.f(jH);
            eVar.skip(jH + 1);
            if (bF != 92) {
                return;
            } else {
                O();
            }
        }
    }

    public final void W() throws IOException {
        long jH = this.f9532g.H(f9530r);
        ed.e eVar = this.f9533h;
        eVar.skip(jH != -1 ? jH + 1 : eVar.f5304b);
    }

    @Override // l8.u
    public final void a() throws IOException {
        int r02 = this.f9534j;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 3) {
            m(1);
            this.f9513d[this.f9510a - 1] = 0;
            this.f9534j = 0;
        } else {
            throw new r("Expected BEGIN_ARRAY but was " + k() + " at path " + getPath());
        }
    }

    @Override // l8.u
    public final void b() throws IOException {
        int r02 = this.f9534j;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 1) {
            m(3);
            this.f9534j = 0;
        } else {
            throw new r("Expected BEGIN_OBJECT but was " + k() + " at path " + getPath());
        }
    }

    @Override // l8.u
    public final void c() throws IOException {
        int r02 = this.f9534j;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 != 4) {
            throw new r("Expected END_ARRAY but was " + k() + " at path " + getPath());
        }
        int r03 = this.f9510a - 1;
        this.f9510a = r03;
        int[] r12 = this.f9513d;
        int r04 = r03 - 1;
        r12[r04] = r12[r04] + 1;
        this.f9534j = 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f9534j = 0;
        this.f9511b[0] = 8;
        this.f9510a = 1;
        this.f9533h.b();
        this.f9532g.close();
    }

    @Override // l8.u
    public final void d() throws IOException {
        int r02 = this.f9534j;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 != 2) {
            throw new r("Expected END_OBJECT but was " + k() + " at path " + getPath());
        }
        int r03 = this.f9510a - 1;
        this.f9510a = r03;
        this.f9512c[r03] = null;
        int[] r12 = this.f9513d;
        int r04 = r03 - 1;
        r12[r04] = r12[r04] + 1;
        this.f9534j = 0;
    }

    @Override // l8.u
    public final boolean e() throws IOException {
        int r02 = this.f9534j;
        if (r02 == 0) {
            r02 = s();
        }
        return (r02 == 2 || r02 == 4 || r02 == 18) ? false : true;
    }

    @Override // l8.u
    public final double f() throws IOException, NumberFormatException {
        String strJ;
        ed.h hVar;
        double d10;
        int r02 = this.f9534j;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 16) {
            this.f9534j = 0;
            int[] r03 = this.f9513d;
            int r12 = this.f9510a - 1;
            r03[r12] = r03[r12] + 1;
            return this.f9535k;
        }
        try {
            if (r02 == 17) {
                strJ = this.f9533h.s(this.f9536l);
            } else {
                if (r02 == 9) {
                    hVar = f9528p;
                } else if (r02 == 8) {
                    hVar = f9527n;
                } else {
                    if (r02 != 10) {
                        if (r02 != 11) {
                            throw new r("Expected a double but was " + k() + " at path " + getPath());
                        }
                        this.f9534j = 11;
                        d10 = Double.parseDouble(this.f9537m);
                        if (this.f9514e && (Double.isNaN(d10) || Double.isInfinite(d10))) {
                            throw new s("JSON forbids NaN and infinities: " + d10 + " at path " + getPath());
                        }
                        this.f9537m = null;
                        this.f9534j = 0;
                        int[] r22 = this.f9513d;
                        int r32 = this.f9510a - 1;
                        r22[r32] = r22[r32] + 1;
                        return d10;
                    }
                    strJ = J();
                }
                strJ = F(hVar);
            }
            d10 = Double.parseDouble(this.f9537m);
            if (this.f9514e) {
            }
            this.f9537m = null;
            this.f9534j = 0;
            int[] r222 = this.f9513d;
            int r322 = this.f9510a - 1;
            r222[r322] = r222[r322] + 1;
            return d10;
        } catch (NumberFormatException unused) {
            throw new r("Expected a double but was " + this.f9537m + " at path " + getPath());
        }
        this.f9537m = strJ;
        this.f9534j = 11;
    }

    @Override // l8.u
    public final int g() throws IOException, NumberFormatException {
        int r02 = this.f9534j;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 16) {
            long j10 = this.f9535k;
            int r52 = (int) j10;
            if (j10 == r52) {
                this.f9534j = 0;
                int[] r03 = this.f9513d;
                int r12 = this.f9510a - 1;
                r03[r12] = r03[r12] + 1;
                return r52;
            }
            throw new r("Expected an int but was " + this.f9535k + " at path " + getPath());
        }
        if (r02 == 17) {
            this.f9537m = this.f9533h.s(this.f9536l);
        } else if (r02 == 9 || r02 == 8) {
            String strF = F(r02 == 9 ? f9528p : f9527n);
            this.f9537m = strF;
            try {
                int r04 = Integer.parseInt(strF);
                this.f9534j = 0;
                int[] r13 = this.f9513d;
                int r6 = this.f9510a - 1;
                r13[r6] = r13[r6] + 1;
                return r04;
            } catch (NumberFormatException unused) {
            }
        } else if (r02 != 11) {
            throw new r("Expected an int but was " + k() + " at path " + getPath());
        }
        this.f9534j = 11;
        try {
            double d10 = Double.parseDouble(this.f9537m);
            int r53 = (int) d10;
            if (r53 != d10) {
                throw new r("Expected an int but was " + this.f9537m + " at path " + getPath());
            }
            this.f9537m = null;
            this.f9534j = 0;
            int[] r05 = this.f9513d;
            int r14 = this.f9510a - 1;
            r05[r14] = r05[r14] + 1;
            return r53;
        } catch (NumberFormatException unused2) {
            throw new r("Expected an int but was " + this.f9537m + " at path " + getPath());
        }
    }

    @Override // l8.u
    public final void i() throws IOException {
        int r02 = this.f9534j;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 7) {
            this.f9534j = 0;
            int[] r03 = this.f9513d;
            int r12 = this.f9510a - 1;
            r03[r12] = r03[r12] + 1;
            return;
        }
        throw new r("Expected null but was " + k() + " at path " + getPath());
    }

    @Override // l8.u
    public final String j() throws IOException {
        String strS;
        ed.h hVar;
        int r02 = this.f9534j;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 10) {
            strS = J();
        } else {
            if (r02 == 9) {
                hVar = f9528p;
            } else if (r02 == 8) {
                hVar = f9527n;
            } else if (r02 == 11) {
                strS = this.f9537m;
                this.f9537m = null;
            } else if (r02 == 16) {
                strS = Long.toString(this.f9535k);
            } else {
                if (r02 != 17) {
                    throw new r("Expected a string but was " + k() + " at path " + getPath());
                }
                strS = this.f9533h.s(this.f9536l);
            }
            strS = F(hVar);
        }
        this.f9534j = 0;
        int[] r12 = this.f9513d;
        int r22 = this.f9510a - 1;
        r12[r22] = r12[r22] + 1;
        return strS;
    }

    @Override // l8.u
    public final u.b k() throws IOException {
        int r02 = this.f9534j;
        if (r02 == 0) {
            r02 = s();
        }
        switch (r02) {
            case 1:
                return u.b.BEGIN_OBJECT;
            case 2:
                return u.b.END_OBJECT;
            case 3:
                return u.b.BEGIN_ARRAY;
            case 4:
                return u.b.END_ARRAY;
            case 5:
            case 6:
                return u.b.BOOLEAN;
            case 7:
                return u.b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return u.b.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return u.b.NAME;
            case 16:
            case 17:
                return u.b.NUMBER;
            case 18:
                return u.b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    @Override // l8.u
    public final int n(u.a aVar) throws IOException {
        int r02 = this.f9534j;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 < 12 || r02 > 15) {
            return -1;
        }
        if (r02 == 15) {
            return t(this.f9537m, aVar);
        }
        int r03 = this.f9532g.h0(aVar.f9516b);
        if (r03 != -1) {
            this.f9534j = 0;
            this.f9512c[this.f9510a - 1] = aVar.f9515a[r03];
            return r03;
        }
        String str = this.f9512c[this.f9510a - 1];
        String strB = B();
        int r52 = t(strB, aVar);
        if (r52 == -1) {
            this.f9534j = 15;
            this.f9537m = strB;
            this.f9512c[this.f9510a - 1] = str;
        }
        return r52;
    }

    @Override // l8.u
    public final void o() throws IOException {
        ed.h hVar;
        if (this.f) {
            throw new r("Cannot skip unexpected " + k() + " at " + getPath());
        }
        int r02 = this.f9534j;
        if (r02 == 0) {
            r02 = s();
        }
        if (r02 == 14) {
            long jH = this.f9532g.H(f9529q);
            ed.e eVar = this.f9533h;
            if (jH == -1) {
                jH = eVar.f5304b;
            }
            eVar.skip(jH);
        } else {
            if (r02 == 13) {
                hVar = f9528p;
            } else if (r02 == 12) {
                hVar = f9527n;
            } else if (r02 != 15) {
                throw new r("Expected a name but was " + k() + " at path " + getPath());
            }
            P(hVar);
        }
        this.f9534j = 0;
        this.f9512c[this.f9510a - 1] = "null";
    }

    @Override // l8.u
    public final void p() throws IOException {
        ed.h hVar;
        if (this.f) {
            throw new r("Cannot skip unexpected " + k() + " at " + getPath());
        }
        int r12 = 0;
        do {
            int r22 = this.f9534j;
            if (r22 == 0) {
                r22 = s();
            }
            if (r22 == 3) {
                m(1);
            } else if (r22 == 1) {
                m(3);
            } else {
                if (r22 == 4 || r22 == 2) {
                    this.f9510a--;
                    r12--;
                } else {
                    ed.e eVar = this.f9533h;
                    if (r22 == 14 || r22 == 10) {
                        long jH = this.f9532g.H(f9529q);
                        if (jH == -1) {
                            jH = eVar.f5304b;
                        }
                        eVar.skip(jH);
                    } else {
                        if (r22 == 9 || r22 == 13) {
                            hVar = f9528p;
                        } else if (r22 == 8 || r22 == 12) {
                            hVar = f9527n;
                        } else if (r22 == 17) {
                            eVar.skip(this.f9536l);
                        }
                        P(hVar);
                    }
                }
                this.f9534j = 0;
            }
            r12++;
            this.f9534j = 0;
        } while (r12 != 0);
        int[] r02 = this.f9513d;
        int r13 = this.f9510a;
        int r23 = r13 - 1;
        r02[r23] = r02[r23] + 1;
        this.f9512c[r13 - 1] = "null";
    }

    public final void r() throws IOException {
        if (this.f9514e) {
            return;
        }
        q("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:136:0x01a6, code lost:
    
        if (y(r13) != false) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x01a8, code lost:
    
        if (r6 != 2) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x01aa, code lost:
    
        if (r10 == false) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x01b0, code lost:
    
        if (r1 != Long.MIN_VALUE) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x01b2, code lost:
    
        if (r9 == false) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01b8, code lost:
    
        if (r1 != 0) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x01ba, code lost:
    
        if (r9 != false) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x01bc, code lost:
    
        if (r9 == false) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x01bf, code lost:
    
        r1 = -r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x01c0, code lost:
    
        r18.f9535k = r1;
        r7.skip(r3);
        r9 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x01cb, code lost:
    
        if (r6 == 2) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x01ce, code lost:
    
        if (r6 == 4) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x01d1, code lost:
    
        if (r6 != 7) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x01d3, code lost:
    
        r18.f9536l = r3;
        r9 = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x01d9, code lost:
    
        r18.f9534j = r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0200 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0128 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int s() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l8.v.s():int");
    }

    public final int t(String str, u.a aVar) {
        int length = aVar.f9515a.length;
        for (int r22 = 0; r22 < length; r22++) {
            if (str.equals(aVar.f9515a[r22])) {
                this.f9534j = 0;
                this.f9512c[this.f9510a - 1] = str;
                return r22;
            }
        }
        return -1;
    }

    public final String toString() {
        return "JsonReader(" + this.f9532g + ")";
    }

    public final int v(String str, u.a aVar) {
        int length = aVar.f9515a.length;
        for (int r22 = 0; r22 < length; r22++) {
            if (str.equals(aVar.f9515a[r22])) {
                this.f9534j = 0;
                int[] r52 = this.f9513d;
                int r6 = this.f9510a - 1;
                r52[r6] = r52[r6] + 1;
                return r22;
            }
        }
        return -1;
    }

    public final boolean y(int r22) throws IOException {
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
        return false;
    }
}
