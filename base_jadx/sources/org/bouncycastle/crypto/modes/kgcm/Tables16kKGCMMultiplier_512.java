package org.bouncycastle.crypto.modes.kgcm;

import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public class Tables16kKGCMMultiplier_512 implements KGCMMultiplier {
    private long[][] T;

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void init(long[] jArr) {
        long[][] jArr2 = this.T;
        if (jArr2 == null) {
            this.T = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 256, 8);
        } else if (KGCMUtil_512.equal(jArr, jArr2[1])) {
            return;
        }
        KGCMUtil_512.copy(jArr, this.T[1]);
        for (int r12 = 2; r12 < 256; r12 += 2) {
            long[][] jArr3 = this.T;
            KGCMUtil_512.multiplyX(jArr3[r12 >> 1], jArr3[r12]);
            long[][] jArr4 = this.T;
            KGCMUtil_512.add(jArr4[r12], jArr4[1], jArr4[r12 + 1]);
        }
    }

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void multiplyH(long[] jArr) {
        long[] jArr2 = new long[8];
        KGCMUtil_512.copy(this.T[((int) (jArr[7] >>> 56)) & 255], jArr2);
        for (int r12 = 62; r12 >= 0; r12--) {
            KGCMUtil_512.multiplyX8(jArr2, jArr2);
            KGCMUtil_512.add(this.T[((int) (jArr[r12 >>> 3] >>> ((r12 & 7) << 3))) & 255], jArr2, jArr2);
        }
        KGCMUtil_512.copy(jArr2, jArr);
    }
}
