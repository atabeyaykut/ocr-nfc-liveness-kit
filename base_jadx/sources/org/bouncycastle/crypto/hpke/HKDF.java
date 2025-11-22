package org.bouncycastle.crypto.hpke;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.generators.HKDFBytesGenerator;
import org.bouncycastle.crypto.params.HKDFParameters;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class HKDF {
    private static final String versionLabel = "HPKE-v1";
    private final int hashLength;
    private final HKDFBytesGenerator kdf;

    public HKDF(short s7) {
        Digest sHA256Digest;
        if (s7 == 1) {
            sHA256Digest = new SHA256Digest();
        } else if (s7 == 2) {
            sHA256Digest = new SHA384Digest();
        } else {
            if (s7 != 3) {
                throw new IllegalArgumentException("invalid kdf id");
            }
            sHA256Digest = new SHA512Digest();
        }
        this.kdf = new HKDFBytesGenerator(sHA256Digest);
        this.hashLength = sHA256Digest.getDigestSize();
    }

    public byte[] Expand(byte[] bArr, byte[] bArr2, int r42) throws DataLengthException, IllegalArgumentException {
        if (r42 > 65536) {
            throw new IllegalArgumentException("Expand length cannot be larger than 2^16");
        }
        this.kdf.init(HKDFParameters.skipExtractParameters(bArr, bArr2));
        byte[] bArr3 = new byte[r42];
        this.kdf.generateBytes(bArr3, 0, r42);
        return bArr3;
    }

    public byte[] Extract(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            bArr = new byte[this.hashLength];
        }
        return this.kdf.extractPRK(bArr, bArr2);
    }

    public byte[] LabeledExpand(byte[] bArr, byte[] bArr2, String str, byte[] bArr3, int r72) throws DataLengthException, IllegalArgumentException {
        if (r72 > 65536) {
            throw new IllegalArgumentException("Expand length cannot be larger than 2^16");
        }
        this.kdf.init(HKDFParameters.skipExtractParameters(bArr, Arrays.concatenate(Arrays.concatenate(Pack.shortToBigEndian((short) r72), versionLabel.getBytes(), bArr2, str.getBytes()), bArr3)));
        byte[] bArr4 = new byte[r72];
        this.kdf.generateBytes(bArr4, 0, r72);
        return bArr4;
    }

    public byte[] LabeledExtract(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        if (bArr == null) {
            bArr = new byte[this.hashLength];
        }
        return this.kdf.extractPRK(bArr, Arrays.concatenate(versionLabel.getBytes(), bArr2, str.getBytes(), bArr3));
    }

    public int getHashSize() {
        return this.hashLength;
    }
}
