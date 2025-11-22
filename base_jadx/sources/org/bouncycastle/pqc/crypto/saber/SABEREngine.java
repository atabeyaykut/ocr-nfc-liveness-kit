package org.bouncycastle.pqc.crypto.saber;

import android.support.v4.media.a;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;
import org.bouncycastle.pqc.crypto.saber.Symmetric;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class SABEREngine {
    public static final int SABER_EP = 10;
    private static final int SABER_HASHBYTES = 32;
    private static final int SABER_KEYBYTES = 32;
    public static final int SABER_N = 256;
    private static final int SABER_NOISE_SEEDBYTES = 32;
    private static final int SABER_SEEDBYTES = 32;
    private final int SABER_BYTES_CCA_DEC;
    private final int SABER_EQ;
    private final int SABER_ET;
    private final int SABER_INDCPA_PUBLICKEYBYTES;
    private final int SABER_INDCPA_SECRETKEYBYTES;
    private final int SABER_L;
    private final int SABER_MU;
    private final int SABER_POLYBYTES;
    private final int SABER_POLYCOINBYTES;
    private final int SABER_POLYCOMPRESSEDBYTES;
    private final int SABER_POLYVECBYTES;
    private final int SABER_POLYVECCOMPRESSEDBYTES;
    private final int SABER_PUBLICKEYBYTES;
    private final int SABER_SCALEBYTES_KEM;
    private final int SABER_SECRETKEYBYTES;
    private final int defaultKeySize;

    /* renamed from: h1, reason: collision with root package name */
    private final int f11952h1;

    /* renamed from: h2, reason: collision with root package name */
    private final int f11953h2;
    private final Poly poly;
    protected final Symmetric symmetric;
    private final boolean usingAES;
    protected final boolean usingEffectiveMasking;
    private final Utils utils;

    public SABEREngine(int r6, int r72, boolean z10, boolean z11) {
        int r73;
        int r74;
        this.defaultKeySize = r72;
        this.usingAES = z10;
        this.usingEffectiveMasking = z11;
        this.SABER_L = r6;
        if (r6 == 2) {
            this.SABER_MU = 10;
            this.SABER_ET = 3;
        } else {
            if (r6 == 3) {
                this.SABER_MU = 8;
                r73 = 4;
            } else {
                r73 = 6;
                this.SABER_MU = 6;
            }
            this.SABER_ET = r73;
        }
        this.symmetric = z10 ? new Symmetric.AesSymmetric() : new Symmetric.ShakeSymmetric();
        if (z11) {
            this.SABER_EQ = 12;
            r74 = 64;
        } else {
            this.SABER_EQ = 13;
            r74 = (this.SABER_MU * 256) / 8;
        }
        this.SABER_POLYCOINBYTES = r74;
        int r75 = this.SABER_EQ;
        int r82 = (r75 * 256) / 8;
        this.SABER_POLYBYTES = r82;
        int r83 = r82 * r6;
        this.SABER_POLYVECBYTES = r83;
        this.SABER_POLYCOMPRESSEDBYTES = DilithiumEngine.DilithiumPolyT1PackedBytes;
        int r62 = r6 * DilithiumEngine.DilithiumPolyT1PackedBytes;
        this.SABER_POLYVECCOMPRESSEDBYTES = r62;
        int r92 = this.SABER_ET;
        int r02 = (r92 * 256) / 8;
        this.SABER_SCALEBYTES_KEM = r02;
        int r12 = r62 + 32;
        this.SABER_INDCPA_PUBLICKEYBYTES = r12;
        this.SABER_INDCPA_SECRETKEYBYTES = r83;
        this.SABER_PUBLICKEYBYTES = r12;
        this.SABER_SECRETKEYBYTES = a.a(r83, r12, 32, 32);
        this.SABER_BYTES_CCA_DEC = r62 + r02;
        this.f11952h1 = 1 << ((r75 - 10) - 1);
        this.f11953h2 = (256 - (1 << ((10 - r92) - 1))) + (1 << ((r75 - 10) - 1));
        this.utils = new Utils(this);
        this.poly = new Poly(this);
    }

    public static void cmov(byte[] bArr, byte[] bArr2, int r52, int r6, byte b10) {
        byte b11 = (byte) (-b10);
        for (int r02 = 0; r02 < r6; r02++) {
            byte b12 = bArr[r02];
            bArr[r02] = (byte) (b12 ^ ((bArr2[r02 + r52] ^ b12) & b11));
        }
    }

    private void indcpa_kem_dec(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        short[][] sArr = (short[][]) Array.newInstance((Class<?>) Short.TYPE, this.SABER_L, 256);
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, this.SABER_L, 256);
        short[] sArr3 = new short[256];
        short[] sArr4 = new short[256];
        this.utils.BS2POLVECq(bArr, 0, sArr);
        this.utils.BS2POLVECp(bArr2, sArr2);
        this.poly.InnerProd(sArr2, sArr, sArr3);
        this.utils.BS2POLT(bArr2, this.SABER_POLYVECCOMPRESSEDBYTES, sArr4);
        for (int r52 = 0; r52 < 256; r52++) {
            sArr3[r52] = (short) ((((sArr3[r52] + this.f11953h2) - (sArr4[r52] << (10 - this.SABER_ET))) & 65535) >> 9);
        }
        this.utils.POLmsg2BS(bArr3, sArr3);
    }

    private void indcpa_kem_enc(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int r32 = this.SABER_L;
        short[][][] sArr = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, r32, r32, 256);
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, this.SABER_L, 256);
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, this.SABER_L, 256);
        short[][] sArr4 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, this.SABER_L, 256);
        short[] sArr5 = new short[256];
        short[] sArr6 = new short[256];
        this.poly.GenMatrix(sArr, Arrays.copyOfRange(bArr3, this.SABER_POLYVECCOMPRESSEDBYTES, bArr3.length));
        this.poly.GenSecret(sArr2, bArr2);
        this.poly.MatrixVectorMul(sArr, sArr2, sArr3, 0);
        for (int r33 = 0; r33 < this.SABER_L; r33++) {
            for (int r11 = 0; r11 < 256; r11++) {
                short[] sArr7 = sArr3[r33];
                sArr7[r11] = (short) (((sArr7[r11] + this.f11952h1) & 65535) >>> (this.SABER_EQ - 10));
            }
        }
        this.utils.POLVECp2BS(bArr4, sArr3);
        this.utils.BS2POLVECp(bArr3, sArr4);
        this.poly.InnerProd(sArr4, sArr2, sArr6);
        this.utils.BS2POLmsg(bArr, sArr5);
        for (int r82 = 0; r82 < 256; r82++) {
            sArr6[r82] = (short) ((((sArr6[r82] - (sArr5[r82] << 9)) + this.f11952h1) & 65535) >>> (10 - this.SABER_ET));
        }
        this.utils.POLT2BS(bArr4, this.SABER_POLYVECCOMPRESSEDBYTES, sArr6);
    }

    private void indcpa_kem_keypair(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        int r02 = this.SABER_L;
        short[][][] sArr = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, r02, r02, 256);
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, this.SABER_L, 256);
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, this.SABER_L, 256);
        byte[] bArr3 = new byte[32];
        byte[] bArr4 = new byte[32];
        secureRandom.nextBytes(bArr3);
        this.symmetric.prf(bArr3, bArr3, 32, 32);
        secureRandom.nextBytes(bArr4);
        this.poly.GenMatrix(sArr, bArr3);
        this.poly.GenSecret(sArr2, bArr4);
        this.poly.MatrixVectorMul(sArr, sArr2, sArr3, 1);
        for (int r13 = 0; r13 < this.SABER_L; r13++) {
            for (int r03 = 0; r03 < 256; r03++) {
                short[] sArr4 = sArr3[r13];
                sArr4[r03] = (short) (((sArr4[r03] + this.f11952h1) & 65535) >>> (this.SABER_EQ - 10));
            }
        }
        this.utils.POLVECq2BS(bArr2, sArr2);
        this.utils.POLVECp2BS(bArr, sArr3);
        System.arraycopy(bArr3, 0, bArr, this.SABER_POLYVECCOMPRESSEDBYTES, 32);
    }

    public static int verify(byte[] bArr, byte[] bArr2, int r72) {
        long j10 = 0;
        for (int r22 = 0; r22 < r72; r22++) {
            j10 |= bArr[r22] ^ bArr2[r22];
        }
        return (int) ((-j10) >>> 63);
    }

    public int crypto_kem_dec(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[this.SABER_BYTES_CCA_DEC];
        byte[] bArr5 = new byte[64];
        byte[] bArr6 = new byte[64];
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr3, this.SABER_INDCPA_SECRETKEYBYTES, bArr3.length);
        indcpa_kem_dec(bArr3, bArr2, bArr5);
        for (int r6 = 0; r6 < 32; r6++) {
            bArr5[r6 + 32] = bArr3[(this.SABER_SECRETKEYBYTES - 64) + r6];
        }
        this.symmetric.hash_g(bArr6, bArr5);
        indcpa_kem_enc(bArr5, Arrays.copyOfRange(bArr6, 32, 64), bArrCopyOfRange, bArr4);
        int r02 = verify(bArr2, bArr4, this.SABER_BYTES_CCA_DEC);
        this.symmetric.hash_h(bArr6, bArr2, 32);
        cmov(bArr6, bArr3, this.SABER_SECRETKEYBYTES - 32, 32, (byte) r02);
        byte[] bArr7 = new byte[32];
        this.symmetric.hash_h(bArr7, bArr6, 0);
        System.arraycopy(bArr7, 0, bArr, 0, this.defaultKeySize / 8);
        return 0;
    }

    public int crypto_kem_enc(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        byte[] bArr4 = new byte[64];
        byte[] bArr5 = new byte[64];
        byte[] bArr6 = new byte[32];
        secureRandom.nextBytes(bArr6);
        this.symmetric.hash_h(bArr6, bArr6, 0);
        System.arraycopy(bArr6, 0, bArr5, 0, 32);
        this.symmetric.hash_h(bArr5, bArr3, 32);
        this.symmetric.hash_g(bArr4, bArr5);
        indcpa_kem_enc(bArr5, Arrays.copyOfRange(bArr4, 32, 64), bArr3, bArr);
        this.symmetric.hash_h(bArr4, bArr, 32);
        byte[] bArr7 = new byte[32];
        this.symmetric.hash_h(bArr7, bArr4, 0);
        System.arraycopy(bArr7, 0, bArr2, 0, this.defaultKeySize / 8);
        return 0;
    }

    public int crypto_kem_keypair(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        indcpa_kem_keypair(bArr, bArr2, secureRandom);
        for (int r12 = 0; r12 < this.SABER_INDCPA_PUBLICKEYBYTES; r12++) {
            bArr2[this.SABER_INDCPA_SECRETKEYBYTES + r12] = bArr[r12];
        }
        this.symmetric.hash_h(bArr2, bArr, this.SABER_SECRETKEYBYTES - 64);
        byte[] bArr3 = new byte[32];
        secureRandom.nextBytes(bArr3);
        System.arraycopy(bArr3, 0, bArr2, this.SABER_SECRETKEYBYTES - 32, 32);
        return 0;
    }

    public int getCipherTextSize() {
        return this.SABER_BYTES_CCA_DEC;
    }

    public int getPrivateKeySize() {
        return this.SABER_SECRETKEYBYTES;
    }

    public int getPublicKeySize() {
        return this.SABER_PUBLICKEYBYTES;
    }

    public int getSABER_EP() {
        return 10;
    }

    public int getSABER_ET() {
        return this.SABER_ET;
    }

    public int getSABER_KEYBYTES() {
        return 32;
    }

    public int getSABER_L() {
        return this.SABER_L;
    }

    public int getSABER_MU() {
        return this.SABER_MU;
    }

    public int getSABER_N() {
        return 256;
    }

    public int getSABER_NOISE_SEEDBYTES() {
        return 32;
    }

    public int getSABER_POLYBYTES() {
        return this.SABER_POLYBYTES;
    }

    public int getSABER_POLYCOINBYTES() {
        return this.SABER_POLYCOINBYTES;
    }

    public int getSABER_POLYVECBYTES() {
        return this.SABER_POLYVECBYTES;
    }

    public int getSABER_SEEDBYTES() {
        return 32;
    }

    public int getSessionKeySize() {
        return this.defaultKeySize / 8;
    }

    public Utils getUtils() {
        return this.utils;
    }
}
