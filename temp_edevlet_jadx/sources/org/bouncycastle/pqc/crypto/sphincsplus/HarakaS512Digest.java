package org.bouncycastle.pqc.crypto.sphincsplus;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes2.dex */
class HarakaS512Digest extends HarakaSBase implements Digest {
    public HarakaS512Digest(HarakaSXof harakaSXof) {
        this.haraka512_rc = harakaSXof.haraka512_rc;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r11) {
        byte[] bArr2 = new byte[64];
        haraka512Perm(bArr2);
        HarakaSBase.xor(bArr2, 8, this.buffer, 8, bArr, r11, 8);
        HarakaSBase.xor(bArr2, 24, this.buffer, 24, bArr, r11 + 8, 16);
        HarakaSBase.xor(bArr2, 48, this.buffer, 48, bArr, r11 + 24, 8);
        reset();
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "HarakaS-512";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.pqc.crypto.sphincsplus.HarakaSBase, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        int r02 = this.off;
        if (r02 > 63) {
            throw new IllegalArgumentException("total input cannot be more than 64 bytes");
        }
        byte[] bArr = this.buffer;
        this.off = r02 + 1;
        bArr[r02] = b10;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r42, int r52) {
        int r02 = this.off;
        if (r02 > 64 - r52) {
            throw new IllegalArgumentException("total input cannot be more than 64 bytes");
        }
        System.arraycopy(bArr, r42, this.buffer, r02, r52);
        this.off += r52;
    }
}
