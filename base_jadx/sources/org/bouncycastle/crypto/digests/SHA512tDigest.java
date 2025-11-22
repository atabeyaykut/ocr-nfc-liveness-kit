package org.bouncycastle.crypto.digests;

import net.sf.scuba.smartcards.ISO7816;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.MemoableResetException;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SHA512tDigest extends LongDigest {
    private long H1t;
    private long H2t;
    private long H3t;
    private long H4t;
    private long H5t;
    private long H6t;
    private long H7t;
    private long H8t;
    private int digestLength;

    public SHA512tDigest(int r22) {
        this(r22, CryptoServicePurpose.ANY);
    }

    public SHA512tDigest(int r12, CryptoServicePurpose cryptoServicePurpose) {
        if (r12 >= 512) {
            throw new IllegalArgumentException("bitLength cannot be >= 512");
        }
        if (r12 % 8 != 0) {
            throw new IllegalArgumentException("bitLength needs to be a multiple of 8");
        }
        if (r12 == 384) {
            throw new IllegalArgumentException("bitLength cannot be 384 use SHA384 instead");
        }
        this.digestLength = r12 / 8;
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        tIvGenerate(this.digestLength * 8);
        reset();
    }

    public SHA512tDigest(SHA512tDigest sHA512tDigest) {
        super(sHA512tDigest);
        this.digestLength = sHA512tDigest.digestLength;
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        reset(sHA512tDigest);
    }

    public SHA512tDigest(byte[] bArr) {
        this(readDigestLength(bArr), CryptoServicePurpose.values()[bArr[bArr.length - 1]]);
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        restoreState(bArr);
    }

    private static void intToBigEndian(int r22, byte[] bArr, int r42, int r52) {
        int r53 = Math.min(4, r52);
        while (true) {
            r53--;
            if (r53 < 0) {
                return;
            } else {
                bArr[r42 + r53] = (byte) (r22 >>> ((3 - r53) * 8));
            }
        }
    }

    private static void longToBigEndian(long j10, byte[] bArr, int r6, int r72) {
        if (r72 > 0) {
            intToBigEndian((int) (j10 >>> 32), bArr, r6, r72);
            if (r72 > 4) {
                intToBigEndian((int) (j10 & BodyPartID.bodyIdMax), bArr, r6 + 4, r72 - 4);
            }
        }
    }

    private static int readDigestLength(byte[] bArr) {
        return Pack.bigEndianToInt(bArr, bArr.length - 5);
    }

    private void tIvGenerate(int r42) {
        this.H1 = -3482333909917012819L;
        this.H2 = 2216346199247487646L;
        this.H3 = -7364697282686394994L;
        this.H4 = 65953792586715988L;
        this.H5 = -816286391624063116L;
        this.H6 = 4512832404995164602L;
        this.H7 = -5033199132376557362L;
        this.H8 = -124578254951840548L;
        update((byte) 83);
        update((byte) 72);
        update((byte) 65);
        update((byte) 45);
        update((byte) 53);
        update((byte) 49);
        update(ISO7816.INS_INCREASE);
        update((byte) 47);
        if (r42 <= 100) {
            if (r42 > 10) {
            }
            update((byte) (r42 + 48));
            finish();
            this.H1t = this.H1;
            this.H2t = this.H2;
            this.H3t = this.H3;
            this.H4t = this.H4;
            this.H5t = this.H5;
            this.H6t = this.H6;
            this.H7t = this.H7;
            this.H8t = this.H8;
        }
        update((byte) ((r42 / 100) + 48));
        r42 %= 100;
        update((byte) ((r42 / 10) + 48));
        r42 %= 10;
        update((byte) (r42 + 48));
        finish();
        this.H1t = this.H1;
        this.H2t = this.H2;
        this.H3t = this.H3;
        this.H4t = this.H4;
        this.H5t = this.H5;
        this.H6t = this.H6;
        this.H7t = this.H7;
        this.H8t = this.H8;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SHA512tDigest(this);
    }

    @Override // org.bouncycastle.crypto.digests.LongDigest
    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, getDigestSize() * 8, this.purpose);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r6) {
        finish();
        longToBigEndian(this.H1, bArr, r6, this.digestLength);
        longToBigEndian(this.H2, bArr, r6 + 8, this.digestLength - 8);
        longToBigEndian(this.H3, bArr, r6 + 16, this.digestLength - 16);
        longToBigEndian(this.H4, bArr, r6 + 24, this.digestLength - 24);
        longToBigEndian(this.H5, bArr, r6 + 32, this.digestLength - 32);
        longToBigEndian(this.H6, bArr, r6 + 40, this.digestLength - 40);
        longToBigEndian(this.H7, bArr, r6 + 48, this.digestLength - 48);
        longToBigEndian(this.H8, bArr, r6 + 56, this.digestLength - 56);
        reset();
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-512/" + Integer.toString(this.digestLength * 8);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        int encodedStateSize = getEncodedStateSize();
        int r12 = encodedStateSize + 4 + 1;
        byte[] bArr = new byte[r12];
        populateState(bArr);
        Pack.intToBigEndian(this.digestLength * 8, bArr, encodedStateSize);
        bArr[r12 - 1] = (byte) this.purpose.ordinal();
        return bArr;
    }

    @Override // org.bouncycastle.crypto.digests.LongDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.H1 = this.H1t;
        this.H2 = this.H2t;
        this.H3 = this.H3t;
        this.H4 = this.H4t;
        this.H5 = this.H5t;
        this.H6 = this.H6t;
        this.H7 = this.H7t;
        this.H8 = this.H8t;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        SHA512tDigest sHA512tDigest = (SHA512tDigest) memoable;
        if (this.digestLength != sHA512tDigest.digestLength) {
            throw new MemoableResetException("digestLength inappropriate in other");
        }
        super.copyIn(sHA512tDigest);
        this.H1t = sHA512tDigest.H1t;
        this.H2t = sHA512tDigest.H2t;
        this.H3t = sHA512tDigest.H3t;
        this.H4t = sHA512tDigest.H4t;
        this.H5t = sHA512tDigest.H5t;
        this.H6t = sHA512tDigest.H6t;
        this.H7t = sHA512tDigest.H7t;
        this.H8t = sHA512tDigest.H8t;
    }
}
