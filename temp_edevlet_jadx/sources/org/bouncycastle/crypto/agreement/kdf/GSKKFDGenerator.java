package org.bouncycastle.crypto.agreement.kdf;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.DigestDerivationFunction;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class GSKKFDGenerator implements DigestDerivationFunction {
    private byte[] buf;
    private int counter;
    private final Digest digest;

    /* renamed from: r, reason: collision with root package name */
    private byte[] f11429r;

    /* renamed from: z, reason: collision with root package name */
    private byte[] f11430z;

    public GSKKFDGenerator(Digest digest) {
        this.digest = digest;
        this.buf = new byte[digest.getDigestSize()];
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int r6, int r72) throws DataLengthException, IllegalArgumentException {
        if (r6 + r72 > bArr.length) {
            throw new DataLengthException("output buffer too small");
        }
        Digest digest = this.digest;
        byte[] bArr2 = this.f11430z;
        digest.update(bArr2, 0, bArr2.length);
        int r02 = this.counter;
        this.counter = r02 + 1;
        byte[] bArrIntToBigEndian = Pack.intToBigEndian(r02);
        this.digest.update(bArrIntToBigEndian, 0, bArrIntToBigEndian.length);
        byte[] bArr3 = this.f11429r;
        if (bArr3 != null) {
            this.digest.update(bArr3, 0, bArr3.length);
        }
        this.digest.doFinal(this.buf, 0);
        System.arraycopy(this.buf, 0, bArr, r6, r72);
        Arrays.clear(this.buf);
        return r72;
    }

    @Override // org.bouncycastle.crypto.DigestDerivationFunction
    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof GSKKDFParameters)) {
            throw new IllegalArgumentException("unkown parameters type");
        }
        GSKKDFParameters gSKKDFParameters = (GSKKDFParameters) derivationParameters;
        this.f11430z = gSKKDFParameters.getZ();
        this.counter = gSKKDFParameters.getStartCounter();
        this.f11429r = gSKKDFParameters.getNonce();
    }
}
