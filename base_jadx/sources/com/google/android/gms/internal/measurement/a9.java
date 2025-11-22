package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class a9 {

    /* renamed from: a, reason: collision with root package name */
    public static final vd.d f3376a;

    static {
        if (y8.f3849e && y8.f3848d) {
            int r02 = n5.f3640a;
        }
        f3376a = new vd.d();
    }

    public static int a(CharSequence charSequence, byte[] bArr, int r92, int r10) {
        int r42;
        int r82;
        int r32;
        char cCharAt;
        int length = charSequence.length();
        int r102 = r10 + r92;
        int r12 = 0;
        while (r12 < length && (r32 = r12 + r92) < r102 && (cCharAt = charSequence.charAt(r12)) < 128) {
            bArr[r32] = (byte) cCharAt;
            r12++;
        }
        if (r12 == length) {
            return r92 + length;
        }
        int r93 = r92 + r12;
        while (r12 < length) {
            char cCharAt2 = charSequence.charAt(r12);
            if (cCharAt2 >= 128 || r93 >= r102) {
                if (cCharAt2 < 2048 && r93 <= r102 - 2) {
                    int r43 = r93 + 1;
                    bArr[r93] = (byte) ((cCharAt2 >>> 6) | 960);
                    r93 = r43 + 1;
                    bArr[r43] = (byte) ((cCharAt2 & '?') | 128);
                } else {
                    if ((cCharAt2 >= 55296 && cCharAt2 <= 57343) || r93 > r102 - 3) {
                        if (r93 > r102 - 4) {
                            if (cCharAt2 >= 55296 && cCharAt2 <= 57343 && ((r82 = r12 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(r82)))) {
                                throw new z8(r12, length);
                            }
                            StringBuilder sb2 = new StringBuilder(37);
                            sb2.append("Failed writing ");
                            sb2.append(cCharAt2);
                            sb2.append(" at index ");
                            sb2.append(r93);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        }
                        int r44 = r12 + 1;
                        if (r44 != charSequence.length()) {
                            char cCharAt3 = charSequence.charAt(r44);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                int r33 = r93 + 1;
                                bArr[r93] = (byte) ((codePoint >>> 18) | 240);
                                int r94 = r33 + 1;
                                bArr[r33] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int r34 = r94 + 1;
                                bArr[r94] = (byte) (((codePoint >>> 6) & 63) | 128);
                                r93 = r34 + 1;
                                bArr[r34] = (byte) ((codePoint & 63) | 128);
                                r12 = r44;
                            } else {
                                r12 = r44;
                            }
                        }
                        throw new z8(r12 - 1, length);
                    }
                    int r45 = r93 + 1;
                    bArr[r93] = (byte) ((cCharAt2 >>> '\f') | 480);
                    int r95 = r45 + 1;
                    bArr[r45] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                    r42 = r95 + 1;
                    bArr[r95] = (byte) ((cCharAt2 & '?') | 128);
                }
                r12++;
            } else {
                r42 = r93 + 1;
                bArr[r93] = (byte) cCharAt2;
            }
            r93 = r42;
            r12++;
        }
        return r93;
    }

    public static int b(CharSequence charSequence) {
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
                        if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, r22) < 65536) {
                                throw new z8(r22, length2);
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

    public static boolean c(byte[] bArr, int r22, int r32) {
        f3376a.getClass();
        return vd.d.a(bArr, r22, r32);
    }
}
