package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes2.dex */
public abstract class SerpentEngineBase implements BlockCipher {
    protected static final int BLOCK_SIZE = 16;
    static final int PHI = -1640531527;
    static final int ROUNDS = 32;
    protected boolean encrypting;
    protected int keyBits;
    protected int[] wKey;

    public SerpentEngineBase() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 256));
    }

    private CryptoServicePurpose getPurpose() {
        return this.wKey == null ? CryptoServicePurpose.ANY : this.encrypting ? CryptoServicePurpose.ENCRYPTION : CryptoServicePurpose.DECRYPTION;
    }

    public static int rotateLeft(int r12, int r22) {
        return (r12 >>> (-r22)) | (r12 << r22);
    }

    public static int rotateRight(int r12, int r22) {
        return (r12 << (-r22)) | (r12 >>> r22);
    }

    public final void LT(int[] r10) {
        int r12 = rotateLeft(r10[0], 13);
        int r32 = rotateLeft(r10[2], 3);
        int r6 = (r10[1] ^ r12) ^ r32;
        int r72 = (r10[3] ^ r32) ^ (r12 << 3);
        r10[1] = rotateLeft(r6, 1);
        int r73 = rotateLeft(r72, 7);
        r10[3] = r73;
        r10[0] = rotateLeft((r12 ^ r10[1]) ^ r73, 5);
        r10[2] = rotateLeft((r10[3] ^ r32) ^ (r10[1] << 7), 22);
    }

    public abstract void decryptBlock(byte[] bArr, int r22, byte[] bArr2, int r42);

    public abstract void encryptBlock(byte[] bArr, int r22, byte[] bArr2, int r42);

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Serpent";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    public final void ib0(int[] r52, int r6, int r72, int r82, int r92) {
        int r02 = ~r6;
        int r73 = r72 ^ r6;
        int r12 = (r02 | r73) ^ r92;
        int r83 = r82 ^ r12;
        int r22 = r73 ^ r83;
        r52[2] = r22;
        int r74 = (r73 & r92) ^ r02;
        int r93 = (r22 & r74) ^ r12;
        r52[1] = r93;
        int r62 = (r6 & r12) ^ (r93 | r83);
        r52[3] = r62;
        r52[0] = r62 ^ (r74 ^ r83);
    }

    public final void ib1(int[] r32, int r42, int r52, int r6, int r72) {
        int r73 = r72 ^ r52;
        int r43 = r42 ^ (r52 & r73);
        int r02 = r73 ^ r43;
        int r62 = r6 ^ r02;
        r32[3] = r62;
        int r53 = r52 ^ (r73 & r43);
        int r44 = r43 ^ (r62 | r53);
        r32[1] = r44;
        int r45 = ~r44;
        int r54 = r53 ^ r62;
        r32[0] = r45 ^ r54;
        r32[2] = (r45 | r54) ^ r02;
    }

    public final void ib2(int[] r52, int r6, int r72, int r82, int r92) {
        int r02 = r72 ^ r92;
        int r12 = ~r02;
        int r22 = r6 ^ r82;
        int r83 = r82 ^ r02;
        int r73 = (r72 & r83) ^ r22;
        r52[0] = r73;
        int r62 = (((r6 | r12) ^ r92) | r22) ^ r02;
        r52[3] = r62;
        int r84 = ~r83;
        int r63 = r62 | r73;
        r52[1] = r84 ^ r63;
        r52[2] = (r63 ^ r22) ^ (r92 & r84);
    }

    public final void ib3(int[] r52, int r6, int r72, int r82, int r92) {
        int r02 = r6 | r72;
        int r12 = r72 ^ r82;
        int r62 = r6 ^ (r72 & r12);
        int r73 = r82 ^ r62;
        int r83 = r92 | r62;
        int r22 = r12 ^ r83;
        r52[0] = r22;
        int r84 = (r83 | r12) ^ r92;
        r52[2] = r73 ^ r84;
        int r74 = r02 ^ r84;
        int r63 = r62 ^ (r22 & r74);
        r52[3] = r63;
        r52[1] = r63 ^ (r74 ^ r22);
    }

    public final void ib4(int[] r32, int r42, int r52, int r6, int r72) {
        int r53 = r52 ^ ((r6 | r72) & r42);
        int r62 = r6 ^ (r42 & r53);
        int r02 = r72 ^ r62;
        r32[1] = r02;
        int r43 = ~r42;
        int r63 = (r62 & r02) ^ r53;
        r32[3] = r63;
        int r73 = r72 ^ (r02 | r43);
        r32[0] = r63 ^ r73;
        r32[2] = (r43 ^ r02) ^ (r53 & r73);
    }

    public final void ib5(int[] r72, int r82, int r92, int r10, int r11) {
        int r02 = ~r10;
        int r12 = (r92 & r02) ^ r11;
        int r22 = r82 & r12;
        int r32 = (r92 ^ r02) ^ r22;
        r72[3] = r32;
        int r33 = r32 | r92;
        r72[1] = r12 ^ (r82 & r33);
        int r112 = r11 | r82;
        r72[0] = (r02 ^ r33) ^ r112;
        r72[2] = ((r82 ^ r10) | r22) ^ (r92 & r112);
    }

    public final void ib6(int[] r52, int r6, int r72, int r82, int r92) {
        int r02 = ~r6;
        int r62 = r6 ^ r72;
        int r12 = r82 ^ r62;
        int r83 = (r82 | r02) ^ r92;
        r52[1] = r12 ^ r83;
        int r63 = r62 ^ (r12 & r83);
        int r84 = r83 ^ (r72 | r63);
        r52[3] = r84;
        int r73 = r72 | r84;
        r52[0] = r63 ^ r73;
        r52[2] = (r92 & r02) ^ (r73 ^ r12);
    }

    public final void ib7(int[] r52, int r6, int r72, int r82, int r92) {
        int r02 = (r6 & r72) | r82;
        int r12 = (r6 | r72) & r92;
        int r22 = r02 ^ r12;
        r52[3] = r22;
        int r73 = r72 ^ r12;
        int r13 = ((r22 ^ (~r92)) | r73) ^ r6;
        r52[1] = r13;
        int r74 = (r73 ^ r82) ^ (r92 | r13);
        r52[0] = r74;
        r52[2] = ((r6 & r22) ^ r74) ^ (r02 ^ r13);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.encrypting = z10;
            byte[] key = ((KeyParameter) cipherParameters).getKey();
            this.wKey = makeWorkingKey(key);
            CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), key.length * 8, cipherParameters, getPurpose()));
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to " + getAlgorithmName() + " init - " + cipherParameters.getClass().getName());
    }

    public final void inverseLT(int[] r10) {
        int r12 = (rotateRight(r10[2], 22) ^ r10[3]) ^ (r10[1] << 7);
        int r6 = rotateRight(r10[0], 5) ^ r10[1];
        int r72 = r10[3];
        int r62 = r6 ^ r72;
        int r52 = rotateRight(r72, 7);
        int r73 = rotateRight(r10[1], 1);
        r10[3] = (r52 ^ r12) ^ (r62 << 3);
        r10[1] = (r73 ^ r62) ^ r12;
        r10[2] = rotateRight(r12, 3);
        r10[0] = rotateRight(r62, 13);
    }

    public abstract int[] makeWorkingKey(byte[] bArr);

    @Override // org.bouncycastle.crypto.BlockCipher
    public final int processBlock(byte[] bArr, int r42, byte[] bArr2, int r6) {
        if (this.wKey == null) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (r42 + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r6 + 16 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.encrypting) {
            encryptBlock(bArr, r42, bArr2, r6);
            return 16;
        }
        decryptBlock(bArr, r42, bArr2, r6);
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }

    public final void sb0(int[] r52, int r6, int r72, int r82, int r92) {
        int r02 = r6 ^ r92;
        int r12 = r82 ^ r02;
        int r22 = r72 ^ r12;
        int r93 = (r92 & r6) ^ r22;
        r52[3] = r93;
        int r62 = r6 ^ (r72 & r02);
        r52[2] = (r82 | r62) ^ r22;
        int r73 = (r12 ^ r62) & r93;
        r52[1] = (~r12) ^ r73;
        r52[0] = (~r62) ^ r73;
    }

    public final void sb1(int[] r32, int r42, int r52, int r6, int r72) {
        int r02 = (~r42) ^ r52;
        int r43 = (r42 | r02) ^ r6;
        int r62 = r72 ^ r43;
        r32[2] = r62;
        int r53 = r52 ^ (r72 | r02);
        int r63 = r62 ^ r02;
        int r73 = (r43 & r53) ^ r63;
        r32[3] = r73;
        int r54 = r53 ^ r43;
        r32[1] = r73 ^ r54;
        r32[0] = r43 ^ (r54 & r63);
    }

    public final void sb2(int[] r6, int r72, int r82, int r92, int r10) {
        int r02 = ~r72;
        int r12 = r82 ^ r10;
        int r22 = (r92 & r02) ^ r12;
        r6[0] = r22;
        int r32 = r92 ^ r02;
        int r83 = r82 & (r92 ^ r22);
        int r93 = r32 ^ r83;
        r6[3] = r93;
        int r73 = r72 ^ ((r83 | r10) & (r22 | r32));
        r6[2] = r73;
        r6[1] = (r73 ^ (r10 | r02)) ^ (r12 ^ r93);
    }

    public final void sb3(int[] r52, int r6, int r72, int r82, int r92) {
        int r02 = r6 ^ r72;
        int r12 = r6 & r82;
        int r62 = r6 | r92;
        int r83 = r82 ^ r92;
        int r13 = r12 | (r02 & r62);
        int r22 = r83 ^ r13;
        r52[2] = r22;
        int r63 = (r62 ^ r72) ^ r13;
        int r03 = r02 ^ (r83 & r63);
        r52[0] = r03;
        int r04 = r03 & r22;
        r52[1] = r63 ^ r04;
        r52[3] = (r72 | r92) ^ (r83 ^ r04);
    }

    public final void sb4(int[] r42, int r52, int r6, int r72, int r82) {
        int r02 = r52 ^ r82;
        int r73 = r72 ^ (r82 & r02);
        int r83 = r6 | r73;
        r42[3] = r02 ^ r83;
        int r62 = ~r6;
        int r12 = (r02 | r62) ^ r73;
        r42[0] = r12;
        int r63 = r62 ^ r02;
        int r84 = (r83 & r63) ^ (r12 & r52);
        r42[2] = r84;
        r42[1] = (r52 ^ r73) ^ (r63 & r84);
    }

    public final void sb5(int[] r52, int r6, int r72, int r82, int r92) {
        int r02 = ~r6;
        int r12 = r6 ^ r72;
        int r62 = r6 ^ r92;
        int r83 = (r82 ^ r02) ^ (r12 | r62);
        r52[0] = r83;
        int r93 = r92 & r83;
        int r22 = (r12 ^ r83) ^ r93;
        r52[1] = r22;
        int r63 = r62 ^ (r83 | r02);
        r52[2] = (r12 | r93) ^ r63;
        r52[3] = (r63 & r22) ^ (r72 ^ r93);
    }

    public final void sb6(int[] r32, int r42, int r52, int r6, int r72) {
        int r02 = ~r42;
        int r43 = r42 ^ r72;
        int r12 = r52 ^ r43;
        int r62 = r6 ^ (r02 | r43);
        int r53 = r52 ^ r62;
        r32[1] = r53;
        int r44 = (r43 | r53) ^ r72;
        int r54 = (r62 & r44) ^ r12;
        r32[2] = r54;
        int r45 = r44 ^ r62;
        r32[0] = r54 ^ r45;
        r32[3] = (r45 & r12) ^ (~r62);
    }

    public final void sb7(int[] r32, int r42, int r52, int r6, int r72) {
        int r02 = r52 ^ r6;
        int r62 = (r6 & r02) ^ r72;
        int r12 = r42 ^ r62;
        int r53 = r52 ^ ((r72 | r02) & r12);
        r32[1] = r53;
        int r43 = (r42 & r12) ^ r02;
        r32[3] = r43;
        int r54 = (r53 | r62) ^ r12;
        int r63 = r62 ^ (r43 & r54);
        r32[2] = r63;
        r32[0] = (r43 & r63) ^ (~r54);
    }
}
