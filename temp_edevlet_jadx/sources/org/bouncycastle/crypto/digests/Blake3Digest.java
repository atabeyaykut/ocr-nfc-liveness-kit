package org.bouncycastle.crypto.digests;

import java.util.Iterator;
import java.util.Stack;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.crypto.params.Blake3Parameters;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class Blake3Digest implements ExtendedDigest, Memoable, Xof {
    private static final int BLOCKLEN = 64;
    private static final int CHAINING0 = 0;
    private static final int CHAINING1 = 1;
    private static final int CHAINING2 = 2;
    private static final int CHAINING3 = 3;
    private static final int CHAINING4 = 4;
    private static final int CHAINING5 = 5;
    private static final int CHAINING6 = 6;
    private static final int CHAINING7 = 7;
    private static final int CHUNKEND = 2;
    private static final int CHUNKLEN = 1024;
    private static final int CHUNKSTART = 1;
    private static final int COUNT0 = 12;
    private static final int COUNT1 = 13;
    private static final int DATALEN = 14;
    private static final int DERIVECONTEXT = 32;
    private static final int DERIVEKEY = 64;
    private static final String ERR_OUTPUTTING = "Already outputting";
    private static final int FLAGS = 15;
    private static final int IV0 = 8;
    private static final int IV1 = 9;
    private static final int IV2 = 10;
    private static final int IV3 = 11;
    private static final int KEYEDHASH = 16;
    private static final int NUMWORDS = 8;
    private static final int PARENT = 4;
    private static final int ROOT = 8;
    private static final int ROUNDS = 7;
    private long outputAvailable;
    private boolean outputting;
    private final CryptoServicePurpose purpose;
    private final byte[] theBuffer;
    private final int[] theChaining;
    private long theCounter;
    private int theCurrBytes;
    private final int theDigestLen;
    private final byte[] theIndices;
    private final int[] theK;
    private final int[] theM;
    private int theMode;
    private int theOutputDataLen;
    private int theOutputMode;
    private int thePos;
    private final Stack theStack;
    private final int[] theV;
    private static final byte[] SIGMA = {2, 6, 3, 10, 7, 0, 4, PassportService.SFI_DG13, 1, PassportService.SFI_DG11, PassportService.SFI_DG12, 5, 9, 14, PassportService.SFI_DG15, 8};
    private static final int[] IV = {1779033703, -1150833019, 1013904242, -1521486534, 1359893119, -1694144372, 528734635, 1541459225};

    public Blake3Digest() {
        this(256);
    }

    public Blake3Digest(int r22) {
        this(r22 <= 100 ? r22 * 8 : r22, CryptoServicePurpose.ANY);
    }

    public Blake3Digest(int r42, CryptoServicePurpose cryptoServicePurpose) {
        this.theBuffer = new byte[64];
        this.theK = new int[8];
        this.theChaining = new int[8];
        this.theV = new int[16];
        this.theM = new int[16];
        this.theIndices = new byte[16];
        this.theStack = new Stack();
        this.purpose = cryptoServicePurpose;
        this.theDigestLen = r42 / 8;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, getDigestSize() * 8, cryptoServicePurpose));
        init(null);
    }

    public Blake3Digest(Blake3Digest blake3Digest) {
        this.theBuffer = new byte[64];
        this.theK = new int[8];
        this.theChaining = new int[8];
        this.theV = new int[16];
        this.theM = new int[16];
        this.theIndices = new byte[16];
        this.theStack = new Stack();
        this.theDigestLen = blake3Digest.theDigestLen;
        this.purpose = blake3Digest.purpose;
        reset(blake3Digest);
    }

    private void adjustChaining() {
        if (!this.outputting) {
            for (int r22 = 0; r22 < 8; r22++) {
                int[] r02 = this.theChaining;
                int[] r32 = this.theV;
                r02[r22] = r32[r22 + 8] ^ r32[r22];
            }
            return;
        }
        for (int r03 = 0; r03 < 8; r03++) {
            int[] r33 = this.theV;
            int r52 = r03 + 8;
            r33[r03] = r33[r03] ^ r33[r52];
            r33[r52] = r33[r52] ^ this.theChaining[r03];
        }
        Pack.intToLittleEndian(this.theV, this.theBuffer, 0);
        this.thePos = 0;
    }

    private void adjustStack() {
        for (long j10 = this.theCounter; j10 > 0 && (j10 & 1) != 1; j10 >>= 1) {
            System.arraycopy((int[]) this.theStack.pop(), 0, this.theM, 0, 8);
            System.arraycopy(this.theChaining, 0, this.theM, 8, 8);
            initParentBlock();
            compress();
        }
        this.theStack.push(Arrays.copyOf(this.theChaining, 8));
    }

    private void compress() {
        initIndices();
        int r02 = 0;
        while (true) {
            performRound();
            if (r02 >= 6) {
                adjustChaining();
                return;
            } else {
                permuteIndices();
                r02++;
            }
        }
    }

    private void compressBlock(byte[] bArr, int r42) {
        initChunkBlock(64, false);
        initM(bArr, r42);
        compress();
        if (this.theCurrBytes == 0) {
            adjustStack();
        }
    }

    private void compressFinalBlock(int r22) {
        initChunkBlock(r22, true);
        initM(this.theBuffer, 0);
        compress();
        processStack();
    }

    private void incrementBlockCount() {
        this.theCounter++;
        this.theCurrBytes = 0;
    }

    private void initChunkBlock(int r72, boolean z10) {
        System.arraycopy(this.theCurrBytes == 0 ? this.theK : this.theChaining, 0, this.theV, 0, 8);
        System.arraycopy(IV, 0, this.theV, 8, 4);
        int[] r02 = this.theV;
        long j10 = this.theCounter;
        r02[12] = (int) j10;
        r02[13] = (int) (j10 >> 32);
        r02[14] = r72;
        int r12 = this.theMode;
        int r32 = this.theCurrBytes;
        r02[15] = r12 + (r32 == 0 ? 1 : 0) + (z10 ? 2 : 0);
        int r33 = r32 + r72;
        this.theCurrBytes = r33;
        if (r33 >= 1024) {
            incrementBlockCount();
            int[] r73 = this.theV;
            r73[15] = r73[15] | 2;
        }
        if (z10 && this.theStack.isEmpty()) {
            setRoot();
        }
    }

    private void initIndices() {
        byte b10 = 0;
        while (true) {
            byte[] bArr = this.theIndices;
            if (b10 >= bArr.length) {
                return;
            }
            bArr[b10] = b10;
            b10 = (byte) (b10 + 1);
        }
    }

    private void initKey(byte[] bArr) {
        Pack.littleEndianToInt(bArr, 0, this.theK);
        this.theMode = 16;
    }

    private void initKeyFromContext() {
        System.arraycopy(this.theV, 0, this.theK, 0, 8);
        this.theMode = 64;
    }

    private void initM(byte[] bArr, int r32) {
        Pack.littleEndianToInt(bArr, r32, this.theM);
    }

    private void initNullKey() {
        System.arraycopy(IV, 0, this.theK, 0, 8);
    }

    private void initParentBlock() {
        System.arraycopy(this.theK, 0, this.theV, 0, 8);
        System.arraycopy(IV, 0, this.theV, 8, 4);
        int[] r02 = this.theV;
        r02[12] = 0;
        r02[13] = 0;
        r02[14] = 64;
        r02[15] = this.theMode | 4;
    }

    private void mixG(int r72, int r82, int r92, int r10, int r11) {
        int r73 = r72 << 1;
        int[] r02 = this.theV;
        int r52 = r73 + 1;
        int r22 = r02[r92] + this.theM[this.theIndices[r73]] + r02[r82];
        r02[r82] = r22;
        r02[r11] = Integers.rotateRight(r02[r11] ^ r22, 16);
        int[] r74 = this.theV;
        int r03 = r74[r10] + r74[r11];
        r74[r10] = r03;
        r74[r92] = Integers.rotateRight(r03 ^ r74[r92], 12);
        int[] r75 = this.theV;
        int r12 = r75[r92] + this.theM[this.theIndices[r52]] + r75[r82];
        r75[r82] = r12;
        r75[r11] = Integers.rotateRight(r75[r11] ^ r12, 8);
        int[] r76 = this.theV;
        int r83 = r76[r10] + r76[r11];
        r76[r10] = r83;
        r76[r92] = Integers.rotateRight(r83 ^ r76[r92], 7);
    }

    private void nextOutputBlock() {
        this.theCounter++;
        System.arraycopy(this.theChaining, 0, this.theV, 0, 8);
        System.arraycopy(IV, 0, this.theV, 8, 4);
        int[] r02 = this.theV;
        long j10 = this.theCounter;
        r02[12] = (int) j10;
        r02[13] = (int) (j10 >> 32);
        r02[14] = this.theOutputDataLen;
        r02[15] = this.theOutputMode;
        compress();
    }

    private void performRound() {
        mixG(0, 0, 4, 8, 12);
        mixG(1, 1, 5, 9, 13);
        mixG(2, 2, 6, 10, 14);
        mixG(3, 3, 7, 11, 15);
        mixG(4, 0, 5, 10, 15);
        mixG(5, 1, 6, 11, 12);
        mixG(6, 2, 7, 8, 13);
        mixG(7, 3, 4, 9, 14);
    }

    private void permuteIndices() {
        byte b10 = 0;
        while (true) {
            byte[] bArr = this.theIndices;
            if (b10 >= bArr.length) {
                return;
            }
            bArr[b10] = SIGMA[bArr[b10]];
            b10 = (byte) (b10 + 1);
        }
    }

    private void processStack() {
        while (!this.theStack.isEmpty()) {
            System.arraycopy((int[]) this.theStack.pop(), 0, this.theM, 0, 8);
            System.arraycopy(this.theChaining, 0, this.theM, 8, 8);
            initParentBlock();
            if (this.theStack.isEmpty()) {
                setRoot();
            }
            compress();
        }
    }

    private void resetBlockCount() {
        this.theCounter = 0L;
        this.theCurrBytes = 0;
    }

    private void setRoot() {
        int[] r02 = this.theV;
        int r22 = r02[15] | 8;
        r02[15] = r22;
        this.theOutputMode = r22;
        this.theOutputDataLen = r02[14];
        this.theCounter = 0L;
        this.outputting = true;
        this.outputAvailable = -1L;
        System.arraycopy(r02, 0, this.theChaining, 0, 8);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new Blake3Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r32) {
        return doFinal(bArr, r32, getDigestSize());
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int r22, int r32) {
        int r12 = doOutput(bArr, r22, r32);
        reset();
        return r12;
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doOutput(byte[] bArr, int r72, int r82) {
        int r02;
        if (r72 > bArr.length - r82) {
            throw new OutputLengthException("output buffer too short");
        }
        if (!this.outputting) {
            compressFinalBlock(this.thePos);
        }
        if (r82 >= 0) {
            long j10 = this.outputAvailable;
            if (j10 < 0 || r82 <= j10) {
                int r03 = this.thePos;
                if (r03 < 64) {
                    int r04 = Math.min(r82, 64 - r03);
                    System.arraycopy(this.theBuffer, this.thePos, bArr, r72, r04);
                    this.thePos += r04;
                    r72 += r04;
                    r02 = r82 - r04;
                } else {
                    r02 = r82;
                }
                while (r02 > 0) {
                    nextOutputBlock();
                    int r22 = Math.min(r02, 64);
                    System.arraycopy(this.theBuffer, 0, bArr, r72, r22);
                    this.thePos += r22;
                    r72 += r22;
                    r02 -= r22;
                }
                this.outputAvailable -= r82;
                return r82;
            }
        }
        throw new IllegalArgumentException("Insufficient bytes remaining");
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "BLAKE3";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.theDigestLen;
    }

    public void init(Blake3Parameters blake3Parameters) {
        byte[] key = blake3Parameters == null ? null : blake3Parameters.getKey();
        byte[] context = blake3Parameters != null ? blake3Parameters.getContext() : null;
        reset();
        if (key != null) {
            initKey(key);
            Arrays.fill(key, (byte) 0);
            return;
        }
        initNullKey();
        if (context == null) {
            this.theMode = 0;
            return;
        }
        this.theMode = 32;
        update(context, 0, context.length);
        doFinal(this.theBuffer, 0);
        initKeyFromContext();
        reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        resetBlockCount();
        this.thePos = 0;
        this.outputting = false;
        Arrays.fill(this.theBuffer, (byte) 0);
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        Blake3Digest blake3Digest = (Blake3Digest) memoable;
        this.theCounter = blake3Digest.theCounter;
        this.theCurrBytes = blake3Digest.theCurrBytes;
        this.theMode = blake3Digest.theMode;
        this.outputting = blake3Digest.outputting;
        this.outputAvailable = blake3Digest.outputAvailable;
        this.theOutputMode = blake3Digest.theOutputMode;
        this.theOutputDataLen = blake3Digest.theOutputDataLen;
        int[] r02 = blake3Digest.theChaining;
        int[] r12 = this.theChaining;
        System.arraycopy(r02, 0, r12, 0, r12.length);
        int[] r03 = blake3Digest.theK;
        int[] r13 = this.theK;
        System.arraycopy(r03, 0, r13, 0, r13.length);
        int[] r04 = blake3Digest.theM;
        int[] r14 = this.theM;
        System.arraycopy(r04, 0, r14, 0, r14.length);
        this.theStack.clear();
        Iterator it = blake3Digest.theStack.iterator();
        while (it.hasNext()) {
            this.theStack.push(Arrays.clone((int[]) it.next()));
        }
        byte[] bArr = blake3Digest.theBuffer;
        byte[] bArr2 = this.theBuffer;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.thePos = blake3Digest.thePos;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        if (this.outputting) {
            throw new IllegalStateException(ERR_OUTPUTTING);
        }
        byte[] bArr = this.theBuffer;
        if (bArr.length - this.thePos == 0) {
            compressBlock(bArr, 0);
            Arrays.fill(this.theBuffer, (byte) 0);
            this.thePos = 0;
        }
        byte[] bArr2 = this.theBuffer;
        int r12 = this.thePos;
        bArr2[r12] = b10;
        this.thePos = r12 + 1;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r6, int r72) {
        int r22;
        int r52;
        if (bArr == null || r72 == 0) {
            return;
        }
        if (this.outputting) {
            throw new IllegalStateException(ERR_OUTPUTTING);
        }
        int r02 = this.thePos;
        if (r02 != 0) {
            r22 = 64 - r02;
            if (r22 >= r72) {
                System.arraycopy(bArr, r6, this.theBuffer, r02, r72);
                r52 = this.thePos + r72;
                this.thePos = r52;
            } else {
                System.arraycopy(bArr, r6, this.theBuffer, r02, r22);
                compressBlock(this.theBuffer, 0);
                this.thePos = 0;
                Arrays.fill(this.theBuffer, (byte) 0);
            }
        } else {
            r22 = 0;
        }
        int r03 = (r6 + r72) - 64;
        int r23 = r22 + r6;
        while (r23 < r03) {
            compressBlock(bArr, r23);
            r23 += 64;
        }
        int r62 = r6 + (r72 - r23);
        System.arraycopy(bArr, r23, this.theBuffer, 0, r62);
        r52 = this.thePos + r62;
        this.thePos = r52;
    }
}
