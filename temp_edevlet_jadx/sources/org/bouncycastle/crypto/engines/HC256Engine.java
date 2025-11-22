package org.bouncycastle.crypto.engines;

import ab.b;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes2.dex */
public class HC256Engine implements StreamCipher {
    private boolean initialised;
    private byte[] iv;
    private byte[] key;

    /* renamed from: p, reason: collision with root package name */
    private int[] f11513p = new int[1024];

    /* renamed from: q, reason: collision with root package name */
    private int[] f11514q = new int[1024];
    private int cnt = 0;
    private byte[] buf = new byte[4];
    private int idx = 0;

    private byte getByte() {
        if (this.idx == 0) {
            int r02 = step();
            byte[] bArr = this.buf;
            bArr[0] = (byte) (r02 & 255);
            int r03 = r02 >> 8;
            bArr[1] = (byte) (r03 & 255);
            int r04 = r03 >> 8;
            bArr[2] = (byte) (r04 & 255);
            bArr[3] = (byte) ((r04 >> 8) & 255);
        }
        byte[] bArr2 = this.buf;
        int r32 = this.idx;
        byte b10 = bArr2[r32];
        this.idx = 3 & (r32 + 1);
        return b10;
    }

    private void init() {
        byte[] bArr = this.key;
        if (bArr.length != 32 && bArr.length != 16) {
            throw new IllegalArgumentException("The key must be 128/256 bits long");
        }
        if (this.iv.length < 16) {
            throw new IllegalArgumentException("The IV must be at least 128 bits long");
        }
        if (bArr.length != 32) {
            byte[] bArr2 = new byte[32];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            byte[] bArr3 = this.key;
            System.arraycopy(bArr3, 0, bArr2, 16, bArr3.length);
            this.key = bArr2;
        }
        byte[] bArr4 = this.iv;
        if (bArr4.length < 32) {
            byte[] bArr5 = new byte[32];
            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length);
            byte[] bArr6 = this.iv;
            System.arraycopy(bArr6, 0, bArr5, bArr6.length, 32 - bArr6.length);
            this.iv = bArr5;
        }
        this.idx = 0;
        this.cnt = 0;
        int[] r12 = new int[2560];
        for (int r52 = 0; r52 < 32; r52++) {
            int r6 = r52 >> 2;
            r12[r6] = r12[r6] | ((this.key[r52] & 255) << ((r52 & 3) * 8));
        }
        for (int r53 = 0; r53 < 32; r53++) {
            int r62 = (r53 >> 2) + 8;
            r12[r62] = r12[r62] | ((this.iv[r53] & 255) << ((r53 & 3) * 8));
        }
        for (int r22 = 16; r22 < 2560; r22++) {
            int r32 = r12[r22 - 2];
            int r54 = r12[r22 - 15];
            r12[r22] = ((r32 >>> 10) ^ (rotateRight(r32, 17) ^ rotateRight(r32, 19))) + r12[r22 - 7] + ((r54 >>> 3) ^ (rotateRight(r54, 7) ^ rotateRight(r54, 18))) + r12[r22 - 16] + r22;
        }
        System.arraycopy(r12, 512, this.f11513p, 0, 1024);
        System.arraycopy(r12, 1536, this.f11514q, 0, 1024);
        for (int r02 = 0; r02 < 4096; r02++) {
            step();
        }
        this.cnt = 0;
    }

    private static int rotateRight(int r12, int r22) {
        return (r12 << (-r22)) | (r12 >>> r22);
    }

    private int step() {
        int r42;
        int r02;
        int r03 = this.cnt;
        int r12 = r03 & 1023;
        if (r03 < 1024) {
            int[] r04 = this.f11513p;
            int r22 = r04[(r12 - 3) & 1023];
            int r52 = r04[(r12 - 1023) & 1023];
            int r6 = r04[r12];
            int r72 = r04[(r12 - 10) & 1023] + (rotateRight(r52, 23) ^ rotateRight(r22, 10));
            int[] r32 = this.f11514q;
            r04[r12] = r72 + r32[(r22 ^ r52) & 1023] + r6;
            int[] r05 = this.f11513p;
            int r23 = r05[(r12 - 12) & 1023];
            r42 = r32[r23 & 255] + r32[((r23 >> 8) & 255) + 256] + r32[((r23 >> 16) & 255) + 512] + r32[((r23 >> 24) & 255) + 768];
            r02 = r05[r12];
        } else {
            int[] r06 = this.f11514q;
            int r24 = r06[(r12 - 3) & 1023];
            int r53 = r06[(r12 - 1023) & 1023];
            int r62 = r06[r12];
            int r73 = r06[(r12 - 10) & 1023] + (rotateRight(r53, 23) ^ rotateRight(r24, 10));
            int[] r33 = this.f11513p;
            r06[r12] = r73 + r33[(r24 ^ r53) & 1023] + r62;
            int[] r07 = this.f11514q;
            int r25 = r07[(r12 - 12) & 1023];
            r42 = r33[r25 & 255] + r33[((r25 >> 8) & 255) + 256] + r33[((r25 >> 16) & 255) + 512] + r33[((r25 >> 24) & 255) + 768];
            r02 = r07[r12];
        }
        int r08 = r02 ^ r42;
        this.cnt = (this.cnt + 1) & 2047;
        return r08;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "HC-256";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters parameters;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.iv = parametersWithIV.getIV();
            parameters = parametersWithIV.getParameters();
        } else {
            this.iv = new byte[0];
            parameters = cipherParameters;
        }
        if (!(parameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "Invalid parameter passed to HC256 init - "));
        }
        this.key = ((KeyParameter) parameters).getKey();
        init();
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), this.key.length * 8, cipherParameters, Utils.getPurpose(z10)));
        this.initialised = true;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int r6, int r72, byte[] bArr2, int r92) throws DataLengthException {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (r6 + r72 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r92 + r72 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        for (int r02 = 0; r02 < r72; r02++) {
            bArr2[r92 + r02] = (byte) (bArr[r6 + r02] ^ getByte());
        }
        return r72;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        init();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        return (byte) (b10 ^ getByte());
    }
}
