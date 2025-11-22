package org.bouncycastle.crypto.modes;

import androidx.camera.core.impl.a;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes2.dex */
public class PGPCFBBlockCipher implements BlockCipher {
    private byte[] FR;
    private byte[] FRE;
    private byte[] IV;
    private int blockSize;
    private BlockCipher cipher;
    private int count;
    private boolean forEncryption;
    private boolean inlineIv;
    private byte[] tmp;

    public PGPCFBBlockCipher(BlockCipher blockCipher, boolean z10) {
        this.cipher = blockCipher;
        this.inlineIv = z10;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.IV = new byte[blockSize];
        this.FR = new byte[blockSize];
        this.FRE = new byte[blockSize];
        this.tmp = new byte[blockSize];
    }

    private int decryptBlock(byte[] bArr, int r6, byte[] bArr2, int r82) throws IllegalStateException, DataLengthException {
        int r02 = this.blockSize;
        if (r6 + r02 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r02 + r82 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int r32 = 0;
        this.cipher.processBlock(this.FR, 0, this.FRE, 0);
        for (int r03 = 0; r03 < this.blockSize; r03++) {
            bArr2[r82 + r03] = encryptByte(bArr[r6 + r03], r03);
        }
        while (true) {
            int r72 = this.blockSize;
            if (r32 >= r72) {
                return r72;
            }
            this.FR[r32] = bArr[r6 + r32];
            r32++;
        }
    }

    private int decryptBlockWithIV(byte[] bArr, int r82, byte[] bArr2, int r10) throws IllegalStateException, DataLengthException {
        int r83;
        int r02 = this.blockSize;
        if (r82 + r02 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r10 + r02 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int r12 = this.count;
        if (r12 == 0) {
            for (int r92 = 0; r92 < this.blockSize; r92++) {
                this.FR[r92] = bArr[r82 + r92];
            }
            this.cipher.processBlock(this.FR, 0, this.FRE, 0);
            this.count += this.blockSize;
            return 0;
        }
        if (r12 != r02) {
            if (r12 >= r02 + 2) {
                System.arraycopy(bArr, r82, this.tmp, 0, r02);
                bArr2[r10 + 0] = encryptByte(this.tmp[0], this.blockSize - 2);
                bArr2[r10 + 1] = encryptByte(this.tmp[1], this.blockSize - 1);
                System.arraycopy(this.tmp, 0, this.FR, this.blockSize - 2, 2);
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                int r72 = 0;
                while (true) {
                    r83 = this.blockSize;
                    if (r72 >= r83 - 2) {
                        break;
                    }
                    bArr2[r10 + r72 + 2] = encryptByte(this.tmp[r72 + 2], r72);
                    r72++;
                }
                System.arraycopy(this.tmp, 2, this.FR, 0, r83 - 2);
            }
            return this.blockSize;
        }
        System.arraycopy(bArr, r82, this.tmp, 0, r02);
        byte[] bArr3 = this.FR;
        System.arraycopy(bArr3, 2, bArr3, 0, this.blockSize - 2);
        byte[] bArr4 = this.FR;
        int r84 = this.blockSize;
        byte[] bArr5 = this.tmp;
        bArr4[r84 - 2] = bArr5[0];
        bArr4[r84 - 1] = bArr5[1];
        this.cipher.processBlock(bArr4, 0, this.FRE, 0);
        int r73 = 0;
        while (true) {
            int r85 = this.blockSize;
            if (r73 >= r85 - 2) {
                System.arraycopy(this.tmp, 2, this.FR, 0, r85 - 2);
                this.count += 2;
                return this.blockSize - 2;
            }
            bArr2[r10 + r73] = encryptByte(this.tmp[r73 + 2], r73);
            r73++;
        }
    }

    private int encryptBlock(byte[] bArr, int r6, byte[] bArr2, int r82) throws IllegalStateException, DataLengthException {
        int r02 = this.blockSize;
        if (r6 + r02 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r02 + r82 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int r32 = 0;
        this.cipher.processBlock(this.FR, 0, this.FRE, 0);
        for (int r03 = 0; r03 < this.blockSize; r03++) {
            bArr2[r82 + r03] = encryptByte(bArr[r6 + r03], r03);
        }
        while (true) {
            int r52 = this.blockSize;
            if (r32 >= r52) {
                return r52;
            }
            this.FR[r32] = bArr2[r82 + r32];
            r32++;
        }
    }

    private int encryptBlockWithIV(byte[] bArr, int r72, byte[] bArr2, int r92) throws IllegalStateException, DataLengthException {
        int r12;
        int r13;
        int r02 = this.blockSize;
        if (r72 + r02 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        int r14 = this.count;
        if (r14 != 0) {
            if (r14 >= r02 + 2) {
                if (r02 + r92 > bArr2.length) {
                    throw new OutputLengthException("output buffer too short");
                }
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                int r03 = 0;
                while (true) {
                    r12 = this.blockSize;
                    if (r03 >= r12) {
                        break;
                    }
                    bArr2[r92 + r03] = encryptByte(bArr[r72 + r03], r03);
                    r03++;
                }
                System.arraycopy(bArr2, r92, this.FR, 0, r12);
            }
            return this.blockSize;
        }
        if (a.d(r02, 2, r92, 2) > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        this.cipher.processBlock(this.FR, 0, this.FRE, 0);
        int r04 = 0;
        while (true) {
            r13 = this.blockSize;
            if (r04 >= r13) {
                break;
            }
            bArr2[r92 + r04] = encryptByte(this.IV[r04], r04);
            r04++;
        }
        System.arraycopy(bArr2, r92, this.FR, 0, r13);
        this.cipher.processBlock(this.FR, 0, this.FRE, 0);
        int r05 = this.blockSize;
        bArr2[r92 + r05] = encryptByte(this.IV[r05 - 2], 0);
        int r06 = this.blockSize;
        bArr2[r92 + r06 + 1] = encryptByte(this.IV[r06 - 1], 1);
        System.arraycopy(bArr2, r92 + 2, this.FR, 0, this.blockSize);
        this.cipher.processBlock(this.FR, 0, this.FRE, 0);
        int r07 = 0;
        while (true) {
            int r15 = this.blockSize;
            if (r07 >= r15) {
                System.arraycopy(bArr2, r92 + r15 + 2, this.FR, 0, r15);
                int r6 = this.count;
                int r73 = this.blockSize;
                this.count = a.d(r73, 2, 2, r6);
                return (r73 * 2) + 2;
            }
            bArr2[android.support.v4.media.a.a(r15, r92, 2, r07)] = encryptByte(bArr[r72 + r07], r07);
            r07++;
        }
    }

    private byte encryptByte(byte b10, int r32) {
        return (byte) (b10 ^ this.FRE[r32]);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        StringBuilder sb2;
        String str;
        if (this.inlineIv) {
            sb2 = new StringBuilder();
            sb2.append(this.cipher.getAlgorithmName());
            str = "/PGPCFBwithIV";
        } else {
            sb2 = new StringBuilder();
            sb2.append(this.cipher.getAlgorithmName());
            str = "/PGPCFB";
        }
        sb2.append(str);
        return sb2.toString();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        this.forEncryption = z10;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] bArr = parametersWithIV.getIV();
            int length = bArr.length;
            byte[] bArr2 = this.IV;
            if (length < bArr2.length) {
                System.arraycopy(bArr, 0, bArr2, bArr2.length - bArr.length, bArr.length);
                int r12 = 0;
                while (true) {
                    byte[] bArr3 = this.IV;
                    if (r12 >= bArr3.length - bArr.length) {
                        break;
                    }
                    bArr3[r12] = 0;
                    r12++;
                }
            } else {
                System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
            }
            reset();
            blockCipher = this.cipher;
            cipherParameters = parametersWithIV.getParameters();
        } else {
            reset();
            blockCipher = this.cipher;
        }
        blockCipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r32, byte[] bArr2, int r52) throws IllegalStateException, DataLengthException {
        return this.inlineIv ? this.forEncryption ? encryptBlockWithIV(bArr, r32, bArr2, r52) : decryptBlockWithIV(bArr, r32, bArr2, r52) : this.forEncryption ? encryptBlock(bArr, r32, bArr2, r52) : decryptBlock(bArr, r32, bArr2, r52);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.count = 0;
        int r12 = 0;
        while (true) {
            byte[] bArr = this.FR;
            if (r12 == bArr.length) {
                this.cipher.reset();
                return;
            }
            if (this.inlineIv) {
                bArr[r12] = 0;
            } else {
                bArr[r12] = this.IV[r12];
            }
            r12++;
        }
    }
}
