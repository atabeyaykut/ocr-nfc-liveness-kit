package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class Blake2xsDigest implements Xof {
    private static final int DIGEST_LENGTH = 32;
    private static final long MAX_NUMBER_BLOCKS = 4294967296L;
    public static final int UNKNOWN_DIGEST_LENGTH = 65535;
    private long blockPos;
    private byte[] buf;
    private int bufPos;
    private int digestLength;
    private int digestPos;

    /* renamed from: h0, reason: collision with root package name */
    private byte[] f11458h0;
    private Blake2sDigest hash;
    private long nodeOffset;
    private final CryptoServicePurpose purpose;

    public Blake2xsDigest() {
        this(65535, CryptoServicePurpose.ANY);
    }

    public Blake2xsDigest(int r22) {
        this(r22, CryptoServicePurpose.ANY);
    }

    public Blake2xsDigest(int r72, CryptoServicePurpose cryptoServicePurpose) {
        this(r72, null, null, null, cryptoServicePurpose);
    }

    public Blake2xsDigest(int r72, byte[] bArr) {
        this(r72, bArr, null, null, CryptoServicePurpose.ANY);
    }

    public Blake2xsDigest(int r10, byte[] bArr, byte[] bArr2, byte[] bArr3, CryptoServicePurpose cryptoServicePurpose) {
        this.f11458h0 = null;
        this.buf = new byte[32];
        this.bufPos = 32;
        this.digestPos = 0;
        this.blockPos = 0L;
        if (r10 < 1 || r10 > 65535) {
            throw new IllegalArgumentException("BLAKE2xs digest length must be between 1 and 2^16-1");
        }
        this.digestLength = r10;
        long jComputeNodeOffset = computeNodeOffset();
        this.nodeOffset = jComputeNodeOffset;
        this.purpose = cryptoServicePurpose;
        this.hash = new Blake2sDigest(32, bArr, bArr2, bArr3, jComputeNodeOffset, cryptoServicePurpose);
    }

    public Blake2xsDigest(Blake2xsDigest blake2xsDigest) {
        this.f11458h0 = null;
        this.buf = new byte[32];
        this.bufPos = 32;
        this.digestPos = 0;
        this.blockPos = 0L;
        this.digestLength = blake2xsDigest.digestLength;
        this.hash = new Blake2sDigest(blake2xsDigest.hash);
        this.f11458h0 = Arrays.clone(blake2xsDigest.f11458h0);
        this.buf = Arrays.clone(blake2xsDigest.buf);
        this.bufPos = blake2xsDigest.bufPos;
        this.digestPos = blake2xsDigest.digestPos;
        this.blockPos = blake2xsDigest.blockPos;
        this.nodeOffset = blake2xsDigest.nodeOffset;
        this.purpose = blake2xsDigest.purpose;
    }

    private long computeNodeOffset() {
        return this.digestLength * MAX_NUMBER_BLOCKS;
    }

    private int computeStepLength() {
        int r02 = this.digestLength;
        if (r02 == 65535) {
            return 32;
        }
        return Math.min(32, r02 - this.digestPos);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r32) {
        return doFinal(bArr, r32, this.digestLength);
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int r22, int r32) {
        int r12 = doOutput(bArr, r22, r32);
        reset();
        return r12;
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doOutput(byte[] bArr, int r92, int r10) {
        if (r92 > bArr.length - r10) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.f11458h0 == null) {
            byte[] bArr2 = new byte[this.hash.getDigestSize()];
            this.f11458h0 = bArr2;
            this.hash.doFinal(bArr2, 0);
        }
        int r02 = this.digestLength;
        if (r02 != 65535) {
            if (this.digestPos + r10 > r02) {
                throw new IllegalArgumentException("Output length is above the digest length");
            }
        } else if ((this.blockPos << 5) >= getUnknownMaxLength()) {
            throw new IllegalArgumentException("Maximum length is 2^32 blocks of 32 bytes");
        }
        for (int r03 = 0; r03 < r10; r03++) {
            if (this.bufPos >= 32) {
                Blake2sDigest blake2sDigest = new Blake2sDigest(computeStepLength(), 32, this.nodeOffset);
                byte[] bArr3 = this.f11458h0;
                blake2sDigest.update(bArr3, 0, bArr3.length);
                Arrays.fill(this.buf, (byte) 0);
                blake2sDigest.doFinal(this.buf, 0);
                this.bufPos = 0;
                this.nodeOffset++;
                this.blockPos++;
            }
            byte[] bArr4 = this.buf;
            int r42 = this.bufPos;
            bArr[r92 + r03] = bArr4[r42];
            this.bufPos = r42 + 1;
            this.digestPos++;
        }
        return r10;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "BLAKE2xs";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.hash.getByteLength();
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.digestLength;
    }

    public long getUnknownMaxLength() {
        return 137438953472L;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.hash.reset();
        this.f11458h0 = null;
        this.bufPos = 32;
        this.digestPos = 0;
        this.blockPos = 0L;
        this.nodeOffset = computeNodeOffset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        this.hash.update(b10);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r32, int r42) {
        this.hash.update(bArr, r32, r42);
    }
}
