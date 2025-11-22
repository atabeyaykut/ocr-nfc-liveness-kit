package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes2.dex */
public class VMPCEngine implements StreamCipher {
    protected byte[] workingIV;
    protected byte[] workingKey;

    /* renamed from: n, reason: collision with root package name */
    protected byte f11538n = 0;
    protected byte[] P = null;

    /* renamed from: s, reason: collision with root package name */
    protected byte f11539s = 0;

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "VMPC";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("VMPC init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("VMPC init parameters must include a key");
        }
        KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
        byte[] bArr = parametersWithIV.getIV();
        this.workingIV = bArr;
        if (bArr == null || bArr.length < 1 || bArr.length > 768) {
            throw new IllegalArgumentException("VMPC requires 1 to 768 bytes of IV");
        }
        byte[] key = keyParameter.getKey();
        this.workingKey = key;
        initKey(key, this.workingIV);
        String algorithmName = getAlgorithmName();
        byte[] bArr2 = this.workingKey;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(algorithmName, bArr2.length >= 32 ? 256 : bArr2.length * 8, cipherParameters, Utils.getPurpose(z10)));
    }

    public void initKey(byte[] bArr, byte[] bArr2) {
        this.f11539s = (byte) 0;
        this.P = new byte[256];
        for (int r22 = 0; r22 < 256; r22++) {
            this.P[r22] = (byte) r22;
        }
        for (int r12 = 0; r12 < 768; r12++) {
            byte[] bArr3 = this.P;
            byte b10 = this.f11539s;
            int r42 = r12 & 255;
            byte b11 = bArr3[r42];
            byte b12 = bArr3[(b10 + b11 + bArr[r12 % bArr.length]) & 255];
            this.f11539s = b12;
            bArr3[r42] = bArr3[b12 & 255];
            bArr3[b12 & 255] = b11;
        }
        for (int r82 = 0; r82 < 768; r82++) {
            byte[] bArr4 = this.P;
            byte b13 = this.f11539s;
            int r43 = r82 & 255;
            byte b14 = bArr4[r43];
            byte b15 = bArr4[(b13 + b14 + bArr2[r82 % bArr2.length]) & 255];
            this.f11539s = b15;
            bArr4[r43] = bArr4[b15 & 255];
            bArr4[b15 & 255] = b14;
        }
        this.f11538n = (byte) 0;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int r10, int r11, byte[] bArr2, int r13) {
        if (r10 + r11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r13 + r11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        for (int r02 = 0; r02 < r11; r02++) {
            byte[] bArr3 = this.P;
            byte b10 = this.f11539s;
            byte b11 = this.f11538n;
            byte b12 = bArr3[(b10 + bArr3[b11 & 255]) & 255];
            this.f11539s = b12;
            byte b13 = bArr3[(bArr3[bArr3[b12 & 255] & 255] + 1) & 255];
            byte b14 = bArr3[b11 & 255];
            bArr3[b11 & 255] = bArr3[b12 & 255];
            bArr3[b12 & 255] = b14;
            this.f11538n = (byte) ((b11 + 1) & 255);
            bArr2[r02 + r13] = (byte) (bArr[r02 + r10] ^ b13);
        }
        return r11;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        initKey(this.workingKey, this.workingIV);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        byte[] bArr = this.P;
        byte b11 = this.f11539s;
        byte b12 = this.f11538n;
        byte b13 = bArr[(b11 + bArr[b12 & 255]) & 255];
        this.f11539s = b13;
        byte b14 = bArr[(bArr[bArr[b13 & 255] & 255] + 1) & 255];
        byte b15 = bArr[b12 & 255];
        bArr[b12 & 255] = bArr[b13 & 255];
        bArr[b13 & 255] = b15;
        this.f11538n = (byte) ((b12 + 1) & 255);
        return (byte) (b10 ^ b14);
    }
}
