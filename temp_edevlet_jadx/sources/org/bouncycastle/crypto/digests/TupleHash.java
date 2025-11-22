package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.util.Strings;

/* loaded from: classes2.dex */
public class TupleHash implements Xof, Digest {
    private static final byte[] N_TUPLE_HASH = Strings.toByteArray("TupleHash");
    private final int bitLength;
    private final CSHAKEDigest cshake;
    private boolean firstOutput;
    private final int outputLength;

    public TupleHash(int r22, byte[] bArr) {
        this(r22, bArr, r22 * 2);
    }

    public TupleHash(int r32, byte[] bArr, int r52) {
        this.cshake = new CSHAKEDigest(r32, N_TUPLE_HASH, bArr);
        this.bitLength = r32;
        this.outputLength = (r52 + 7) / 8;
        reset();
    }

    public TupleHash(TupleHash tupleHash) {
        CSHAKEDigest cSHAKEDigest = new CSHAKEDigest(tupleHash.cshake);
        this.cshake = cSHAKEDigest;
        int r02 = cSHAKEDigest.fixedOutputLength;
        this.bitLength = r02;
        this.outputLength = (r02 * 2) / 8;
        this.firstOutput = tupleHash.firstOutput;
    }

    private void wrapUp(int r52) {
        byte[] bArrRightEncode = XofUtils.rightEncode(r52 * 8);
        this.cshake.update(bArrRightEncode, 0, bArrRightEncode.length);
        this.firstOutput = false;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r42) throws IllegalStateException, DataLengthException {
        if (this.firstOutput) {
            wrapUp(getDigestSize());
        }
        int r32 = this.cshake.doFinal(bArr, r42, getDigestSize());
        reset();
        return r32;
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int r32, int r42) {
        if (this.firstOutput) {
            wrapUp(getDigestSize());
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
        return "TupleHash" + this.cshake.getAlgorithmName().substring(6);
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
        this.firstOutput = true;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) throws IllegalStateException {
        byte[] bArrEncode = XofUtils.encode(b10);
        this.cshake.update(bArrEncode, 0, bArrEncode.length);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r32, int r42) throws IllegalStateException, DataLengthException {
        byte[] bArrEncode = XofUtils.encode(bArr, r32, r42);
        this.cshake.update(bArrEncode, 0, bArrEncode.length);
    }
}
