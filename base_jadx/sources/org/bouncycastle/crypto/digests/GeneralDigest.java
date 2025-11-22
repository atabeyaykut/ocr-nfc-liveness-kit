package org.bouncycastle.crypto.digests;

import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public abstract class GeneralDigest implements ExtendedDigest, Memoable {
    private static final int BYTE_LENGTH = 64;
    private long byteCount;
    protected final CryptoServicePurpose purpose;
    private final byte[] xBuf;
    private int xBufOff;

    public GeneralDigest() {
        this(CryptoServicePurpose.ANY);
    }

    public GeneralDigest(CryptoServicePurpose cryptoServicePurpose) {
        this.xBuf = new byte[4];
        this.purpose = cryptoServicePurpose;
        this.xBufOff = 0;
    }

    public GeneralDigest(GeneralDigest generalDigest) {
        this.xBuf = new byte[4];
        this.purpose = generalDigest.purpose;
        copyIn(generalDigest);
    }

    public GeneralDigest(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        this.xBuf = bArr2;
        this.purpose = CryptoServicePurpose.values()[bArr[bArr.length - 1]];
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.xBufOff = Pack.bigEndianToInt(bArr, 4);
        this.byteCount = Pack.bigEndianToLong(bArr, 8);
    }

    public void copyIn(GeneralDigest generalDigest) {
        byte[] bArr = generalDigest.xBuf;
        System.arraycopy(bArr, 0, this.xBuf, 0, bArr.length);
        this.xBufOff = generalDigest.xBufOff;
        this.byteCount = generalDigest.byteCount;
    }

    public abstract CryptoServiceProperties cryptoServiceProperties();

    public void finish() {
        long j10 = this.byteCount << 3;
        byte b10 = ISOFileInfo.DATA_BYTES1;
        while (true) {
            update(b10);
            if (this.xBufOff == 0) {
                processLength(j10);
                processBlock();
                return;
            }
            b10 = 0;
        }
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    public void populateState(byte[] bArr) {
        System.arraycopy(this.xBuf, 0, bArr, 0, this.xBufOff);
        Pack.intToBigEndian(this.xBufOff, bArr, 4);
        Pack.longToBigEndian(this.byteCount, bArr, 8);
    }

    public abstract void processBlock();

    public abstract void processLength(long j10);

    public abstract void processWord(byte[] bArr, int r22);

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.byteCount = 0L;
        this.xBufOff = 0;
        int r12 = 0;
        while (true) {
            byte[] bArr = this.xBuf;
            if (r12 >= bArr.length) {
                return;
            }
            bArr[r12] = 0;
            r12++;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        byte[] bArr = this.xBuf;
        int r12 = this.xBufOff;
        int r22 = r12 + 1;
        this.xBufOff = r22;
        bArr[r12] = b10;
        if (r22 == bArr.length) {
            processWord(bArr, 0);
            this.xBufOff = 0;
        }
        this.byteCount++;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r82, int r92) {
        int r02 = 0;
        int r93 = Math.max(0, r92);
        if (this.xBufOff != 0) {
            int r12 = 0;
            while (true) {
                if (r12 >= r93) {
                    r02 = r12;
                    break;
                }
                byte[] bArr2 = this.xBuf;
                int r32 = this.xBufOff;
                int r42 = r32 + 1;
                this.xBufOff = r42;
                int r52 = r12 + 1;
                bArr2[r32] = bArr[r12 + r82];
                if (r42 == 4) {
                    processWord(bArr2, 0);
                    this.xBufOff = 0;
                    r02 = r52;
                    break;
                }
                r12 = r52;
            }
        }
        int r13 = r93 - 3;
        while (r02 < r13) {
            processWord(bArr, r82 + r02);
            r02 += 4;
        }
        while (r02 < r93) {
            byte[] bArr3 = this.xBuf;
            int r22 = this.xBufOff;
            this.xBufOff = r22 + 1;
            bArr3[r22] = bArr[r02 + r82];
            r02++;
        }
        this.byteCount += r93;
    }
}
