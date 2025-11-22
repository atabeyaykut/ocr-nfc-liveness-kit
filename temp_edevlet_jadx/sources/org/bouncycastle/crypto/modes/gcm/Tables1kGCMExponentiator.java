package org.bouncycastle.crypto.modes.gcm;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class Tables1kGCMExponentiator implements GCMExponentiator {
    private List lookupPowX2;

    private long[] getPowX2(int r42) {
        int size = this.lookupPowX2.size() - 1;
        if (size < r42) {
            long[] jArr = (long[]) this.lookupPowX2.get(size);
            while (true) {
                long[] jArr2 = new long[2];
                GCMUtil.square(jArr, jArr2);
                this.lookupPowX2.add(jArr2);
                size++;
                if (size >= r42) {
                    break;
                }
                jArr = jArr2;
            }
        }
        return (long[]) this.lookupPowX2.get(r42);
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void exponentiateX(long j10, byte[] bArr) {
        long[] jArrOneAsLongs = GCMUtil.oneAsLongs();
        int r12 = 0;
        while (j10 > 0) {
            if ((1 & j10) != 0) {
                GCMUtil.multiply(jArrOneAsLongs, getPowX2(r12));
            }
            r12++;
            j10 >>>= 1;
        }
        GCMUtil.asBytes(jArrOneAsLongs, bArr);
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void init(byte[] bArr) {
        long[] jArrAsLongs = GCMUtil.asLongs(bArr);
        List list = this.lookupPowX2;
        if (list == null || 0 == GCMUtil.areEqual(jArrAsLongs, (long[]) list.get(0))) {
            ArrayList arrayList = new ArrayList(8);
            this.lookupPowX2 = arrayList;
            arrayList.add(jArrAsLongs);
        }
    }
}
