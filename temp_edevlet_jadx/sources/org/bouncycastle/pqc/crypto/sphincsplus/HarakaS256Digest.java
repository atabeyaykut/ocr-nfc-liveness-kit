package org.bouncycastle.pqc.crypto.sphincsplus;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes2.dex */
class HarakaS256Digest extends HarakaSBase implements Digest {
    public HarakaS256Digest(HarakaSXof harakaSXof) {
        this.haraka256_rc = harakaSXof.haraka256_rc;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r10) {
        byte[] bArr2 = new byte[32];
        haraka256Perm(bArr2);
        HarakaSBase.xor(bArr2, 0, this.buffer, 0, bArr, r10, 32);
        reset();
        return bArr.length;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "HarakaS-256";
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
        if (r02 > 31) {
            throw new IllegalArgumentException("total input cannot be more than 32 bytes");
        }
        byte[] bArr = this.buffer;
        this.off = r02 + 1;
        bArr[r02] = b10;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r42, int r52) {
        int r02 = this.off;
        if (r02 > 32 - r52) {
            throw new IllegalArgumentException("total input cannot be more than 32 bytes");
        }
        System.arraycopy(bArr, r42, this.buffer, r02, r52);
        this.off += r52;
    }
}
