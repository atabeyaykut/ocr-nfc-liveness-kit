package org.bouncycastle.crypto.modes.gcm;

import java.lang.reflect.Array;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class Tables4kGCMMultiplier implements GCMMultiplier {
    private byte[] H;
    private long[][] T;

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        if (this.T == null) {
            this.T = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 256, 2);
        } else if (GCMUtil.areEqual(this.H, bArr) != 0) {
            return;
        }
        byte[] bArr2 = new byte[16];
        this.H = bArr2;
        GCMUtil.copy(bArr, bArr2);
        GCMUtil.asLongs(this.H, this.T[1]);
        long[] jArr = this.T[1];
        GCMUtil.multiplyP7(jArr, jArr);
        for (int r12 = 2; r12 < 256; r12 += 2) {
            long[][] jArr2 = this.T;
            GCMUtil.divideP(jArr2[r12 >> 1], jArr2[r12]);
            long[][] jArr3 = this.T;
            GCMUtil.xor(jArr3[r12], jArr3[1], jArr3[r12 + 1]);
        }
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        long[] jArr = this.T[bArr[15] & 255];
        long j10 = jArr[0];
        long j11 = jArr[1];
        for (int r22 = 14; r22 >= 0; r22--) {
            long[] jArr2 = this.T[bArr[r22] & 255];
            long j12 = j11 << 56;
            j11 = ((j11 >>> 8) | (j10 << 56)) ^ jArr2[1];
            j10 = (((((j10 >>> 8) ^ jArr2[0]) ^ j12) ^ (j12 >>> 1)) ^ (j12 >>> 2)) ^ (j12 >>> 7);
        }
        Pack.longToBigEndian(j10, bArr, 0);
        Pack.longToBigEndian(j11, bArr, 8);
    }
}
