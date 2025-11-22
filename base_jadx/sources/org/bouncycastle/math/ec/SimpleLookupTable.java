package org.bouncycastle.math.ec;

/* loaded from: classes2.dex */
public class SimpleLookupTable extends AbstractECLookupTable {
    private final ECPoint[] points;

    public SimpleLookupTable(ECPoint[] eCPointArr, int r22, int r32) {
        this.points = copy(eCPointArr, r22, r32);
    }

    private static ECPoint[] copy(ECPoint[] eCPointArr, int r42, int r52) {
        ECPoint[] eCPointArr2 = new ECPoint[r52];
        for (int r12 = 0; r12 < r52; r12++) {
            eCPointArr2[r12] = eCPointArr[r42 + r12];
        }
        return eCPointArr2;
    }

    @Override // org.bouncycastle.math.ec.ECLookupTable
    public int getSize() {
        return this.points.length;
    }

    @Override // org.bouncycastle.math.ec.ECLookupTable
    public ECPoint lookup(int r22) {
        throw new UnsupportedOperationException("Constant-time lookup not supported");
    }

    @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
    public ECPoint lookupVar(int r22) {
        return this.points[r22];
    }
}
