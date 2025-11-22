package org.bouncycastle.crypto.engines;

import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class XSalsa20Engine extends Salsa20Engine {
    @Override // org.bouncycastle.crypto.engines.Salsa20Engine, org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "XSalsa20";
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public int getNonceSize() {
        return 24;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void setKey(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new IllegalArgumentException(getAlgorithmName() + " doesn't support re-init with null key");
        }
        if (bArr.length != 32) {
            throw new IllegalArgumentException(getAlgorithmName() + " requires a 256 bit key");
        }
        super.setKey(bArr, bArr2);
        Pack.littleEndianToInt(bArr2, 8, this.engineState, 8, 2);
        int[] r72 = this.engineState;
        int[] r22 = new int[r72.length];
        Salsa20Engine.salsaCore(20, r72, r22);
        int[] r73 = this.engineState;
        r73[1] = r22[0] - r73[0];
        r73[2] = r22[5] - r73[5];
        r73[3] = r22[10] - r73[10];
        r73[4] = r22[15] - r73[15];
        r73[11] = r22[6] - r73[6];
        r73[12] = r22[7] - r73[7];
        r73[13] = r22[8] - r73[8];
        r73[14] = r22[9] - r73[9];
        Pack.littleEndianToInt(bArr2, 16, r73, 6, 2);
    }
}
