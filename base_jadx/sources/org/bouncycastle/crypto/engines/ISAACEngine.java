package org.bouncycastle.crypto.engines;

import ab.b;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class ISAACEngine implements StreamCipher {
    private final int sizeL = 8;
    private final int stateArraySize = 256;
    private int[] engineState = null;
    private int[] results = null;

    /* renamed from: a, reason: collision with root package name */
    private int f11515a = 0;

    /* renamed from: b, reason: collision with root package name */
    private int f11516b = 0;

    /* renamed from: c, reason: collision with root package name */
    private int f11517c = 0;
    private int index = 0;
    private byte[] keyStream = new byte[1024];
    private byte[] workingKey = null;
    private boolean initialised = false;

    private void isaac() {
        int r42;
        int r52;
        int r02 = this.f11516b;
        int r12 = this.f11517c + 1;
        this.f11517c = r12;
        this.f11516b = r02 + r12;
        for (int r03 = 0; r03 < 256; r03++) {
            int[] r13 = this.engineState;
            int r32 = r13[r03];
            int r43 = r03 & 3;
            if (r43 == 0) {
                r42 = this.f11515a;
                r52 = r42 << 13;
            } else if (r43 == 1) {
                r42 = this.f11515a;
                r52 = r42 >>> 6;
            } else if (r43 == 2) {
                r42 = this.f11515a;
                r52 = r42 << 2;
            } else if (r43 != 3) {
                int r44 = this.f11515a + r13[(r03 + 128) & 255];
                this.f11515a = r44;
                int r53 = r13[(r32 >>> 2) & 255] + r44 + this.f11516b;
                r13[r03] = r53;
                int[] r45 = this.results;
                int r14 = r13[(r53 >>> 10) & 255] + r32;
                this.f11516b = r14;
                r45[r03] = r14;
            } else {
                r42 = this.f11515a;
                r52 = r42 >>> 16;
            }
            this.f11515a = r42 ^ r52;
            int r442 = this.f11515a + r13[(r03 + 128) & 255];
            this.f11515a = r442;
            int r532 = r13[(r32 >>> 2) & 255] + r442 + this.f11516b;
            r13[r03] = r532;
            int[] r452 = this.results;
            int r142 = r13[(r532 >>> 10) & 255] + r32;
            this.f11516b = r142;
            r452[r03] = r142;
        }
    }

    private void mix(int[] r14) {
        int r12 = r14[0];
        int r32 = r14[1];
        int r13 = r12 ^ (r32 << 11);
        r14[0] = r13;
        int r52 = r14[3] + r13;
        r14[3] = r52;
        int r72 = r14[2];
        int r33 = r32 + r72;
        r14[1] = r33;
        int r34 = r33 ^ (r72 >>> 2);
        r14[1] = r34;
        int r92 = r14[4] + r34;
        r14[4] = r92;
        int r73 = r72 + r52;
        r14[2] = r73;
        int r74 = r73 ^ (r52 << 8);
        r14[2] = r74;
        int r11 = r14[5] + r74;
        r14[5] = r11;
        int r53 = r52 + r92;
        r14[3] = r53;
        int r54 = r53 ^ (r92 >>> 16);
        r14[3] = r54;
        int r122 = r14[6] + r54;
        r14[6] = r122;
        int r93 = r92 + r11;
        r14[4] = r93;
        int r55 = (r11 << 10) ^ r93;
        r14[4] = r55;
        int r94 = r14[7] + r55;
        r14[7] = r94;
        int r112 = r11 + r122;
        r14[5] = r112;
        int r56 = (r122 >>> 4) ^ r112;
        r14[5] = r56;
        int r15 = r13 + r56;
        r14[0] = r15;
        int r123 = r122 + r94;
        r14[6] = r123;
        int r57 = (r94 << 8) ^ r123;
        r14[6] = r57;
        int r35 = r34 + r57;
        r14[1] = r35;
        int r95 = r94 + r15;
        r14[7] = r95;
        int r22 = (r15 >>> 9) ^ r95;
        r14[7] = r22;
        r14[2] = r74 + r22;
        r14[0] = r15 + r35;
    }

    private void setKey(byte[] bArr) {
        this.workingKey = bArr;
        if (this.engineState == null) {
            this.engineState = new int[256];
        }
        if (this.results == null) {
            this.results = new int[256];
        }
        for (int r22 = 0; r22 < 256; r22++) {
            int[] r32 = this.engineState;
            this.results[r22] = 0;
            r32[r22] = 0;
        }
        this.f11517c = 0;
        this.f11516b = 0;
        this.f11515a = 0;
        this.index = 0;
        int length = bArr.length + (bArr.length & 3);
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        for (int r11 = 0; r11 < length; r11 += 4) {
            this.results[r11 >>> 2] = Pack.littleEndianToInt(bArr2, r11);
        }
        int[] r23 = new int[8];
        for (int r33 = 0; r33 < 8; r33++) {
            r23[r33] = -1640531527;
        }
        for (int r34 = 0; r34 < 4; r34++) {
            mix(r23);
        }
        int r35 = 0;
        while (r35 < 2) {
            for (int r42 = 0; r42 < 256; r42 += 8) {
                for (int r6 = 0; r6 < 8; r6++) {
                    r23[r6] = r23[r6] + (r35 < 1 ? this.results[r42 + r6] : this.engineState[r42 + r6]);
                }
                mix(r23);
                for (int r62 = 0; r62 < 8; r62++) {
                    this.engineState[r42 + r62] = r23[r62];
                }
            }
            r35++;
        }
        isaac();
        this.initialised = true;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "ISAAC";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to ISAAC init - "));
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        setKey(key);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), key.length < 32 ? key.length * 8 : 256, cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int r72, int r82, byte[] bArr2, int r10) {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (r72 + r82 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r10 + r82 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        for (int r02 = 0; r02 < r82; r02++) {
            if (this.index == 0) {
                isaac();
                this.keyStream = Pack.intToBigEndian(this.results);
            }
            byte[] bArr3 = this.keyStream;
            int r32 = this.index;
            bArr2[r02 + r10] = (byte) (bArr3[r32] ^ bArr[r02 + r72]);
            this.index = (r32 + 1) & 1023;
        }
        return r82;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        setKey(this.workingKey);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        if (this.index == 0) {
            isaac();
            this.keyStream = Pack.intToBigEndian(this.results);
        }
        byte[] bArr = this.keyStream;
        int r12 = this.index;
        byte b11 = (byte) (b10 ^ bArr[r12]);
        this.index = (r12 + 1) & 1023;
        return b11;
    }
}
