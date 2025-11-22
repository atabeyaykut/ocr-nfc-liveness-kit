package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.e0;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import java.util.logging.Logger;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes.dex */
public final class s3 {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f3309a;

    /* renamed from: b, reason: collision with root package name */
    public e0 f3310b;

    /* renamed from: c, reason: collision with root package name */
    public int f3311c;

    public s3(byte[] bArr, int r32) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, 0, r32);
        this.f3309a = byteBufferWrap;
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int r12 = 0;
        int r22 = 0;
        while (r22 < length && charSequence.charAt(r22) < 128) {
            r22++;
        }
        int r32 = length;
        while (true) {
            if (r22 >= length) {
                break;
            }
            char cCharAt = charSequence.charAt(r22);
            if (cCharAt < 2048) {
                r32 += (127 - cCharAt) >>> 31;
                r22++;
            } else {
                int length2 = charSequence.length();
                while (r22 < length2) {
                    char cCharAt2 = charSequence.charAt(r22);
                    if (cCharAt2 < 2048) {
                        r12 += (127 - cCharAt2) >>> 31;
                    } else {
                        r12 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, r22) < 65536) {
                                throw new IllegalArgumentException(androidx.appcompat.widget.v.c(39, "Unpaired surrogate at index ", r22));
                            }
                            r22++;
                        }
                    }
                    r22++;
                }
                r32 += r12;
            }
        }
        if (r32 >= length) {
            return r32;
        }
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(r32 + 4294967296L);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static int g(int r12, String str) {
        int r13 = n(r12);
        int r22 = a(str);
        return o(r22) + r22 + r13;
    }

    public static int h(int r12, byte[] bArr) {
        return o(bArr.length) + bArr.length + n(r12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v28 */
    public static void j(CharSequence charSequence, ByteBuffer byteBuffer) {
        int r82;
        int r12;
        char cCharAt;
        int r92;
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        int r6 = 0;
        if (!byteBuffer.hasArray()) {
            int length = charSequence.length();
            while (r6 < length) {
                char cCharAt2 = charSequence.charAt(r6);
                char c10 = cCharAt2;
                if (cCharAt2 >= 128) {
                    if (cCharAt2 < 2048) {
                        r92 = (cCharAt2 >>> 6) | 960;
                    } else {
                        if (cCharAt2 >= 55296 && 57343 >= cCharAt2) {
                            int r93 = r6 + 1;
                            if (r93 != charSequence.length()) {
                                char cCharAt3 = charSequence.charAt(r93);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                                    byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                                    byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                                    byteBuffer.put((byte) ((codePoint & 63) | 128));
                                    r6 = r93;
                                } else {
                                    r6 = r93;
                                }
                            }
                            throw new IllegalArgumentException(androidx.appcompat.widget.v.c(39, "Unpaired surrogate at index ", r6 - 1));
                        }
                        byteBuffer.put((byte) ((cCharAt2 >>> '\f') | 480));
                        r92 = ((cCharAt2 >>> 6) & 63) | 128;
                    }
                    byteBuffer.put((byte) r92);
                    c10 = (cCharAt2 & '?') | 128;
                    byteBuffer.put((byte) c10);
                } else {
                    byteBuffer.put((byte) c10);
                }
                r6++;
            }
            return;
        }
        try {
            byte[] bArrArray = byteBuffer.array();
            int r83 = byteBuffer.arrayOffset() + byteBuffer.position();
            int r94 = byteBuffer.remaining();
            int length2 = charSequence.length();
            int r95 = r94 + r83;
            while (r6 < length2) {
                int r11 = r6 + r83;
                if (r11 >= r95 || (cCharAt = charSequence.charAt(r6)) >= 128) {
                    break;
                }
                bArrArray[r11] = (byte) cCharAt;
                r6++;
            }
            if (r6 == length2) {
                r82 = r83 + length2;
            } else {
                r82 = r83 + r6;
                while (r6 < length2) {
                    char cCharAt4 = charSequence.charAt(r6);
                    if (cCharAt4 >= 128 || r82 >= r95) {
                        if (cCharAt4 < 2048 && r82 <= r95 - 2) {
                            int r122 = r82 + 1;
                            bArrArray[r82] = (byte) ((cCharAt4 >>> 6) | 960);
                            r82 = r122 + 1;
                            bArrArray[r122] = (byte) ((cCharAt4 & '?') | 128);
                        } else {
                            if ((cCharAt4 >= 55296 && 57343 >= cCharAt4) || r82 > r95 - 3) {
                                if (r82 > r95 - 4) {
                                    StringBuilder sb2 = new StringBuilder(37);
                                    sb2.append("Failed writing ");
                                    sb2.append(cCharAt4);
                                    sb2.append(" at index ");
                                    sb2.append(r82);
                                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                                }
                                int r123 = r6 + 1;
                                if (r123 != charSequence.length()) {
                                    char cCharAt5 = charSequence.charAt(r123);
                                    if (Character.isSurrogatePair(cCharAt4, cCharAt5)) {
                                        int codePoint2 = Character.toCodePoint(cCharAt4, cCharAt5);
                                        int r112 = r82 + 1;
                                        bArrArray[r82] = (byte) ((codePoint2 >>> 18) | 240);
                                        int r84 = r112 + 1;
                                        bArrArray[r112] = (byte) (((codePoint2 >>> 12) & 63) | 128);
                                        int r113 = r84 + 1;
                                        bArrArray[r84] = (byte) (((codePoint2 >>> 6) & 63) | 128);
                                        r82 = r113 + 1;
                                        bArrArray[r113] = (byte) ((codePoint2 & 63) | 128);
                                        r6 = r123;
                                    } else {
                                        r6 = r123;
                                    }
                                }
                                StringBuilder sb3 = new StringBuilder(39);
                                sb3.append("Unpaired surrogate at index ");
                                sb3.append(r6 - 1);
                                throw new IllegalArgumentException(sb3.toString());
                            }
                            int r124 = r82 + 1;
                            bArrArray[r82] = (byte) ((cCharAt4 >>> '\f') | 480);
                            int r85 = r124 + 1;
                            bArrArray[r124] = (byte) (((cCharAt4 >>> 6) & 63) | 128);
                            r12 = r85 + 1;
                            bArrArray[r85] = (byte) ((cCharAt4 & '?') | 128);
                        }
                        r6++;
                    } else {
                        r12 = r82 + 1;
                        bArrArray[r82] = (byte) cCharAt4;
                    }
                    r82 = r12;
                    r6++;
                }
            }
            byteBuffer.position(r82 - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e10) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e10);
            throw bufferOverflowException;
        }
    }

    public static int m(long j10) {
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (((-16384) & j10) == 0) {
            return 2;
        }
        if (((-2097152) & j10) == 0) {
            return 3;
        }
        if (((-268435456) & j10) == 0) {
            return 4;
        }
        if (((-34359738368L) & j10) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j10) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j10) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j10) == 0) {
            return 8;
        }
        return (j10 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int n(int r02) {
        return o(r02 << 3);
    }

    public static int o(int r12) {
        if ((r12 & (-128)) == 0) {
            return 1;
        }
        if ((r12 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & r12) == 0) {
            return 3;
        }
        return (r12 & (-268435456)) == 0 ? 4 : 5;
    }

    public final void b(int r22, u3 u3Var) throws IOException {
        i(r22, 2);
        if (u3Var.f3351a < 0) {
            u3Var.c();
        }
        f(u3Var.f3351a);
        u3Var.f(this);
    }

    public final void c(int r42, String str) throws IOException {
        ByteBuffer byteBuffer = this.f3309a;
        i(r42, 2);
        try {
            int r43 = o(str.length());
            if (r43 != o(str.length() * 3)) {
                f(a(str));
                j(str, byteBuffer);
                return;
            }
            int r12 = byteBuffer.position();
            if (byteBuffer.remaining() < r43) {
                throw new t3(r12 + r43, byteBuffer.limit());
            }
            byteBuffer.position(r12 + r43);
            j(str, byteBuffer);
            int r52 = byteBuffer.position();
            byteBuffer.position(r12);
            f((r52 - r12) - r43);
            byteBuffer.position(r52);
        } catch (BufferOverflowException e10) {
            t3 t3Var = new t3(byteBuffer.position(), byteBuffer.limit());
            t3Var.initCause(e10);
            throw t3Var;
        }
    }

    public final void d(int r32, byte[] bArr) throws IOException {
        i(r32, 2);
        f(bArr.length);
        int length = bArr.length;
        ByteBuffer byteBuffer = this.f3309a;
        if (byteBuffer.remaining() < length) {
            throw new t3(byteBuffer.position(), byteBuffer.limit());
        }
        byteBuffer.put(bArr, 0, length);
    }

    public final void e(int r32) throws IOException {
        byte b10 = (byte) r32;
        ByteBuffer byteBuffer = this.f3309a;
        if (!byteBuffer.hasRemaining()) {
            throw new t3(byteBuffer.position(), byteBuffer.limit());
        }
        byteBuffer.put(b10);
    }

    public final void f(int r22) throws IOException {
        while ((r22 & (-128)) != 0) {
            e((r22 & CertificateBody.profileType) | 128);
            r22 >>>= 7;
        }
        e(r22);
    }

    public final void i(int r12, int r22) throws IOException {
        f((r12 << 3) | r22);
    }

    public final void k(int r72, v0 v0Var) throws IOException {
        e0 eVar;
        e0 e0Var = this.f3310b;
        ByteBuffer byteBuffer = this.f3309a;
        if (e0Var != null) {
            if (this.f3311c != byteBuffer.position()) {
                this.f3310b.g(byteBuffer.array(), this.f3311c, byteBuffer.position() - this.f3311c);
            }
            e0 e0Var2 = this.f3310b;
            e0Var2.l(r72, v0Var);
            e0Var2.f();
            this.f3311c = byteBuffer.position();
        }
        Logger logger = e0.f3095b;
        if (byteBuffer.hasArray()) {
            eVar = new e0.b(byteBuffer);
        } else {
            if (!byteBuffer.isDirect() || byteBuffer.isReadOnly()) {
                throw new IllegalArgumentException("ByteBuffer is read-only");
            }
            eVar = g3.f3145e ? new e0.e(byteBuffer) : new e0.d(byteBuffer);
        }
        this.f3310b = eVar;
        this.f3311c = byteBuffer.position();
        e0 e0Var22 = this.f3310b;
        e0Var22.l(r72, v0Var);
        e0Var22.f();
        this.f3311c = byteBuffer.position();
    }

    public final void l(long j10) throws IOException {
        while (((-128) & j10) != 0) {
            e((((int) j10) & CertificateBody.profileType) | 128);
            j10 >>>= 7;
        }
        e((int) j10);
    }
}
