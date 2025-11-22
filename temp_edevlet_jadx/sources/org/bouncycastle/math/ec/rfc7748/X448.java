package org.bouncycastle.math.ec.rfc7748;

import java.security.SecureRandom;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.math.ec.rfc8032.Ed448;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public abstract class X448 {
    private static final int C_A = 156326;
    private static final int C_A24 = 39082;
    public static final int POINT_SIZE = 56;
    public static final int SCALAR_SIZE = 56;

    public static class F extends X448Field {
        private F() {
        }
    }

    public static class Friend {
        private static final Friend INSTANCE = new Friend();

        private Friend() {
        }
    }

    public static boolean calculateAgreement(byte[] bArr, int r12, byte[] bArr2, int r32, byte[] bArr3, int r52) {
        scalarMult(bArr, r12, bArr2, r32, bArr3, r52);
        return !Arrays.areAllZeroes(bArr3, r52, 56);
    }

    private static int decode32(byte[] bArr, int r32) {
        int r02 = bArr[r32] & 255;
        int r33 = r32 + 1;
        int r03 = r02 | ((bArr[r33] & 255) << 8);
        int r34 = r33 + 1;
        return (bArr[r34 + 1] << 24) | r03 | ((bArr[r34] & 255) << 16);
    }

    private static void decodeScalar(byte[] bArr, int r42, int[] r52) {
        for (int r12 = 0; r12 < 14; r12++) {
            r52[r12] = decode32(bArr, (r12 * 4) + r42);
        }
        r52[0] = r52[0] & (-4);
        r52[13] = r52[13] | Integer.MIN_VALUE;
    }

    public static void generatePrivateKey(SecureRandom secureRandom, byte[] bArr) {
        if (bArr.length != 56) {
            throw new IllegalArgumentException("k");
        }
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & 252);
        bArr[55] = (byte) (bArr[55] | ISOFileInfo.DATA_BYTES1);
    }

    public static void generatePublicKey(byte[] bArr, int r12, byte[] bArr2, int r32) {
        scalarMultBase(bArr, r12, bArr2, r32);
    }

    private static void pointDouble(int[] r22, int[] r32) {
        int[] r02 = X448Field.create();
        int[] r12 = X448Field.create();
        X448Field.add(r22, r32, r02);
        X448Field.sub(r22, r32, r12);
        X448Field.sqr(r02, r02);
        X448Field.sqr(r12, r12);
        X448Field.mul(r02, r12, r22);
        X448Field.sub(r02, r12, r02);
        X448Field.mul(r02, C_A24, r32);
        X448Field.add(r32, r12, r32);
        X448Field.mul(r32, r02, r32);
    }

    public static void precompute() {
        Ed448.precompute();
    }

    public static void scalarMult(byte[] bArr, int r11, byte[] bArr2, int r13, byte[] bArr3, int r15) {
        int[] r02 = new int[14];
        decodeScalar(bArr, r11, r02);
        int[] r10 = X448Field.create();
        X448Field.decode(bArr2, r13, r10);
        int[] r112 = X448Field.create();
        X448Field.copy(r10, 0, r112, 0);
        int[] r132 = X448Field.create();
        r132[0] = 1;
        int[] r22 = X448Field.create();
        r22[0] = 1;
        int[] r32 = X448Field.create();
        int[] r42 = X448Field.create();
        int[] r52 = X448Field.create();
        int r6 = 447;
        int r72 = 1;
        while (true) {
            X448Field.add(r22, r32, r42);
            X448Field.sub(r22, r32, r22);
            X448Field.add(r112, r132, r32);
            X448Field.sub(r112, r132, r112);
            X448Field.mul(r42, r112, r42);
            X448Field.mul(r22, r32, r22);
            X448Field.sqr(r32, r32);
            X448Field.sqr(r112, r112);
            X448Field.sub(r32, r112, r52);
            X448Field.mul(r52, C_A24, r132);
            X448Field.add(r132, r112, r132);
            X448Field.mul(r132, r52, r132);
            X448Field.mul(r112, r32, r112);
            X448Field.sub(r42, r22, r32);
            X448Field.add(r42, r22, r22);
            X448Field.sqr(r22, r22);
            X448Field.sqr(r32, r32);
            X448Field.mul(r32, r10, r32);
            r6--;
            int r82 = (r02[r6 >>> 5] >>> (r6 & 31)) & 1;
            int r73 = r72 ^ r82;
            X448Field.cswap(r73, r112, r22);
            X448Field.cswap(r73, r132, r32);
            if (r6 < 2) {
                break;
            } else {
                r72 = r82;
            }
        }
        for (int r12 = 0; r12 < 2; r12++) {
            pointDouble(r112, r132);
        }
        X448Field.inv(r132, r132);
        X448Field.mul(r112, r132, r112);
        X448Field.normalize(r112);
        X448Field.encode(r112, bArr3, r15);
    }

    public static void scalarMultBase(byte[] bArr, int r42, byte[] bArr2, int r6) {
        int[] r02 = X448Field.create();
        int[] r12 = X448Field.create();
        Ed448.scalarMultBaseXY(Friend.INSTANCE, bArr, r42, r02, r12);
        X448Field.inv(r02, r02);
        X448Field.mul(r02, r12, r02);
        X448Field.sqr(r02, r02);
        X448Field.normalize(r02);
        X448Field.encode(r02, bArr2, r6);
    }
}
