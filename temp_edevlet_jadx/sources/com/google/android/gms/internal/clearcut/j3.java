package com.google.android.gms.internal.clearcut;

import java.nio.ByteBuffer;
import net.sf.scuba.smartcards.ISO7816;

/* loaded from: classes.dex */
public final class j3 extends w {
    @Override // com.google.android.gms.internal.clearcut.w
    public final int b(int r82, byte[] bArr, int r10) {
        while (r82 < r10 && bArr[r82] >= 0) {
            r82++;
        }
        if (r82 >= r10) {
            return 0;
        }
        while (r82 < r10) {
            int r12 = r82 + 1;
            byte b10 = bArr[r82];
            if (b10 < 0) {
                if (b10 < -32) {
                    if (r12 >= r10) {
                        return b10;
                    }
                    if (b10 >= -62) {
                        r82 = r12 + 1;
                        if (bArr[r12] > -65) {
                        }
                    }
                    return -1;
                }
                if (b10 < -16) {
                    if (r12 >= r10 - 1) {
                        return i3.d(bArr, r12, r10);
                    }
                    int r52 = r12 + 1;
                    byte b11 = bArr[r12];
                    if (b11 <= -65 && ((b10 != -32 || b11 >= -96) && (b10 != -19 || b11 < -96))) {
                        r82 = r52 + 1;
                        if (bArr[r52] > -65) {
                        }
                    }
                    return -1;
                }
                if (r12 >= r10 - 2) {
                    return i3.d(bArr, r12, r10);
                }
                int r32 = r12 + 1;
                byte b12 = bArr[r12];
                if (b12 <= -65) {
                    if ((((b12 + ISO7816.INS_MANAGE_CHANNEL) + (b10 << 28)) >> 30) == 0) {
                        int r83 = r32 + 1;
                        if (bArr[r32] <= -65) {
                            r12 = r83 + 1;
                            if (bArr[r83] > -65) {
                            }
                        }
                    }
                }
                return -1;
            }
            r82 = r12;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.clearcut.w
    public final int c(CharSequence charSequence, byte[] bArr, int r10, int r11) {
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
                                throw new k3(r12, length);
                            }
                            StringBuilder sb2 = new StringBuilder(37);
                            sb2.append("Failed writing ");
                            sb2.append(cCharAt2);
                            sb2.append(" at index ");
                            sb2.append(r102);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
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
                        throw new k3(r12 - 1, length);
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

    @Override // com.google.android.gms.internal.clearcut.w
    public final void d(CharSequence charSequence, ByteBuffer byteBuffer) {
        w.e(charSequence, byteBuffer);
    }
}
