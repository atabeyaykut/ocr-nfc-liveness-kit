package org.bouncycastle.crypto.modes;

import android.support.v4.media.a;
import java.util.Vector;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Bytes;
import org.bouncycastle.util.Longs;

/* loaded from: classes2.dex */
public class OCBBlockCipher implements AEADBlockCipher {
    private static final int BLOCK_SIZE = 16;
    private byte[] Checksum;
    private Vector L;
    private byte[] L_Asterisk;
    private byte[] L_Dollar;
    private byte[] OffsetHASH;
    private byte[] Sum;
    private boolean forEncryption;
    private byte[] hashBlock;
    private long hashBlockCount;
    private int hashBlockPos;
    private BlockCipher hashCipher;
    private byte[] initialAssociatedText;
    private byte[] macBlock;
    private int macSize;
    private byte[] mainBlock;
    private long mainBlockCount;
    private int mainBlockPos;
    private BlockCipher mainCipher;
    private byte[] KtopInput = null;
    private byte[] Stretch = new byte[24];
    private byte[] OffsetMAIN_0 = new byte[16];
    private byte[] OffsetMAIN = new byte[16];

    public OCBBlockCipher(BlockCipher blockCipher, BlockCipher blockCipher2) {
        if (blockCipher == null) {
            throw new IllegalArgumentException("'hashCipher' cannot be null");
        }
        if (blockCipher.getBlockSize() != 16) {
            throw new IllegalArgumentException("'hashCipher' must have a block size of 16");
        }
        if (blockCipher2 == null) {
            throw new IllegalArgumentException("'mainCipher' cannot be null");
        }
        if (blockCipher2.getBlockSize() != 16) {
            throw new IllegalArgumentException("'mainCipher' must have a block size of 16");
        }
        if (!blockCipher.getAlgorithmName().equals(blockCipher2.getAlgorithmName())) {
            throw new IllegalArgumentException("'hashCipher' and 'mainCipher' must be the same algorithm");
        }
        this.hashCipher = blockCipher;
        this.mainCipher = blockCipher2;
    }

    public static byte[] OCB_double(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) ((135 >>> ((1 - shiftLeft(bArr, bArr2)) << 3)) ^ bArr2[15]);
        return bArr2;
    }

    public static void OCB_extend(byte[] bArr, int r22) {
        bArr[r22] = ISOFileInfo.DATA_BYTES1;
        while (true) {
            r22++;
            if (r22 >= 16) {
                return;
            } else {
                bArr[r22] = 0;
            }
        }
    }

    public static int OCB_ntz(long j10) {
        return Longs.numberOfTrailingZeros(j10);
    }

    public static int shiftLeft(byte[] bArr, byte[] bArr2) {
        int r02 = 16;
        int r12 = 0;
        while (true) {
            r02--;
            if (r02 < 0) {
                return r12;
            }
            int r22 = bArr[r02] & 255;
            bArr2[r02] = (byte) (r12 | (r22 << 1));
            r12 = (r22 >>> 7) & 1;
        }
    }

    public static void xor(byte[] bArr, byte[] bArr2) {
        Bytes.xorTo(16, bArr2, bArr);
    }

    public void clear(byte[] bArr) {
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r82) throws InvalidCipherTextException, IllegalStateException, DataLengthException {
        byte[] bArr2;
        if (this.forEncryption) {
            bArr2 = null;
        } else {
            int r02 = this.mainBlockPos;
            int r22 = this.macSize;
            if (r02 < r22) {
                throw new InvalidCipherTextException("data too short");
            }
            int r03 = r02 - r22;
            this.mainBlockPos = r03;
            bArr2 = new byte[r22];
            System.arraycopy(this.mainBlock, r03, bArr2, 0, r22);
        }
        int r04 = this.hashBlockPos;
        if (r04 > 0) {
            OCB_extend(this.hashBlock, r04);
            updateHASH(this.L_Asterisk);
        }
        int r05 = this.mainBlockPos;
        if (r05 > 0) {
            if (this.forEncryption) {
                OCB_extend(this.mainBlock, r05);
                xor(this.Checksum, this.mainBlock);
            }
            xor(this.OffsetMAIN, this.L_Asterisk);
            byte[] bArr3 = new byte[16];
            this.hashCipher.processBlock(this.OffsetMAIN, 0, bArr3, 0);
            xor(this.mainBlock, bArr3);
            int length = bArr.length;
            int r42 = this.mainBlockPos;
            if (length < r82 + r42) {
                throw new OutputLengthException("Output buffer too short");
            }
            System.arraycopy(this.mainBlock, 0, bArr, r82, r42);
            if (!this.forEncryption) {
                OCB_extend(this.mainBlock, this.mainBlockPos);
                xor(this.Checksum, this.mainBlock);
            }
        }
        xor(this.Checksum, this.OffsetMAIN);
        xor(this.Checksum, this.L_Dollar);
        BlockCipher blockCipher = this.hashCipher;
        byte[] bArr4 = this.Checksum;
        blockCipher.processBlock(bArr4, 0, bArr4, 0);
        xor(this.Checksum, this.Sum);
        int r06 = this.macSize;
        byte[] bArr5 = new byte[r06];
        this.macBlock = bArr5;
        System.arraycopy(this.Checksum, 0, bArr5, 0, r06);
        int r07 = this.mainBlockPos;
        if (this.forEncryption) {
            int length2 = bArr.length;
            int r83 = r82 + r07;
            int r43 = this.macSize;
            if (length2 < r83 + r43) {
                throw new OutputLengthException("Output buffer too short");
            }
            System.arraycopy(this.macBlock, 0, bArr, r83, r43);
            r07 += this.macSize;
        } else if (!Arrays.constantTimeAreEqual(this.macBlock, bArr2)) {
            throw new InvalidCipherTextException("mac check in OCB failed");
        }
        reset(false);
        return r07;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.mainCipher.getAlgorithmName() + "/OCB";
    }

    public byte[] getLSub(int r32) {
        while (r32 >= this.L.size()) {
            Vector vector = this.L;
            vector.addElement(OCB_double((byte[]) vector.lastElement()));
        }
        return (byte[]) this.L.elementAt(r32);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        byte[] bArr = this.macBlock;
        return bArr == null ? new byte[this.macSize] : Arrays.clone(bArr);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int r22) {
        int r23 = r22 + this.mainBlockPos;
        if (this.forEncryption) {
            return r23 + this.macSize;
        }
        int r02 = this.macSize;
        if (r23 < r02) {
            return 0;
        }
        return r23 - r02;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.mainCipher;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int r22) {
        int r23 = r22 + this.mainBlockPos;
        if (!this.forEncryption) {
            int r02 = this.macSize;
            if (r23 < r02) {
                return 0;
            }
            r23 -= r02;
        }
        return r23 - (r23 % 16);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        byte[] nonce;
        KeyParameter key;
        boolean z11 = this.forEncryption;
        this.forEncryption = z10;
        this.macBlock = null;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            nonce = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize < 64 || macSize > 128 || macSize % 8 != 0) {
                throw new IllegalArgumentException(a.d("Invalid value for MAC size: ", macSize));
            }
            this.macSize = macSize / 8;
            key = aEADParameters.getKey();
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                throw new IllegalArgumentException("invalid parameters passed to OCB");
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            nonce = parametersWithIV.getIV();
            this.initialAssociatedText = null;
            this.macSize = 16;
            key = (KeyParameter) parametersWithIV.getParameters();
        }
        this.hashBlock = new byte[16];
        this.mainBlock = new byte[z10 ? 16 : this.macSize + 16];
        if (nonce == null) {
            nonce = new byte[0];
        }
        if (nonce.length > 15) {
            throw new IllegalArgumentException("IV must be no more than 15 bytes");
        }
        if (key != null) {
            this.hashCipher.init(true, key);
            this.mainCipher.init(z10, key);
            this.KtopInput = null;
        } else if (z11 != z10) {
            throw new IllegalArgumentException("cannot change encrypting state without providing key.");
        }
        byte[] bArr = new byte[16];
        this.L_Asterisk = bArr;
        this.hashCipher.processBlock(bArr, 0, bArr, 0);
        this.L_Dollar = OCB_double(this.L_Asterisk);
        Vector vector = new Vector();
        this.L = vector;
        vector.addElement(OCB_double(this.L_Dollar));
        int r92 = processNonce(nonce);
        int r10 = r92 % 8;
        int r93 = r92 / 8;
        if (r10 == 0) {
            System.arraycopy(this.Stretch, r93, this.OffsetMAIN_0, 0, 16);
        } else {
            for (int r02 = 0; r02 < 16; r02++) {
                byte[] bArr2 = this.Stretch;
                int r22 = bArr2[r93] & 255;
                r93++;
                this.OffsetMAIN_0[r02] = (byte) (((bArr2[r93] & 255) >>> (8 - r10)) | (r22 << r10));
            }
        }
        this.hashBlockPos = 0;
        this.mainBlockPos = 0;
        this.hashBlockCount = 0L;
        this.mainBlockCount = 0L;
        this.OffsetHASH = new byte[16];
        this.Sum = new byte[16];
        System.arraycopy(this.OffsetMAIN_0, 0, this.OffsetMAIN, 0, 16);
        this.Checksum = new byte[16];
        byte[] bArr3 = this.initialAssociatedText;
        if (bArr3 != null) {
            processAADBytes(bArr3, 0, bArr3.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) throws IllegalStateException, DataLengthException {
        byte[] bArr = this.hashBlock;
        int r12 = this.hashBlockPos;
        bArr[r12] = b10;
        int r13 = r12 + 1;
        this.hashBlockPos = r13;
        if (r13 == bArr.length) {
            processHashBlock();
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int r6, int r72) throws IllegalStateException, DataLengthException {
        for (int r02 = 0; r02 < r72; r02++) {
            byte[] bArr2 = this.hashBlock;
            int r22 = this.hashBlockPos;
            bArr2[r22] = bArr[r6 + r02];
            int r23 = r22 + 1;
            this.hashBlockPos = r23;
            if (r23 == bArr2.length) {
                processHashBlock();
            }
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int r52) throws IllegalStateException, DataLengthException {
        byte[] bArr2 = this.mainBlock;
        int r12 = this.mainBlockPos;
        bArr2[r12] = b10;
        int r13 = r12 + 1;
        this.mainBlockPos = r13;
        if (r13 != bArr2.length) {
            return 0;
        }
        processMainBlock(bArr, r52);
        return 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int r72, int r82, byte[] bArr2, int r10) throws IllegalStateException, DataLengthException {
        if (bArr.length < r72 + r82) {
            throw new DataLengthException("Input buffer too short");
        }
        int r12 = 0;
        for (int r02 = 0; r02 < r82; r02++) {
            byte[] bArr3 = this.mainBlock;
            int r32 = this.mainBlockPos;
            bArr3[r32] = bArr[r72 + r02];
            int r33 = r32 + 1;
            this.mainBlockPos = r33;
            if (r33 == bArr3.length) {
                processMainBlock(bArr2, r10 + r12);
                r12 += 16;
            }
        }
        return r12;
    }

    public void processHashBlock() throws IllegalStateException, DataLengthException {
        long j10 = this.hashBlockCount + 1;
        this.hashBlockCount = j10;
        updateHASH(getLSub(OCB_ntz(j10)));
        this.hashBlockPos = 0;
    }

    public void processMainBlock(byte[] bArr, int r82) throws IllegalStateException, DataLengthException {
        if (bArr.length < r82 + 16) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (this.forEncryption) {
            xor(this.Checksum, this.mainBlock);
            this.mainBlockPos = 0;
        }
        byte[] bArr2 = this.OffsetMAIN;
        long j10 = this.mainBlockCount + 1;
        this.mainBlockCount = j10;
        xor(bArr2, getLSub(OCB_ntz(j10)));
        xor(this.mainBlock, this.OffsetMAIN);
        BlockCipher blockCipher = this.mainCipher;
        byte[] bArr3 = this.mainBlock;
        blockCipher.processBlock(bArr3, 0, bArr3, 0);
        xor(this.mainBlock, this.OffsetMAIN);
        System.arraycopy(this.mainBlock, 0, bArr, r82, 16);
        if (this.forEncryption) {
            return;
        }
        xor(this.Checksum, this.mainBlock);
        byte[] bArr4 = this.mainBlock;
        System.arraycopy(bArr4, 16, bArr4, 0, this.macSize);
        this.mainBlockPos = this.macSize;
    }

    public int processNonce(byte[] bArr) throws IllegalStateException, DataLengthException {
        byte[] bArr2 = new byte[16];
        int r42 = 0;
        System.arraycopy(bArr, 0, bArr2, 16 - bArr.length, bArr.length);
        bArr2[0] = (byte) (this.macSize << 4);
        int length = 15 - bArr.length;
        bArr2[length] = (byte) (bArr2[length] | 1);
        byte b10 = bArr2[15];
        int r32 = b10 & 63;
        bArr2[15] = (byte) (b10 & ISO7816.INS_GET_RESPONSE);
        byte[] bArr3 = this.KtopInput;
        if (bArr3 == null || !Arrays.areEqual(bArr2, bArr3)) {
            byte[] bArr4 = new byte[16];
            this.KtopInput = bArr2;
            this.hashCipher.processBlock(bArr2, 0, bArr4, 0);
            System.arraycopy(bArr4, 0, this.Stretch, 0, 16);
            while (r42 < 8) {
                byte[] bArr5 = this.Stretch;
                int r12 = r42 + 16;
                byte b11 = bArr4[r42];
                r42++;
                bArr5[r12] = (byte) (b11 ^ bArr4[r42]);
            }
        }
        return r32;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() throws IllegalStateException, DataLengthException {
        reset(true);
    }

    public void reset(boolean z10) throws IllegalStateException, DataLengthException {
        this.hashCipher.reset();
        this.mainCipher.reset();
        clear(this.hashBlock);
        clear(this.mainBlock);
        this.hashBlockPos = 0;
        this.mainBlockPos = 0;
        this.hashBlockCount = 0L;
        this.mainBlockCount = 0L;
        clear(this.OffsetHASH);
        clear(this.Sum);
        System.arraycopy(this.OffsetMAIN_0, 0, this.OffsetMAIN, 0, 16);
        clear(this.Checksum);
        if (z10) {
            this.macBlock = null;
        }
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }

    public void updateHASH(byte[] bArr) throws IllegalStateException, DataLengthException {
        xor(this.OffsetHASH, bArr);
        xor(this.hashBlock, this.OffsetHASH);
        BlockCipher blockCipher = this.hashCipher;
        byte[] bArr2 = this.hashBlock;
        blockCipher.processBlock(bArr2, 0, bArr2, 0);
        xor(this.Sum, this.hashBlock);
    }
}
