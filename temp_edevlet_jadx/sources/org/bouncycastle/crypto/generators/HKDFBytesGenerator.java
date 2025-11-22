package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.HKDFParameters;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes2.dex */
public class HKDFBytesGenerator implements DerivationFunction {
    private byte[] currentT;
    private int generatedBytes;
    private HMac hMacHash;
    private int hashLen;
    private byte[] info;

    public HKDFBytesGenerator(Digest digest) {
        this.hMacHash = new HMac(digest);
        this.hashLen = digest.getDigestSize();
    }

    private void expandNext() throws DataLengthException {
        int r02 = this.generatedBytes;
        int r12 = this.hashLen;
        int r22 = (r02 / r12) + 1;
        if (r22 >= 256) {
            throw new DataLengthException("HKDF cannot generate more than 255 blocks of HashLen size");
        }
        if (r02 != 0) {
            this.hMacHash.update(this.currentT, 0, r12);
        }
        HMac hMac = this.hMacHash;
        byte[] bArr = this.info;
        hMac.update(bArr, 0, bArr.length);
        this.hMacHash.update((byte) r22);
        this.hMacHash.doFinal(this.currentT, 0);
    }

    public byte[] extractPRK(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            this.hMacHash.init(new KeyParameter(new byte[this.hashLen]));
        } else {
            this.hMacHash.init(new KeyParameter(bArr));
        }
        this.hMacHash.update(bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[this.hashLen];
        this.hMacHash.doFinal(bArr3, 0);
        return bArr3;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int r6, int r72) throws DataLengthException, IllegalArgumentException {
        int r02 = this.generatedBytes;
        int r12 = r02 + r72;
        int r22 = this.hashLen;
        if (r12 > r22 * 255) {
            throw new DataLengthException("HKDF may only be used for 255 * HashLen bytes of output");
        }
        if (r02 % r22 == 0) {
            expandNext();
        }
        int r03 = this.generatedBytes;
        int r13 = this.hashLen;
        int r23 = r03 % r13;
        int r04 = Math.min(r13 - (r03 % r13), r72);
        System.arraycopy(this.currentT, r23, bArr, r6, r04);
        this.generatedBytes += r04;
        int r14 = r72 - r04;
        while (true) {
            r6 += r04;
            if (r14 <= 0) {
                return r72;
            }
            expandNext();
            r04 = Math.min(this.hashLen, r14);
            System.arraycopy(this.currentT, 0, bArr, r6, r04);
            this.generatedBytes += r04;
            r14 -= r04;
        }
    }

    public Digest getDigest() {
        return this.hMacHash.getUnderlyingDigest();
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        HMac hMac;
        KeyParameter keyParameter;
        if (!(derivationParameters instanceof HKDFParameters)) {
            throw new IllegalArgumentException("HKDF parameters required for HKDFBytesGenerator");
        }
        HKDFParameters hKDFParameters = (HKDFParameters) derivationParameters;
        if (hKDFParameters.skipExtract()) {
            hMac = this.hMacHash;
            keyParameter = new KeyParameter(hKDFParameters.getIKM());
        } else {
            hMac = this.hMacHash;
            keyParameter = new KeyParameter(extractPRK(hKDFParameters.getSalt(), hKDFParameters.getIKM()));
        }
        hMac.init(keyParameter);
        this.info = hKDFParameters.getInfo();
        this.generatedBytes = 0;
        this.currentT = new byte[this.hashLen];
    }
}
