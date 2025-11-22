package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.crypto.digests.CSHAKEDigest;
import org.bouncycastle.crypto.digests.XofUtils;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public class KMAC implements Mac, Xof {
    private static final byte[] padding = new byte[100];
    private final int bitLength;
    private final CSHAKEDigest cshake;
    private boolean firstOutput;
    private boolean initialised;
    private byte[] key;
    private final int outputLength;

    public KMAC(int r32, byte[] bArr) {
        this.cshake = new CSHAKEDigest(r32, Strings.toByteArray("KMAC"), bArr);
        this.bitLength = r32;
        this.outputLength = (r32 * 2) / 8;
    }

    private void bytePad(byte[] bArr, int r52) throws IllegalStateException, DataLengthException {
        byte[] bArrLeftEncode = XofUtils.leftEncode(r52);
        update(bArrLeftEncode, 0, bArrLeftEncode.length);
        byte[] bArrEncode = encode(bArr);
        update(bArrEncode, 0, bArrEncode.length);
        int length = r52 - ((bArrLeftEncode.length + bArrEncode.length) % r52);
        if (length <= 0 || length == r52) {
            return;
        }
        while (true) {
            byte[] bArr2 = padding;
            if (length <= bArr2.length) {
                update(bArr2, 0, length);
                return;
            } else {
                update(bArr2, 0, bArr2.length);
                length -= bArr2.length;
            }
        }
    }

    private static byte[] encode(byte[] bArr) {
        return Arrays.concatenate(XofUtils.leftEncode(bArr.length * 8), bArr);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int r6) throws IllegalStateException, DataLengthException {
        if (this.firstOutput) {
            if (!this.initialised) {
                throw new IllegalStateException("KMAC not initialized");
            }
            byte[] bArrRightEncode = XofUtils.rightEncode(getMacSize() * 8);
            this.cshake.update(bArrRightEncode, 0, bArrRightEncode.length);
        }
        int r52 = this.cshake.doFinal(bArr, r6, getMacSize());
        reset();
        return r52;
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int r6, int r72) throws IllegalStateException, DataLengthException {
        if (this.firstOutput) {
            if (!this.initialised) {
                throw new IllegalStateException("KMAC not initialized");
            }
            byte[] bArrRightEncode = XofUtils.rightEncode(r72 * 8);
            this.cshake.update(bArrRightEncode, 0, bArrRightEncode.length);
        }
        int r52 = this.cshake.doFinal(bArr, r6, r72);
        reset();
        return r52;
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doOutput(byte[] bArr, int r6, int r72) {
        if (this.firstOutput) {
            if (!this.initialised) {
                throw new IllegalStateException("KMAC not initialized");
            }
            byte[] bArrRightEncode = XofUtils.rightEncode(0L);
            this.cshake.update(bArrRightEncode, 0, bArrRightEncode.length);
            this.firstOutput = false;
        }
        return this.cshake.doOutput(bArr, r6, r72);
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "KMAC" + this.cshake.getAlgorithmName().substring(6);
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.cshake.getByteLength();
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.outputLength;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.outputLength;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        this.key = Arrays.clone(((KeyParameter) cipherParameters).getKey());
        this.initialised = true;
        reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() throws IllegalStateException, DataLengthException {
        this.cshake.reset();
        byte[] bArr = this.key;
        if (bArr != null) {
            bytePad(bArr, this.bitLength == 128 ? 168 : ISO781611.FORMAT_TYPE_TAG);
        }
        this.firstOutput = true;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) throws IllegalStateException {
        if (!this.initialised) {
            throw new IllegalStateException("KMAC not initialized");
        }
        this.cshake.update(b10);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int r32, int r42) throws IllegalStateException, DataLengthException {
        if (!this.initialised) {
            throw new IllegalStateException("KMAC not initialized");
        }
        this.cshake.update(bArr, r32, r42);
    }
}
