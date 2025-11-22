package org.bouncycastle.pqc.crypto.crystals.dilithium;

import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class Packing {
    public static byte[] packPublicKey(PolyVecK polyVecK, DilithiumEngine dilithiumEngine) {
        byte[] bArr = new byte[dilithiumEngine.getCryptoPublicKeyBytes() - 32];
        for (int r22 = 0; r22 < dilithiumEngine.getDilithiumK(); r22++) {
            System.arraycopy(polyVecK.getVectorIndex(r22).polyt1Pack(), 0, bArr, r22 * DilithiumEngine.DilithiumPolyT1PackedBytes, DilithiumEngine.DilithiumPolyT1PackedBytes);
        }
        return bArr;
    }

    public static byte[][] packSecretKey(byte[] bArr, byte[] bArr2, byte[] bArr3, PolyVecK polyVecK, PolyVecL polyVecL, PolyVecK polyVecK2, DilithiumEngine dilithiumEngine) {
        byte[][] bArr4 = new byte[6][];
        bArr4[0] = bArr;
        bArr4[1] = bArr3;
        bArr4[2] = bArr2;
        bArr4[3] = new byte[dilithiumEngine.getDilithiumL() * dilithiumEngine.getDilithiumPolyEtaPackedBytes()];
        for (int r42 = 0; r42 < dilithiumEngine.getDilithiumL(); r42++) {
            polyVecL.getVectorIndex(r42).polyEtaPack(bArr4[3], dilithiumEngine.getDilithiumPolyEtaPackedBytes() * r42);
        }
        bArr4[4] = new byte[dilithiumEngine.getDilithiumK() * dilithiumEngine.getDilithiumPolyEtaPackedBytes()];
        for (int r43 = 0; r43 < dilithiumEngine.getDilithiumK(); r43++) {
            polyVecK2.getVectorIndex(r43).polyEtaPack(bArr4[4], dilithiumEngine.getDilithiumPolyEtaPackedBytes() * r43);
        }
        bArr4[5] = new byte[dilithiumEngine.getDilithiumK() * 416];
        for (int r12 = 0; r12 < dilithiumEngine.getDilithiumK(); r12++) {
            polyVecK.getVectorIndex(r12).polyt0Pack(bArr4[5], r12 * 416);
        }
        return bArr4;
    }

    public static byte[] packSignature(byte[] bArr, PolyVecL polyVecL, PolyVecK polyVecK, DilithiumEngine dilithiumEngine) {
        byte[] bArr2 = new byte[dilithiumEngine.getCryptoBytes()];
        System.arraycopy(bArr, 0, bArr2, 0, dilithiumEngine.getDilithiumCTilde());
        int dilithiumCTilde = dilithiumEngine.getDilithiumCTilde() + 0;
        for (int r12 = 0; r12 < dilithiumEngine.getDilithiumL(); r12++) {
            System.arraycopy(polyVecL.getVectorIndex(r12).zPack(), 0, bArr2, (dilithiumEngine.getDilithiumPolyZPackedBytes() * r12) + dilithiumCTilde, dilithiumEngine.getDilithiumPolyZPackedBytes());
        }
        int dilithiumL = (dilithiumEngine.getDilithiumL() * dilithiumEngine.getDilithiumPolyZPackedBytes()) + dilithiumCTilde;
        for (int r6 = 0; r6 < dilithiumEngine.getDilithiumOmega() + dilithiumEngine.getDilithiumK(); r6++) {
            bArr2[dilithiumL + r6] = 0;
        }
        int r13 = 0;
        for (int r62 = 0; r62 < dilithiumEngine.getDilithiumK(); r62++) {
            for (int r32 = 0; r32 < 256; r32++) {
                if (polyVecK.getVectorIndex(r62).getCoeffIndex(r32) != 0) {
                    bArr2[r13 + dilithiumL] = (byte) r32;
                    r13++;
                }
            }
            bArr2[dilithiumEngine.getDilithiumOmega() + dilithiumL + r62] = (byte) r13;
        }
        return bArr2;
    }

    public static PolyVecK unpackPublicKey(PolyVecK polyVecK, byte[] bArr, DilithiumEngine dilithiumEngine) {
        int r02 = 0;
        while (r02 < dilithiumEngine.getDilithiumK()) {
            Poly vectorIndex = polyVecK.getVectorIndex(r02);
            int r22 = r02 * DilithiumEngine.DilithiumPolyT1PackedBytes;
            r02++;
            vectorIndex.polyt1Unpack(Arrays.copyOfRange(bArr, r22, (r02 * DilithiumEngine.DilithiumPolyT1PackedBytes) + 32));
        }
        return polyVecK;
    }

    public static void unpackSecretKey(PolyVecK polyVecK, PolyVecL polyVecL, PolyVecK polyVecK2, byte[] bArr, byte[] bArr2, byte[] bArr3, DilithiumEngine dilithiumEngine) {
        for (int r12 = 0; r12 < dilithiumEngine.getDilithiumL(); r12++) {
            polyVecL.getVectorIndex(r12).polyEtaUnpack(bArr2, dilithiumEngine.getDilithiumPolyEtaPackedBytes() * r12);
        }
        for (int r52 = 0; r52 < dilithiumEngine.getDilithiumK(); r52++) {
            polyVecK2.getVectorIndex(r52).polyEtaUnpack(bArr3, dilithiumEngine.getDilithiumPolyEtaPackedBytes() * r52);
        }
        for (int r02 = 0; r02 < dilithiumEngine.getDilithiumK(); r02++) {
            polyVecK.getVectorIndex(r02).polyt0Unpack(bArr, r02 * 416);
        }
    }

    public static boolean unpackSignature(PolyVecL polyVecL, PolyVecK polyVecK, byte[] bArr, DilithiumEngine dilithiumEngine) {
        int dilithiumCTilde = dilithiumEngine.getDilithiumCTilde();
        int r22 = 0;
        while (r22 < dilithiumEngine.getDilithiumL()) {
            Poly vectorIndex = polyVecL.getVectorIndex(r22);
            int dilithiumPolyZPackedBytes = (dilithiumEngine.getDilithiumPolyZPackedBytes() * r22) + dilithiumCTilde;
            r22++;
            vectorIndex.zUnpack(Arrays.copyOfRange(bArr, dilithiumPolyZPackedBytes, (dilithiumEngine.getDilithiumPolyZPackedBytes() * r22) + dilithiumCTilde));
        }
        int dilithiumL = (dilithiumEngine.getDilithiumL() * dilithiumEngine.getDilithiumPolyZPackedBytes()) + dilithiumCTilde;
        int r23 = 0;
        for (int r02 = 0; r02 < dilithiumEngine.getDilithiumK(); r02++) {
            for (int r32 = 0; r32 < 256; r32++) {
                polyVecK.getVectorIndex(r02).setCoeffIndex(r32, 0);
            }
            if ((bArr[dilithiumEngine.getDilithiumOmega() + dilithiumL + r02] & 255) < r23 || (bArr[dilithiumEngine.getDilithiumOmega() + dilithiumL + r02] & 255) > dilithiumEngine.getDilithiumOmega()) {
                return false;
            }
            for (int r33 = r23; r33 < (bArr[dilithiumEngine.getDilithiumOmega() + dilithiumL + r02] & 255); r33++) {
                if (r33 > r23) {
                    int r52 = dilithiumL + r33;
                    if ((bArr[r52] & 255) <= (bArr[r52 - 1] & 255)) {
                        return false;
                    }
                }
                polyVecK.getVectorIndex(r02).setCoeffIndex(bArr[dilithiumL + r33] & 255, 1);
            }
            r23 = bArr[dilithiumEngine.getDilithiumOmega() + dilithiumL + r02];
        }
        while (r23 < dilithiumEngine.getDilithiumOmega()) {
            if ((bArr[dilithiumL + r23] & 255) != 0) {
                return false;
            }
            r23++;
        }
        return true;
    }
}
