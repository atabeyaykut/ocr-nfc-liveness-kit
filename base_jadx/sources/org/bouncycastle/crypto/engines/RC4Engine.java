package org.bouncycastle.crypto.engines;

import ab.b;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes2.dex */
public class RC4Engine implements StreamCipher {
    private static final int STATE_LENGTH = 256;
    private boolean forEncryption;
    private byte[] engineState = null;

    /* renamed from: x, reason: collision with root package name */
    private int f11532x = 0;

    /* renamed from: y, reason: collision with root package name */
    private int f11533y = 0;
    private byte[] workingKey = null;

    public RC4Engine() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 20));
    }

    private void setKey(byte[] bArr) {
        this.workingKey = bArr;
        this.f11532x = 0;
        this.f11533y = 0;
        if (this.engineState == null) {
            this.engineState = new byte[256];
        }
        for (int r12 = 0; r12 < 256; r12++) {
            this.engineState[r12] = (byte) r12;
        }
        int length = 0;
        int r32 = 0;
        for (int r02 = 0; r02 < 256; r02++) {
            int r42 = bArr[length] & 255;
            byte[] bArr2 = this.engineState;
            byte b10 = bArr2[r02];
            r32 = (r42 + b10 + r32) & 255;
            bArr2[r02] = bArr2[r32];
            bArr2[r32] = b10;
            length = (length + 1) % bArr.length;
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "RC4";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to RC4 init - "));
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        this.workingKey = key;
        this.forEncryption = z10;
        setKey(key);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 20, cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int r82, int r92, byte[] bArr2, int r11) {
        if (r82 + r92 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r11 + r92 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        for (int r02 = 0; r02 < r92; r02++) {
            int r12 = (this.f11532x + 1) & 255;
            this.f11532x = r12;
            byte[] bArr3 = this.engineState;
            byte b10 = bArr3[r12];
            int r42 = (this.f11533y + b10) & 255;
            this.f11533y = r42;
            bArr3[r12] = bArr3[r42];
            bArr3[r42] = b10;
            bArr2[r02 + r11] = (byte) (bArr3[(bArr3[r12] + b10) & 255] ^ bArr[r02 + r82]);
        }
        return r92;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        setKey(this.workingKey);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        int r02 = (this.f11532x + 1) & 255;
        this.f11532x = r02;
        byte[] bArr = this.engineState;
        byte b11 = bArr[r02];
        int r32 = (this.f11533y + b11) & 255;
        this.f11533y = r32;
        bArr[r02] = bArr[r32];
        bArr[r32] = b11;
        return (byte) (b10 ^ bArr[(bArr[r02] + b11) & 255]);
    }
}
