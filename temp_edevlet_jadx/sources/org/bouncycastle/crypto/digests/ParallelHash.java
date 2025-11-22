package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* loaded from: classes2.dex */
public class ParallelHash implements Xof, Digest {
    private static final byte[] N_PARALLEL_HASH = Strings.toByteArray("ParallelHash");
    private final int B;
    private final int bitLength;
    private int bufOff;
    private final byte[] buffer;
    private final CSHAKEDigest compressor;
    private final byte[] compressorBuffer;
    private final CSHAKEDigest cshake;
    private boolean firstOutput;
    private int nCount;
    private final int outputLength;
    private final CryptoServicePurpose purpose;

    public ParallelHash(int r72, byte[] bArr, int r92) {
        this(r72, bArr, r92, r72 * 2, CryptoServicePurpose.ANY);
    }

    public ParallelHash(int r72, byte[] bArr, int r92, int r10) {
        this(r72, bArr, r92, r10, CryptoServicePurpose.ANY);
    }

    public ParallelHash(int r32, byte[] bArr, int r52, int r6, CryptoServicePurpose cryptoServicePurpose) {
        this.cshake = new CSHAKEDigest(r32, N_PARALLEL_HASH, bArr);
        this.compressor = new CSHAKEDigest(r32, new byte[0], new byte[0]);
        this.bitLength = r32;
        this.B = r52;
        this.outputLength = (r6 + 7) / 8;
        this.buffer = new byte[r52];
        this.compressorBuffer = new byte[(r32 * 2) / 8];
        this.purpose = cryptoServicePurpose;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, r32, cryptoServicePurpose));
        reset();
    }

    public ParallelHash(ParallelHash parallelHash) {
        this.cshake = new CSHAKEDigest(parallelHash.cshake);
        this.compressor = new CSHAKEDigest(parallelHash.compressor);
        int r02 = parallelHash.bitLength;
        this.bitLength = r02;
        this.B = parallelHash.B;
        this.outputLength = parallelHash.outputLength;
        this.buffer = Arrays.clone(parallelHash.buffer);
        this.compressorBuffer = Arrays.clone(parallelHash.compressorBuffer);
        CryptoServicePurpose cryptoServicePurpose = parallelHash.purpose;
        this.purpose = cryptoServicePurpose;
        this.firstOutput = parallelHash.firstOutput;
        this.nCount = parallelHash.nCount;
        this.bufOff = parallelHash.bufOff;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, r02, cryptoServicePurpose));
    }

    private void compress() {
        compress(this.buffer, 0, this.bufOff);
        this.bufOff = 0;
    }

    private void compress(byte[] bArr, int r32, int r42) {
        this.compressor.update(bArr, r32, r42);
        CSHAKEDigest cSHAKEDigest = this.compressor;
        byte[] bArr2 = this.compressorBuffer;
        cSHAKEDigest.doFinal(bArr2, 0, bArr2.length);
        CSHAKEDigest cSHAKEDigest2 = this.cshake;
        byte[] bArr3 = this.compressorBuffer;
        cSHAKEDigest2.update(bArr3, 0, bArr3.length);
        this.nCount++;
    }

    private void wrapUp(int r52) {
        if (this.bufOff != 0) {
            compress();
        }
        byte[] bArrRightEncode = XofUtils.rightEncode(this.nCount);
        byte[] bArrRightEncode2 = XofUtils.rightEncode(r52 * 8);
        this.cshake.update(bArrRightEncode, 0, bArrRightEncode.length);
        this.cshake.update(bArrRightEncode2, 0, bArrRightEncode2.length);
        this.firstOutput = false;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r42) throws IllegalStateException, DataLengthException {
        if (this.firstOutput) {
            wrapUp(this.outputLength);
        }
        int r32 = this.cshake.doFinal(bArr, r42, getDigestSize());
        reset();
        return r32;
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int r32, int r42) {
        if (this.firstOutput) {
            wrapUp(this.outputLength);
        }
        int r22 = this.cshake.doFinal(bArr, r32, r42);
        reset();
        return r22;
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doOutput(byte[] bArr, int r32, int r42) {
        if (this.firstOutput) {
            wrapUp(0);
        }
        return this.cshake.doOutput(bArr, r32, r42);
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "ParallelHash" + this.cshake.getAlgorithmName().substring(6);
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.cshake.getByteLength();
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.outputLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.cshake.reset();
        Arrays.clear(this.buffer);
        byte[] bArrLeftEncode = XofUtils.leftEncode(this.B);
        this.cshake.update(bArrLeftEncode, 0, bArrLeftEncode.length);
        this.nCount = 0;
        this.bufOff = 0;
        this.firstOutput = true;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) throws IllegalStateException {
        byte[] bArr = this.buffer;
        int r12 = this.bufOff;
        int r22 = r12 + 1;
        this.bufOff = r22;
        bArr[r12] = b10;
        if (r22 == bArr.length) {
            compress();
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r6, int r72) throws IllegalStateException, DataLengthException {
        int r02 = 0;
        int r73 = Math.max(0, r72);
        if (this.bufOff != 0) {
            while (r02 < r73) {
                int r12 = this.bufOff;
                byte[] bArr2 = this.buffer;
                if (r12 == bArr2.length) {
                    break;
                }
                this.bufOff = r12 + 1;
                bArr2[r12] = bArr[r02 + r6];
                r02++;
            }
            if (this.bufOff == this.buffer.length) {
                compress();
            }
        }
        if (r02 < r73) {
            while (true) {
                int r13 = r73 - r02;
                int r22 = this.B;
                if (r13 < r22) {
                    break;
                }
                compress(bArr, r6 + r02, r22);
                r02 += this.B;
            }
        }
        while (r02 < r73) {
            update(bArr[r02 + r6]);
            r02++;
        }
    }
}
