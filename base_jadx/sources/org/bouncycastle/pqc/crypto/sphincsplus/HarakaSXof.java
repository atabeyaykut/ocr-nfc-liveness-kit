package org.bouncycastle.pqc.crypto.sphincsplus;

import java.lang.reflect.Array;
import net.sf.scuba.smartcards.ISOFileInfo;

/* loaded from: classes2.dex */
class HarakaSXof extends HarakaSBase {
    public HarakaSXof(byte[] bArr) {
        byte[] bArr2 = new byte[640];
        update(bArr, 0, bArr.length);
        doFinal(bArr2, 0, 640);
        this.haraka512_rc = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 10, 8);
        this.haraka256_rc = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 10, 8);
        for (int r32 = 0; r32 < 10; r32++) {
            interleaveConstant32(this.haraka256_rc[r32], bArr2, r32 << 5);
            interleaveConstant(this.haraka512_rc[r32], bArr2, r32 << 6);
        }
    }

    public int doFinal(byte[] bArr, int r6, int r72) {
        byte[] bArr2 = this.buffer;
        int r12 = this.off;
        bArr2[r12] = (byte) (bArr2[r12] ^ 31);
        bArr2[31] = (byte) (bArr2[31] ^ ISOFileInfo.DATA_BYTES1);
        int r02 = r72;
        while (r02 >= 32) {
            haraka512Perm(this.buffer);
            System.arraycopy(this.buffer, 0, bArr, r6, 32);
            r6 += 32;
            r02 -= 32;
        }
        if (r02 > 0) {
            haraka512Perm(this.buffer);
            System.arraycopy(this.buffer, 0, bArr, r6, r02);
        }
        reset();
        return r72;
    }

    public String getAlgorithmName() {
        return "Haraka-S";
    }

    public void update(byte b10) {
        byte[] bArr = this.buffer;
        int r12 = this.off;
        int r22 = r12 + 1;
        this.off = r22;
        bArr[r12] = (byte) (b10 ^ bArr[r12]);
        if (r22 == 32) {
            haraka512Perm(bArr);
            this.off = 0;
        }
    }

    public void update(byte[] bArr, int r10, int r11) {
        int r02 = (this.off + r11) >> 5;
        int r32 = r10;
        for (int r22 = 0; r22 < r02; r22++) {
            while (true) {
                int r42 = this.off;
                if (r42 < 32) {
                    byte[] bArr2 = this.buffer;
                    this.off = r42 + 1;
                    bArr2[r42] = (byte) (bArr[r32] ^ bArr2[r42]);
                    r32++;
                }
            }
            haraka512Perm(this.buffer);
            this.off = 0;
        }
        while (r32 < r10 + r11) {
            byte[] bArr3 = this.buffer;
            int r12 = this.off;
            this.off = r12 + 1;
            bArr3[r12] = (byte) (bArr3[r12] ^ bArr[r32]);
            r32++;
        }
    }
}
