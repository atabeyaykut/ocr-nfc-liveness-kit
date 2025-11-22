package org.bouncycastle.crypto.engines;

import androidx.core.view.MotionEventCompat;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes2.dex */
public class Grain128Engine implements StreamCipher {
    private static final int STATE_SIZE = 4;
    private int index = 4;
    private boolean initialised = false;
    private int[] lfsr;
    private int[] nfsr;
    private byte[] out;
    private int output;
    private byte[] workingIV;
    private byte[] workingKey;

    private byte getKeyStream() {
        if (this.index > 3) {
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
        int r42 = (r32 >>> 2) | (r6 << 30);
        int r72 = (r32 >>> 12) | (r6 << 20);
        int r33 = (r32 >>> 15) | (r6 << 17);
        int r10 = r12[2];
        int r82 = (r6 >>> 4) | (r10 << 28);
        int r62 = (r6 >>> 13) | (r10 << 19);
        int r13 = r12[3];
        int r11 = (r10 >>> 9) | (r13 << 23);
        int r132 = (r10 >>> 25) | (r13 << 7);
        int r14 = (r13 << 1) | (r10 >>> 31);
        int[] r142 = this.lfsr;
        int r22 = r142[0];
        int r16 = r142[1];
        int r15 = (r22 >>> 8) | (r16 << 24);
        int r17 = (r22 >>> 13) | (r16 << 19);
        int r23 = (r22 >>> 20) | (r16 << 12);
        int r92 = r142[2];
        int r122 = r142[3];
        int r24 = r17 & r23;
        return ((((((((((r14 & r72) & ((r122 << 1) | (r92 >>> 31))) ^ (((r24 ^ (r72 & r15)) ^ (r14 & ((r16 >>> 10) | (r92 << 22)))) ^ (((r16 >>> 28) | (r92 << 4)) & ((r92 >>> 15) | (r122 << 17))))) ^ ((r92 >>> 29) | (r122 << 3))) ^ r42) ^ r33) ^ r82) ^ r62) ^ r10) ^ r11) ^ r132;
    }

    private int getOutputLFSR() {
        int[] r02 = this.lfsr;
        int r12 = r02[0];
        int r32 = r02[1];
        int r22 = (r12 >>> 7) | (r32 << 25);
        int r42 = r02[2];
        int r03 = r02[3];
        int r52 = (r42 >>> 6) | (r03 << 26);
        return r03 ^ ((((r12 ^ r22) ^ ((r32 >>> 6) | (r42 << 26))) ^ r52) ^ ((r42 >>> 17) | (r03 << 15)));
    }

    private int getOutputNFSR() {
        int[] r12 = this.nfsr;
        int r22 = r12[0];
        int r42 = r12[1];
        int r32 = (r22 >>> 3) | (r42 << 29);
        int r52 = (r22 >>> 11) | (r42 << 21);
        int r6 = (r22 >>> 13) | (r42 << 19);
        int r72 = (r22 >>> 17) | (r42 << 15);
        int r82 = (r22 >>> 18) | (r42 << 14);
        int r92 = (r22 >>> 26) | (r42 << 6);
        int r10 = (r22 >>> 27) | (r42 << 5);
        int r122 = r12[2];
        int r11 = (r42 >>> 8) | (r122 << 24);
        int r13 = (r42 >>> 16) | (r122 << 16);
        int r14 = (r42 >>> 24) | (r122 << 8);
        int r15 = (r42 >>> 27) | (r122 << 5);
        int r43 = (r42 >>> 29) | (r122 << 3);
        int r16 = r12[3];
        return (((((((r16 ^ (((r22 ^ r92) ^ r14) ^ ((r122 >>> 27) | (r16 << 5)))) ^ (r32 & ((r122 >>> 3) | (r16 << 29)))) ^ (r52 & r6)) ^ (r72 & r82)) ^ (r10 & r15)) ^ (r11 & r13)) ^ (r43 & ((r122 >>> 1) | (r16 << 31)))) ^ (((r122 >>> 4) | (r16 << 28)) & ((r122 >>> 20) | (r16 << 12)));
    }

    private void initGrain() {
        for (int r12 = 0; r12 < 8; r12++) {
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
        bArr[2] = (byte) (output >> 16);
        bArr[3] = (byte) (output >> 24);
        this.nfsr = shift(this.nfsr, getOutputNFSR() ^ this.lfsr[0]);
        this.lfsr = shift(this.lfsr, getOutputLFSR());
    }

    private void setKey(byte[] bArr, byte[] bArr2) {
        bArr2[12] = -1;
        bArr2[13] = -1;
        bArr2[14] = -1;
        bArr2[15] = -1;
        this.workingKey = bArr;
        this.workingIV = bArr2;
        int r10 = 0;
        int r11 = 0;
        while (true) {
            int[] r02 = this.nfsr;
            if (r10 >= r02.length) {
                return;
            }
            byte[] bArr3 = this.workingKey;
            int r22 = r11 + 3;
            int r42 = r11 + 2;
            int r52 = r11 + 1;
            r02[r10] = (bArr3[r11] & 255) | (bArr3[r22] << 24) | ((bArr3[r42] << 16) & 16711680) | ((bArr3[r52] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            int[] r03 = this.lfsr;
            byte[] bArr4 = this.workingIV;
            r03[r10] = (bArr4[r11] & 255) | (bArr4[r22] << 24) | ((bArr4[r42] << 16) & 16711680) | ((bArr4[r52] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            r11 += 4;
            r10++;
        }
    }

    private int[] shift(int[] r42, int r52) {
        r42[0] = r42[1];
        r42[1] = r42[2];
        r42[2] = r42[3];
        r42[3] = r52;
        return r42;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "Grain-128";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Grain-128 Init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] bArr = parametersWithIV.getIV();
        if (bArr == null || bArr.length != 12) {
            throw new IllegalArgumentException("Grain-128 requires exactly 12 bytes of IV");
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("Grain-128 init parameters must include a key");
        }
        byte[] key = ((KeyParameter) parametersWithIV.getParameters()).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException("Grain-128 key must be 128 bits long");
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z10)));
        byte[] bArr2 = new byte[key.length];
        this.workingIV = bArr2;
        this.workingKey = new byte[key.length];
        this.lfsr = new int[4];
        this.nfsr = new int[4];
        this.out = new byte[4];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(key, 0, this.workingKey, 0, key.length);
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
        this.index = 4;
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
