package org.bouncycastle.pqc.crypto.lms;

import android.support.v4.media.a;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;

/* loaded from: classes2.dex */
class DigestUtil {

    public static class WrapperDigest implements Digest {
        private final Digest digest;
        private final int length;

        public WrapperDigest(Digest digest, int r22) {
            this.digest = digest;
            this.length = r22;
        }

        @Override // org.bouncycastle.crypto.Digest
        public int doFinal(byte[] bArr, int r52) {
            byte[] bArr2 = new byte[this.digest.getDigestSize()];
            this.digest.doFinal(bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, r52, this.length);
            return this.length;
        }

        @Override // org.bouncycastle.crypto.Digest
        public String getAlgorithmName() {
            return this.digest.getAlgorithmName() + "/" + (this.length * 8);
        }

        @Override // org.bouncycastle.crypto.Digest
        public int getDigestSize() {
            return this.length;
        }

        @Override // org.bouncycastle.crypto.Digest
        public void reset() {
            this.digest.reset();
        }

        @Override // org.bouncycastle.crypto.Digest
        public void update(byte b10) {
            this.digest.update(b10);
        }

        @Override // org.bouncycastle.crypto.Digest
        public void update(byte[] bArr, int r32, int r42) {
            this.digest.update(bArr, r32, r42);
        }
    }

    private static Digest createDigest(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        if (aSN1ObjectIdentifier.equals((ASN1Primitive) NISTObjectIdentifiers.id_sha256)) {
            return new SHA256Digest();
        }
        if (aSN1ObjectIdentifier.equals((ASN1Primitive) NISTObjectIdentifiers.id_shake256_len)) {
            return new SHAKEDigest(256);
        }
        throw new IllegalArgumentException(a.g("unrecognized digest OID: ", aSN1ObjectIdentifier));
    }

    private static Digest createDigest(ASN1ObjectIdentifier aSN1ObjectIdentifier, int r32) {
        Digest digestCreateDigest = createDigest(aSN1ObjectIdentifier);
        return (NISTObjectIdentifiers.id_shake256_len.equals((ASN1Primitive) aSN1ObjectIdentifier) || digestCreateDigest.getDigestSize() != r32) ? new WrapperDigest(digestCreateDigest, r32) : digestCreateDigest;
    }

    public static Digest getDigest(LMOtsParameters lMOtsParameters) {
        return createDigest(lMOtsParameters.getDigestOID(), lMOtsParameters.getN());
    }

    public static Digest getDigest(LMSigParameters lMSigParameters) {
        return createDigest(lMSigParameters.getDigestOID(), lMSigParameters.getM());
    }
}
