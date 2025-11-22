package org.bouncycastle.pqc.crypto.crystals.dilithium;

import androidx.appcompat.graphics.drawable.a;
import java.security.SecureRandom;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.pqc.crypto.crystals.dilithium.Symmetric;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class DilithiumEngine {
    public static final int CrhBytes = 64;
    public static final int DilithiumD = 13;
    public static final int DilithiumN = 256;
    public static final int DilithiumPolyT0PackedBytes = 416;
    public static final int DilithiumPolyT1PackedBytes = 320;
    public static final int DilithiumQ = 8380417;
    public static final int DilithiumQinv = 58728449;
    public static final int DilithiumRootOfUnity = 1753;
    public static final int RndBytes = 32;
    public static final int SeedBytes = 32;
    public static final int TrBytes = 64;
    private final int CryptoBytes;
    private final int CryptoPublicKeyBytes;
    private final int CryptoSecretKeyBytes;
    private final int DilithiumBeta;
    private final int DilithiumCTilde;
    private final int DilithiumEta;
    private final int DilithiumGamma1;
    private final int DilithiumGamma2;
    private final int DilithiumK;
    private final int DilithiumL;
    private final int DilithiumMode;
    private final int DilithiumOmega;
    private final int DilithiumPolyEtaPackedBytes;
    private final int DilithiumPolyVecHPackedBytes;
    private final int DilithiumPolyW1PackedBytes;
    private final int DilithiumPolyZPackedBytes;
    private final int DilithiumTau;
    private final int PolyUniformGamma1NBlocks;
    private final SecureRandom random;
    private final SHAKEDigest shake128Digest = new SHAKEDigest(128);
    private final SHAKEDigest shake256Digest = new SHAKEDigest(256);
    private final Symmetric symmetric;

    public DilithiumEngine(int r12, SecureRandom secureRandom, boolean z10) {
        int r122;
        int r13;
        int r123;
        this.DilithiumMode = r12;
        if (r12 != 2) {
            if (r12 == 3) {
                this.DilithiumK = 6;
                this.DilithiumL = 5;
                this.DilithiumEta = 4;
                this.DilithiumTau = 49;
                this.DilithiumBeta = 196;
                this.DilithiumGamma1 = 524288;
                this.DilithiumGamma2 = 261888;
                this.DilithiumOmega = 55;
                this.DilithiumPolyZPackedBytes = 640;
                this.DilithiumPolyW1PackedBytes = 128;
                this.DilithiumPolyEtaPackedBytes = 128;
                r123 = 48;
            } else {
                if (r12 != 5) {
                    throw new IllegalArgumentException(a.f("The mode ", r12, "is not supported by Crystals Dilithium!"));
                }
                this.DilithiumK = 8;
                this.DilithiumL = 7;
                this.DilithiumEta = 2;
                this.DilithiumTau = 60;
                this.DilithiumBeta = 120;
                this.DilithiumGamma1 = 524288;
                this.DilithiumGamma2 = 261888;
                this.DilithiumOmega = 75;
                this.DilithiumPolyZPackedBytes = 640;
                this.DilithiumPolyW1PackedBytes = 128;
                this.DilithiumPolyEtaPackedBytes = 96;
                r123 = 64;
            }
            this.DilithiumCTilde = r123;
        } else {
            this.DilithiumK = 4;
            this.DilithiumL = 4;
            this.DilithiumEta = 2;
            this.DilithiumTau = 39;
            this.DilithiumBeta = 78;
            this.DilithiumGamma1 = 131072;
            this.DilithiumGamma2 = 95232;
            this.DilithiumOmega = 80;
            this.DilithiumPolyZPackedBytes = 576;
            this.DilithiumPolyW1PackedBytes = 192;
            this.DilithiumPolyEtaPackedBytes = 96;
            this.DilithiumCTilde = 32;
        }
        this.symmetric = z10 ? new Symmetric.AesSymmetric() : new Symmetric.ShakeSymmetric();
        this.random = secureRandom;
        int r124 = this.DilithiumOmega;
        int r132 = this.DilithiumK;
        int r125 = r124 + r132;
        this.DilithiumPolyVecHPackedBytes = r125;
        this.CryptoPublicKeyBytes = (r132 * DilithiumPolyT1PackedBytes) + 32;
        int r14 = this.DilithiumL;
        int r02 = this.DilithiumPolyEtaPackedBytes;
        this.CryptoSecretKeyBytes = (r132 * 416) + (r02 * r132) + (r14 * r02) + 96;
        this.CryptoBytes = androidx.camera.core.impl.a.d(r14, this.DilithiumPolyZPackedBytes, this.DilithiumCTilde, r125);
        int r126 = this.DilithiumGamma1;
        if (r126 == 131072) {
            r122 = this.symmetric.stream256BlockBytes;
            r13 = r122 + 576;
        } else {
            if (r126 != 524288) {
                throw new RuntimeException("Wrong Dilithium Gamma1!");
            }
            r122 = this.symmetric.stream256BlockBytes;
            r13 = r122 + 640;
        }
        this.PolyUniformGamma1NBlocks = (r13 - 1) / r122;
    }

    public Symmetric GetSymmetric() {
        return this.symmetric;
    }

    public byte[][] generateKeyPair() {
        byte[] bArr = new byte[32];
        byte[] bArr2 = new byte[128];
        byte[] bArr3 = new byte[64];
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[64];
        byte[] bArr6 = new byte[32];
        PolyVecMatrix polyVecMatrix = new PolyVecMatrix(this);
        PolyVecL polyVecL = new PolyVecL(this);
        PolyVecK polyVecK = new PolyVecK(this);
        PolyVecK polyVecK2 = new PolyVecK(this);
        PolyVecK polyVecK3 = new PolyVecK(this);
        this.random.nextBytes(bArr);
        this.shake256Digest.update(bArr, 0, 32);
        this.shake256Digest.doFinal(bArr2, 0, 128);
        System.arraycopy(bArr2, 0, bArr4, 0, 32);
        System.arraycopy(bArr2, 32, bArr5, 0, 64);
        System.arraycopy(bArr2, 96, bArr6, 0, 32);
        polyVecMatrix.expandMatrix(bArr4);
        polyVecL.uniformEta(bArr5, (short) 0);
        polyVecK.uniformEta(bArr5, (short) this.DilithiumL);
        PolyVecL polyVecL2 = new PolyVecL(this);
        polyVecL.copyPolyVecL(polyVecL2);
        polyVecL2.polyVecNtt();
        polyVecMatrix.pointwiseMontgomery(polyVecK2, polyVecL2);
        polyVecK2.reduce();
        polyVecK2.invNttToMont();
        polyVecK2.addPolyVecK(polyVecK);
        polyVecK2.conditionalAddQ();
        polyVecK2.power2Round(polyVecK3);
        byte[] bArrPackPublicKey = Packing.packPublicKey(polyVecK2, this);
        this.shake256Digest.update(bArr4, 0, 32);
        this.shake256Digest.update(bArrPackPublicKey, 0, bArrPackPublicKey.length);
        this.shake256Digest.doFinal(bArr3, 0, 64);
        byte[][] bArrPackSecretKey = Packing.packSecretKey(bArr4, bArr3, bArr6, polyVecK3, polyVecL, polyVecK, this);
        return new byte[][]{bArrPackSecretKey[0], bArrPackSecretKey[1], bArrPackSecretKey[2], bArrPackSecretKey[3], bArrPackSecretKey[4], bArrPackSecretKey[5], bArrPackPublicKey};
    }

    public int getCryptoBytes() {
        return this.CryptoBytes;
    }

    public int getCryptoPublicKeyBytes() {
        return this.CryptoPublicKeyBytes;
    }

    public int getCryptoSecretKeyBytes() {
        return this.CryptoSecretKeyBytes;
    }

    public int getDilithiumBeta() {
        return this.DilithiumBeta;
    }

    public int getDilithiumCTilde() {
        return this.DilithiumCTilde;
    }

    public int getDilithiumEta() {
        return this.DilithiumEta;
    }

    public int getDilithiumGamma1() {
        return this.DilithiumGamma1;
    }

    public int getDilithiumGamma2() {
        return this.DilithiumGamma2;
    }

    public int getDilithiumK() {
        return this.DilithiumK;
    }

    public int getDilithiumL() {
        return this.DilithiumL;
    }

    public int getDilithiumMode() {
        return this.DilithiumMode;
    }

    public int getDilithiumOmega() {
        return this.DilithiumOmega;
    }

    public int getDilithiumPolyEtaPackedBytes() {
        return this.DilithiumPolyEtaPackedBytes;
    }

    public int getDilithiumPolyVecHPackedBytes() {
        return this.DilithiumPolyVecHPackedBytes;
    }

    public int getDilithiumPolyW1PackedBytes() {
        return this.DilithiumPolyW1PackedBytes;
    }

    public int getDilithiumPolyZPackedBytes() {
        return this.DilithiumPolyZPackedBytes;
    }

    public int getDilithiumTau() {
        return this.DilithiumTau;
    }

    public int getPolyUniformGamma1NBlocks() {
        return this.PolyUniformGamma1NBlocks;
    }

    public SHAKEDigest getShake128Digest() {
        return this.shake128Digest;
    }

    public SHAKEDigest getShake256Digest() {
        return this.shake256Digest;
    }

    public byte[] sign(byte[] bArr, int r22, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7) {
        return signSignature(bArr, r22, bArr2, bArr3, bArr4, bArr5, bArr6, bArr7);
    }

    public boolean signOpen(byte[] bArr, byte[] bArr2, int r10, byte[] bArr3, byte[] bArr4) {
        return signVerify(bArr2, r10, bArr, bArr.length, bArr3, bArr4);
    }

    public byte[] signSignature(byte[] bArr, int r23, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7) {
        PolyVecK polyVecK;
        PolyVecK polyVecK2;
        byte[] bArr8 = new byte[this.CryptoBytes + r23];
        byte[] bArr9 = new byte[64];
        byte[] bArr10 = new byte[64];
        PolyVecL polyVecL = new PolyVecL(this);
        PolyVecL polyVecL2 = new PolyVecL(this);
        PolyVecL polyVecL3 = new PolyVecL(this);
        PolyVecK polyVecK3 = new PolyVecK(this);
        PolyVecK polyVecK4 = new PolyVecK(this);
        PolyVecK polyVecK5 = new PolyVecK(this);
        PolyVecK polyVecK6 = new PolyVecK(this);
        PolyVecK polyVecK7 = new PolyVecK(this);
        Poly poly = new Poly(this);
        PolyVecMatrix polyVecMatrix = new PolyVecMatrix(this);
        Poly poly2 = poly;
        PolyVecK polyVecK8 = polyVecK7;
        PolyVecK polyVecK9 = polyVecK6;
        PolyVecK polyVecK10 = polyVecK5;
        PolyVecK polyVecK11 = polyVecK4;
        PolyVecK polyVecK12 = polyVecK3;
        Packing.unpackSecretKey(polyVecK3, polyVecL, polyVecK4, bArr5, bArr6, bArr7, this);
        int r12 = 0;
        this.shake256Digest.update(bArr4, 0, 64);
        this.shake256Digest.update(bArr, 0, r23);
        this.shake256Digest.doFinal(bArr9, 0, 64);
        byte[] bArr11 = new byte[32];
        SecureRandom secureRandom = this.random;
        if (secureRandom != null) {
            secureRandom.nextBytes(bArr11);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr3, 128);
        System.arraycopy(bArr11, 0, bArrCopyOf, 32, 32);
        System.arraycopy(bArr9, 0, bArrCopyOf, 64, 64);
        this.shake256Digest.update(bArrCopyOf, 0, 128);
        this.shake256Digest.doFinal(bArr10, 0, 64);
        polyVecMatrix.expandMatrix(bArr2);
        polyVecL.polyVecNtt();
        polyVecK11.polyVecNtt();
        polyVecK12.polyVecNtt();
        int r22 = 0;
        short s7 = 0;
        while (r22 < 1000) {
            r22++;
            short s10 = (short) (s7 + 1);
            polyVecL2.uniformGamma1(bArr10, s7);
            polyVecL2.copyPolyVecL(polyVecL3);
            polyVecL3.polyVecNtt();
            PolyVecK polyVecK13 = polyVecK10;
            polyVecMatrix.pointwiseMontgomery(polyVecK13, polyVecL3);
            polyVecK13.reduce();
            polyVecK13.invNttToMont();
            polyVecK13.conditionalAddQ();
            PolyVecK polyVecK14 = polyVecK9;
            polyVecK13.decompose(polyVecK14);
            System.arraycopy(polyVecK13.packW1(), r12, bArr8, r12, this.DilithiumK * this.DilithiumPolyW1PackedBytes);
            this.shake256Digest.update(bArr9, r12, 64);
            this.shake256Digest.update(bArr8, r12, this.DilithiumK * this.DilithiumPolyW1PackedBytes);
            this.shake256Digest.doFinal(bArr8, r12, this.DilithiumCTilde);
            Poly poly3 = poly2;
            poly3.challenge(Arrays.copyOfRange(bArr8, r12, 32));
            poly3.polyNtt();
            polyVecL3.pointwisePolyMontgomery(poly3, polyVecL);
            polyVecL3.invNttToMont();
            polyVecL3.addPolyVecL(polyVecL2);
            polyVecL3.reduce();
            if (polyVecL3.checkNorm(this.DilithiumGamma1 - this.DilithiumBeta)) {
                polyVecK2 = polyVecK11;
                polyVecK = polyVecK8;
            } else {
                PolyVecK polyVecK15 = polyVecK11;
                polyVecK = polyVecK8;
                polyVecK.pointwisePolyMontgomery(poly3, polyVecK15);
                polyVecK.invNttToMont();
                polyVecK14.subtract(polyVecK);
                polyVecK14.reduce();
                polyVecK2 = polyVecK15;
                if (polyVecK14.checkNorm(this.DilithiumGamma2 - this.DilithiumBeta)) {
                    continue;
                } else {
                    PolyVecK polyVecK16 = polyVecK12;
                    polyVecK.pointwisePolyMontgomery(poly3, polyVecK16);
                    polyVecK.invNttToMont();
                    polyVecK.reduce();
                    if (polyVecK.checkNorm(this.DilithiumGamma2)) {
                        polyVecK12 = polyVecK16;
                    } else {
                        polyVecK14.addPolyVecK(polyVecK);
                        polyVecK14.conditionalAddQ();
                        polyVecK12 = polyVecK16;
                        if (polyVecK.makeHint(polyVecK14, polyVecK13) <= this.DilithiumOmega) {
                            return Packing.packSignature(bArr8, polyVecL3, polyVecK, this);
                        }
                    }
                }
            }
            polyVecK10 = polyVecK13;
            s7 = s10;
            polyVecK9 = polyVecK14;
            polyVecK8 = polyVecK;
            polyVecK11 = polyVecK2;
            r12 = 0;
            poly2 = poly3;
        }
        return null;
    }

    public boolean signVerify(byte[] bArr, int r18, byte[] bArr2, int r20, byte[] bArr3, byte[] bArr4) {
        byte[] bArr5 = new byte[64];
        byte[] bArr6 = new byte[this.DilithiumCTilde];
        Poly poly = new Poly(this);
        PolyVecMatrix polyVecMatrix = new PolyVecMatrix(this);
        PolyVecL polyVecL = new PolyVecL(this);
        PolyVecK polyVecK = new PolyVecK(this);
        PolyVecK polyVecK2 = new PolyVecK(this);
        PolyVecK polyVecK3 = new PolyVecK(this);
        if (r18 != this.CryptoBytes) {
            return false;
        }
        PolyVecK polyVecKUnpackPublicKey = Packing.unpackPublicKey(polyVecK, bArr4, this);
        if (!Packing.unpackSignature(polyVecL, polyVecK3, bArr, this)) {
            return false;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, this.DilithiumCTilde);
        if (polyVecL.checkNorm(getDilithiumGamma1() - getDilithiumBeta())) {
            return false;
        }
        this.shake256Digest.update(bArr3, 0, bArr3.length);
        this.shake256Digest.update(bArr4, 0, bArr4.length);
        this.shake256Digest.doFinal(bArr5, 0, 64);
        this.shake256Digest.update(bArr5, 0, 64);
        this.shake256Digest.update(bArr2, 0, r20);
        this.shake256Digest.doFinal(bArr5, 0);
        poly.challenge(Arrays.copyOfRange(bArrCopyOfRange, 0, 32));
        polyVecMatrix.expandMatrix(bArr3);
        polyVecL.polyVecNtt();
        polyVecMatrix.pointwiseMontgomery(polyVecK2, polyVecL);
        poly.polyNtt();
        polyVecKUnpackPublicKey.shiftLeft();
        polyVecKUnpackPublicKey.polyVecNtt();
        polyVecKUnpackPublicKey.pointwisePolyMontgomery(poly, polyVecKUnpackPublicKey);
        polyVecK2.subtract(polyVecKUnpackPublicKey);
        polyVecK2.reduce();
        polyVecK2.invNttToMont();
        polyVecK2.conditionalAddQ();
        polyVecK2.useHint(polyVecK2, polyVecK3);
        byte[] bArrPackW1 = polyVecK2.packW1();
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr5, 0, 64);
        sHAKEDigest.update(bArrPackW1, 0, this.DilithiumK * this.DilithiumPolyW1PackedBytes);
        sHAKEDigest.doFinal(bArr6, 0, this.DilithiumCTilde);
        for (int r22 = 0; r22 < this.DilithiumCTilde; r22++) {
            if (bArrCopyOfRange[r22] != bArr6[r22]) {
                return false;
            }
        }
        return true;
    }
}
