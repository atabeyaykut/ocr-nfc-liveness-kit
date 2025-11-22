package org.bouncycastle.math.ec.rfc7748;

import java.security.SecureRandom;
import org.bouncycastle.math.ec.rfc8032.Ed25519;
import org.bouncycastle.util.Arrays;
import org.jmrtd.lds.iso19794.IrisImageInfo;

/* loaded from: classes2.dex */
public abstract class X25519 {
    private static final int C_A = 486662;
    private static final int C_A24 = 121666;
    public static final int POINT_SIZE = 32;
    public static final int SCALAR_SIZE = 32;

    public static class F extends X25519Field {
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
        return !Arrays.areAllZeroes(bArr3, r52, 32);
    }

    private static int decode32(byte[] bArr, int r32) {
        int r02 = bArr[r32] & 255;
        int r33 = r32 + 1;
        int r03 = r02 | ((bArr[r33] & 255) << 8);
        int r34 = r33 + 1;
        return (bArr[r34 + 1] << 24) | r03 | ((bArr[r34] & 255) << 16);
    }

    private static void decodeScalar(byte[] bArr, int r42, int[] r52) {
        for (int r12 = 0; r12 < 8; r12++) {
            r52[r12] = decode32(bArr, (r12 * 4) + r42);
        }
        r52[0] = r52[0] & (-8);
        int r43 = r52[7] & Integer.MAX_VALUE;
        r52[7] = r43;
        r52[7] = r43 | 1073741824;
    }

    public static void generatePrivateKey(SecureRandom secureRandom, byte[] bArr) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("k");
        }
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & 248);
        byte b10 = (byte) (bArr[31] & 127);
        bArr[31] = b10;
        bArr[31] = (byte) (b10 | 64);
    }

    public static void generatePublicKey(byte[] bArr, int r12, byte[] bArr2, int r32) {
        scalarMultBase(bArr, r12, bArr2, r32);
    }

    private static void pointDouble(int[] r22, int[] r32) {
        int[] r02 = X25519Field.create();
        int[] r12 = X25519Field.create();
        X25519Field.apm(r22, r32, r02, r12);
        X25519Field.sqr(r02, r02);
        X25519Field.sqr(r12, r12);
        X25519Field.mul(r02, r12, r22);
        X25519Field.sub(r02, r12, r02);
        X25519Field.mul(r02, C_A24, r32);
        X25519Field.add(r32, r12, r32);
        X25519Field.mul(r32, r02, r32);
    }

    public static void precompute() {
        Ed25519.precompute();
    }

    public static void scalarMult(byte[] bArr, int r11, byte[] bArr2, int r13, byte[] bArr3, int r15) {
        int[] r02 = new int[8];
        decodeScalar(bArr, r11, r02);
        int[] r10 = X25519Field.create();
        X25519Field.decode(bArr2, r13, r10);
        int[] r112 = X25519Field.create();
        X25519Field.copy(r10, 0, r112, 0);
        int[] r132 = X25519Field.create();
        r132[0] = 1;
        int[] r22 = X25519Field.create();
        r22[0] = 1;
        int[] r32 = X25519Field.create();
        int[] r42 = X25519Field.create();
        int[] r52 = X25519Field.create();
        int r6 = IrisImageInfo.IMAGE_QUAL_UNDEF;
        int r72 = 1;
        while (true) {
            X25519Field.apm(r22, r32, r42, r22);
            X25519Field.apm(r112, r132, r32, r112);
            X25519Field.mul(r42, r112, r42);
            X25519Field.mul(r22, r32, r22);
            X25519Field.sqr(r32, r32);
            X25519Field.sqr(r112, r112);
            X25519Field.sub(r32, r112, r52);
            X25519Field.mul(r52, C_A24, r132);
            X25519Field.add(r132, r112, r132);
            X25519Field.mul(r132, r52, r132);
            X25519Field.mul(r112, r32, r112);
            X25519Field.apm(r42, r22, r22, r32);
            X25519Field.sqr(r22, r22);
            X25519Field.sqr(r32, r32);
            X25519Field.mul(r32, r10, r32);
            r6--;
            int r82 = (r02[r6 >>> 5] >>> (r6 & 31)) & 1;
            int r73 = r72 ^ r82;
            X25519Field.cswap(r73, r112, r22);
            X25519Field.cswap(r73, r132, r32);
            if (r6 < 3) {
                break;
            } else {
                r72 = r82;
            }
        }
        for (int r12 = 0; r12 < 3; r12++) {
            pointDouble(r112, r132);
        }
        X25519Field.inv(r132, r132);
        X25519Field.mul(r112, r132, r112);
        X25519Field.normalize(r112);
        X25519Field.encode(r112, bArr3, r15);
    }

    public static void scalarMultBase(byte[] bArr, int r42, byte[] bArr2, int r6) {
        int[] r02 = X25519Field.create();
        int[] r12 = X25519Field.create();
        Ed25519.scalarMultBaseYZ(Friend.INSTANCE, bArr, r42, r02, r12);
        X25519Field.apm(r12, r02, r02, r12);
        X25519Field.inv(r12, r12);
        X25519Field.mul(r02, r12, r02);
        X25519Field.normalize(r02);
        X25519Field.encode(r02, bArr2, r6);
    }
}
