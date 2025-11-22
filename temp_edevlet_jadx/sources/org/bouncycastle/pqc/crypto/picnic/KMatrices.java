package org.bouncycastle.pqc.crypto.picnic;

/* loaded from: classes2.dex */
class KMatrices {
    private int columns;
    private int[] data;
    private int nmatrices;
    private int rows;

    public KMatrices(int r12, int r22, int r32, int[] r42) {
        this.nmatrices = r12;
        this.rows = r22;
        this.columns = r32;
        this.data = r42;
    }

    public int getColumns() {
        return this.columns;
    }

    public int[] getData() {
        return this.data;
    }

    public int getNmatrices() {
        return this.nmatrices;
    }

    public int getRows() {
        return this.rows;
    }

    public int getSize() {
        return this.rows * this.columns;
    }
}
