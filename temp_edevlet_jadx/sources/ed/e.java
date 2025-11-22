package ed;

import androidx.core.location.LocationRequestCompat;
import androidx.work.WorkRequest;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes2.dex */
public final class e implements g, f, Cloneable, ByteChannel {

    /* renamed from: a, reason: collision with root package name */
    public e0 f5303a;

    /* renamed from: b, reason: collision with root package name */
    public long f5304b;

    @Override // ed.g
    public final long A(h0 h0Var) throws IOException {
        long j10 = this.f5304b;
        if (j10 > 0) {
            h0Var.M(this, j10);
        }
        return j10;
    }

    public final e0 B(int r42) {
        if (!(r42 >= 1 && r42 <= 8192)) {
            throw new IllegalArgumentException("unexpected capacity".toString());
        }
        e0 e0Var = this.f5303a;
        if (e0Var == null) {
            e0 e0VarB = f0.b();
            this.f5303a = e0VarB;
            e0VarB.f5310g = e0VarB;
            e0VarB.f = e0VarB;
            return e0VarB;
        }
        e0 e0Var2 = e0Var.f5310g;
        kotlin.jvm.internal.h.c(e0Var2);
        if (e0Var2.f5307c + r42 <= 8192 && e0Var2.f5309e) {
            return e0Var2;
        }
        e0 e0VarB2 = f0.b();
        e0Var2.b(e0VarB2);
        return e0VarB2;
    }

    @Override // ed.f
    public final /* bridge */ /* synthetic */ f C(h hVar) {
        F(hVar);
        return this;
    }

    public final void F(h byteString) {
        kotlin.jvm.internal.h.f(byteString, "byteString");
        byteString.H(this, byteString.r());
    }

    @Override // ed.g
    public final boolean G(h bytes) {
        kotlin.jvm.internal.h.f(bytes, "bytes");
        byte[] bArr = bytes.f5316a;
        int length = bArr.length;
        if (length < 0 || this.f5304b - 0 < length || bArr.length - 0 < length) {
            return false;
        }
        if (length > 0) {
            int r22 = 0;
            while (true) {
                int r32 = r22 + 1;
                if (f(r22 + 0) != bArr[r22 + 0]) {
                    return false;
                }
                if (r32 >= length) {
                    break;
                }
                r22 = r32;
            }
        }
        return true;
    }

    @Override // ed.g
    public final long H(h targetBytes) {
        kotlin.jvm.internal.h.f(targetBytes, "targetBytes");
        return j(0L, targetBytes);
    }

    @Override // ed.g
    public final boolean I() {
        return this.f5304b == 0;
    }

    public final void J(j0 source) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        while (source.w(this, 8192L) != -1) {
        }
    }

    @Override // ed.h0
    public final void M(e source, long j10) {
        int r72;
        e0 e0VarB;
        kotlin.jvm.internal.h.f(source, "source");
        if (!(source != this)) {
            throw new IllegalArgumentException("source == this".toString());
        }
        a6.a.g(source.f5304b, 0L, j10);
        while (j10 > 0) {
            e0 e0Var = source.f5303a;
            kotlin.jvm.internal.h.c(e0Var);
            int r22 = e0Var.f5307c;
            kotlin.jvm.internal.h.c(source.f5303a);
            if (j10 < r22 - r3.f5306b) {
                e0 e0Var2 = this.f5303a;
                e0 e0Var3 = e0Var2 != null ? e0Var2.f5310g : null;
                if (e0Var3 != null && e0Var3.f5309e) {
                    if ((e0Var3.f5307c + j10) - (e0Var3.f5308d ? 0 : e0Var3.f5306b) <= 8192) {
                        e0 e0Var4 = source.f5303a;
                        kotlin.jvm.internal.h.c(e0Var4);
                        e0Var4.d(e0Var3, (int) j10);
                        source.f5304b -= j10;
                        this.f5304b += j10;
                        return;
                    }
                }
                e0 e0Var5 = source.f5303a;
                kotlin.jvm.internal.h.c(e0Var5);
                int r32 = (int) j10;
                if (!(r32 > 0 && r32 <= e0Var5.f5307c - e0Var5.f5306b)) {
                    throw new IllegalArgumentException("byteCount out of range".toString());
                }
                if (r32 >= 1024) {
                    e0VarB = e0Var5.c();
                } else {
                    e0VarB = f0.b();
                    int r52 = e0Var5.f5306b;
                    m9.i.h0(0, e0Var5.f5305a, r52, e0VarB.f5305a, r52 + r32);
                }
                e0VarB.f5307c = e0VarB.f5306b + r32;
                e0Var5.f5306b += r32;
                e0 e0Var6 = e0Var5.f5310g;
                kotlin.jvm.internal.h.c(e0Var6);
                e0Var6.b(e0VarB);
                source.f5303a = e0VarB;
            }
            e0 e0Var7 = source.f5303a;
            kotlin.jvm.internal.h.c(e0Var7);
            long j11 = e0Var7.f5307c - e0Var7.f5306b;
            source.f5303a = e0Var7.a();
            e0 e0Var8 = this.f5303a;
            if (e0Var8 == null) {
                this.f5303a = e0Var7;
                e0Var7.f5310g = e0Var7;
                e0Var7.f = e0Var7;
            } else {
                e0 e0Var9 = e0Var8.f5310g;
                kotlin.jvm.internal.h.c(e0Var9);
                e0Var9.b(e0Var7);
                e0 e0Var10 = e0Var7.f5310g;
                if (!(e0Var10 != e0Var7)) {
                    throw new IllegalStateException("cannot compact".toString());
                }
                kotlin.jvm.internal.h.c(e0Var10);
                if (e0Var10.f5309e) {
                    int r53 = e0Var7.f5307c - e0Var7.f5306b;
                    e0 e0Var11 = e0Var7.f5310g;
                    kotlin.jvm.internal.h.c(e0Var11);
                    int r6 = 8192 - e0Var11.f5307c;
                    e0 e0Var12 = e0Var7.f5310g;
                    kotlin.jvm.internal.h.c(e0Var12);
                    if (e0Var12.f5308d) {
                        r72 = 0;
                    } else {
                        e0 e0Var13 = e0Var7.f5310g;
                        kotlin.jvm.internal.h.c(e0Var13);
                        r72 = e0Var13.f5306b;
                    }
                    if (r53 <= r6 + r72) {
                        e0 e0Var14 = e0Var7.f5310g;
                        kotlin.jvm.internal.h.c(e0Var14);
                        e0Var7.d(e0Var14, r53);
                        e0Var7.a();
                        f0.a(e0Var7);
                    }
                }
            }
            source.f5304b -= j11;
            this.f5304b += j11;
            j10 -= j11;
        }
    }

    @Override // ed.g
    public final String N(long j10) throws EOFException {
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "limit < 0: ").toString());
        }
        long j11 = LocationRequestCompat.PASSIVE_INTERVAL;
        if (j10 != LocationRequestCompat.PASSIVE_INTERVAL) {
            j11 = j10 + 1;
        }
        byte b10 = (byte) 10;
        long jG = g(b10, 0L, j11);
        if (jG != -1) {
            return fd.k.b(this, jG);
        }
        if (j11 < this.f5304b && f(j11 - 1) == ((byte) 13) && f(j11) == b10) {
            return fd.k.b(this, j11);
        }
        e eVar = new e();
        e(0L, Math.min(32, this.f5304b), eVar);
        throw new EOFException("\\n not found: limit=" + Math.min(this.f5304b, j10) + " content=" + eVar.n().t() + (char) 8230);
    }

    public final void O(int r52) {
        e0 e0VarB = B(1);
        int r12 = e0VarB.f5307c;
        e0VarB.f5307c = r12 + 1;
        e0VarB.f5305a[r12] = (byte) r52;
        this.f5304b++;
    }

    @Override // ed.f
    /* renamed from: P, reason: merged with bridge method [inline-methods] */
    public final e m0(long j10) {
        boolean z10;
        byte[] bArr;
        if (j10 == 0) {
            O(48);
        } else {
            int r32 = 1;
            if (j10 < 0) {
                j10 = -j10;
                if (j10 < 0) {
                    i0("-9223372036854775808");
                } else {
                    z10 = true;
                }
            } else {
                z10 = false;
            }
            if (j10 >= 100000000) {
                r32 = j10 < 1000000000000L ? j10 < 10000000000L ? j10 < 1000000000 ? 9 : 10 : j10 < 100000000000L ? 11 : 12 : j10 < 1000000000000000L ? j10 < 10000000000000L ? 13 : j10 < 100000000000000L ? 14 : 15 : j10 < 100000000000000000L ? j10 < 10000000000000000L ? 16 : 17 : j10 < 1000000000000000000L ? 18 : 19;
            } else if (j10 >= WorkRequest.MIN_BACKOFF_MILLIS) {
                r32 = j10 < 1000000 ? j10 < 100000 ? 5 : 6 : j10 < 10000000 ? 7 : 8;
            } else if (j10 >= 100) {
                r32 = j10 < 1000 ? 3 : 4;
            } else if (j10 >= 10) {
                r32 = 2;
            }
            if (z10) {
                r32++;
            }
            e0 e0VarB = B(r32);
            int r52 = e0VarB.f5307c + r32;
            while (true) {
                bArr = e0VarB.f5305a;
                if (j10 == 0) {
                    break;
                }
                long j11 = 10;
                r52--;
                bArr[r52] = fd.k.f5612a[(int) (j10 % j11)];
                j10 /= j11;
            }
            if (z10) {
                bArr[r52 - 1] = (byte) 45;
            }
            e0VarB.f5307c += r32;
            this.f5304b += r32;
        }
        return this;
    }

    @Override // ed.f
    public final /* bridge */ /* synthetic */ f S(String str) {
        i0(str);
        return this;
    }

    @Override // ed.f
    public final /* bridge */ /* synthetic */ f U(long j10) {
        W(j10);
        return this;
    }

    public final e W(long j10) {
        if (j10 == 0) {
            O(48);
        } else {
            long j11 = (j10 >>> 1) | j10;
            long j12 = j11 | (j11 >>> 2);
            long j13 = j12 | (j12 >>> 4);
            long j14 = j13 | (j13 >>> 8);
            long j15 = j14 | (j14 >>> 16);
            long j16 = j15 | (j15 >>> 32);
            long j17 = j16 - ((j16 >>> 1) & 6148914691236517205L);
            long j18 = ((j17 >>> 2) & 3689348814741910323L) + (j17 & 3689348814741910323L);
            long j19 = ((j18 >>> 4) + j18) & 1085102592571150095L;
            long j20 = j19 + (j19 >>> 8);
            long j21 = j20 + (j20 >>> 16);
            int r12 = (int) ((((j21 & 63) + ((j21 >>> 32) & 63)) + 3) / 4);
            e0 e0VarB = B(r12);
            int r32 = e0VarB.f5307c;
            for (int r52 = (r32 + r12) - 1; r52 >= r32; r52--) {
                e0VarB.f5305a[r52] = fd.k.f5612a[(int) (15 & j10)];
                j10 >>>= 4;
            }
            e0VarB.f5307c += r12;
            this.f5304b += r12;
        }
        return this;
    }

    @Override // ed.f
    public final /* bridge */ /* synthetic */ f X(int r12, int r22, String str) {
        e0(r12, r22, str);
        return this;
    }

    @Override // ed.g
    public final boolean Y(long j10) {
        return this.f5304b >= j10;
    }

    @Override // ed.g
    public final String a0() throws EOFException {
        return N(LocationRequestCompat.PASSIVE_INTERVAL);
    }

    public final void b() throws EOFException {
        skip(this.f5304b);
    }

    @Override // ed.g
    public final int b0() throws EOFException {
        int r02 = readInt();
        return ((r02 & 255) << 24) | (((-16777216) & r02) >>> 24) | ((16711680 & r02) >>> 8) | ((65280 & r02) << 8);
    }

    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final e clone() {
        e eVar = new e();
        if (this.f5304b != 0) {
            e0 e0Var = this.f5303a;
            kotlin.jvm.internal.h.c(e0Var);
            e0 e0VarC = e0Var.c();
            eVar.f5303a = e0VarC;
            e0VarC.f5310g = e0VarC;
            e0VarC.f = e0VarC;
            for (e0 e0Var2 = e0Var.f; e0Var2 != e0Var; e0Var2 = e0Var2.f) {
                e0 e0Var3 = e0VarC.f5310g;
                kotlin.jvm.internal.h.c(e0Var3);
                kotlin.jvm.internal.h.c(e0Var2);
                e0Var3.b(e0Var2.c());
            }
            eVar.f5304b = this.f5304b;
        }
        return eVar;
    }

    public final void c0(int r6) {
        e0 e0VarB = B(4);
        int r12 = e0VarB.f5307c;
        int r22 = r12 + 1;
        byte[] bArr = e0VarB.f5305a;
        bArr[r12] = (byte) ((r6 >>> 24) & 255);
        int r13 = r22 + 1;
        bArr[r22] = (byte) ((r6 >>> 16) & 255);
        int r23 = r13 + 1;
        bArr[r13] = (byte) ((r6 >>> 8) & 255);
        bArr[r23] = (byte) (r6 & 255);
        e0VarB.f5307c = r23 + 1;
        this.f5304b += 4;
    }

    @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    public final long d() {
        long j10 = this.f5304b;
        if (j10 == 0) {
            return 0L;
        }
        e0 e0Var = this.f5303a;
        kotlin.jvm.internal.h.c(e0Var);
        e0 e0Var2 = e0Var.f5310g;
        kotlin.jvm.internal.h.c(e0Var2);
        if (e0Var2.f5307c < 8192 && e0Var2.f5309e) {
            j10 -= r3 - e0Var2.f5306b;
        }
        return j10;
    }

    public final void d0(int r6) {
        e0 e0VarB = B(2);
        int r12 = e0VarB.f5307c;
        int r22 = r12 + 1;
        byte[] bArr = e0VarB.f5305a;
        bArr[r12] = (byte) ((r6 >>> 8) & 255);
        bArr[r22] = (byte) (r6 & 255);
        e0VarB.f5307c = r22 + 1;
        this.f5304b += 2;
    }

    public final void e(long j10, long j11, e out) {
        kotlin.jvm.internal.h.f(out, "out");
        a6.a.g(this.f5304b, j10, j11);
        if (j11 == 0) {
            return;
        }
        out.f5304b += j11;
        e0 e0Var = this.f5303a;
        while (true) {
            kotlin.jvm.internal.h.c(e0Var);
            long j12 = e0Var.f5307c - e0Var.f5306b;
            if (j10 < j12) {
                break;
            }
            j10 -= j12;
            e0Var = e0Var.f;
        }
        while (j11 > 0) {
            kotlin.jvm.internal.h.c(e0Var);
            e0 e0VarC = e0Var.c();
            int r42 = e0VarC.f5306b + ((int) j10);
            e0VarC.f5306b = r42;
            e0VarC.f5307c = Math.min(r42 + ((int) j11), e0VarC.f5307c);
            e0 e0Var2 = out.f5303a;
            if (e0Var2 == null) {
                e0VarC.f5310g = e0VarC;
                e0VarC.f = e0VarC;
                out.f5303a = e0VarC;
            } else {
                e0 e0Var3 = e0Var2.f5310g;
                kotlin.jvm.internal.h.c(e0Var3);
                e0Var3.b(e0VarC);
            }
            j11 -= e0VarC.f5307c - e0VarC.f5306b;
            e0Var = e0Var.f;
            j10 = 0;
        }
    }

    public final void e0(int r11, int r12, String string) {
        char cCharAt;
        long j10;
        long j11;
        kotlin.jvm.internal.h.f(string, "string");
        if (!(r11 >= 0)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Integer.valueOf(r11), "beginIndex < 0: ").toString());
        }
        if (!(r12 >= r11)) {
            throw new IllegalArgumentException(androidx.constraintlayout.core.a.c("endIndex < beginIndex: ", r12, " < ", r11).toString());
        }
        if (!(r12 <= string.length())) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("endIndex > string.length: ", r12, " > ");
            sbE.append(string.length());
            throw new IllegalArgumentException(sbE.toString().toString());
        }
        while (r11 < r12) {
            char cCharAt2 = string.charAt(r11);
            if (cCharAt2 < 128) {
                e0 e0VarB = B(1);
                int r42 = e0VarB.f5307c - r11;
                int r52 = Math.min(r12, 8192 - r42);
                int r6 = r11 + 1;
                byte[] bArr = e0VarB.f5305a;
                bArr[r11 + r42] = (byte) cCharAt2;
                while (true) {
                    r11 = r6;
                    if (r11 >= r52 || (cCharAt = string.charAt(r11)) >= 128) {
                        break;
                    }
                    r6 = r11 + 1;
                    bArr[r11 + r42] = (byte) cCharAt;
                }
                int r13 = e0VarB.f5307c;
                int r43 = (r42 + r11) - r13;
                e0VarB.f5307c = r13 + r43;
                this.f5304b += r43;
            } else {
                if (cCharAt2 < 2048) {
                    e0 e0VarB2 = B(2);
                    int r53 = e0VarB2.f5307c;
                    byte[] bArr2 = e0VarB2.f5305a;
                    bArr2[r53] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[r53 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    e0VarB2.f5307c = r53 + 2;
                    j10 = this.f5304b;
                    j11 = 2;
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    e0 e0VarB3 = B(3);
                    int r62 = e0VarB3.f5307c;
                    byte b10 = (byte) ((cCharAt2 >> '\f') | BERTags.FLAGS);
                    byte[] bArr3 = e0VarB3.f5305a;
                    bArr3[r62] = b10;
                    bArr3[r62 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[r62 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    e0VarB3.f5307c = r62 + 3;
                    j10 = this.f5304b;
                    j11 = 3;
                } else {
                    int r54 = r11 + 1;
                    char cCharAt3 = r54 < r12 ? string.charAt(r54) : (char) 0;
                    if (cCharAt2 <= 56319) {
                        if (56320 <= cCharAt3 && cCharAt3 <= 57343) {
                            int r14 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                            e0 e0VarB4 = B(4);
                            int r63 = e0VarB4.f5307c;
                            byte[] bArr4 = e0VarB4.f5305a;
                            bArr4[r63] = (byte) ((r14 >> 18) | 240);
                            bArr4[r63 + 1] = (byte) (((r14 >> 12) & 63) | 128);
                            bArr4[r63 + 2] = (byte) (((r14 >> 6) & 63) | 128);
                            bArr4[r63 + 3] = (byte) ((r14 & 63) | 128);
                            e0VarB4.f5307c = r63 + 4;
                            this.f5304b += 4;
                            r11 += 2;
                        }
                    }
                    O(63);
                    r11 = r54;
                }
                this.f5304b = j10 + j11;
                r11++;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof e) {
                long j10 = this.f5304b;
                e eVar = (e) obj;
                if (j10 == eVar.f5304b) {
                    if (j10 != 0) {
                        e0 e0Var = this.f5303a;
                        kotlin.jvm.internal.h.c(e0Var);
                        e0 e0Var2 = eVar.f5303a;
                        kotlin.jvm.internal.h.c(e0Var2);
                        int r52 = e0Var.f5306b;
                        int r6 = e0Var2.f5306b;
                        long j11 = 0;
                        while (j11 < this.f5304b) {
                            long jMin = Math.min(e0Var.f5307c - r52, e0Var2.f5307c - r6);
                            if (0 < jMin) {
                                long j12 = 0;
                                do {
                                    j12++;
                                    int r15 = r52 + 1;
                                    byte b10 = e0Var.f5305a[r52];
                                    int r53 = r6 + 1;
                                    if (b10 == e0Var2.f5305a[r6]) {
                                        r6 = r53;
                                        r52 = r15;
                                    }
                                } while (j12 < jMin);
                            }
                            if (r52 == e0Var.f5307c) {
                                e0 e0Var3 = e0Var.f;
                                kotlin.jvm.internal.h.c(e0Var3);
                                r52 = e0Var3.f5306b;
                                e0Var = e0Var3;
                            }
                            if (r6 == e0Var2.f5307c) {
                                e0Var2 = e0Var2.f;
                                kotlin.jvm.internal.h.c(e0Var2);
                                r6 = e0Var2.f5306b;
                            }
                            j11 += jMin;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final byte f(long j10) {
        a6.a.g(this.f5304b, j10, 1L);
        e0 e0Var = this.f5303a;
        if (e0Var == null) {
            kotlin.jvm.internal.h.c(null);
            throw null;
        }
        long j11 = this.f5304b;
        if (j11 - j10 < j10) {
            while (j11 > j10) {
                e0Var = e0Var.f5310g;
                kotlin.jvm.internal.h.c(e0Var);
                j11 -= e0Var.f5307c - e0Var.f5306b;
            }
            return e0Var.f5305a[(int) ((e0Var.f5306b + j10) - j11)];
        }
        long j12 = 0;
        while (true) {
            int r32 = e0Var.f5307c;
            int r42 = e0Var.f5306b;
            long j13 = (r32 - r42) + j12;
            if (j13 > j10) {
                return e0Var.f5305a[(int) ((r42 + j10) - j12)];
            }
            e0Var = e0Var.f;
            kotlin.jvm.internal.h.c(e0Var);
            j12 = j13;
        }
    }

    @Override // ed.f, ed.h0, java.io.Flushable
    public final void flush() {
    }

    public final long g(byte b10, long j10, long j11) {
        e0 e0Var;
        long j12 = j10;
        boolean z10 = false;
        long j13 = 0;
        if (0 <= j12 && j12 <= j11) {
            z10 = true;
        }
        if (!z10) {
            throw new IllegalArgumentException(("size=" + this.f5304b + " fromIndex=" + j12 + " toIndex=" + j11).toString());
        }
        long j14 = this.f5304b;
        long j15 = j11 > j14 ? j14 : j11;
        if (j12 == j15 || (e0Var = this.f5303a) == null) {
            return -1L;
        }
        if (j14 - j12 < j12) {
            while (j14 > j12) {
                e0Var = e0Var.f5310g;
                kotlin.jvm.internal.h.c(e0Var);
                j14 -= e0Var.f5307c - e0Var.f5306b;
            }
            while (j14 < j15) {
                int r6 = (int) Math.min(e0Var.f5307c, (e0Var.f5306b + j15) - j14);
                for (int r22 = (int) ((e0Var.f5306b + j12) - j14); r22 < r6; r22++) {
                    if (e0Var.f5305a[r22] == b10) {
                        return (r22 - e0Var.f5306b) + j14;
                    }
                }
                j14 += e0Var.f5307c - e0Var.f5306b;
                e0Var = e0Var.f;
                kotlin.jvm.internal.h.c(e0Var);
                j12 = j14;
            }
            return -1L;
        }
        while (true) {
            long j16 = (e0Var.f5307c - e0Var.f5306b) + j13;
            if (j16 > j12) {
                break;
            }
            e0Var = e0Var.f;
            kotlin.jvm.internal.h.c(e0Var);
            j13 = j16;
        }
        while (j13 < j15) {
            int r62 = (int) Math.min(e0Var.f5307c, (e0Var.f5306b + j15) - j13);
            for (int r23 = (int) ((e0Var.f5306b + j12) - j13); r23 < r62; r23++) {
                if (e0Var.f5305a[r23] == b10) {
                    return (r23 - e0Var.f5306b) + j13;
                }
            }
            j13 += e0Var.f5307c - e0Var.f5306b;
            e0Var = e0Var.f;
            kotlin.jvm.internal.h.c(e0Var);
            j12 = j13;
        }
        return -1L;
    }

    @Override // ed.g
    public final long g0() throws EOFException {
        long j10;
        if (this.f5304b < 8) {
            throw new EOFException();
        }
        e0 e0Var = this.f5303a;
        kotlin.jvm.internal.h.c(e0Var);
        int r22 = e0Var.f5306b;
        int r52 = e0Var.f5307c;
        if (r52 - r22 < 8) {
            j10 = ((readInt() & BodyPartID.bodyIdMax) << 32) | (BodyPartID.bodyIdMax & readInt());
        } else {
            byte[] bArr = e0Var.f5305a;
            int r42 = r22 + 1 + 1;
            long j11 = ((bArr[r22] & 255) << 56) | ((bArr[r6] & 255) << 48);
            long j12 = j11 | ((bArr[r42] & 255) << 40);
            long j13 = j12 | ((bArr[r6] & 255) << 32);
            long j14 = j13 | ((bArr[r4] & 255) << 24);
            long j15 = j14 | ((bArr[r6] & 255) << 16);
            long j16 = j15 | ((bArr[r4] & 255) << 8);
            int r43 = r42 + 1 + 1 + 1 + 1 + 1 + 1;
            long j17 = j16 | (bArr[r6] & 255);
            this.f5304b -= 8;
            if (r43 == r52) {
                this.f5303a = e0Var.a();
                f0.a(e0Var);
            } else {
                e0Var.f5306b = r43;
            }
            j10 = j17;
        }
        return ((j10 & 255) << 56) | (((-72057594037927936L) & j10) >>> 56) | ((71776119061217280L & j10) >>> 40) | ((280375465082880L & j10) >>> 24) | ((1095216660480L & j10) >>> 8) | ((4278190080L & j10) << 8) | ((16711680 & j10) << 24) | ((65280 & j10) << 40);
    }

    @Override // ed.g
    public final e getBuffer() {
        return this;
    }

    @Override // ed.j0
    public final k0 h() {
        return k0.f5333d;
    }

    @Override // ed.g
    public final int h0(x options) throws EOFException {
        kotlin.jvm.internal.h.f(options, "options");
        int r02 = fd.k.c(this, options, false);
        if (r02 == -1) {
            return -1;
        }
        skip(options.f5359a[r02].r());
        return r02;
    }

    public final int hashCode() {
        e0 e0Var = this.f5303a;
        if (e0Var == null) {
            return 0;
        }
        int r12 = 1;
        do {
            int r32 = e0Var.f5307c;
            for (int r22 = e0Var.f5306b; r22 < r32; r22++) {
                r12 = (r12 * 31) + e0Var.f5305a[r22];
            }
            e0Var = e0Var.f;
            kotlin.jvm.internal.h.c(e0Var);
        } while (e0Var != this.f5303a);
        return r12;
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:?, code lost:
    
        return r13 + r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long i(long r13, ed.h r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ed.e.i(long, ed.h):long");
    }

    public final void i0(String string) {
        kotlin.jvm.internal.h.f(string, "string");
        e0(0, string.length(), string);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    public final long j(long j10, h targetBytes) {
        e0 e0Var;
        long j11;
        int r32;
        int r33;
        kotlin.jvm.internal.h.f(targetBytes, "targetBytes");
        long j12 = 0;
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "fromIndex < 0: ").toString());
        }
        e0 e0Var2 = this.f5303a;
        if (e0Var2 == null) {
            return -1L;
        }
        long j13 = this.f5304b;
        if (j13 - j10 < j10) {
            while (j13 > j10) {
                e0Var2 = e0Var2.f5310g;
                kotlin.jvm.internal.h.c(e0Var2);
                j13 -= e0Var2.f5307c - e0Var2.f5306b;
            }
            if (targetBytes.r() == 2) {
                byte bX = targetBytes.x(0);
                byte bX2 = targetBytes.x(1);
                long j14 = j10;
                while (j13 < this.f5304b) {
                    r33 = (int) ((e0Var2.f5306b + j14) - j13);
                    int r42 = e0Var2.f5307c;
                    while (r33 < r42) {
                        byte b10 = e0Var2.f5305a[r33];
                        if (b10 != bX && b10 != bX2) {
                            r33++;
                        }
                    }
                    j13 += e0Var2.f5307c - e0Var2.f5306b;
                    e0Var2 = e0Var2.f;
                    kotlin.jvm.internal.h.c(e0Var2);
                    j14 = j13;
                }
                return -1L;
            }
            byte[] bArrW = targetBytes.w();
            long j15 = j10;
            while (j13 < this.f5304b) {
                r33 = (int) ((e0Var2.f5306b + j15) - j13);
                int r43 = e0Var2.f5307c;
                while (r33 < r43) {
                    byte b11 = e0Var2.f5305a[r33];
                    int length = bArrW.length;
                    int r12 = 0;
                    while (r12 < length) {
                        byte b12 = bArrW[r12];
                        r12++;
                        if (b11 == b12) {
                        }
                    }
                    r33++;
                }
                j13 += e0Var2.f5307c - e0Var2.f5306b;
                e0Var2 = e0Var2.f;
                kotlin.jvm.internal.h.c(e0Var2);
                j15 = j13;
            }
            return -1L;
            return (r33 - e0Var2.f5306b) + j13;
        }
        while (true) {
            long j16 = (e0Var2.f5307c - e0Var2.f5306b) + j12;
            if (j16 > j10) {
                break;
            }
            e0Var2 = e0Var2.f;
            kotlin.jvm.internal.h.c(e0Var2);
            j12 = j16;
        }
        if (targetBytes.r() == 2) {
            byte bX3 = targetBytes.x(0);
            byte bX4 = targetBytes.x(1);
            e0Var = e0Var2;
            j11 = j12;
            long j17 = j10;
            while (j11 < this.f5304b) {
                r32 = (int) ((e0Var.f5306b + j17) - j11);
                int r44 = e0Var.f5307c;
                while (r32 < r44) {
                    byte b13 = e0Var.f5305a[r32];
                    if (b13 != bX3 && b13 != bX4) {
                        r32++;
                    }
                }
                j11 += e0Var.f5307c - e0Var.f5306b;
                e0Var = e0Var.f;
                kotlin.jvm.internal.h.c(e0Var);
                j17 = j11;
            }
            return -1L;
        }
        byte[] bArrW2 = targetBytes.w();
        e0Var = e0Var2;
        j11 = j12;
        long j18 = j10;
        while (j11 < this.f5304b) {
            r32 = (int) ((e0Var.f5306b + j18) - j11);
            int r45 = e0Var.f5307c;
            while (r32 < r45) {
                byte b14 = e0Var.f5305a[r32];
                int length2 = bArrW2.length;
                int r122 = 0;
                while (r122 < length2) {
                    byte b15 = bArrW2[r122];
                    r122++;
                    if (b14 == b15) {
                    }
                }
                r32++;
            }
            j11 += e0Var.f5307c - e0Var.f5306b;
            e0Var = e0Var.f;
            kotlin.jvm.internal.h.c(e0Var);
            j18 = j11;
        }
        return -1L;
        return (r32 - e0Var.f5306b) + j11;
    }

    @Override // ed.g
    public final long j0(h bytes) throws IOException {
        kotlin.jvm.internal.h.f(bytes, "bytes");
        return i(0L, bytes);
    }

    public final byte[] k(long j10) throws EOFException {
        int r22 = 0;
        if (!(j10 >= 0 && j10 <= 2147483647L)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "byteCount: ").toString());
        }
        if (this.f5304b < j10) {
            throw new EOFException();
        }
        int r6 = (int) j10;
        byte[] bArr = new byte[r6];
        while (r22 < r6) {
            int r02 = read(bArr, r22, r6 - r22);
            if (r02 == -1) {
                throw new EOFException();
            }
            r22 += r02;
        }
        return bArr;
    }

    @Override // ed.g
    public final void l0(long j10) throws EOFException {
        if (this.f5304b < j10) {
            throw new EOFException();
        }
    }

    public final h n() {
        return z(this.f5304b);
    }

    public final void o0(int r11) {
        String str;
        long j10;
        long j11;
        if (r11 < 128) {
            O(r11);
            return;
        }
        if (r11 < 2048) {
            e0 e0VarB = B(2);
            int r42 = e0VarB.f5307c;
            byte[] bArr = e0VarB.f5305a;
            bArr[r42] = (byte) ((r11 >> 6) | 192);
            bArr[r42 + 1] = (byte) ((r11 & 63) | 128);
            e0VarB.f5307c = r42 + 2;
            j10 = this.f5304b;
            j11 = 2;
        } else {
            int r43 = 0;
            if (55296 <= r11 && r11 <= 57343) {
                O(63);
                return;
            }
            if (r11 < 65536) {
                e0 e0VarB2 = B(3);
                int r22 = e0VarB2.f5307c;
                byte b10 = (byte) ((r11 >> 12) | BERTags.FLAGS);
                byte[] bArr2 = e0VarB2.f5305a;
                bArr2[r22] = b10;
                bArr2[r22 + 1] = (byte) (((r11 >> 6) & 63) | 128);
                bArr2[r22 + 2] = (byte) ((r11 & 63) | 128);
                e0VarB2.f5307c = r22 + 3;
                j10 = this.f5304b;
                j11 = 3;
            } else {
                if (r11 > 1114111) {
                    if (r11 != 0) {
                        char[] cArr = c5.u.f2019h;
                        char[] cArr2 = {cArr[(r11 >> 28) & 15], cArr[(r11 >> 24) & 15], cArr[(r11 >> 20) & 15], cArr[(r11 >> 16) & 15], cArr[(r11 >> 12) & 15], cArr[(r11 >> 8) & 15], cArr[(r11 >> 4) & 15], cArr[r11 & 15]};
                        while (r43 < 8 && cArr2[r43] == '0') {
                            r43++;
                        }
                        if (r43 < 0) {
                            throw new IndexOutOfBoundsException(androidx.appcompat.graphics.drawable.a.f("startIndex: ", r43, ", endIndex: 8, size: 8"));
                        }
                        if (r43 > 8) {
                            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("startIndex: ", r43, " > endIndex: 8"));
                        }
                        str = new String(cArr2, r43, 8 - r43);
                    } else {
                        str = "0";
                    }
                    throw new IllegalArgumentException(kotlin.jvm.internal.h.k(str, "Unexpected code point: 0x"));
                }
                e0 e0VarB3 = B(4);
                int r23 = e0VarB3.f5307c;
                byte[] bArr3 = e0VarB3.f5305a;
                bArr3[r23] = (byte) ((r11 >> 18) | 240);
                bArr3[r23 + 1] = (byte) (((r11 >> 12) & 63) | 128);
                bArr3[r23 + 2] = (byte) (((r11 >> 6) & 63) | 128);
                bArr3[r23 + 3] = (byte) ((r11 & 63) | 128);
                e0VarB3.f5307c = r23 + 4;
                j10 = this.f5304b;
                j11 = 4;
            }
        }
        this.f5304b = j10 + j11;
    }

    public final short p() throws EOFException {
        int r02 = readShort() & HPKE.aead_EXPORT_ONLY;
        return (short) (((r02 & 255) << 8) | ((65280 & r02) >>> 8));
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a8 A[EDGE_INSN: B:44:0x00a8->B:38:0x00a8 BREAK  A[LOOP:0: B:5:0x000c->B:46:?], SYNTHETIC] */
    @Override // ed.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long p0() throws java.io.EOFException {
        /*
            r15 = this;
            long r0 = r15.f5304b
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto Laf
            r0 = 0
            r5 = r2
            r1 = 0
            r4 = 0
        Lc:
            ed.e0 r7 = r15.f5303a
            kotlin.jvm.internal.h.c(r7)
            int r8 = r7.f5306b
            int r9 = r7.f5307c
        L15:
            if (r8 >= r9) goto L94
            byte[] r10 = r7.f5305a
            r10 = r10[r8]
            r11 = 48
            byte r11 = (byte) r11
            if (r10 < r11) goto L28
            r12 = 57
            byte r12 = (byte) r12
            if (r10 > r12) goto L28
            int r11 = r10 - r11
            goto L41
        L28:
            r11 = 97
            byte r11 = (byte) r11
            if (r10 < r11) goto L33
            r12 = 102(0x66, float:1.43E-43)
            byte r12 = (byte) r12
            if (r10 > r12) goto L33
            goto L3d
        L33:
            r11 = 65
            byte r11 = (byte) r11
            if (r10 < r11) goto L6c
            r12 = 70
            byte r12 = (byte) r12
            if (r10 > r12) goto L6c
        L3d:
            int r11 = r10 - r11
            int r11 = r11 + 10
        L41:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r5
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L51
            r10 = 4
            long r5 = r5 << r10
            long r10 = (long) r11
            long r5 = r5 | r10
            int r8 = r8 + 1
            int r1 = r1 + 1
            goto L15
        L51:
            ed.e r0 = new ed.e
            r0.<init>()
            r0.W(r5)
            r0.O(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r0 = r0.r()
            java.lang.String r2 = "Number too large: "
            java.lang.String r0 = kotlin.jvm.internal.h.k(r0, r2)
            r1.<init>(r0)
            throw r1
        L6c:
            r4 = 1
            if (r1 == 0) goto L70
            goto L94
        L70:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            r2 = 2
            char[] r2 = new char[r2]
            char[] r3 = c5.u.f2019h
            int r5 = r10 >> 4
            r5 = r5 & 15
            char r5 = r3[r5]
            r2[r0] = r5
            r0 = r10 & 15
            char r0 = r3[r0]
            r2[r4] = r0
            java.lang.String r0 = new java.lang.String
            r0.<init>(r2)
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.String r0 = kotlin.jvm.internal.h.k(r0, r2)
            r1.<init>(r0)
            throw r1
        L94:
            if (r8 != r9) goto La0
            ed.e0 r8 = r7.a()
            r15.f5303a = r8
            ed.f0.a(r7)
            goto La2
        La0:
            r7.f5306b = r8
        La2:
            if (r4 != 0) goto La8
            ed.e0 r7 = r15.f5303a
            if (r7 != 0) goto Lc
        La8:
            long r2 = r15.f5304b
            long r0 = (long) r1
            long r2 = r2 - r0
            r15.f5304b = r2
            return r5
        Laf:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ed.e.p0():long");
    }

    @Override // ed.g
    public final d0 peek() {
        return v.b(new a0(this));
    }

    public final String q(long j10, Charset charset) throws EOFException {
        kotlin.jvm.internal.h.f(charset, "charset");
        if (!(j10 >= 0 && j10 <= 2147483647L)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "byteCount: ").toString());
        }
        if (this.f5304b < j10) {
            throw new EOFException();
        }
        if (j10 == 0) {
            return "";
        }
        e0 e0Var = this.f5303a;
        kotlin.jvm.internal.h.c(e0Var);
        int r12 = e0Var.f5306b;
        if (r12 + j10 > e0Var.f5307c) {
            return new String(k(j10), charset);
        }
        int r22 = (int) j10;
        String str = new String(e0Var.f5305a, r12, r22, charset);
        int r10 = e0Var.f5306b + r22;
        e0Var.f5306b = r10;
        this.f5304b -= j10;
        if (r10 == e0Var.f5307c) {
            this.f5303a = e0Var.a();
            f0.a(e0Var);
        }
        return str;
    }

    public final String r() {
        return q(this.f5304b, mc.a.f10357a);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer sink) throws IOException {
        kotlin.jvm.internal.h.f(sink, "sink");
        e0 e0Var = this.f5303a;
        if (e0Var == null) {
            return -1;
        }
        int r12 = Math.min(sink.remaining(), e0Var.f5307c - e0Var.f5306b);
        sink.put(e0Var.f5305a, e0Var.f5306b, r12);
        int r72 = e0Var.f5306b + r12;
        e0Var.f5306b = r72;
        this.f5304b -= r12;
        if (r72 == e0Var.f5307c) {
            this.f5303a = e0Var.a();
            f0.a(e0Var);
        }
        return r12;
    }

    public final int read(byte[] sink, int r92, int r10) {
        kotlin.jvm.internal.h.f(sink, "sink");
        a6.a.g(sink.length, r92, r10);
        e0 e0Var = this.f5303a;
        if (e0Var == null) {
            return -1;
        }
        int r102 = Math.min(r10, e0Var.f5307c - e0Var.f5306b);
        int r12 = e0Var.f5306b;
        m9.i.h0(r92, e0Var.f5305a, r12, sink, r12 + r102);
        int r82 = e0Var.f5306b + r102;
        e0Var.f5306b = r82;
        this.f5304b -= r102;
        if (r82 == e0Var.f5307c) {
            this.f5303a = e0Var.a();
            f0.a(e0Var);
        }
        return r102;
    }

    @Override // ed.g
    public final byte readByte() throws EOFException {
        if (this.f5304b == 0) {
            throw new EOFException();
        }
        e0 e0Var = this.f5303a;
        kotlin.jvm.internal.h.c(e0Var);
        int r12 = e0Var.f5306b;
        int r22 = e0Var.f5307c;
        int r32 = r12 + 1;
        byte b10 = e0Var.f5305a[r12];
        this.f5304b--;
        if (r32 == r22) {
            this.f5303a = e0Var.a();
            f0.a(e0Var);
        } else {
            e0Var.f5306b = r32;
        }
        return b10;
    }

    @Override // ed.g
    public final int readInt() throws EOFException {
        if (this.f5304b < 4) {
            throw new EOFException();
        }
        e0 e0Var = this.f5303a;
        kotlin.jvm.internal.h.c(e0Var);
        int r12 = e0Var.f5306b;
        int r42 = e0Var.f5307c;
        if (r42 - r12 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        int r52 = r12 + 1;
        byte[] bArr = e0Var.f5305a;
        int r72 = r52 + 1;
        int r13 = ((bArr[r12] & 255) << 24) | ((bArr[r52] & 255) << 16);
        int r53 = r72 + 1;
        int r14 = r13 | ((bArr[r72] & 255) << 8);
        int r73 = r53 + 1;
        int r15 = r14 | (bArr[r53] & 255);
        this.f5304b -= 4;
        if (r73 == r42) {
            this.f5303a = e0Var.a();
            f0.a(e0Var);
        } else {
            e0Var.f5306b = r73;
        }
        return r15;
    }

    @Override // ed.g
    public final short readShort() throws EOFException {
        if (this.f5304b < 2) {
            throw new EOFException();
        }
        e0 e0Var = this.f5303a;
        kotlin.jvm.internal.h.c(e0Var);
        int r12 = e0Var.f5306b;
        int r42 = e0Var.f5307c;
        if (r42 - r12 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        int r52 = r12 + 1;
        byte[] bArr = e0Var.f5305a;
        int r72 = r52 + 1;
        int r13 = ((bArr[r12] & 255) << 8) | (bArr[r52] & 255);
        this.f5304b -= 2;
        if (r72 == r42) {
            this.f5303a = e0Var.a();
            f0.a(e0Var);
        } else {
            e0Var.f5306b = r72;
        }
        return (short) r13;
    }

    public final String s(long j10) throws EOFException {
        return q(j10, mc.a.f10357a);
    }

    @Override // ed.g
    public final void skip(long j10) throws EOFException {
        while (j10 > 0) {
            e0 e0Var = this.f5303a;
            if (e0Var == null) {
                throw new EOFException();
            }
            int r22 = (int) Math.min(j10, e0Var.f5307c - e0Var.f5306b);
            long j11 = r22;
            this.f5304b -= j11;
            j10 -= j11;
            int r12 = e0Var.f5306b + r22;
            e0Var.f5306b = r12;
            if (r12 == e0Var.f5307c) {
                this.f5303a = e0Var.a();
                f0.a(e0Var);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int t() throws java.io.EOFException {
        /*
            r13 = this;
            long r0 = r13.f5304b
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto Lbe
            byte r0 = r13.f(r2)
            r1 = r0 & 128(0x80, float:1.8E-43)
            r2 = 2
            r3 = 0
            r4 = 128(0x80, float:1.8E-43)
            r5 = 1
            if (r1 != 0) goto L1a
            r1 = r0 & 127(0x7f, float:1.78E-43)
            r6 = 1
            r7 = 0
            goto L3d
        L1a:
            r1 = r0 & 224(0xe0, float:3.14E-43)
            r6 = 192(0xc0, float:2.69E-43)
            if (r1 != r6) goto L26
            r1 = r0 & 31
            r6 = 2
            r7 = 128(0x80, float:1.8E-43)
            goto L3d
        L26:
            r1 = r0 & 240(0xf0, float:3.36E-43)
            r6 = 224(0xe0, float:3.14E-43)
            if (r1 != r6) goto L32
            r1 = r0 & 15
            r6 = 3
            r7 = 2048(0x800, float:2.87E-42)
            goto L3d
        L32:
            r1 = r0 & 248(0xf8, float:3.48E-43)
            r6 = 240(0xf0, float:3.36E-43)
            if (r1 != r6) goto Lb5
            r1 = r0 & 7
            r6 = 4
            r7 = 65536(0x10000, float:9.1835E-41)
        L3d:
            long r8 = r13.f5304b
            long r10 = (long) r6
            int r12 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r12 < 0) goto L7a
            if (r5 >= r6) goto L60
            r0 = 1
        L47:
            int r2 = r0 + 1
            long r8 = (long) r0
            byte r0 = r13.f(r8)
            r5 = r0 & 192(0xc0, float:2.69E-43)
            if (r5 != r4) goto L5c
            int r1 = r1 << 6
            r0 = r0 & 63
            r1 = r1 | r0
            if (r2 < r6) goto L5a
            goto L60
        L5a:
            r0 = r2
            goto L47
        L5c:
            r13.skip(r8)
            goto Lba
        L60:
            r13.skip(r10)
            r0 = 1114111(0x10ffff, float:1.561202E-39)
            if (r1 <= r0) goto L69
            goto Lba
        L69:
            r0 = 55296(0xd800, float:7.7486E-41)
            if (r0 > r1) goto L74
            r0 = 57343(0xdfff, float:8.0355E-41)
            if (r1 > r0) goto L74
            r3 = 1
        L74:
            if (r3 == 0) goto L77
            goto Lba
        L77:
            if (r1 >= r7) goto Lbd
            goto Lba
        L7a:
            java.io.EOFException r1 = new java.io.EOFException
            java.lang.String r4 = "size < "
            java.lang.String r7 = ": "
            java.lang.StringBuilder r4 = androidx.appcompat.widget.v.e(r4, r6, r7)
            long r6 = r13.f5304b
            r4.append(r6)
            java.lang.String r6 = " (to read code point prefixed 0x"
            r4.append(r6)
            char[] r2 = new char[r2]
            char[] r6 = c5.u.f2019h
            int r7 = r0 >> 4
            r7 = r7 & 15
            char r7 = r6[r7]
            r2[r3] = r7
            r0 = r0 & 15
            char r0 = r6[r0]
            r2[r5] = r0
            java.lang.String r0 = new java.lang.String
            r0.<init>(r2)
            r4.append(r0)
            r0 = 41
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            r1.<init>(r0)
            throw r1
        Lb5:
            r0 = 1
            r13.skip(r0)
        Lba:
            r1 = 65533(0xfffd, float:9.1831E-41)
        Lbd:
            return r1
        Lbe:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ed.e.t():int");
    }

    public final String toString() {
        long j10 = this.f5304b;
        if (j10 <= 2147483647L) {
            return v((int) j10).toString();
        }
        throw new IllegalStateException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "size > Int.MAX_VALUE: ").toString());
    }

    public final h v(int r92) {
        if (r92 == 0) {
            return h.f5315d;
        }
        a6.a.g(this.f5304b, 0L, r92);
        e0 e0Var = this.f5303a;
        int r12 = 0;
        int r22 = 0;
        int r32 = 0;
        while (r22 < r92) {
            kotlin.jvm.internal.h.c(e0Var);
            int r42 = e0Var.f5307c;
            int r52 = e0Var.f5306b;
            if (r42 == r52) {
                throw new AssertionError("s.limit == s.pos");
            }
            r22 += r42 - r52;
            r32++;
            e0Var = e0Var.f;
        }
        byte[][] bArr = new byte[r32][];
        int[] r23 = new int[r32 * 2];
        e0 e0Var2 = this.f5303a;
        int r43 = 0;
        while (r12 < r92) {
            kotlin.jvm.internal.h.c(e0Var2);
            bArr[r43] = e0Var2.f5305a;
            r12 += e0Var2.f5307c - e0Var2.f5306b;
            r23[r43] = Math.min(r12, r92);
            r23[r43 + r32] = e0Var2.f5306b;
            e0Var2.f5308d = true;
            r43++;
            e0Var2 = e0Var2.f;
        }
        return new g0(bArr, r23);
    }

    @Override // ed.j0
    public final long w(e sink, long j10) {
        kotlin.jvm.internal.h.f(sink, "sink");
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "byteCount < 0: ").toString());
        }
        long j11 = this.f5304b;
        if (j11 == 0) {
            return -1L;
        }
        if (j10 > j11) {
            j10 = j11;
        }
        sink.M(this, j10);
        return j10;
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer source) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        int r02 = source.remaining();
        int r12 = r02;
        while (r12 > 0) {
            e0 e0VarB = B(1);
            int r32 = Math.min(r12, 8192 - e0VarB.f5307c);
            source.get(e0VarB.f5305a, e0VarB.f5307c, r32);
            r12 -= r32;
            e0VarB.f5307c += r32;
        }
        this.f5304b += r02;
        return r02;
    }

    @Override // ed.f
    public final f write(byte[] source) {
        kotlin.jvm.internal.h.f(source, "source");
        m31write(source, 0, source.length);
        return this;
    }

    @Override // ed.f
    public final /* bridge */ /* synthetic */ f write(byte[] bArr, int r22, int r32) {
        m31write(bArr, r22, r32);
        return this;
    }

    @Override // ed.f
    public final /* bridge */ /* synthetic */ f writeByte(int r12) {
        O(r12);
        return this;
    }

    @Override // ed.f
    public final /* bridge */ /* synthetic */ f writeInt(int r12) {
        c0(r12);
        return this;
    }

    @Override // ed.f
    public final /* bridge */ /* synthetic */ f writeShort(int r12) {
        d0(r12);
        return this;
    }

    @Override // ed.g
    public final h z(long j10) throws EOFException {
        if (!(j10 >= 0 && j10 <= 2147483647L)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "byteCount: ").toString());
        }
        if (this.f5304b < j10) {
            throw new EOFException();
        }
        if (j10 < 4096) {
            return new h(k(j10));
        }
        h hVarV = v((int) j10);
        skip(j10);
        return hVarV;
    }

    /* renamed from: write, reason: collision with other method in class */
    public final void m31write(byte[] source, int r11, int r12) {
        kotlin.jvm.internal.h.f(source, "source");
        long j10 = r12;
        a6.a.g(source.length, r11, j10);
        int r122 = r12 + r11;
        while (r11 < r122) {
            e0 e0VarB = B(1);
            int r13 = Math.min(r122 - r11, 8192 - e0VarB.f5307c);
            int r32 = r11 + r13;
            m9.i.h0(e0VarB.f5307c, source, r11, e0VarB.f5305a, r32);
            e0VarB.f5307c += r13;
            r11 = r32;
        }
        this.f5304b += j10;
    }
}
