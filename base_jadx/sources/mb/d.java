package mb;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import net.sf.scuba.smartcards.ISOFileInfo;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: c, reason: collision with root package name */
    public int f10263c;

    /* renamed from: e, reason: collision with root package name */
    public final InputStream f10265e;
    public int f;

    /* renamed from: i, reason: collision with root package name */
    public int f10268i;

    /* renamed from: h, reason: collision with root package name */
    public int f10267h = Integer.MAX_VALUE;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f10261a = new byte[4096];

    /* renamed from: b, reason: collision with root package name */
    public int f10262b = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f10264d = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f10266g = 0;

    public d(InputStream inputStream) {
        this.f10265e = inputStream;
    }

    public final void a(int r22) throws j {
        if (this.f != r22) {
            throw new j("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final int b() {
        int r02 = this.f10267h;
        if (r02 == Integer.MAX_VALUE) {
            return -1;
        }
        return r02 - (this.f10266g + this.f10264d);
    }

    public final void c(int r12) {
        this.f10267h = r12;
        o();
    }

    public final int d(int r32) throws j {
        if (r32 < 0) {
            throw new j("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int r02 = this.f10266g + this.f10264d + r32;
        int r33 = this.f10267h;
        if (r02 > r33) {
            throw j.b();
        }
        this.f10267h = r02;
        o();
        return r33;
    }

    public final o e() throws IOException {
        int r02 = k();
        int r12 = this.f10262b;
        int r22 = this.f10264d;
        if (r02 > r12 - r22 || r02 <= 0) {
            return r02 == 0 ? c.f10255a : new o(h(r02));
        }
        o oVar = c.f10255a;
        byte[] bArr = new byte[r02];
        System.arraycopy(this.f10261a, r22, bArr, 0, r02);
        o oVar2 = new o(bArr);
        this.f10264d += r02;
        return oVar2;
    }

    public final int f() throws IOException {
        return k();
    }

    public final p g(b bVar, f fVar) throws IOException {
        int r02 = k();
        if (this.f10268i >= 64) {
            throw new j("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int r03 = d(r02);
        this.f10268i++;
        p pVar = (p) bVar.a(this, fVar);
        a(0);
        this.f10268i--;
        c(r03);
        return pVar;
    }

    public final byte[] h(int r14) throws IOException {
        if (r14 <= 0) {
            if (r14 == 0) {
                return i.f10297a;
            }
            throw new j("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int r02 = this.f10266g;
        int r12 = this.f10264d;
        int r22 = r02 + r12 + r14;
        int r32 = this.f10267h;
        if (r22 > r32) {
            r((r32 - r02) - r12);
            throw j.b();
        }
        byte[] bArr = this.f10261a;
        if (r14 < 4096) {
            byte[] bArr2 = new byte[r14];
            int r33 = this.f10262b - r12;
            System.arraycopy(bArr, r12, bArr2, 0, r33);
            int r13 = this.f10262b;
            this.f10264d = r13;
            int r142 = r14 - r33;
            if (r13 - r13 < r142) {
                p(r142);
            }
            System.arraycopy(bArr, 0, bArr2, r33, r142);
            this.f10264d = r142;
            return bArr2;
        }
        int r52 = this.f10262b;
        this.f10266g = r02 + r52;
        this.f10264d = 0;
        this.f10262b = 0;
        int length = r52 - r12;
        int r03 = r14 - length;
        ArrayList arrayList = new ArrayList();
        while (r03 > 0) {
            int r72 = Math.min(r03, 4096);
            byte[] bArr3 = new byte[r72];
            int r92 = 0;
            while (r92 < r72) {
                InputStream inputStream = this.f10265e;
                int r11 = inputStream == null ? -1 : inputStream.read(bArr3, r92, r72 - r92);
                if (r11 == -1) {
                    throw j.b();
                }
                this.f10266g += r11;
                r92 += r11;
            }
            r03 -= r72;
            arrayList.add(bArr3);
        }
        byte[] bArr4 = new byte[r14];
        System.arraycopy(bArr, r12, bArr4, 0, length);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            byte[] bArr5 = (byte[]) it.next();
            System.arraycopy(bArr5, 0, bArr4, length, bArr5.length);
            length += bArr5.length;
        }
        return bArr4;
    }

    public final int i() throws IOException {
        int r02 = this.f10264d;
        if (this.f10262b - r02 < 4) {
            p(4);
            r02 = this.f10264d;
        }
        this.f10264d = r02 + 4;
        byte[] bArr = this.f10261a;
        return ((bArr[r02 + 3] & 255) << 24) | (bArr[r02] & 255) | ((bArr[r02 + 1] & 255) << 8) | ((bArr[r02 + 2] & 255) << 16);
    }

    public final long j() throws IOException {
        int r02 = this.f10264d;
        if (this.f10262b - r02 < 8) {
            p(8);
            r02 = this.f10264d;
        }
        this.f10264d = r02 + 8;
        byte[] bArr = this.f10261a;
        return ((bArr[r02 + 7] & 255) << 56) | (bArr[r02] & 255) | ((bArr[r02 + 1] & 255) << 8) | ((bArr[r02 + 2] & 255) << 16) | ((bArr[r02 + 3] & 255) << 24) | ((bArr[r02 + 4] & 255) << 32) | ((bArr[r02 + 5] & 255) << 40) | ((bArr[r02 + 6] & 255) << 48);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
    
        if (r3[r2] < 0) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int k() throws java.io.IOException {
        /*
            r8 = this;
            int r0 = r8.f10264d
            int r1 = r8.f10262b
            if (r1 != r0) goto L8
            goto L7b
        L8:
            int r2 = r0 + 1
            byte[] r3 = r8.f10261a
            r0 = r3[r0]
            if (r0 < 0) goto L13
            r8.f10264d = r2
            return r0
        L13:
            int r1 = r1 - r2
            r4 = 9
            if (r1 >= r4) goto L19
            goto L7b
        L19:
            int r1 = r2 + 1
            r2 = r3[r2]
            int r2 = r2 << 7
            r0 = r0 ^ r2
            long r4 = (long) r0
            r6 = 0
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 >= 0) goto L2c
            r2 = -128(0xffffffffffffff80, double:NaN)
        L29:
            long r2 = r2 ^ r4
            int r0 = (int) r2
            goto L81
        L2c:
            int r2 = r1 + 1
            r1 = r3[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            long r4 = (long) r0
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 < 0) goto L3e
            r0 = 16256(0x3f80, double:8.0315E-320)
            long r0 = r0 ^ r4
            int r0 = (int) r0
        L3c:
            r1 = r2
            goto L81
        L3e:
            int r1 = r2 + 1
            r2 = r3[r2]
            int r2 = r2 << 21
            r0 = r0 ^ r2
            long r4 = (long) r0
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 >= 0) goto L4e
            r2 = -2080896(0xffffffffffe03f80, double:NaN)
            goto L29
        L4e:
            int r2 = r1 + 1
            r1 = r3[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            long r4 = (long) r0
            r6 = 266354560(0xfe03f80, double:1.315966377E-315)
            long r4 = r4 ^ r6
            int r0 = (int) r4
            if (r1 >= 0) goto L3c
            int r1 = r2 + 1
            r2 = r3[r2]
            if (r2 >= 0) goto L81
            int r2 = r1 + 1
            r1 = r3[r1]
            if (r1 >= 0) goto L3c
            int r1 = r2 + 1
            r2 = r3[r2]
            if (r2 >= 0) goto L81
            int r2 = r1 + 1
            r1 = r3[r1]
            if (r1 >= 0) goto L3c
            int r1 = r2 + 1
            r2 = r3[r2]
            if (r2 >= 0) goto L81
        L7b:
            long r0 = r8.m()
            int r1 = (int) r0
            return r1
        L81:
            r8.f10264d = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mb.d.k():int");
    }

    public final long l() throws IOException {
        long j10;
        long j11;
        long j12;
        long j13;
        int r02 = this.f10264d;
        int r12 = this.f10262b;
        if (r12 != r02) {
            int r22 = r02 + 1;
            byte[] bArr = this.f10261a;
            byte b10 = bArr[r02];
            if (b10 >= 0) {
                this.f10264d = r22;
                return b10;
            }
            if (r12 - r22 >= 9) {
                int r13 = r22 + 1;
                long j14 = b10 ^ (bArr[r22] << 7);
                if (j14 < 0) {
                    j11 = (-128) ^ j14;
                } else {
                    int r03 = r13 + 1;
                    long j15 = (bArr[r13] << 14) ^ j14;
                    if (j15 >= 0) {
                        j11 = j15 ^ 16256;
                        r13 = r03;
                    } else {
                        int r42 = r03 + 1;
                        long j16 = j15 ^ (bArr[r03] << 21);
                        if (j16 < 0) {
                            j12 = -2080896;
                        } else {
                            int r23 = r42 + 1;
                            long j17 = j16 ^ (bArr[r42] << 28);
                            if (j17 >= 0) {
                                j13 = 266354560;
                            } else {
                                r42 = r23 + 1;
                                j16 = j17 ^ (bArr[r23] << 35);
                                if (j16 < 0) {
                                    j12 = -34093383808L;
                                } else {
                                    r23 = r42 + 1;
                                    j17 = j16 ^ (bArr[r42] << 42);
                                    if (j17 >= 0) {
                                        j13 = 4363953127296L;
                                    } else {
                                        r42 = r23 + 1;
                                        j16 = j17 ^ (bArr[r23] << 49);
                                        if (j16 < 0) {
                                            j12 = -558586000294016L;
                                        } else {
                                            r23 = r42 + 1;
                                            j10 = (j16 ^ (bArr[r42] << 56)) ^ 71499008037633920L;
                                            if (j10 < 0) {
                                                r42 = r23 + 1;
                                                if (bArr[r23] >= 0) {
                                                    j11 = j10;
                                                    r13 = r42;
                                                }
                                            }
                                            r13 = r23;
                                            j11 = j10;
                                        }
                                    }
                                }
                            }
                            j10 = j17 ^ j13;
                            r13 = r23;
                            j11 = j10;
                        }
                        j11 = j12 ^ j16;
                        r13 = r42;
                    }
                }
                this.f10264d = r13;
                return j11;
            }
        }
        return m();
    }

    public final long m() throws IOException {
        long j10 = 0;
        for (int r22 = 0; r22 < 64; r22 += 7) {
            if (this.f10264d == this.f10262b) {
                p(1);
            }
            int r32 = this.f10264d;
            this.f10264d = r32 + 1;
            j10 |= (r3 & 127) << r22;
            if ((this.f10261a[r32] & ISOFileInfo.DATA_BYTES1) == 0) {
                return j10;
            }
        }
        throw new j("CodedInputStream encountered a malformed varint.");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int n() throws java.io.IOException {
        /*
            r3 = this;
            int r0 = r3.f10264d
            int r1 = r3.f10262b
            r2 = 0
            if (r0 != r1) goto Lf
            r0 = 1
            boolean r1 = r3.s(r0)
            if (r1 != 0) goto Lf
            goto L10
        Lf:
            r0 = 0
        L10:
            if (r0 == 0) goto L15
            r3.f = r2
            return r2
        L15:
            int r0 = r3.k()
            r3.f = r0
            int r1 = r0 >>> 3
            if (r1 == 0) goto L20
            return r0
        L20:
            mb.j r0 = new mb.j
            java.lang.String r1 = "Protocol message contained an invalid tag (zero)."
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mb.d.n():int");
    }

    public final void o() {
        int r02 = this.f10262b + this.f10263c;
        this.f10262b = r02;
        int r12 = this.f10266g + r02;
        int r22 = this.f10267h;
        if (r12 <= r22) {
            this.f10263c = 0;
            return;
        }
        int r13 = r12 - r22;
        this.f10263c = r13;
        this.f10262b = r02 - r13;
    }

    public final void p(int r12) throws IOException {
        if (!s(r12)) {
            throw j.b();
        }
    }

    public final boolean q(int r52, e eVar) throws IOException {
        int r02;
        int r03 = r52 & 7;
        if (r03 == 0) {
            long jL = l();
            eVar.v(r52);
            eVar.w(jL);
            return true;
        }
        if (r03 == 1) {
            long j10 = j();
            eVar.v(r52);
            eVar.u(j10);
            return true;
        }
        if (r03 == 2) {
            o oVarE = e();
            eVar.v(r52);
            eVar.v(oVarE.size());
            eVar.r(oVarE);
            return true;
        }
        if (r03 != 3) {
            if (r03 == 4) {
                return false;
            }
            if (r03 != 5) {
                throw new j("Protocol message tag had invalid wire type.");
            }
            int i10 = i();
            eVar.v(r52);
            eVar.t(i10);
            return true;
        }
        eVar.v(r52);
        do {
            r02 = n();
            if (r02 == 0) {
                break;
            }
        } while (q(r02, eVar));
        int r53 = ((r52 >>> 3) << 3) | 4;
        a(r53);
        eVar.v(r53);
        return true;
    }

    public final void r(int r72) throws IOException {
        int r02 = this.f10262b;
        int r12 = this.f10264d;
        int r22 = r02 - r12;
        if (r72 <= r22 && r72 >= 0) {
            this.f10264d = r12 + r72;
            return;
        }
        if (r72 < 0) {
            throw new j("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int r32 = this.f10266g;
        int r42 = r32 + r12 + r72;
        int r52 = this.f10267h;
        if (r42 > r52) {
            r((r52 - r32) - r12);
            throw j.b();
        }
        this.f10264d = r02;
        while (true) {
            p(1);
            int r03 = r72 - r22;
            int r13 = this.f10262b;
            if (r03 <= r13) {
                this.f10264d = r03;
                return;
            } else {
                r22 += r13;
                this.f10264d = r13;
            }
        }
    }

    public final boolean s(int r6) throws IOException {
        InputStream inputStream;
        int r02 = this.f10264d;
        int r12 = r02 + r6;
        int r22 = this.f10262b;
        if (r12 <= r22) {
            StringBuilder sb2 = new StringBuilder(77);
            sb2.append("refillBuffer() called when ");
            sb2.append(r6);
            sb2.append(" bytes were already available in buffer");
            throw new IllegalStateException(sb2.toString());
        }
        if (this.f10266g + r02 + r6 <= this.f10267h && (inputStream = this.f10265e) != null) {
            byte[] bArr = this.f10261a;
            if (r02 > 0) {
                if (r22 > r02) {
                    System.arraycopy(bArr, r02, bArr, 0, r22 - r02);
                }
                this.f10266g += r02;
                this.f10262b -= r02;
                this.f10264d = 0;
            }
            int r03 = this.f10262b;
            int r04 = inputStream.read(bArr, r03, bArr.length - r03);
            if (r04 == 0 || r04 < -1 || r04 > bArr.length) {
                StringBuilder sb3 = new StringBuilder(102);
                sb3.append("InputStream#read(byte[]) returned invalid result: ");
                sb3.append(r04);
                sb3.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb3.toString());
            }
            if (r04 > 0) {
                this.f10262b += r04;
                if ((this.f10266g + r6) - 67108864 > 0) {
                    throw new j("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
                }
                o();
                if (this.f10262b >= r6) {
                    return true;
                }
                return s(r6);
            }
        }
        return false;
    }
}
