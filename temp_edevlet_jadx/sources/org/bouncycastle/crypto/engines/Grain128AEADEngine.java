package org.bouncycastle.crypto.engines;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class Grain128AEADEngine implements AEADCipher {
    private static final int STATE_SIZE = 4;
    private int[] authAcc;
    private int[] authSr;
    private int[] lfsr;
    private byte[] mac;
    private int[] nfsr;
    private byte[] workingIV;
    private byte[] workingKey;
    private boolean initialised = false;
    private boolean aadFinished = false;
    private ErasableOutputStream aadData = new ErasableOutputStream();

    public static final class ErasableOutputStream extends ByteArrayOutputStream {
        public byte[] getBuf() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    private void accumulate() {
        int[] r02 = this.authAcc;
        int r22 = r02[0];
        int[] r32 = this.authSr;
        r02[0] = r22 ^ r32[0];
        r02[1] = r02[1] ^ r32[1];
    }

    private void authShift(int r72) {
        int[] r02 = this.authSr;
        int r22 = r02[0] >>> 1;
        int r42 = r02[1];
        r02[0] = r22 | (r42 << 31);
        r02[1] = (r72 << 31) | (r42 >>> 1);
    }

    private void doProcessAADBytes(byte[] bArr, int r12, int r13) {
        int r32;
        byte[] bArr2;
        if (r13 < 128) {
            bArr2 = new byte[r13 + 1];
            bArr2[0] = (byte) r13;
            r32 = 0;
        } else {
            int r02 = len_length(r13);
            byte[] bArr3 = new byte[r02 + 1 + r13];
            bArr3[0] = (byte) (r02 | 128);
            int r52 = r13;
            int r42 = 0;
            while (r42 < r02) {
                r42++;
                bArr3[r42] = (byte) r52;
                r52 >>>= 8;
            }
            r32 = r02;
            bArr2 = bArr3;
        }
        for (int r43 = 0; r43 < r13; r43++) {
            bArr2[1 + r32 + r43] = bArr[r12 + r43];
        }
        for (byte b10 : bArr2) {
            for (int r132 = 0; r132 < 8; r132++) {
                this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) & 1);
                this.lfsr = shift(this.lfsr, getOutputLFSR() & 1);
                int r33 = -((b10 >> r132) & 1);
                int[] r44 = this.authAcc;
                int r6 = r44[0];
                int[] r72 = this.authSr;
                r44[0] = r6 ^ (r72[0] & r33);
                r44[1] = (r33 & r72[1]) ^ r44[1];
                authShift(getOutput());
                this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) & 1);
                this.lfsr = shift(this.lfsr, getOutputLFSR() & 1);
            }
        }
    }

    private byte[] getKeyStream(byte[] bArr, int r15, int r16, byte[] bArr2, int r18) {
        for (int r32 = 0; r32 < r16; r32++) {
            byte b10 = bArr[r15 + r32];
            byte b11 = 0;
            for (int r52 = 0; r52 < 8; r52++) {
                int output = getOutput();
                this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) & 1);
                this.lfsr = shift(this.lfsr, getOutputLFSR() & 1);
                int r82 = (b10 >> r52) & 1;
                b11 = (byte) (b11 | ((output ^ r82) << r52));
                int r72 = -r82;
                int[] r83 = this.authAcc;
                int r92 = r83[0];
                int[] r11 = this.authSr;
                r83[0] = r92 ^ (r11[0] & r72);
                r83[1] = (r72 & r11[1]) ^ r83[1];
                authShift(getOutput());
                this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) & 1);
                this.lfsr = shift(this.lfsr, getOutputLFSR() & 1);
            }
            bArr2[r18 + r32] = b11;
        }
        return bArr2;
    }

    private int getOutput() {
        int[] r12 = this.nfsr;
        int r32 = r12[0];
        int r52 = r32 >>> 12;
        int r72 = r12[1];
        int r13 = r12[2];
        int r10 = r13 >>> 9;
        int r11 = r13 >>> 25;
        int r122 = r13 >>> 31;
        int[] r132 = this.lfsr;
        int r22 = r132[0];
        int r16 = r132[1];
        int r92 = r132[2];
        int r23 = (r22 >>> 20) & (r22 >>> 13);
        return (((r13 ^ (((((((((r23 ^ ((r22 >>> 8) & r52)) ^ (r122 & (r16 >>> 10))) ^ ((r16 >>> 28) & (r92 >>> 15))) ^ ((r52 & r122) & (r92 >>> 30))) ^ (r92 >>> 29)) ^ (r32 >>> 2)) ^ (r32 >>> 15)) ^ (r72 >>> 4)) ^ (r72 >>> 13))) ^ r10) ^ r11) & 1;
    }

    private int getOutputLFSR() {
        int[] r02 = this.lfsr;
        int r12 = r02[0];
        int r42 = r02[1] >>> 6;
        int r52 = r02[2];
        return (r02[3] ^ ((((r12 ^ (r12 >>> 7)) ^ r42) ^ (r52 >>> 6)) ^ (r52 >>> 17))) & 1;
    }

    private int getOutputNFSR() {
        int[] r12 = this.nfsr;
        int r22 = r12[0];
        int r10 = r22 >>> 25;
        int r122 = r22 >>> 27;
        int r14 = r12[1];
        int r15 = r14 >>> 8;
        int r16 = r14 >>> 16;
        int r17 = r14 >>> 24;
        int r18 = r14 >>> 27;
        int r19 = r12[2];
        int r20 = r19 >>> 1;
        int r21 = r19 >>> 3;
        int r222 = r19 >>> 4;
        int r25 = r19 >>> 18;
        int r26 = r19 >>> 20;
        int r28 = r19 >>> 27;
        int r30 = r19 >>> 29;
        return (((((((((((r12[3] ^ (((r22 ^ (r22 >>> 26)) ^ r17) ^ r28)) ^ ((r22 >>> 3) & r21)) ^ ((r22 >>> 11) & (r22 >>> 13))) ^ ((r22 >>> 17) & (r22 >>> 18))) ^ (r122 & r18)) ^ (r15 & r16)) ^ ((r14 >>> 29) & r20)) ^ (r222 & r26)) ^ (((r22 >>> 22) & (r22 >>> 24)) & r10)) ^ (((r19 >>> 6) & (r19 >>> 14)) & r25)) ^ ((((r19 >>> 24) & (r19 >>> 28)) & r30) & (r19 >>> 31))) & 1;
    }

    private void initGrain() {
        for (int r12 = 0; r12 < 320; r12++) {
            int output = getOutput();
            this.nfsr = shift(this.nfsr, ((getOutputNFSR() ^ this.lfsr[0]) ^ output) & 1);
            this.lfsr = shift(this.lfsr, (output ^ getOutputLFSR()) & 1);
        }
        for (int r13 = 0; r13 < 8; r13++) {
            for (int r42 = 0; r42 < 8; r42++) {
                int output2 = getOutput();
                this.nfsr = shift(this.nfsr, (((getOutputNFSR() ^ this.lfsr[0]) ^ output2) ^ (this.workingKey[r13] >> r42)) & 1);
                this.lfsr = shift(this.lfsr, ((output2 ^ getOutputLFSR()) ^ (this.workingKey[r13 + 8] >> r42)) & 1);
            }
        }
        for (int r14 = 0; r14 < 2; r14++) {
            for (int r43 = 0; r43 < 32; r43++) {
                int output3 = getOutput();
                this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) & 1);
                this.lfsr = shift(this.lfsr, getOutputLFSR() & 1);
                int[] r6 = this.authAcc;
                r6[r14] = (output3 << r43) | r6[r14];
            }
        }
        for (int r15 = 0; r15 < 2; r15++) {
            for (int r52 = 0; r52 < 32; r52++) {
                int output4 = getOutput();
                this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) & 1);
                this.lfsr = shift(this.lfsr, getOutputLFSR() & 1);
                int[] r72 = this.authSr;
                r72[r15] = (output4 << r52) | r72[r15];
            }
        }
        this.initialised = true;
    }

    private static int len_length(int r12) {
        if ((r12 & 255) == r12) {
            return 1;
        }
        if ((65535 & r12) == r12) {
            return 2;
        }
        return (16777215 & r12) == r12 ? 3 : 4;
    }

    private void reset(boolean z10) {
        if (z10) {
            this.mac = null;
        }
        this.aadData.reset();
        this.aadFinished = false;
        setKey(this.workingKey, this.workingIV);
        initGrain();
    }

    private void setKey(byte[] bArr, byte[] bArr2) {
        bArr2[12] = -1;
        bArr2[13] = -1;
        bArr2[14] = -1;
        bArr2[15] = 127;
        this.workingKey = bArr;
        this.workingIV = bArr2;
        Pack.littleEndianToInt(bArr, 0, this.nfsr);
        Pack.littleEndianToInt(this.workingIV, 0, this.lfsr);
    }

    private int[] shift(int[] r72, int r82) {
        int r12 = r72[0] >>> 1;
        int r32 = r72[1];
        r72[0] = r12 | (r32 << 31);
        int r02 = r32 >>> 1;
        int r33 = r72[2];
        r72[1] = r02 | (r33 << 31);
        int r42 = r72[3];
        r72[2] = (r33 >>> 1) | (r42 << 31);
        r72[3] = (r82 << 31) | (r42 >>> 1);
        return r72;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r52) throws InvalidCipherTextException, IllegalStateException {
        if (!this.aadFinished) {
            doProcessAADBytes(this.aadData.getBuf(), 0, this.aadData.size());
            this.aadFinished = true;
        }
        accumulate();
        byte[] bArrIntToLittleEndian = Pack.intToLittleEndian(this.authAcc);
        this.mac = bArrIntToLittleEndian;
        System.arraycopy(bArrIntToLittleEndian, 0, bArr, r52, bArrIntToLittleEndian.length);
        reset(false);
        return this.mac.length;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return "Grain-128AEAD";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.mac;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int r12) {
        return r12 + 8;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int r12) {
        return r12;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Grain-128AEAD init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] bArr = parametersWithIV.getIV();
        if (bArr == null || bArr.length != 12) {
            throw new IllegalArgumentException("Grain-128AEAD requires exactly 12 bytes of IV");
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("Grain-128AEAD init parameters must include a key");
        }
        byte[] key = ((KeyParameter) parametersWithIV.getParameters()).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException("Grain-128AEAD key must be 128 bits long");
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z10)));
        byte[] bArr2 = new byte[16];
        this.workingIV = bArr2;
        this.workingKey = new byte[16];
        this.lfsr = new int[4];
        this.nfsr = new int[4];
        this.authAcc = new int[2];
        this.authSr = new int[2];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(key, 0, this.workingKey, 0, key.length);
        reset();
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) throws IOException {
        if (this.aadFinished) {
            throw new IllegalStateException("associated data must be added before plaintext/ciphertext");
        }
        this.aadData.write(b10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int r32, int r42) throws IOException {
        if (this.aadFinished) {
            throw new IllegalStateException("associated data must be added before plaintext/ciphertext");
        }
        this.aadData.write(bArr, r32, r42);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int r10) throws DataLengthException {
        return processBytes(new byte[]{b10}, 0, 1, bArr, r10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int r52, int r6, byte[] bArr2, int r82) throws DataLengthException {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (!this.aadFinished) {
            doProcessAADBytes(this.aadData.getBuf(), 0, this.aadData.size());
            this.aadFinished = true;
        }
        if (r52 + r6 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r82 + r6 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        getKeyStream(bArr, r52, r6, bArr2, r82);
        return r6;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
    }
}
