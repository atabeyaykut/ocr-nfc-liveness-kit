package org.bouncycastle.pqc.crypto.crystals.kyber;

import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class KyberEngine {
    private static final int KyberEta2 = 2;
    private static final int KyberIndCpaMsgBytes = 32;
    public static final int KyberN = 256;
    public static final int KyberPolyBytes = 384;
    public static final int KyberQ = 3329;
    public static final int KyberQinv = 62209;
    private static final int KyberSharedSecretBytes = 32;
    public static final int KyberSymBytes = 32;
    private final int CryptoBytes;
    private final int CryptoCipherTextBytes;
    private final int CryptoPublicKeyBytes;
    private final int CryptoSecretKeyBytes;
    private final int KyberCipherTextBytes;
    private final int KyberEta1;
    private final int KyberIndCpaBytes;
    private final int KyberIndCpaPublicKeyBytes;
    private final int KyberIndCpaSecretKeyBytes;
    private final int KyberK;
    private final int KyberPolyCompressedBytes;
    private final int KyberPolyVecBytes;
    private final int KyberPolyVecCompressedBytes;
    private final int KyberPublicKeyBytes;
    private final int KyberSecretKeyBytes;
    private KyberIndCpa indCpa;
    private SecureRandom random;
    private final int sessionKeyLength;
    private final Symmetric symmetric;

    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public KyberEngine(int r5, boolean r6) {
        /*
            r4 = this;
            r4.<init>()
            r4.KyberK = r5
            r0 = 128(0x80, float:1.8E-43)
            r1 = 3
            r2 = 2
            r3 = 32
            if (r5 == r2) goto L2c
            if (r5 == r1) goto L29
            r0 = 4
            if (r5 != r0) goto L1b
            r4.KyberEta1 = r2
            r0 = 160(0xa0, float:2.24E-43)
            r4.KyberPolyCompressedBytes = r0
            int r0 = r5 * 352
            goto L32
        L1b:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "K: "
            java.lang.String r1 = " is not supported for Crystals Kyber"
            java.lang.String r5 = androidx.appcompat.graphics.drawable.a.f(r0, r5, r1)
            r6.<init>(r5)
            throw r6
        L29:
            r4.KyberEta1 = r2
            goto L2e
        L2c:
            r4.KyberEta1 = r1
        L2e:
            r4.KyberPolyCompressedBytes = r0
            int r0 = r5 * 320
        L32:
            r4.KyberPolyVecCompressedBytes = r0
            r4.sessionKeyLength = r3
            int r5 = r5 * 384
            r4.KyberPolyVecBytes = r5
            int r0 = r5 + 32
            r4.KyberIndCpaPublicKeyBytes = r0
            r4.KyberIndCpaSecretKeyBytes = r5
            int r1 = r4.KyberPolyVecCompressedBytes
            int r2 = r4.KyberPolyCompressedBytes
            int r1 = r1 + r2
            r4.KyberIndCpaBytes = r1
            r4.KyberPublicKeyBytes = r0
            int r5 = r5 + r0
            int r5 = r5 + 64
            r4.KyberSecretKeyBytes = r5
            r4.KyberCipherTextBytes = r1
            r4.CryptoBytes = r3
            r4.CryptoSecretKeyBytes = r5
            r4.CryptoPublicKeyBytes = r0
            r4.CryptoCipherTextBytes = r1
            if (r6 == 0) goto L60
            org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric$AesSymmetric r5 = new org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric$AesSymmetric
            r5.<init>()
            goto L65
        L60:
            org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric$ShakeSymmetric r5 = new org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric$ShakeSymmetric
            r5.<init>()
        L65:
            r4.symmetric = r5
            org.bouncycastle.pqc.crypto.crystals.kyber.KyberIndCpa r5 = new org.bouncycastle.pqc.crypto.crystals.kyber.KyberIndCpa
            r5.<init>(r4)
            r4.indCpa = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine.<init>(int, boolean):void");
    }

    private void cmov(byte[] bArr, byte[] bArr2, int r42, boolean z10) {
        if (z10) {
            System.arraycopy(bArr2, 0, bArr, 0, r42);
        } else {
            System.arraycopy(bArr, 0, bArr, 0, r42);
        }
    }

    public static int getKyberEta2() {
        return 2;
    }

    public static int getKyberIndCpaMsgBytes() {
        return 32;
    }

    public byte[][] generateKemKeyPair() {
        byte[][] bArrGenerateKeyPair = this.indCpa.generateKeyPair();
        int r12 = this.KyberIndCpaSecretKeyBytes;
        byte[] bArr = new byte[r12];
        System.arraycopy(bArrGenerateKeyPair[1], 0, bArr, 0, r12);
        byte[] bArr2 = new byte[32];
        this.symmetric.hash_h(bArr2, bArrGenerateKeyPair[0], 0);
        byte[] bArr3 = new byte[32];
        this.random.nextBytes(bArr3);
        int r6 = this.KyberIndCpaPublicKeyBytes;
        byte[] bArr4 = new byte[r6];
        System.arraycopy(bArrGenerateKeyPair[0], 0, bArr4, 0, r6);
        int r82 = r6 - 32;
        return new byte[][]{Arrays.copyOfRange(bArr4, 0, r82), Arrays.copyOfRange(bArr4, r82, r6), bArr, bArr2, bArr3};
    }

    public int getCryptoBytes() {
        return this.CryptoBytes;
    }

    public int getCryptoCipherTextBytes() {
        return this.CryptoCipherTextBytes;
    }

    public int getCryptoPublicKeyBytes() {
        return this.CryptoPublicKeyBytes;
    }

    public int getCryptoSecretKeyBytes() {
        return this.CryptoSecretKeyBytes;
    }

    public int getKyberCipherTextBytes() {
        return this.KyberCipherTextBytes;
    }

    public int getKyberEta1() {
        return this.KyberEta1;
    }

    public int getKyberIndCpaBytes() {
        return this.KyberIndCpaBytes;
    }

    public int getKyberIndCpaPublicKeyBytes() {
        return this.KyberIndCpaPublicKeyBytes;
    }

    public int getKyberIndCpaSecretKeyBytes() {
        return this.KyberIndCpaSecretKeyBytes;
    }

    public int getKyberK() {
        return this.KyberK;
    }

    public int getKyberPolyCompressedBytes() {
        return this.KyberPolyCompressedBytes;
    }

    public int getKyberPolyVecBytes() {
        return this.KyberPolyVecBytes;
    }

    public int getKyberPolyVecCompressedBytes() {
        return this.KyberPolyVecCompressedBytes;
    }

    public int getKyberPublicKeyBytes() {
        return this.KyberPublicKeyBytes;
    }

    public int getKyberSecretKeyBytes() {
        return this.KyberSecretKeyBytes;
    }

    public void getRandomBytes(byte[] bArr) {
        this.random.nextBytes(bArr);
    }

    public Symmetric getSymmetric() {
        return this.symmetric;
    }

    public void init(SecureRandom secureRandom) {
        this.random = secureRandom;
    }

    public byte[] kemDecrypt(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[64];
        byte[] bArr4 = new byte[64];
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, this.KyberIndCpaSecretKeyBytes, bArr2.length);
        System.arraycopy(this.indCpa.decrypt(bArr, bArr2), 0, bArr3, 0, 32);
        System.arraycopy(bArr2, this.KyberSecretKeyBytes - 64, bArr3, 32, 32);
        this.symmetric.hash_g(bArr4, bArr3);
        boolean z10 = !Arrays.constantTimeAreEqual(bArr, this.indCpa.encrypt(Arrays.copyOfRange(bArr3, 0, 32), bArrCopyOfRange, Arrays.copyOfRange(bArr4, 32, 64)));
        this.symmetric.hash_h(bArr4, bArr, 32);
        int r82 = this.KyberSecretKeyBytes;
        cmov(bArr4, Arrays.copyOfRange(bArr2, r82 - 32, r82), 32, z10);
        return Arrays.copyOfRange(bArr4, 0, this.sessionKeyLength);
    }

    public byte[][] kemEncrypt(byte[] bArr) {
        if (bArr.length != this.KyberIndCpaPublicKeyBytes) {
            throw new IllegalArgumentException("Input validation Error: Type check failed for ml-kem encapsulation");
        }
        PolyVec polyVec = new PolyVec(this);
        if (!Arrays.areEqual(this.indCpa.packPublicKey(polyVec, this.indCpa.unpackPublicKey(polyVec, bArr)), bArr)) {
            throw new IllegalArgumentException("Input validation: Modulus check failed for ml-kem encapsulation");
        }
        byte[] bArr2 = new byte[64];
        byte[] bArr3 = new byte[64];
        byte[] bArr4 = new byte[32];
        this.random.nextBytes(bArr4);
        System.arraycopy(bArr4, 0, bArr2, 0, 32);
        this.symmetric.hash_h(bArr2, bArr, 32);
        this.symmetric.hash_g(bArr3, bArr2);
        byte[] bArrEncrypt = this.indCpa.encrypt(Arrays.copyOfRange(bArr2, 0, 32), bArr, Arrays.copyOfRange(bArr3, 32, 64));
        int r02 = this.sessionKeyLength;
        byte[] bArr5 = new byte[r02];
        System.arraycopy(bArr3, 0, bArr5, 0, r02);
        return new byte[][]{bArr5, bArrEncrypt};
    }
}
