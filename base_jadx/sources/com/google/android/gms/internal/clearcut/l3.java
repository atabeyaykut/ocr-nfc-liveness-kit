package com.google.android.gms.internal.clearcut;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class l3 extends w {
    public static int f(int r6, int r72, long j10, byte[] bArr) {
        if (r72 == 0) {
            w wVar = i3.f3160a;
            if (r6 > -12) {
                return -1;
            }
            return r6;
        }
        if (r72 == 1) {
            byte bA = g3.a(j10, bArr);
            w wVar2 = i3.f3160a;
            if (r6 > -12 || bA > -65) {
                return -1;
            }
            return r6 ^ (bA << 8);
        }
        if (r72 != 2) {
            throw new AssertionError();
        }
        byte bA2 = g3.a(j10, bArr);
        byte bA3 = g3.a(j10 + 1, bArr);
        w wVar3 = i3.f3160a;
        if (r6 > -12 || bA2 > -65 || bA3 > -65) {
            return -1;
        }
        return (r6 ^ (bA2 << 8)) ^ (bA3 << 16);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x005b, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0085, code lost:
    
        return -1;
     */
    @Override // com.google.android.gms.internal.clearcut.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int b(int r13, byte[] r14, int r15) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.l3.b(int, byte[], int):int");
    }

    @Override // com.google.android.gms.internal.clearcut.w
    public final int c(CharSequence charSequence, byte[] bArr, int r25, int r26) {
        long j10;
        char c10;
        long j11;
        int r12;
        long j12;
        long j13;
        char cCharAt;
        long j14 = r25;
        long j15 = r26 + j14;
        int length = charSequence.length();
        if (length > r26 || bArr.length - r26 < r25) {
            char cCharAt2 = charSequence.charAt(length - 1);
            StringBuilder sb2 = new StringBuilder(37);
            sb2.append("Failed writing ");
            sb2.append(cCharAt2);
            sb2.append(" at index ");
            sb2.append(r25 + r26);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
        int r22 = 0;
        while (true) {
            j10 = 1;
            c10 = 128;
            if (r22 >= length || (cCharAt = charSequence.charAt(r22)) >= 128) {
                break;
            }
            g3.h(bArr, j14, (byte) cCharAt);
            r22++;
            j14 = 1 + j14;
        }
        if (r22 == length) {
            return (int) j14;
        }
        while (r22 < length) {
            char cCharAt3 = charSequence.charAt(r22);
            if (cCharAt3 >= c10 || j14 >= j15) {
                if (cCharAt3 < 2048 && j14 <= j15 - 2) {
                    long j16 = j14 + j10;
                    g3.h(bArr, j14, (byte) ((cCharAt3 >>> 6) | 960));
                    g3.h(bArr, j16, (byte) ((cCharAt3 & '?') | 128));
                    j13 = j16 + j10;
                    j12 = j10;
                } else {
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || j14 > j15 - 3) {
                        if (j14 > j15 - 4) {
                            if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((r12 = r22 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(r12)))) {
                                throw new k3(r22, length);
                            }
                            StringBuilder sb3 = new StringBuilder(46);
                            sb3.append("Failed writing ");
                            sb3.append(cCharAt3);
                            sb3.append(" at index ");
                            sb3.append(j14);
                            throw new ArrayIndexOutOfBoundsException(sb3.toString());
                        }
                        int r32 = r22 + 1;
                        if (r32 != length) {
                            char cCharAt4 = charSequence.charAt(r32);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                long j17 = j14 + 1;
                                g3.h(bArr, j14, (byte) ((codePoint >>> 18) | 240));
                                long j18 = j17 + 1;
                                g3.h(bArr, j17, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j19 = j18 + 1;
                                g3.h(bArr, j18, (byte) (((codePoint >>> 6) & 63) | 128));
                                j12 = 1;
                                j13 = j19 + 1;
                                g3.h(bArr, j19, (byte) ((codePoint & 63) | 128));
                                r22 = r32;
                            } else {
                                r22 = r32;
                            }
                        }
                        throw new k3(r22 - 1, length);
                    }
                    long j20 = j14 + j10;
                    g3.h(bArr, j14, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j21 = j20 + j10;
                    g3.h(bArr, j20, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    g3.h(bArr, j21, (byte) ((cCharAt3 & '?') | 128));
                    j11 = j21 + 1;
                }
                r22++;
                c10 = 128;
                long j22 = j12;
                j14 = j13;
                j10 = j22;
            } else {
                j11 = j14 + j10;
                g3.h(bArr, j14, (byte) cCharAt3);
            }
            j13 = j11;
            j12 = 1;
            r22++;
            c10 = 128;
            long j222 = j12;
            j14 = j13;
            j10 = j222;
        }
        return (int) j14;
    }

    @Override // com.google.android.gms.internal.clearcut.w
    public final void d(CharSequence charSequence, ByteBuffer byteBuffer) {
        char c10;
        int r02;
        long j10;
        long j11;
        int r12;
        char cCharAt;
        ByteBuffer byteBuffer2 = byteBuffer;
        long jK = g3.f3144d.k(g3.f3147h, byteBuffer2);
        long jPosition = byteBuffer.position() + jK;
        long jLimit = byteBuffer.limit() + jK;
        int length = charSequence.length();
        if (length > jLimit - jPosition) {
            char cCharAt2 = charSequence.charAt(length - 1);
            int r13 = byteBuffer.limit();
            StringBuilder sb2 = new StringBuilder(37);
            sb2.append("Failed writing ");
            sb2.append(cCharAt2);
            sb2.append(" at index ");
            sb2.append(r13);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
        int r92 = 0;
        while (true) {
            c10 = 128;
            if (r92 >= length || (cCharAt = charSequence.charAt(r92)) >= 128) {
                break;
            }
            g3.b(jPosition, (byte) cCharAt);
            r92++;
            jPosition++;
        }
        if (r92 == length) {
            r02 = (int) (jPosition - jK);
        } else {
            while (r92 < length) {
                char cCharAt3 = charSequence.charAt(r92);
                if (cCharAt3 >= c10 || jPosition >= jLimit) {
                    if (cCharAt3 >= 2048 || jPosition > jLimit - 2) {
                        j10 = jK;
                        if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || jPosition > jLimit - 3) {
                            if (jPosition > jLimit - 4) {
                                if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((r12 = r92 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(r12)))) {
                                    throw new k3(r92, length);
                                }
                                StringBuilder sb3 = new StringBuilder(46);
                                sb3.append("Failed writing ");
                                sb3.append(cCharAt3);
                                sb3.append(" at index ");
                                sb3.append(jPosition);
                                throw new ArrayIndexOutOfBoundsException(sb3.toString());
                            }
                            int r14 = r92 + 1;
                            if (r14 != length) {
                                char cCharAt4 = charSequence.charAt(r14);
                                if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                    int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                    long j12 = jPosition + 1;
                                    g3.b(jPosition, (byte) ((codePoint >>> 18) | 240));
                                    long j13 = j12 + 1;
                                    g3.b(j12, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j14 = j13 + 1;
                                    g3.b(j13, (byte) (((codePoint >>> 6) & 63) | 128));
                                    long j15 = j14 + 1;
                                    g3.b(j14, (byte) ((codePoint & 63) | 128));
                                    r92 = r14;
                                    jPosition = j15;
                                } else {
                                    r92 = r14;
                                }
                            }
                            throw new k3(r92 - 1, length);
                        }
                        long j16 = jPosition + 1;
                        g3.b(jPosition, (byte) ((cCharAt3 >>> '\f') | 480));
                        long j17 = j16 + 1;
                        g3.b(j16, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                        g3.b(j17, (byte) ((cCharAt3 & '?') | 128));
                        j11 = j17 + 1;
                    } else {
                        j10 = jK;
                        long j18 = jPosition + 1;
                        g3.b(jPosition, (byte) ((cCharAt3 >>> 6) | 960));
                        j11 = j18 + 1;
                        g3.b(j18, (byte) ((cCharAt3 & '?') | 128));
                    }
                    jPosition = j11;
                } else {
                    g3.b(jPosition, (byte) cCharAt3);
                    jPosition++;
                    j10 = jK;
                }
                r92++;
                jK = j10;
                c10 = 128;
            }
            r02 = (int) (jPosition - jK);
            byteBuffer2 = byteBuffer;
        }
        byteBuffer2.position(r02);
    }
}
