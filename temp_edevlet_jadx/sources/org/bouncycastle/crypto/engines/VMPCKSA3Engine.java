package org.bouncycastle.crypto.engines;

/* loaded from: classes2.dex */
public class VMPCKSA3Engine extends VMPCEngine {
    @Override // org.bouncycastle.crypto.engines.VMPCEngine, org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "VMPC-KSA3";
    }

    @Override // org.bouncycastle.crypto.engines.VMPCEngine
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
        for (int r13 = 0; r13 < 768; r13++) {
            byte[] bArr4 = this.P;
            byte b13 = this.f11539s;
            int r52 = r13 & 255;
            byte b14 = bArr4[r52];
            byte b15 = bArr4[(b13 + b14 + bArr2[r13 % bArr2.length]) & 255];
            this.f11539s = b15;
            bArr4[r52] = bArr4[b15 & 255];
            bArr4[b15 & 255] = b14;
        }
        for (int r10 = 0; r10 < 768; r10++) {
            byte[] bArr5 = this.P;
            byte b16 = this.f11539s;
            int r43 = r10 & 255;
            byte b17 = bArr5[r43];
            byte b18 = bArr5[(b16 + b17 + bArr[r10 % bArr.length]) & 255];
            this.f11539s = b18;
            bArr5[r43] = bArr5[b18 & 255];
            bArr5[b18 & 255] = b17;
        }
        this.f11538n = (byte) 0;
    }
}
