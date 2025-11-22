package com.google.crypto.tink.shaded.protobuf;

import net.sf.scuba.smartcards.ISO7816;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public final class o1 {

    /* renamed from: a, reason: collision with root package name */
    public static final b f4337a;

    public static class a {
        public static void a(byte b10, byte b11, byte b12, byte b13, char[] cArr, int r72) throws a0 {
            if (!c(b11)) {
                if ((((b11 + ISO7816.INS_MANAGE_CHANNEL) + (b10 << 28)) >> 30) == 0 && !c(b12) && !c(b13)) {
                    int r22 = ((b10 & 7) << 18) | ((b11 & 63) << 12) | ((b12 & 63) << 6) | (b13 & 63);
                    cArr[r72] = (char) ((r22 >>> 10) + 55232);
                    cArr[r72 + 1] = (char) ((r22 & 1023) + 56320);
                    return;
                }
            }
            throw a0.a();
        }

        public static void b(byte b10, byte b11, byte b12, char[] cArr, int r6) throws a0 {
            if (c(b11) || ((b10 == -32 && b11 < -96) || ((b10 == -19 && b11 >= -96) || c(b12)))) {
                throw a0.a();
            }
            cArr[r6] = (char) (((b10 & PassportService.SFI_DG15) << 12) | ((b11 & 63) << 6) | (b12 & 63));
        }

        public static boolean c(byte b10) {
            return b10 > -65;
        }
    }

    public static abstract class b {
        public abstract String a(byte[] bArr, int r22, int r32) throws a0;

        public abstract int b(CharSequence charSequence, byte[] bArr, int r32, int r42);

        public abstract int c(int r12, byte[] bArr, int r32);
    }

    public static final class c extends b {
        @Override // com.google.crypto.tink.shaded.protobuf.o1.b
        public final String a(byte[] bArr, int r13, int r14) throws a0 {
            if ((r13 | r14 | ((bArr.length - r13) - r14)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(r13), Integer.valueOf(r14)));
            }
            int r02 = r13 + r14;
            char[] cArr = new char[r14];
            int r32 = 0;
            while (r13 < r02) {
                byte b10 = bArr[r13];
                if (!(b10 >= 0)) {
                    break;
                }
                r13++;
                cArr[r32] = (char) b10;
                r32++;
            }
            int r82 = r32;
            while (r13 < r02) {
                int r33 = r13 + 1;
                byte b11 = bArr[r13];
                if (b11 >= 0) {
                    int r42 = r82 + 1;
                    cArr[r82] = (char) b11;
                    r13 = r33;
                    while (true) {
                        r82 = r42;
                        if (r13 >= r02) {
                            break;
                        }
                        byte b12 = bArr[r13];
                        if (!(b12 >= 0)) {
                            break;
                        }
                        r13++;
                        r42 = r82 + 1;
                        cArr[r82] = (char) b12;
                    }
                } else {
                    if (!(b11 < -32)) {
                        if (b11 < -16) {
                            if (r33 >= r02 - 1) {
                                throw a0.a();
                            }
                            int r43 = r33 + 1;
                            a.b(b11, bArr[r33], bArr[r43], cArr, r82);
                            r13 = r43 + 1;
                            r82++;
                        } else {
                            if (r33 >= r02 - 2) {
                                throw a0.a();
                            }
                            int r44 = r33 + 1;
                            byte b13 = bArr[r33];
                            int r34 = r44 + 1;
                            a.a(b11, b13, bArr[r44], bArr[r34], cArr, r82);
                            r82 = r82 + 1 + 1;
                            r13 = r34 + 1;
                        }
                    } else {
                        if (r33 >= r02) {
                            throw a0.a();
                        }
                        int r45 = r33 + 1;
                        byte b14 = bArr[r33];
                        int r52 = r82 + 1;
                        if (b11 < -62 || a.c(b14)) {
                            throw a0.a();
                        }
                        cArr[r82] = (char) (((b11 & 31) << 6) | (b14 & 63));
                        r13 = r45;
                        r82 = r52;
                    }
                }
            }
            return new String(cArr, 0, r82);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.o1.b
        public final int b(CharSequence charSequence, byte[] bArr, int r10, int r11) {
            int r42;
            int r92;
            int r32;
            char cCharAt;
            int length = charSequence.length();
            int r112 = r11 + r10;
            int r12 = 0;
            while (r12 < length && (r32 = r12 + r10) < r112 && (cCharAt = charSequence.charAt(r12)) < 128) {
                bArr[r32] = (byte) cCharAt;
                r12++;
            }
            if (r12 == length) {
                return r10 + length;
            }
            int r102 = r10 + r12;
            while (r12 < length) {
                char cCharAt2 = charSequence.charAt(r12);
                if (cCharAt2 >= 128 || r102 >= r112) {
                    if (cCharAt2 < 2048 && r102 <= r112 - 2) {
                        int r43 = r102 + 1;
                        bArr[r102] = (byte) ((cCharAt2 >>> 6) | 960);
                        r102 = r43 + 1;
                        bArr[r43] = (byte) ((cCharAt2 & '?') | 128);
                    } else {
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || r102 > r112 - 3) {
                            if (r102 > r112 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((r92 = r12 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(r92)))) {
                                    throw new d(r12, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + r102);
                            }
                            int r44 = r12 + 1;
                            if (r44 != charSequence.length()) {
                                char cCharAt3 = charSequence.charAt(r44);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    int r33 = r102 + 1;
                                    bArr[r102] = (byte) ((codePoint >>> 18) | 240);
                                    int r103 = r33 + 1;
                                    bArr[r33] = (byte) (((codePoint >>> 12) & 63) | 128);
                                    int r34 = r103 + 1;
                                    bArr[r103] = (byte) (((codePoint >>> 6) & 63) | 128);
                                    r102 = r34 + 1;
                                    bArr[r34] = (byte) ((codePoint & 63) | 128);
                                    r12 = r44;
                                } else {
                                    r12 = r44;
                                }
                            }
                            throw new d(r12 - 1, length);
                        }
                        int r45 = r102 + 1;
                        bArr[r102] = (byte) ((cCharAt2 >>> '\f') | 480);
                        int r104 = r45 + 1;
                        bArr[r45] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                        r42 = r104 + 1;
                        bArr[r104] = (byte) ((cCharAt2 & '?') | 128);
                    }
                    r12++;
                } else {
                    r42 = r102 + 1;
                    bArr[r102] = (byte) cCharAt2;
                }
                r102 = r42;
                r12++;
            }
            return r102;
        }

        /* JADX WARN: Removed duplicated region for block: B:41:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0078  */
        @Override // com.google.crypto.tink.shaded.protobuf.o1.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int c(int r7, byte[] r8, int r9) {
            /*
                r6 = this;
            L0:
                if (r7 >= r9) goto L9
                r0 = r8[r7]
                if (r0 < 0) goto L9
                int r7 = r7 + 1
                goto L0
            L9:
                if (r7 < r9) goto Lc
                goto Le
            Lc:
                if (r7 < r9) goto L11
            Le:
                r7 = 0
                goto L9c
            L11:
                int r0 = r7 + 1
                r7 = r8[r7]
                if (r7 >= 0) goto L9d
                r1 = -1
                r2 = -32
                r3 = -65
                if (r7 >= r2) goto L2e
                if (r0 < r9) goto L22
                goto L9c
            L22:
                r2 = -62
                if (r7 < r2) goto L9b
                int r7 = r0 + 1
                r0 = r8[r0]
                if (r0 <= r3) goto Lc
                goto L9b
            L2e:
                r4 = -16
                if (r7 >= r4) goto L50
                int r4 = r9 + (-1)
                if (r0 < r4) goto L37
                goto L54
            L37:
                int r4 = r0 + 1
                r0 = r8[r0]
                if (r0 > r3) goto L9b
                r5 = -96
                if (r7 != r2) goto L43
                if (r0 < r5) goto L9b
            L43:
                r2 = -19
                if (r7 != r2) goto L49
                if (r0 >= r5) goto L9b
            L49:
                int r7 = r4 + 1
                r0 = r8[r4]
                if (r0 <= r3) goto Lc
                goto L9b
            L50:
                int r2 = r9 + (-2)
                if (r0 < r2) goto L80
            L54:
                int r7 = r0 + (-1)
                r7 = r8[r7]
                int r9 = r9 - r0
                if (r9 == 0) goto L78
                r1 = 1
                if (r9 == r1) goto L71
                r2 = 2
                if (r9 != r2) goto L6b
                r9 = r8[r0]
                int r0 = r0 + r1
                r8 = r8[r0]
                int r7 = com.google.crypto.tink.shaded.protobuf.o1.c(r7, r9, r8)
                goto L9c
            L6b:
                java.lang.AssertionError r7 = new java.lang.AssertionError
                r7.<init>()
                throw r7
            L71:
                r8 = r8[r0]
                int r7 = com.google.crypto.tink.shaded.protobuf.o1.b(r7, r8)
                goto L9c
            L78:
                r8 = -12
                if (r7 <= r8) goto L7d
                goto L7e
            L7d:
                r1 = r7
            L7e:
                r7 = r1
                goto L9c
            L80:
                int r2 = r0 + 1
                r0 = r8[r0]
                if (r0 > r3) goto L9b
                int r7 = r7 << 28
                int r0 = r0 + 112
                int r0 = r0 + r7
                int r7 = r0 >> 30
                if (r7 != 0) goto L9b
                int r7 = r2 + 1
                r0 = r8[r2]
                if (r0 > r3) goto L9b
                int r0 = r7 + 1
                r7 = r8[r7]
                if (r7 <= r3) goto L9d
            L9b:
                r7 = -1
            L9c:
                return r7
            L9d:
                r7 = r0
                goto Lc
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.o1.c.c(int, byte[], int):int");
        }
    }

    public static class d extends IllegalArgumentException {
        public d(int r32, int r42) {
            super(androidx.constraintlayout.core.a.c("Unpaired surrogate at index ", r32, " of ", r42));
        }
    }

    public static final class e extends b {
        public static int d(int r22, int r32, long j10, byte[] bArr) {
            if (r32 == 0) {
                b bVar = o1.f4337a;
                if (r22 > -12) {
                    return -1;
                }
                return r22;
            }
            if (r32 == 1) {
                return o1.b(r22, n1.g(j10, bArr));
            }
            if (r32 == 2) {
                return o1.c(r22, n1.g(j10, bArr), n1.g(j10 + 1, bArr));
            }
            throw new AssertionError();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.o1.b
        public final String a(byte[] bArr, int r13, int r14) throws a0 {
            if ((r13 | r14 | ((bArr.length - r13) - r14)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(r13), Integer.valueOf(r14)));
            }
            int r02 = r13 + r14;
            char[] cArr = new char[r14];
            int r32 = 0;
            while (r13 < r02) {
                byte bG = n1.g(r13, bArr);
                if (!(bG >= 0)) {
                    break;
                }
                r13++;
                cArr[r32] = (char) bG;
                r32++;
            }
            int r82 = r32;
            while (r13 < r02) {
                int r33 = r13 + 1;
                byte bG2 = n1.g(r13, bArr);
                if (bG2 >= 0) {
                    int r42 = r82 + 1;
                    cArr[r82] = (char) bG2;
                    r13 = r33;
                    while (true) {
                        r82 = r42;
                        if (r13 >= r02) {
                            break;
                        }
                        byte bG3 = n1.g(r13, bArr);
                        if (!(bG3 >= 0)) {
                            break;
                        }
                        r13++;
                        r42 = r82 + 1;
                        cArr[r82] = (char) bG3;
                    }
                } else {
                    if (!(bG2 < -32)) {
                        if (bG2 < -16) {
                            if (r33 >= r02 - 1) {
                                throw a0.a();
                            }
                            int r43 = r33 + 1;
                            a.b(bG2, n1.g(r33, bArr), n1.g(r43, bArr), cArr, r82);
                            r13 = r43 + 1;
                            r82++;
                        } else {
                            if (r33 >= r02 - 2) {
                                throw a0.a();
                            }
                            int r44 = r33 + 1;
                            byte bG4 = n1.g(r33, bArr);
                            int r34 = r44 + 1;
                            a.a(bG2, bG4, n1.g(r44, bArr), n1.g(r34, bArr), cArr, r82);
                            r82 = r82 + 1 + 1;
                            r13 = r34 + 1;
                        }
                    } else {
                        if (r33 >= r02) {
                            throw a0.a();
                        }
                        int r45 = r33 + 1;
                        byte bG5 = n1.g(r33, bArr);
                        int r52 = r82 + 1;
                        if (bG2 < -62 || a.c(bG5)) {
                            throw a0.a();
                        }
                        cArr[r82] = (char) (((bG2 & 31) << 6) | (bG5 & 63));
                        r13 = r45;
                        r82 = r52;
                    }
                }
            }
            return new String(cArr, 0, r82);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.o1.b
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
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + (r25 + r26));
            }
            int r22 = 0;
            while (true) {
                j10 = 1;
                c10 = 128;
                if (r22 >= length || (cCharAt = charSequence.charAt(r22)) >= 128) {
                    break;
                }
                n1.q(bArr, j14, (byte) cCharAt);
                r22++;
                j14 = 1 + j14;
            }
            if (r22 == length) {
                return (int) j14;
            }
            while (r22 < length) {
                char cCharAt2 = charSequence.charAt(r22);
                if (cCharAt2 >= c10 || j14 >= j15) {
                    if (cCharAt2 < 2048 && j14 <= j15 - 2) {
                        long j16 = j14 + j10;
                        n1.q(bArr, j14, (byte) ((cCharAt2 >>> 6) | 960));
                        n1.q(bArr, j16, (byte) ((cCharAt2 & '?') | 128));
                        j13 = j16 + j10;
                        j12 = j10;
                    } else {
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || j14 > j15 - 3) {
                            if (j14 > j15 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((r12 = r22 + 1) == length || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(r12)))) {
                                    throw new d(r22, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + j14);
                            }
                            int r32 = r22 + 1;
                            if (r32 != length) {
                                char cCharAt3 = charSequence.charAt(r32);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    long j17 = j14 + 1;
                                    n1.q(bArr, j14, (byte) ((codePoint >>> 18) | 240));
                                    long j18 = j17 + 1;
                                    n1.q(bArr, j17, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j19 = j18 + 1;
                                    n1.q(bArr, j18, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j12 = 1;
                                    j13 = j19 + 1;
                                    n1.q(bArr, j19, (byte) ((codePoint & 63) | 128));
                                    r22 = r32;
                                } else {
                                    r22 = r32;
                                }
                            }
                            throw new d(r22 - 1, length);
                        }
                        long j20 = j14 + j10;
                        n1.q(bArr, j14, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j21 = j20 + j10;
                        n1.q(bArr, j20, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        n1.q(bArr, j21, (byte) ((cCharAt2 & '?') | 128));
                        j11 = j21 + 1;
                    }
                    r22++;
                    c10 = 128;
                    long j22 = j12;
                    j14 = j13;
                    j10 = j22;
                } else {
                    j11 = j14 + j10;
                    n1.q(bArr, j14, (byte) cCharAt2);
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

        /* JADX WARN: Code restructure failed: missing block: B:87:?, code lost:
        
            return d(r15, r13, r4, r14);
         */
        @Override // com.google.crypto.tink.shaded.protobuf.o1.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int c(int r13, byte[] r14, int r15) {
            /*
                Method dump skipped, instructions count: 209
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.o1.e.c(int, byte[], int):int");
        }
    }

    static {
        f4337a = (!(n1.f && n1.f4332e) || com.google.crypto.tink.shaded.protobuf.d.a()) ? new c() : new e();
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
                                throw new d(r22, length2);
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
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (r32 + 4294967296L));
    }

    public static int b(int r12, int r22) {
        if (r12 > -12 || r22 > -65) {
            return -1;
        }
        return r12 ^ (r22 << 8);
    }

    public static int c(int r12, int r22, int r32) {
        if (r12 > -12 || r22 > -65 || r32 > -65) {
            return -1;
        }
        return (r12 ^ (r22 << 8)) ^ (r32 << 16);
    }

    public static boolean d(byte[] bArr, int r22, int r32) {
        return f4337a.c(r22, bArr, r32) == 0;
    }
}
