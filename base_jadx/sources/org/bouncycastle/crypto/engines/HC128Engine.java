package org.bouncycastle.crypto.engines;

import ab.b;
import androidx.core.app.FrameMetricsAggregator;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes2.dex */
public class HC128Engine implements StreamCipher {
    private boolean initialised;
    private byte[] iv;
    private byte[] key;

    /* renamed from: p, reason: collision with root package name */
    private int[] f11511p = new int[512];

    /* renamed from: q, reason: collision with root package name */
    private int[] f11512q = new int[512];
    private int cnt = 0;
    private byte[] buf = new byte[4];
    private int idx = 0;

    private static int dim(int r02, int r12) {
        return mod512(r02 - r12);
    }

    private static int f1(int r22) {
        return (r22 >>> 3) ^ (rotateRight(r22, 7) ^ rotateRight(r22, 18));
    }

    private static int f2(int r22) {
        return (r22 >>> 10) ^ (rotateRight(r22, 17) ^ rotateRight(r22, 19));
    }

    private int g1(int r22, int r32, int r42) {
        return (rotateRight(r22, 10) ^ rotateRight(r42, 23)) + rotateRight(r32, 8);
    }

    private int g2(int r22, int r32, int r42) {
        return (rotateLeft(r22, 10) ^ rotateLeft(r42, 23)) + rotateLeft(r32, 8);
    }

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

    private int h1(int r32) {
        int[] r02 = this.f11512q;
        return r02[r32 & 255] + r02[((r32 >> 16) & 255) + 256];
    }

    private int h2(int r32) {
        int[] r02 = this.f11511p;
        return r02[r32 & 255] + r02[((r32 >> 16) & 255) + 256];
    }

    private void init() {
        if (this.key.length != 16) {
            throw new IllegalArgumentException("The key must be 128 bits long");
        }
        if (this.iv.length != 16) {
            throw new IllegalArgumentException("The IV must be 128 bits long");
        }
        this.idx = 0;
        this.cnt = 0;
        int[] r32 = new int[1280];
        for (int r42 = 0; r42 < 16; r42++) {
            int r6 = r42 >> 2;
            r32[r6] = ((this.key[r42] & 255) << ((r42 & 3) * 8)) | r32[r6];
        }
        System.arraycopy(r32, 0, r32, 4, 4);
        int r62 = 0;
        while (true) {
            byte[] bArr = this.iv;
            if (r62 >= bArr.length || r62 >= 16) {
                break;
            }
            int r82 = (r62 >> 2) + 8;
            r32[r82] = ((bArr[r62] & 255) << ((r62 & 3) * 8)) | r32[r82];
            r62++;
        }
        System.arraycopy(r32, 8, r32, 12, 4);
        for (int r12 = 16; r12 < 1280; r12++) {
            r32[r12] = f2(r32[r12 - 2]) + r32[r12 - 7] + f1(r32[r12 - 15]) + r32[r12 - 16] + r12;
        }
        System.arraycopy(r32, 256, this.f11511p, 0, 512);
        System.arraycopy(r32, 768, this.f11512q, 0, 512);
        for (int r13 = 0; r13 < 512; r13++) {
            this.f11511p[r13] = step();
        }
        for (int r14 = 0; r14 < 512; r14++) {
            this.f11512q[r14] = step();
        }
        this.cnt = 0;
    }

    private static int mod1024(int r02) {
        return r02 & 1023;
    }

    private static int mod512(int r02) {
        return r02 & FrameMetricsAggregator.EVERY_DURATION;
    }

    private static int rotateLeft(int r12, int r22) {
        return (r12 >>> (-r22)) | (r12 << r22);
    }

    private static int rotateRight(int r12, int r22) {
        return (r12 << (-r22)) | (r12 >>> r22);
    }

    private int step() {
        int r12;
        int r02;
        int r03 = mod512(this.cnt);
        if (this.cnt < 512) {
            int[] r13 = this.f11511p;
            r13[r03] = r13[r03] + g1(r13[dim(r03, 3)], this.f11511p[dim(r03, 10)], this.f11511p[dim(r03, FrameMetricsAggregator.EVERY_DURATION)]);
            r12 = h1(this.f11511p[dim(r03, 12)]);
            r02 = this.f11511p[r03];
        } else {
            int[] r14 = this.f11512q;
            r14[r03] = r14[r03] + g2(r14[dim(r03, 3)], this.f11512q[dim(r03, 10)], this.f11512q[dim(r03, FrameMetricsAggregator.EVERY_DURATION)]);
            r12 = h2(this.f11512q[dim(r03, 12)]);
            r02 = this.f11512q[r03];
        }
        int r04 = r02 ^ r12;
        this.cnt = mod1024(this.cnt + 1);
        return r04;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "HC-128";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("no IV passed");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        this.iv = parametersWithIV.getIV();
        CipherParameters parameters = parametersWithIV.getParameters();
        if (!(parameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "Invalid parameter passed to HC128 init - "));
        }
        this.key = ((KeyParameter) parameters).getKey();
        init();
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z10)));
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
