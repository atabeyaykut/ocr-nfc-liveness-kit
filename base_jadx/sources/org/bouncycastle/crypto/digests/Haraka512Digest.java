package org.bouncycastle.crypto.digests;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Bytes;

/* loaded from: classes2.dex */
public class Haraka512Digest extends HarakaBase {
    private final byte[] buffer;
    private int off;
    private final CryptoServicePurpose purpose;

    public Haraka512Digest() {
        this(CryptoServicePurpose.ANY);
    }

    public Haraka512Digest(CryptoServicePurpose cryptoServicePurpose) {
        this.purpose = cryptoServicePurpose;
        this.buffer = new byte[64];
    }

    public Haraka512Digest(Haraka512Digest haraka512Digest) {
        this.purpose = haraka512Digest.purpose;
        this.buffer = Arrays.clone(haraka512Digest.buffer);
        this.off = haraka512Digest.off;
    }

    private int haraka512256(byte[] bArr, byte[] bArr2, int r23) {
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 4, 16);
        byte[][] bArr4 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 4, 16);
        System.arraycopy(bArr, 0, bArr3[0], 0, 16);
        System.arraycopy(bArr, 16, bArr3[1], 0, 16);
        System.arraycopy(bArr, 32, bArr3[2], 0, 16);
        System.arraycopy(bArr, 48, bArr3[3], 0, 16);
        byte[] bArr5 = bArr3[0];
        byte[][] bArr6 = HarakaBase.RC;
        bArr3[0] = HarakaBase.aesEnc(bArr5, bArr6[0]);
        bArr3[1] = HarakaBase.aesEnc(bArr3[1], bArr6[1]);
        bArr3[2] = HarakaBase.aesEnc(bArr3[2], bArr6[2]);
        bArr3[3] = HarakaBase.aesEnc(bArr3[3], bArr6[3]);
        bArr3[0] = HarakaBase.aesEnc(bArr3[0], bArr6[4]);
        bArr3[1] = HarakaBase.aesEnc(bArr3[1], bArr6[5]);
        bArr3[2] = HarakaBase.aesEnc(bArr3[2], bArr6[6]);
        bArr3[3] = HarakaBase.aesEnc(bArr3[3], bArr6[7]);
        mix512(bArr3, bArr4);
        bArr3[0] = HarakaBase.aesEnc(bArr4[0], bArr6[8]);
        bArr3[1] = HarakaBase.aesEnc(bArr4[1], bArr6[9]);
        bArr3[2] = HarakaBase.aesEnc(bArr4[2], bArr6[10]);
        bArr3[3] = HarakaBase.aesEnc(bArr4[3], bArr6[11]);
        bArr3[0] = HarakaBase.aesEnc(bArr3[0], bArr6[12]);
        bArr3[1] = HarakaBase.aesEnc(bArr3[1], bArr6[13]);
        bArr3[2] = HarakaBase.aesEnc(bArr3[2], bArr6[14]);
        bArr3[3] = HarakaBase.aesEnc(bArr3[3], bArr6[15]);
        mix512(bArr3, bArr4);
        bArr3[0] = HarakaBase.aesEnc(bArr4[0], bArr6[16]);
        bArr3[1] = HarakaBase.aesEnc(bArr4[1], bArr6[17]);
        bArr3[2] = HarakaBase.aesEnc(bArr4[2], bArr6[18]);
        bArr3[3] = HarakaBase.aesEnc(bArr4[3], bArr6[19]);
        bArr3[0] = HarakaBase.aesEnc(bArr3[0], bArr6[20]);
        bArr3[1] = HarakaBase.aesEnc(bArr3[1], bArr6[21]);
        bArr3[2] = HarakaBase.aesEnc(bArr3[2], bArr6[22]);
        bArr3[3] = HarakaBase.aesEnc(bArr3[3], bArr6[23]);
        mix512(bArr3, bArr4);
        bArr3[0] = HarakaBase.aesEnc(bArr4[0], bArr6[24]);
        bArr3[1] = HarakaBase.aesEnc(bArr4[1], bArr6[25]);
        bArr3[2] = HarakaBase.aesEnc(bArr4[2], bArr6[26]);
        bArr3[3] = HarakaBase.aesEnc(bArr4[3], bArr6[27]);
        bArr3[0] = HarakaBase.aesEnc(bArr3[0], bArr6[28]);
        bArr3[1] = HarakaBase.aesEnc(bArr3[1], bArr6[29]);
        bArr3[2] = HarakaBase.aesEnc(bArr3[2], bArr6[30]);
        bArr3[3] = HarakaBase.aesEnc(bArr3[3], bArr6[31]);
        mix512(bArr3, bArr4);
        bArr3[0] = HarakaBase.aesEnc(bArr4[0], bArr6[32]);
        bArr3[1] = HarakaBase.aesEnc(bArr4[1], bArr6[33]);
        bArr3[2] = HarakaBase.aesEnc(bArr4[2], bArr6[34]);
        bArr3[3] = HarakaBase.aesEnc(bArr4[3], bArr6[35]);
        bArr3[0] = HarakaBase.aesEnc(bArr3[0], bArr6[36]);
        bArr3[1] = HarakaBase.aesEnc(bArr3[1], bArr6[37]);
        bArr3[2] = HarakaBase.aesEnc(bArr3[2], bArr6[38]);
        bArr3[3] = HarakaBase.aesEnc(bArr3[3], bArr6[39]);
        mix512(bArr3, bArr4);
        Bytes.xor(16, bArr4[0], 0, bArr, 0, bArr3[0], 0);
        Bytes.xor(16, bArr4[1], 0, bArr, 16, bArr3[1], 0);
        Bytes.xor(16, bArr4[2], 0, bArr, 32, bArr3[2], 0);
        Bytes.xor(16, bArr4[3], 0, bArr, 48, bArr3[3], 0);
        System.arraycopy(bArr3[0], 8, bArr2, r23, 8);
        System.arraycopy(bArr3[1], 8, bArr2, r23 + 8, 8);
        System.arraycopy(bArr3[2], 0, bArr2, r23 + 16, 8);
        System.arraycopy(bArr3[3], 0, bArr2, r23 + 24, 8);
        return 32;
    }

    private void mix512(byte[][] bArr, byte[][] bArr2) {
        System.arraycopy(bArr[0], 12, bArr2[0], 0, 4);
        System.arraycopy(bArr[2], 12, bArr2[0], 4, 4);
        System.arraycopy(bArr[1], 12, bArr2[0], 8, 4);
        System.arraycopy(bArr[3], 12, bArr2[0], 12, 4);
        System.arraycopy(bArr[2], 0, bArr2[1], 0, 4);
        System.arraycopy(bArr[0], 0, bArr2[1], 4, 4);
        System.arraycopy(bArr[3], 0, bArr2[1], 8, 4);
        System.arraycopy(bArr[1], 0, bArr2[1], 12, 4);
        System.arraycopy(bArr[2], 4, bArr2[2], 0, 4);
        System.arraycopy(bArr[0], 4, bArr2[2], 4, 4);
        System.arraycopy(bArr[3], 4, bArr2[2], 8, 4);
        System.arraycopy(bArr[1], 4, bArr2[2], 12, 4);
        System.arraycopy(bArr[0], 8, bArr2[3], 0, 4);
        System.arraycopy(bArr[2], 8, bArr2[3], 4, 4);
        System.arraycopy(bArr[1], 8, bArr2[3], 8, 4);
        System.arraycopy(bArr[3], 8, bArr2[3], 12, 4);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r42) {
        if (this.off != 64) {
            throw new IllegalStateException("input must be exactly 64 bytes");
        }
        if (bArr.length - r42 < 32) {
            throw new IllegalArgumentException("output too short to receive digest");
        }
        int r32 = haraka512256(this.buffer, bArr, r42);
        reset();
        return r32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Haraka-512";
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.off = 0;
        Arrays.clear(this.buffer);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        int r02 = this.off;
        if (r02 > 63) {
            throw new IllegalArgumentException("total input cannot be more than 64 bytes");
        }
        byte[] bArr = this.buffer;
        this.off = r02 + 1;
        bArr[r02] = b10;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r42, int r52) {
        int r02 = this.off;
        if (r02 > 64 - r52) {
            throw new IllegalArgumentException("total input cannot be more than 64 bytes");
        }
        System.arraycopy(bArr, r42, this.buffer, r02, r52);
        this.off += r52;
    }
}
