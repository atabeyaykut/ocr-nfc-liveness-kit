package org.bouncycastle.pqc.crypto.rainbow;

import androidx.camera.core.impl.a;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class RainbowUtil {
    public static short[][] cloneArray(short[][] sArr) {
        short[][] sArr2 = new short[sArr.length][];
        for (int r12 = 0; r12 < sArr.length; r12++) {
            sArr2[r12] = Arrays.clone(sArr[r12]);
        }
        return sArr2;
    }

    public static short[][][] cloneArray(short[][][] sArr) {
        short[][][] sArr2 = (short[][][]) Array.newInstance((Class<?>) short[].class, sArr.length, sArr[0].length);
        for (int r22 = 0; r22 < sArr.length; r22++) {
            for (int r32 = 0; r32 < sArr[0].length; r32++) {
                sArr2[r22][r32] = Arrays.clone(sArr[r22][r32]);
            }
        }
        return sArr2;
    }

    public static byte[] convertArray(short[] sArr) {
        byte[] bArr = new byte[sArr.length];
        for (int r12 = 0; r12 < sArr.length; r12++) {
            bArr[r12] = (byte) sArr[r12];
        }
        return bArr;
    }

    public static short[] convertArray(byte[] bArr) {
        short[] sArr = new short[bArr.length];
        for (int r12 = 0; r12 < bArr.length; r12++) {
            sArr[r12] = (short) (bArr[r12] & 255);
        }
        return sArr;
    }

    public static boolean equals(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean z10 = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            z10 &= sArr[length] == sArr2[length];
        }
        return z10;
    }

    public static boolean equals(short[][] sArr, short[][] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean zEquals = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            zEquals &= equals(sArr[length], sArr2[length]);
        }
        return zEquals;
    }

    public static boolean equals(short[][][] sArr, short[][][] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean zEquals = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            zEquals &= equals(sArr[length], sArr2[length]);
        }
        return zEquals;
    }

    public static short[][][] generate_random(SecureRandom secureRandom, int r92, int r10, int r11, boolean z10) {
        byte[] bArr = new byte[z10 ? (((r10 + 1) * r10) / 2) * r92 : r92 * r10 * r11];
        secureRandom.nextBytes(bArr);
        short[][][] sArr = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, r92, r10, r11);
        int r32 = 0;
        for (int r22 = 0; r22 < r10; r22++) {
            for (int r42 = 0; r42 < r11; r42++) {
                for (int r52 = 0; r52 < r92; r52++) {
                    if (!z10 || r22 <= r42) {
                        sArr[r52][r22][r42] = (short) (bArr[r32] & 255);
                        r32++;
                    }
                }
            }
        }
        return sArr;
    }

    public static short[][] generate_random_2d(SecureRandom secureRandom, int r72, int r82) {
        byte[] bArr = new byte[r72 * r82];
        secureRandom.nextBytes(bArr);
        short[][] sArr = (short[][]) Array.newInstance((Class<?>) Short.TYPE, r72, r82);
        for (int r22 = 0; r22 < r82; r22++) {
            for (int r32 = 0; r32 < r72; r32++) {
                sArr[r32][r22] = (short) (bArr[(r22 * r72) + r32] & 255);
            }
        }
        return sArr;
    }

    public static byte[] getEncoded(short[][] sArr) {
        int length = sArr.length;
        int length2 = sArr[0].length;
        byte[] bArr = new byte[length * length2];
        for (int r42 = 0; r42 < length2; r42++) {
            for (int r52 = 0; r52 < length; r52++) {
                bArr[(r42 * length) + r52] = (byte) sArr[r52][r42];
            }
        }
        return bArr;
    }

    public static byte[] getEncoded(short[][][] sArr, boolean z10) {
        int length = sArr.length;
        short[][] sArr2 = sArr[0];
        int length2 = sArr2.length;
        int length3 = sArr2[0].length;
        byte[] bArr = new byte[z10 ? (((length2 + 1) * length2) / 2) * length : length * length2 * length3];
        int r6 = 0;
        for (int r52 = 0; r52 < length2; r52++) {
            for (int r72 = 0; r72 < length3; r72++) {
                for (short[][] sArr3 : sArr) {
                    if (!z10 || r52 <= r72) {
                        bArr[r6] = (byte) sArr3[r52][r72];
                        r6++;
                    }
                }
            }
        }
        return bArr;
    }

    public static byte[] hash(Digest digest, byte[] bArr, int r52) {
        int digestSize = digest.getDigestSize();
        digest.update(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[digestSize];
        digest.doFinal(bArr2, 0);
        if (r52 == digestSize) {
            return bArr2;
        }
        if (r52 < digestSize) {
            return Arrays.copyOf(bArr2, r52);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr2, digestSize);
        while (true) {
            r52 -= digestSize;
            if (r52 < digestSize) {
                break;
            }
            digest.update(bArr2, 0, digestSize);
            bArr2 = new byte[digestSize];
            digest.doFinal(bArr2, 0);
            bArrCopyOf = Arrays.concatenate(bArrCopyOf, bArr2);
        }
        if (r52 <= 0) {
            return bArrCopyOf;
        }
        digest.update(bArr2, 0, digestSize);
        byte[] bArr3 = new byte[digestSize];
        digest.doFinal(bArr3, 0);
        int length = bArrCopyOf.length;
        byte[] bArrCopyOf2 = Arrays.copyOf(bArrCopyOf, length + r52);
        System.arraycopy(bArr3, 0, bArrCopyOf2, length, r52);
        return bArrCopyOf2;
    }

    public static byte[] hash(Digest digest, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int digestSize = digest.getDigestSize();
        digest.update(bArr, 0, bArr.length);
        digest.update(bArr2, 0, bArr2.length);
        if (bArr3.length == digestSize) {
            digest.doFinal(bArr3, 0);
            return bArr3;
        }
        byte[] bArr4 = new byte[digestSize];
        digest.doFinal(bArr4, 0);
        if (bArr3.length < digestSize) {
            System.arraycopy(bArr4, 0, bArr3, 0, bArr3.length);
            return bArr3;
        }
        System.arraycopy(bArr4, 0, bArr3, 0, digestSize);
        int length = bArr3.length - digestSize;
        int r12 = digestSize;
        while (length >= digestSize) {
            digest.update(bArr4, 0, digestSize);
            digest.doFinal(bArr4, 0);
            System.arraycopy(bArr4, 0, bArr3, r12, digestSize);
            length -= digestSize;
            r12 += digestSize;
        }
        if (length > 0) {
            digest.update(bArr4, 0, digestSize);
            digest.doFinal(bArr4, 0);
            System.arraycopy(bArr4, 0, bArr3, r12, length);
        }
        return bArr3;
    }

    public static int loadEncoded(short[][] sArr, byte[] bArr, int r82) {
        int length = sArr.length;
        int length2 = sArr[0].length;
        for (int r22 = 0; r22 < length2; r22++) {
            for (int r32 = 0; r32 < length; r32++) {
                sArr[r32][r22] = (short) (bArr[a.d(r22, length, r82, r32)] & 255);
            }
        }
        return length * length2;
    }

    public static int loadEncoded(short[][][] sArr, byte[] bArr, int r12, boolean z10) {
        short[][] sArr2 = sArr[0];
        int length = sArr2.length;
        int length2 = sArr2[0].length;
        int r52 = 0;
        for (int r42 = 0; r42 < length; r42++) {
            for (int r6 = 0; r6 < length2; r6++) {
                for (short[][] sArr3 : sArr) {
                    if (!z10 || r42 <= r6) {
                        sArr3[r42][r6] = (short) (bArr[r52 + r12] & 255);
                        r52++;
                    }
                }
            }
        }
        return r52;
    }
}
