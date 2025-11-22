package org.bouncycastle.pqc.crypto.sphincsplus;

import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class SPHINCSPlusPrivateKeyParameters extends SPHINCSPlusKeyParameters {
    final PK pk;
    final SK sk;

    public SPHINCSPlusPrivateKeyParameters(SPHINCSPlusParameters sPHINCSPlusParameters, SK sk, PK pk) {
        super(true, sPHINCSPlusParameters);
        this.sk = sk;
        this.pk = pk;
    }

    public SPHINCSPlusPrivateKeyParameters(SPHINCSPlusParameters sPHINCSPlusParameters, byte[] bArr) {
        super(true, sPHINCSPlusParameters);
        int n10 = sPHINCSPlusParameters.getN();
        int r12 = n10 * 4;
        if (bArr.length != r12) {
            throw new IllegalArgumentException("private key encoding does not match parameters");
        }
        int r32 = n10 * 2;
        this.sk = new SK(Arrays.copyOfRange(bArr, 0, n10), Arrays.copyOfRange(bArr, n10, r32));
        int r6 = n10 * 3;
        this.pk = new PK(Arrays.copyOfRange(bArr, r32, r6), Arrays.copyOfRange(bArr, r6, r12));
    }

    public SPHINCSPlusPrivateKeyParameters(SPHINCSPlusParameters sPHINCSPlusParameters, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        super(true, sPHINCSPlusParameters);
        this.sk = new SK(bArr, bArr2);
        this.pk = new PK(bArr3, bArr4);
    }

    public byte[] getEncoded() {
        SK sk = this.sk;
        PK pk = this.pk;
        return Arrays.concatenate(new byte[][]{sk.seed, sk.prf, pk.seed, pk.root});
    }

    public byte[] getEncodedPublicKey() {
        PK pk = this.pk;
        return Arrays.concatenate(pk.seed, pk.root);
    }

    public byte[] getPrf() {
        return Arrays.clone(this.sk.prf);
    }

    public byte[] getPublicKey() {
        PK pk = this.pk;
        return Arrays.concatenate(pk.seed, pk.root);
    }

    public byte[] getPublicSeed() {
        return Arrays.clone(this.pk.seed);
    }

    public byte[] getRoot() {
        return Arrays.clone(this.pk.root);
    }

    public byte[] getSeed() {
        return Arrays.clone(this.sk.seed);
    }
}
