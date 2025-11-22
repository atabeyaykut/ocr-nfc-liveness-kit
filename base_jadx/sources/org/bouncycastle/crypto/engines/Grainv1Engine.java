package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes2.dex */
public class Grainv1Engine implements StreamCipher {
    private static final int STATE_SIZE = 5;
    private int index = 2;
    private boolean initialised = false;
    private int[] lfsr;
    private int[] nfsr;
    private byte[] out;
    private int output;
    private byte[] workingIV;
    private byte[] workingKey;

    private byte getKeyStream() {
        if (this.index > 1) {
            oneRound();
            this.index = 0;
        }
        byte[] bArr = this.out;
        int r12 = this.index;
        this.index = r12 + 1;
        return bArr[r12];
    }

    private int getOutput() {
        int[] r12 = this.nfsr;
        int r32 = r12[0];
        int r6 = r12[1];
        int r42 = (r32 >>> 1) | (r6 << 15);
        int r72 = (r32 >>> 2) | (r6 << 14);
        int r82 = (r32 >>> 4) | (r6 << 12);
        int r33 = (r32 >>> 10) | (r6 << 6);
        int r10 = r12[2];
        int r62 = (r6 >>> 15) | (r10 << 1);
        int r122 = r12[3];
        int r102 = (r10 >>> 11) | (r122 << 5);
        int r13 = r12[4];
        int r132 = (r122 >>> 8) | (r13 << 8);
        int r14 = (r13 << 1) | (r122 >>> 15);
        int[] r123 = this.lfsr;
        int r22 = r123[0] >>> 3;
        int r52 = r123[1];
        int r23 = r22 | (r52 << 13);
        int r15 = r123[2];
        int r53 = (r52 >>> 9) | (r15 << 7);
        int r92 = (r123[3] << 2) | (r15 >>> 14);
        int r11 = r123[4];
        int r142 = r92 & r11;
        int r124 = ((((r53 ^ r14) ^ (r23 & r11)) ^ r142) ^ (r11 & r14)) ^ ((r23 & r53) & r92);
        int r24 = r23 & r92;
        return (((((((((r14 & r142) ^ (((r24 & r14) ^ ((r11 & r24) ^ r124)) ^ ((r53 & r92) & r14))) ^ r42) ^ r72) ^ r82) ^ r33) ^ r62) ^ r102) ^ r132) & 65535;
    }

    private int getOutputLFSR() {
        int[] r02 = this.lfsr;
        int r12 = r02[0];
        int r32 = r02[1];
        int r22 = (r12 >>> 13) | (r32 << 3);
        int r52 = r02[2];
        int r33 = (r32 >>> 7) | (r52 << 9);
        int r6 = r02[3];
        int r53 = (r52 >>> 6) | (r6 << 10);
        int r03 = r02[4];
        int r72 = (r6 >>> 3) | (r03 << 13);
        return (((r03 << 2) | (r6 >>> 14)) ^ ((((r12 ^ r22) ^ r33) ^ r53) ^ r72)) & 65535;
    }

    private int getOutputNFSR() {
        int[] r12 = this.nfsr;
        int r22 = r12[0];
        int r52 = r12[1];
        int r32 = (r22 >>> 9) | (r52 << 7);
        int r6 = (r22 >>> 14) | (r52 << 2);
        int r72 = (r22 >>> 15) | (r52 << 1);
        int r92 = r12[2];
        int r82 = (r52 >>> 5) | (r92 << 11);
        int r53 = (r52 >>> 12) | (r92 << 4);
        int r11 = r12[3];
        int r10 = (r92 >>> 1) | (r11 << 15);
        int r122 = (r92 >>> 5) | (r11 << 11);
        int r93 = (r92 >>> 13) | (r11 << 3);
        int r13 = r12[4];
        int r132 = (r11 >>> 4) | (r13 << 12);
        int r14 = (r11 >>> 12) | (r13 << 4);
        int r15 = (r11 >>> 14) | (r13 << 2);
        int r16 = (r13 << 1) | (r11 >>> 15);
        int r42 = r16 & r14;
        int r23 = (((r22 ^ (((((((((r15 ^ r14) ^ r132) ^ r93) ^ r122) ^ r10) ^ r53) ^ r82) ^ r6) ^ r32)) ^ r42) ^ (r122 & r10)) ^ (r72 & r32);
        int r62 = r14 & r132;
        int r112 = r10 & r53 & r82;
        return (((((((((r16 & r93) & r53) & r32) ^ ((r23 ^ (r62 & r93)) ^ r112)) ^ ((r62 & r122) & r10)) ^ ((r42 & r82) & r72)) ^ (((r42 & r132) & r93) & r122)) ^ ((r112 & r72) & r32)) ^ (((((r132 & r93) & r122) & r10) & r53) & r82)) & 65535;
    }

    private void initGrain() {
        for (int r12 = 0; r12 < 10; r12++) {
            this.output = getOutput();
            this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) ^ this.output);
            this.lfsr = shift(this.lfsr, getOutputLFSR() ^ this.output);
        }
        this.initialised = true;
    }

    private void oneRound() {
        int output = getOutput();
        this.output = output;
        byte[] bArr = this.out;
        bArr[0] = (byte) output;
        bArr[1] = (byte) (output >> 8);
        this.nfsr = shift(this.nfsr, getOutputNFSR() ^ this.lfsr[0]);
        this.lfsr = shift(this.lfsr, getOutputLFSR());
    }

    private void setKey(byte[] bArr, byte[] bArr2) {
        bArr2[8] = -1;
        bArr2[9] = -1;
        this.workingKey = bArr;
        this.workingIV = bArr2;
        int r6 = 0;
        int r72 = 0;
        while (true) {
            int[] r12 = this.nfsr;
            if (r6 >= r12.length) {
                return;
            }
            byte[] bArr3 = this.workingKey;
            int r32 = r72 + 1;
            r12[r6] = ((bArr3[r72] & 255) | (bArr3[r32] << 8)) & 65535;
            int[] r13 = this.lfsr;
            byte[] bArr4 = this.workingIV;
            r13[r6] = ((bArr4[r72] & 255) | (bArr4[r32] << 8)) & 65535;
            r72 += 2;
            r6++;
        }
    }

    private int[] shift(int[] r42, int r52) {
        r42[0] = r42[1];
        r42[1] = r42[2];
        r42[2] = r42[3];
        r42[3] = r42[4];
        r42[4] = r52;
        return r42;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "Grain v1";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Grain v1 init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] bArr = parametersWithIV.getIV();
        if (bArr == null || bArr.length != 8) {
            throw new IllegalArgumentException("Grain v1 requires exactly 8 bytes of IV");
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("Grain v1 init parameters must include a key");
        }
        byte[] key = ((KeyParameter) parametersWithIV.getParameters()).getKey();
        if (key.length != 10) {
            throw new IllegalArgumentException("Grain v1 key must be 80 bits long");
        }
        byte[] bArr2 = new byte[key.length];
        this.workingIV = bArr2;
        this.workingKey = new byte[key.length];
        this.lfsr = new int[5];
        this.nfsr = new int[5];
        this.out = new byte[2];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(key, 0, this.workingKey, 0, key.length);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 80, cipherParameters, Utils.getPurpose(z10)));
        reset();
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
            bArr2[r92 + r02] = (byte) (bArr[r6 + r02] ^ getKeyStream());
        }
        return r72;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        this.index = 2;
        setKey(this.workingKey, this.workingIV);
        initGrain();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        if (this.initialised) {
            return (byte) (b10 ^ getKeyStream());
        }
        throw new IllegalStateException(getAlgorithmName() + " not initialised");
    }
}
