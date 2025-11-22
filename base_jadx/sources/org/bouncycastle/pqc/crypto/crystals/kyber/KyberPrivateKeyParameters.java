package org.bouncycastle.pqc.crypto.crystals.kyber;

import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class KyberPrivateKeyParameters extends KyberKeyParameters {
    final byte[] hpk;
    final byte[] nonce;
    final byte[] rho;

    /* renamed from: s, reason: collision with root package name */
    final byte[] f11866s;

    /* renamed from: t, reason: collision with root package name */
    final byte[] f11867t;

    public KyberPrivateKeyParameters(KyberParameters kyberParameters, byte[] bArr) {
        super(true, kyberParameters);
        KyberEngine engine = kyberParameters.getEngine();
        this.f11866s = Arrays.copyOfRange(bArr, 0, engine.getKyberIndCpaSecretKeyBytes());
        int kyberIndCpaSecretKeyBytes = engine.getKyberIndCpaSecretKeyBytes() + 0;
        this.f11867t = Arrays.copyOfRange(bArr, kyberIndCpaSecretKeyBytes, (engine.getKyberIndCpaPublicKeyBytes() + kyberIndCpaSecretKeyBytes) - 32);
        int kyberIndCpaPublicKeyBytes = (engine.getKyberIndCpaPublicKeyBytes() - 32) + kyberIndCpaSecretKeyBytes;
        int r02 = kyberIndCpaPublicKeyBytes + 32;
        this.rho = Arrays.copyOfRange(bArr, kyberIndCpaPublicKeyBytes, r02);
        int r32 = r02 + 32;
        this.hpk = Arrays.copyOfRange(bArr, r02, r32);
        this.nonce = Arrays.copyOfRange(bArr, r32, r32 + 32);
    }

    public KyberPrivateKeyParameters(KyberParameters kyberParameters, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        super(true, kyberParameters);
        this.f11866s = Arrays.clone(bArr);
        this.hpk = Arrays.clone(bArr2);
        this.nonce = Arrays.clone(bArr3);
        this.f11867t = Arrays.clone(bArr4);
        this.rho = Arrays.clone(bArr5);
    }

    public byte[] getEncoded() {
        return Arrays.concatenate(new byte[][]{this.f11866s, this.f11867t, this.rho, this.hpk, this.nonce});
    }

    public byte[] getHPK() {
        return Arrays.clone(this.hpk);
    }

    public byte[] getNonce() {
        return Arrays.clone(this.nonce);
    }

    public byte[] getPrivateKey() {
        return getEncoded();
    }

    public byte[] getPublicKey() {
        return KyberPublicKeyParameters.getEncoded(this.f11867t, this.rho);
    }

    public KyberPublicKeyParameters getPublicKeyParameters() {
        return new KyberPublicKeyParameters(getParameters(), this.f11867t, this.rho);
    }

    public byte[] getRho() {
        return Arrays.clone(this.rho);
    }

    public byte[] getS() {
        return Arrays.clone(this.f11866s);
    }

    public byte[] getT() {
        return Arrays.clone(this.f11867t);
    }
}
