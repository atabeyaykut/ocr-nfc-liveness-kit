package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.engines.Salsa20Engine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SCrypt {
    private SCrypt() {
    }

    private static void BlockMix(int[] r6, int[] r72, int[] r82, int[] r92, int r10) {
        System.arraycopy(r6, r6.length - 16, r72, 0, 16);
        int length = r6.length >>> 1;
        int r32 = 0;
        int r42 = 0;
        for (int r102 = r10 * 2; r102 > 0; r102--) {
            Xor(r72, r6, r32, r82);
            Salsa20Engine.salsaCore(8, r82, r72);
            System.arraycopy(r72, 0, r92, r42, 16);
            r42 = (length + r32) - r42;
            r32 += 16;
        }
    }

    private static void Clear(byte[] bArr) {
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
    }

    private static void Clear(int[] r12) {
        if (r12 != null) {
            Arrays.fill(r12, 0);
        }
    }

    private static void ClearAll(int[][] r22) {
        for (int[] r02 : r22) {
            Clear(r02);
        }
    }

    private static byte[] MFcrypt(byte[] bArr, byte[] bArr2, int r92, int r10, int r11, int r12) {
        int r02 = r10 * 128;
        byte[] bArrSingleIterationPBKDF2 = SingleIterationPBKDF2(bArr, bArr2, r11 * r02);
        int[] r112 = null;
        try {
            int length = bArrSingleIterationPBKDF2.length >>> 2;
            r112 = new int[length];
            Pack.littleEndianToInt(bArrSingleIterationPBKDF2, 0, r112);
            int r52 = 0;
            for (int r42 = r92 * r10; r92 - r52 > 2 && r42 > 1024; r42 >>>= 1) {
                r52++;
            }
            int r03 = r02 >>> 2;
            for (int r22 = 0; r22 < length; r22 += r03) {
                SMix(r112, r22, r92, r52, r10);
            }
            Pack.intToLittleEndian(r112, bArrSingleIterationPBKDF2, 0);
            return SingleIterationPBKDF2(bArr, bArrSingleIterationPBKDF2, r12);
        } finally {
            Clear(bArrSingleIterationPBKDF2);
            Clear(r112);
        }
    }

    private static void SMix(int[] r19, int r20, int r21, int r22, int r23) {
        int r52 = r21 >>> r22;
        int r72 = 1 << r22;
        int r82 = r52 - 1;
        int r42 = Integers.numberOfTrailingZeros(r21) - r22;
        int r92 = r23 * 32;
        int[] r11 = new int[16];
        int[] r10 = new int[16];
        int[] r12 = new int[r92];
        int[] r13 = new int[r92];
        int[][] r14 = new int[r72][];
        try {
            System.arraycopy(r19, r20, r13, 0, r92);
            int r15 = 0;
            while (r15 < r72) {
                int[] r6 = new int[r52 * r92];
                r14[r15] = r6;
                int r17 = r72;
                int r02 = 0;
                int r73 = 0;
                while (r73 < r52) {
                    System.arraycopy(r13, 0, r6, r02, r92);
                    int r03 = r02 + r92;
                    BlockMix(r13, r11, r10, r12, r23);
                    System.arraycopy(r12, 0, r6, r03, r92);
                    r02 = r03 + r92;
                    BlockMix(r12, r11, r10, r13, r23);
                    r73 += 2;
                    r52 = r52;
                }
                r15++;
                r72 = r17;
            }
            int r04 = r21 - 1;
            for (int r53 = 0; r53 < r21; r53++) {
                int r62 = r13[r92 - 16] & r04;
                System.arraycopy(r14[r62 >>> r42], (r62 & r82) * r92, r12, 0, r92);
                Xor(r12, r13, 0, r12);
                BlockMix(r12, r11, r10, r13, r23);
            }
            System.arraycopy(r13, 0, r19, r20, r92);
            ClearAll(r14);
            ClearAll(new int[][]{r13, r11, r10, r12});
        } catch (Throwable th2) {
            ClearAll(r14);
            ClearAll(new int[][]{r13, r11, r10, r12});
            throw th2;
        }
    }

    private static byte[] SingleIterationPBKDF2(byte[] bArr, byte[] bArr2, int r42) {
        PKCS5S2ParametersGenerator pKCS5S2ParametersGenerator = new PKCS5S2ParametersGenerator(SHA256Digest.newInstance());
        pKCS5S2ParametersGenerator.init(bArr, bArr2, 1);
        return ((KeyParameter) pKCS5S2ParametersGenerator.generateDerivedMacParameters(r42 * 8)).getKey();
    }

    private static void Xor(int[] r32, int[] r42, int r52, int[] r6) {
        for (int length = r6.length - 1; length >= 0; length--) {
            r6[length] = r32[length] ^ r42[r52 + length];
        }
    }

    public static byte[] generate(byte[] bArr, byte[] bArr2, int r52, int r6, int r72, int r82) {
        if (bArr == null) {
            throw new IllegalArgumentException("Passphrase P must be provided.");
        }
        if (bArr2 == null) {
            throw new IllegalArgumentException("Salt S must be provided.");
        }
        if (r52 <= 1 || !isPowerOf2(r52)) {
            throw new IllegalArgumentException("Cost parameter N must be > 1 and a power of 2");
        }
        if (r6 == 1 && r52 >= 65536) {
            throw new IllegalArgumentException("Cost parameter N must be > 1 and < 65536.");
        }
        if (r6 < 1) {
            throw new IllegalArgumentException("Block size r must be >= 1.");
        }
        int r22 = Integer.MAX_VALUE / ((r6 * 128) * 8);
        if (r72 >= 1 && r72 <= r22) {
            if (r82 >= 1) {
                return MFcrypt(bArr, bArr2, r52, r6, r72, r82);
            }
            throw new IllegalArgumentException("Generated key length dkLen must be >= 1.");
        }
        throw new IllegalArgumentException("Parallelisation parameter p must be >= 1 and <= " + r22 + " (based on block size r of " + r6 + ")");
    }

    private static boolean isPowerOf2(int r12) {
        return (r12 & (r12 + (-1))) == 0;
    }
}
