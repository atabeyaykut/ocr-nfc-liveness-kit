package org.bouncycastle.crypto.modes.kgcm;

import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public class Tables8kKGCMMultiplier_256 implements KGCMMultiplier {
    private long[][] T;

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void init(long[] jArr) {
        long[][] jArr2 = this.T;
        if (jArr2 == null) {
            this.T = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 256, 4);
        } else if (KGCMUtil_256.equal(jArr, jArr2[1])) {
            return;
        }
        KGCMUtil_256.copy(jArr, this.T[1]);
        for (int r12 = 2; r12 < 256; r12 += 2) {
            long[][] jArr3 = this.T;
            KGCMUtil_256.multiplyX(jArr3[r12 >> 1], jArr3[r12]);
            long[][] jArr4 = this.T;
            KGCMUtil_256.add(jArr4[r12], jArr4[1], jArr4[r12 + 1]);
        }
    }

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void multiplyH(long[] jArr) {
        long[] jArr2 = new long[4];
        KGCMUtil_256.copy(this.T[((int) (jArr[3] >>> 56)) & 255], jArr2);
        for (int r12 = 30; r12 >= 0; r12--) {
            KGCMUtil_256.multiplyX8(jArr2, jArr2);
            KGCMUtil_256.add(this.T[((int) (jArr[r12 >>> 3] >>> ((r12 & 7) << 3))) & 255], jArr2, jArr2);
        }
        KGCMUtil_256.copy(jArr2, jArr);
    }
}
