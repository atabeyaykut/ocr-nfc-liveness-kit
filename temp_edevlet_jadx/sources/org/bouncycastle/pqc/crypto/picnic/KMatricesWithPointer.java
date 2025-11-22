package org.bouncycastle.pqc.crypto.picnic;

/* loaded from: classes2.dex */
class KMatricesWithPointer extends KMatrices {
    private int matrixPointer;

    public KMatricesWithPointer(KMatrices kMatrices) {
        super(kMatrices.getNmatrices(), kMatrices.getRows(), kMatrices.getColumns(), kMatrices.getData());
        this.matrixPointer = 0;
    }

    public int getMatrixPointer() {
        return this.matrixPointer;
    }

    public void setMatrixPointer(int r12) {
        this.matrixPointer = r12;
    }
}
