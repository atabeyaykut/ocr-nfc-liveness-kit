package org.bouncycastle.pqc.crypto.hqc;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class HQCEngine {
    private int K_BYTE;
    private int K_BYTE_64;
    private int N1N2_BYTE;
    private int N1N2_BYTE_64;
    private int N1_BYTE;
    private int N1_BYTE_64;
    private int N_BYTE;
    private int N_BYTE_64;
    private long RED_MASK;
    private int delta;
    private int fft;

    /* renamed from: g, reason: collision with root package name */
    private int f11895g;
    private int[] generatorPoly;
    private GF2PolynomialCalculator gfCalculator;

    /* renamed from: k, reason: collision with root package name */
    private int f11896k;
    private int mulParam;

    /* renamed from: n, reason: collision with root package name */
    private int f11897n;

    /* renamed from: n1, reason: collision with root package name */
    private int f11898n1;
    private int n1n2;

    /* renamed from: n2, reason: collision with root package name */
    private int f11899n2;
    private int rejectionThreshold;
    private int w;

    /* renamed from: we, reason: collision with root package name */
    private int f11900we;
    private int wr;
    private int SEED_SIZE = 40;
    private byte G_FCT_DOMAIN = 3;
    private byte H_FCT_DOMAIN = 4;
    private byte K_FCT_DOMAIN = 5;
    private int GF_POLY_WT = 5;
    private int GF_POLY_M2 = 4;
    private int SALT_SIZE_BYTES = 16;
    private int SALT_SIZE_64 = 2;
    private int SHA512_BYTES = 64;

    public HQCEngine(int r32, int r42, int r52, int r6, int r72, int r82, int r92, int r10, int r11, int r12, int r13, int[] r14) {
        this.f11897n = r32;
        this.f11896k = r6;
        this.delta = r82;
        this.w = r92;
        this.wr = r10;
        this.f11900we = r11;
        this.f11898n1 = r42;
        this.f11899n2 = r52;
        int r83 = r42 * r52;
        this.n1n2 = r83;
        this.generatorPoly = r14;
        this.f11895g = r72;
        this.rejectionThreshold = r12;
        this.fft = r13;
        this.mulParam = (int) Math.ceil(r52 / 128);
        this.N_BYTE = Utils.getByteSizeFromBitSize(r32);
        this.K_BYTE = r6;
        this.N_BYTE_64 = Utils.getByte64SizeFromBitSize(r32);
        this.K_BYTE_64 = Utils.getByteSizeFromBitSize(r6);
        this.N1_BYTE_64 = Utils.getByteSizeFromBitSize(r42);
        this.N1N2_BYTE_64 = Utils.getByte64SizeFromBitSize(r83);
        this.N1N2_BYTE = Utils.getByteSizeFromBitSize(r83);
        this.N1_BYTE = Utils.getByteSizeFromBitSize(r42);
        long j10 = (1 << ((int) (r32 % 64))) - 1;
        this.RED_MASK = j10;
        this.gfCalculator = new GF2PolynomialCalculator(this.N_BYTE_64, r32, j10);
    }

    private void decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, long[] jArr) {
        long[] jArr2 = new long[this.N_BYTE_64];
        Utils.fromByteArrayToLongArray(jArr2, bArr3);
        int r13 = this.N1N2_BYTE_64;
        long[] jArr3 = new long[r13];
        Utils.fromByteArrayToLongArray(jArr3, bArr4);
        long[] jArr4 = new long[this.N_BYTE_64];
        System.arraycopy(jArr3, 0, jArr4, 0, r13);
        long[] jArr5 = new long[this.N_BYTE_64];
        this.gfCalculator.multLongs(jArr5, jArr, jArr2);
        GF2PolynomialCalculator.addLongs(jArr5, jArr5, jArr4);
        int r14 = this.f11898n1;
        byte[] bArr5 = new byte[r14];
        ReedMuller.decode(bArr5, jArr5, r14, this.mulParam);
        ReedSolomon.decode(bArr2, bArr5, this.f11898n1, this.fft, this.delta, this.f11896k, this.f11895g);
        System.arraycopy(bArr2, 0, bArr, 0, bArr.length);
    }

    private void encrypt(byte[] bArr, long[] jArr, long[] jArr2, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        KeccakRandomGenerator keccakRandomGenerator = new KeccakRandomGenerator(256);
        keccakRandomGenerator.seedExpanderInit(bArr4, this.SEED_SIZE);
        int r22 = this.N_BYTE_64;
        long[] jArr3 = new long[r22];
        long[] jArr4 = new long[r22];
        long[] jArr5 = new long[r22];
        generateRandomFixedWeight(jArr4, keccakRandomGenerator, this.wr);
        generateRandomFixedWeight(jArr5, keccakRandomGenerator, this.wr);
        generateRandomFixedWeight(jArr3, keccakRandomGenerator, this.f11900we);
        long[] jArr6 = new long[this.N_BYTE_64];
        this.gfCalculator.multLongs(jArr6, jArr5, jArr2);
        GF2PolynomialCalculator.addLongs(jArr6, jArr6, jArr4);
        Utils.fromLongArrayToByteArray(bArr, jArr6);
        int r72 = this.f11898n1;
        byte[] bArr5 = new byte[r72];
        int r11 = this.N1N2_BYTE_64;
        long[] jArr7 = new long[r11];
        long[] jArr8 = new long[this.N_BYTE_64];
        ReedSolomon.encode(bArr5, bArr3, this.K_BYTE * 8, r72, this.f11896k, this.f11895g, this.generatorPoly);
        ReedMuller.encode(jArr7, bArr5, this.f11898n1, this.mulParam);
        System.arraycopy(jArr7, 0, jArr8, 0, r11);
        long[] jArr9 = new long[this.N_BYTE_64];
        Utils.fromByteArrayToLongArray(jArr9, bArr2);
        long[] jArr10 = new long[this.N_BYTE_64];
        this.gfCalculator.multLongs(jArr10, jArr5, jArr9);
        GF2PolynomialCalculator.addLongs(jArr10, jArr10, jArr8);
        GF2PolynomialCalculator.addLongs(jArr10, jArr10, jArr3);
        int r12 = this.n1n2;
        int r23 = this.f11897n;
        int r32 = this.N1N2_BYTE_64;
        Utils.resizeArray(jArr, r12, jArr10, r23, r32, r32);
    }

    private void extractCiphertexts(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        System.arraycopy(bArr5, 0, bArr, 0, bArr.length);
        System.arraycopy(bArr5, bArr.length, bArr2, 0, bArr2.length);
        System.arraycopy(bArr5, bArr.length + bArr2.length, bArr3, 0, bArr3.length);
        System.arraycopy(bArr5, bArr.length + bArr2.length + bArr3.length, bArr4, 0, bArr4.length);
    }

    private void extractKeysFromSecretKeys(long[] jArr, long[] jArr2, byte[] bArr, byte[] bArr2) {
        int r02 = this.SEED_SIZE;
        byte[] bArr3 = new byte[r02];
        System.arraycopy(bArr2, 0, bArr3, 0, r02);
        KeccakRandomGenerator keccakRandomGenerator = new KeccakRandomGenerator(256);
        keccakRandomGenerator.seedExpanderInit(bArr3, r02);
        generateRandomFixedWeight(jArr, keccakRandomGenerator, this.w);
        generateRandomFixedWeight(jArr2, keccakRandomGenerator, this.w);
        System.arraycopy(bArr2, this.SEED_SIZE, bArr, 0, bArr.length);
    }

    private void extractPublicKeys(long[] jArr, byte[] bArr, byte[] bArr2) {
        int r02 = this.SEED_SIZE;
        byte[] bArr3 = new byte[r02];
        System.arraycopy(bArr2, 0, bArr3, 0, r02);
        KeccakRandomGenerator keccakRandomGenerator = new KeccakRandomGenerator(256);
        keccakRandomGenerator.seedExpanderInit(bArr3, r02);
        long[] jArr2 = new long[this.N_BYTE_64];
        generatePublicKeyH(jArr2, keccakRandomGenerator);
        System.arraycopy(jArr2, 0, jArr, 0, jArr.length);
        System.arraycopy(bArr2, 40, bArr, 0, bArr.length);
    }

    private void generateRandomFixedWeight(long[] jArr, KeccakRandomGenerator keccakRandomGenerator, int r15) {
        int r02 = this.wr;
        byte[] bArr = new byte[r02 * 4];
        int[] r32 = new int[r02];
        int[] r42 = new int[r02];
        long[] jArr2 = new long[r02];
        keccakRandomGenerator.expandSeed(bArr, r15 * 4);
        Pack.littleEndianToInt(bArr, 0, new int[r02], 0, r02);
        for (int r03 = 0; r03 < r15; r03++) {
            r32[r03] = (int) (((r1[r03] & BodyPartID.bodyIdMax) % (this.f11897n - r03)) + r03);
        }
        for (int r04 = r15 - 1; r04 >= 0; r04--) {
            int r22 = 0;
            for (int r12 = r04 + 1; r12 < r15; r12++) {
                if (r32[r12] == r32[r04]) {
                    r22 |= 1;
                }
            }
            int r13 = -r22;
            r32[r04] = ((~r13) & r32[r04]) ^ (r13 & r04);
        }
        for (int r05 = 0; r05 < r15; r05++) {
            r42[r05] = r32[r05] >>> 6;
            jArr2[r05] = 1 << (r32[r05] & 63);
        }
        for (int r06 = 0; r06 < this.N_BYTE_64; r06++) {
            long j10 = 0;
            for (int r33 = 0; r33 < r15; r33++) {
                int r6 = r06 - r42[r33];
                j10 |= (-(((r6 | (-r6)) >>> 31) ^ 1)) & jArr2[r33];
            }
            jArr[r06] = j10 | jArr[r06];
        }
    }

    public void decaps(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4;
        int r02 = this.N_BYTE_64;
        long[] jArr = new long[r02];
        byte[] bArr5 = new byte[this.N_BYTE + 40];
        extractKeysFromSecretKeys(new long[r02], jArr, bArr5, bArr3);
        byte[] bArr6 = new byte[this.N_BYTE];
        byte[] bArr7 = new byte[this.N1N2_BYTE];
        byte[] bArr8 = new byte[this.SHA512_BYTES];
        byte[] bArr9 = new byte[this.SALT_SIZE_BYTES];
        extractCiphertexts(bArr6, bArr7, bArr8, bArr9, bArr2);
        int r14 = this.f11896k;
        byte[] bArr10 = new byte[r14];
        decrypt(bArr10, bArr10, bArr6, bArr7, jArr);
        byte[] bArr11 = new byte[this.SHA512_BYTES];
        int r03 = this.K_BYTE + this.SALT_SIZE_BYTES + this.SEED_SIZE;
        byte[] bArr12 = new byte[r03];
        System.arraycopy(bArr10, 0, bArr12, 0, r14);
        System.arraycopy(bArr5, 0, bArr12, this.K_BYTE, this.SEED_SIZE);
        System.arraycopy(bArr9, 0, bArr12, this.K_BYTE + this.SEED_SIZE, this.SALT_SIZE_BYTES);
        KeccakRandomGenerator keccakRandomGenerator = new KeccakRandomGenerator(256);
        keccakRandomGenerator.SHAKE256_512_ds(bArr11, bArr12, r03, new byte[]{this.G_FCT_DOMAIN});
        long[] jArr2 = new long[this.N_BYTE_64];
        byte[] bArr13 = new byte[this.N_BYTE];
        extractPublicKeys(jArr2, bArr13, bArr5);
        byte[] bArr14 = new byte[this.N_BYTE];
        byte[] bArr15 = new byte[this.N1N2_BYTE];
        long[] jArr3 = new long[this.N1N2_BYTE_64];
        encrypt(bArr14, jArr3, jArr2, bArr13, bArr10, bArr11);
        Utils.fromLongArrayToByteArray(bArr15, jArr3);
        byte[] bArr16 = new byte[this.SHA512_BYTES];
        keccakRandomGenerator.SHAKE256_512_ds(bArr16, bArr10, r14, new byte[]{this.H_FCT_DOMAIN});
        byte[] bArr17 = new byte[this.K_BYTE + this.N_BYTE + this.N1N2_BYTE];
        byte[] bArrConcatenate = Arrays.concatenate(Arrays.concatenate(bArr10, bArr6), bArr7);
        keccakRandomGenerator.SHAKE256_512_ds(bArr, bArrConcatenate, bArrConcatenate.length, new byte[]{this.K_FCT_DOMAIN});
        boolean zAreEqual = Arrays.areEqual(bArr6, bArr14);
        if (Arrays.areEqual(bArr7, bArr15)) {
            bArr4 = bArr8;
        } else {
            bArr4 = bArr8;
            zAreEqual = false;
        }
        if (!Arrays.areEqual(bArr4, bArr16)) {
            zAreEqual = false;
        }
        if (zAreEqual) {
            return;
        }
        for (int r52 = 0; r52 < getSessionKeySize(); r52++) {
            bArr[r52] = 0;
        }
    }

    public void encaps(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7) {
        int r92 = this.K_BYTE;
        byte[] bArr8 = new byte[r92];
        byte[] bArr9 = new byte[this.SEED_SIZE];
        KeccakRandomGenerator keccakRandomGenerator = new KeccakRandomGenerator(256);
        keccakRandomGenerator.randomGeneratorInit(bArr6, null, bArr6.length, 0);
        keccakRandomGenerator.squeeze(bArr9, 40);
        keccakRandomGenerator.squeeze(new byte[this.SEED_SIZE], 40);
        keccakRandomGenerator.squeeze(bArr8, this.K_BYTE);
        byte[] bArr10 = new byte[this.SHA512_BYTES];
        int r12 = this.K_BYTE + this.SEED_SIZE;
        int r32 = this.SALT_SIZE_BYTES;
        int r13 = r12 + r32;
        byte[] bArr11 = new byte[r13];
        keccakRandomGenerator.squeeze(bArr7, r32);
        System.arraycopy(bArr8, 0, bArr11, 0, r92);
        System.arraycopy(bArr5, 0, bArr11, this.K_BYTE, this.SEED_SIZE);
        System.arraycopy(bArr7, 0, bArr11, this.K_BYTE + this.SEED_SIZE, this.SALT_SIZE_BYTES);
        KeccakRandomGenerator keccakRandomGenerator2 = new KeccakRandomGenerator(256);
        keccakRandomGenerator2.SHAKE256_512_ds(bArr10, bArr11, r13, new byte[]{this.G_FCT_DOMAIN});
        long[] jArr = new long[this.N_BYTE_64];
        byte[] bArr12 = new byte[this.N_BYTE];
        extractPublicKeys(jArr, bArr12, bArr5);
        long[] jArr2 = new long[this.N1N2_BYTE_64];
        encrypt(bArr, jArr2, jArr, bArr12, bArr8, bArr10);
        Utils.fromLongArrayToByteArray(bArr2, jArr2);
        keccakRandomGenerator2.SHAKE256_512_ds(bArr4, bArr8, r92, new byte[]{this.H_FCT_DOMAIN});
        byte[] bArr13 = new byte[this.K_BYTE + this.N_BYTE + this.N1N2_BYTE];
        byte[] bArrConcatenate = Arrays.concatenate(Arrays.concatenate(bArr8, bArr), bArr2);
        keccakRandomGenerator2.SHAKE256_512_ds(bArr3, bArrConcatenate, bArrConcatenate.length, new byte[]{this.K_FCT_DOMAIN});
    }

    public void genKeyPair(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int r02 = this.SEED_SIZE;
        byte[] bArr4 = new byte[r02];
        KeccakRandomGenerator keccakRandomGenerator = new KeccakRandomGenerator(256);
        keccakRandomGenerator.randomGeneratorInit(bArr3, null, bArr3.length, 0);
        keccakRandomGenerator.squeeze(bArr4, 40);
        KeccakRandomGenerator keccakRandomGenerator2 = new KeccakRandomGenerator(256);
        keccakRandomGenerator2.seedExpanderInit(bArr4, r02);
        int r03 = this.N_BYTE_64;
        long[] jArr = new long[r03];
        long[] jArr2 = new long[r03];
        generateRandomFixedWeight(jArr, keccakRandomGenerator2, this.w);
        generateRandomFixedWeight(jArr2, keccakRandomGenerator2, this.w);
        int r42 = this.SEED_SIZE;
        byte[] bArr5 = new byte[r42];
        keccakRandomGenerator.squeeze(bArr5, 40);
        KeccakRandomGenerator keccakRandomGenerator3 = new KeccakRandomGenerator(256);
        keccakRandomGenerator3.seedExpanderInit(bArr5, r42);
        long[] jArr3 = new long[this.N_BYTE_64];
        generatePublicKeyH(jArr3, keccakRandomGenerator3);
        long[] jArr4 = new long[this.N_BYTE_64];
        this.gfCalculator.multLongs(jArr4, jArr2, jArr3);
        GF2PolynomialCalculator.addLongs(jArr4, jArr4, jArr);
        byte[] bArr6 = new byte[this.N_BYTE];
        Utils.fromLongArrayToByteArray(bArr6, jArr4);
        byte[] bArrConcatenate = Arrays.concatenate(bArr5, bArr6);
        byte[] bArrConcatenate2 = Arrays.concatenate(bArr4, bArrConcatenate);
        System.arraycopy(bArrConcatenate, 0, bArr, 0, bArrConcatenate.length);
        System.arraycopy(bArrConcatenate2, 0, bArr2, 0, bArrConcatenate2.length);
    }

    public void generatePublicKeyH(long[] jArr, KeccakRandomGenerator keccakRandomGenerator) {
        int r02 = this.N_BYTE;
        byte[] bArr = new byte[r02];
        keccakRandomGenerator.expandSeed(bArr, r02);
        long[] jArr2 = new long[this.N_BYTE_64];
        Utils.fromByteArrayToLongArray(jArr2, bArr);
        int r03 = this.N_BYTE_64 - 1;
        jArr2[r03] = jArr2[r03] & Utils.bitMask(this.f11897n, 64L);
        System.arraycopy(jArr2, 0, jArr, 0, jArr.length);
    }

    public int getSessionKeySize() {
        return this.SHA512_BYTES;
    }
}
