package com.google.android.gms.internal.vision;

/* loaded from: classes.dex */
public final class a4 extends m0 {
    public static int f(int r6, int r72, long j10, byte[] bArr) {
        if (r72 == 0) {
            m0 m0Var = w3.f4119a;
            if (r6 > -12) {
                return -1;
            }
            return r6;
        }
        if (r72 == 1) {
            byte bA = t3.a(j10, bArr);
            m0 m0Var2 = w3.f4119a;
            if (r6 > -12 || bA > -65) {
                return -1;
            }
            return r6 ^ (bA << 8);
        }
        if (r72 != 2) {
            throw new AssertionError();
        }
        byte bA2 = t3.a(j10, bArr);
        byte bA3 = t3.a(j10 + 1, bArr);
        m0 m0Var3 = w3.f4119a;
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
    @Override // com.google.android.gms.internal.vision.m0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(int r13, byte[] r14, int r15) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.a4.a(int, byte[], int):int");
    }

    @Override // com.google.android.gms.internal.vision.m0
    public final int b(CharSequence charSequence, byte[] bArr, int r25, int r26) {
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
            t3.h(bArr, j14, (byte) cCharAt);
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
                    t3.h(bArr, j14, (byte) ((cCharAt3 >>> 6) | 960));
                    t3.h(bArr, j16, (byte) ((cCharAt3 & '?') | 128));
                    j13 = j16 + j10;
                    j12 = j10;
                } else {
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || j14 > j15 - 3) {
                        if (j14 > j15 - 4) {
                            if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((r12 = r22 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(r12)))) {
                                throw new y3(r22, length);
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
                                t3.h(bArr, j14, (byte) ((codePoint >>> 18) | 240));
                                long j18 = j17 + 1;
                                t3.h(bArr, j17, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j19 = j18 + 1;
                                t3.h(bArr, j18, (byte) (((codePoint >>> 6) & 63) | 128));
                                j12 = 1;
                                j13 = j19 + 1;
                                t3.h(bArr, j19, (byte) ((codePoint & 63) | 128));
                                r22 = r32;
                            } else {
                                r22 = r32;
                            }
                        }
                        throw new y3(r22 - 1, length);
                    }
                    long j20 = j14 + j10;
                    t3.h(bArr, j14, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j21 = j20 + j10;
                    t3.h(bArr, j20, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    t3.h(bArr, j21, (byte) ((cCharAt3 & '?') | 128));
                    j11 = j21 + 1;
                }
                r22++;
                c10 = 128;
                long j22 = j12;
                j14 = j13;
                j10 = j22;
            } else {
                j11 = j14 + j10;
                t3.h(bArr, j14, (byte) cCharAt3);
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

    @Override // com.google.android.gms.internal.vision.m0
    public final String e(byte[] bArr, int r13, int r14) throws q1 {
        if ((r13 | r14 | ((bArr.length - r13) - r14)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(r13), Integer.valueOf(r14)));
        }
        int r02 = r13 + r14;
        char[] cArr = new char[r14];
        int r32 = 0;
        while (r13 < r02) {
            byte bA = t3.a(r13, bArr);
            if (!(bA >= 0)) {
                break;
            }
            r13++;
            cArr[r32] = (char) bA;
            r32++;
        }
        int r82 = r32;
        while (r13 < r02) {
            int r33 = r13 + 1;
            byte bA2 = t3.a(r13, bArr);
            if (bA2 >= 0) {
                int r42 = r82 + 1;
                cArr[r82] = (char) bA2;
                r13 = r33;
                while (true) {
                    r82 = r42;
                    if (r13 >= r02) {
                        break;
                    }
                    byte bA3 = t3.a(r13, bArr);
                    if (bA3 >= 0) {
                        r13++;
                        r42 = r82 + 1;
                        cArr[r82] = (char) bA3;
                    }
                }
            } else {
                if (!(bA2 < -32)) {
                    if (bA2 < -16) {
                        if (r33 >= r02 - 1) {
                            throw q1.d();
                        }
                        int r43 = r33 + 1;
                        x3.b(bA2, t3.a(r33, bArr), t3.a(r43, bArr), cArr, r82);
                        r13 = r43 + 1;
                        r82++;
                    } else {
                        if (r33 >= r02 - 2) {
                            throw q1.d();
                        }
                        int r44 = r33 + 1;
                        byte bA4 = t3.a(r33, bArr);
                        int r34 = r44 + 1;
                        x3.a(bA2, bA4, t3.a(r44, bArr), t3.a(r34, bArr), cArr, r82);
                        r82 = r82 + 1 + 1;
                        r13 = r34 + 1;
                    }
                } else {
                    if (r33 >= r02) {
                        throw q1.d();
                    }
                    int r45 = r33 + 1;
                    byte bA5 = t3.a(r33, bArr);
                    int r52 = r82 + 1;
                    if (bA2 < -62 || x3.c(bA5)) {
                        throw q1.d();
                    }
                    cArr[r82] = (char) (((bA2 & 31) << 6) | (bA5 & 63));
                    r13 = r45;
                    r82 = r52;
                }
            }
        }
        return new String(cArr, 0, r82);
    }
}
