package org.bouncycastle.pqc.crypto.crystals.dilithium;

import android.support.v4.media.a;
import androidx.browser.browseractions.b;

/* loaded from: classes2.dex */
class PolyVecK {
    private int dilithiumK;
    private int dilithiumL;
    private DilithiumEngine engine;
    private int mode;
    private int polyVecBytes;
    Poly[] vec;

    public PolyVecK() throws Exception {
        throw new Exception("Requires Parameter");
    }

    public PolyVecK(DilithiumEngine dilithiumEngine) {
        this.engine = dilithiumEngine;
        this.mode = dilithiumEngine.getDilithiumMode();
        this.dilithiumK = dilithiumEngine.getDilithiumK();
        this.dilithiumL = dilithiumEngine.getDilithiumL();
        this.vec = new Poly[this.dilithiumK];
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            this.vec[r02] = new Poly(dilithiumEngine);
        }
    }

    public void addPolyVecK(PolyVecK polyVecK) {
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            getVectorIndex(r02).addPoly(polyVecK.getVectorIndex(r02));
        }
    }

    public boolean checkNorm(int r42) {
        for (int r12 = 0; r12 < this.dilithiumK; r12++) {
            if (getVectorIndex(r12).checkNorm(r42)) {
                return true;
            }
        }
        return false;
    }

    public void conditionalAddQ() {
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            getVectorIndex(r02).conditionalAddQ();
        }
    }

    public void decompose(PolyVecK polyVecK) {
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            getVectorIndex(r02).decompose(polyVecK.getVectorIndex(r02));
        }
    }

    public Poly getVectorIndex(int r22) {
        return this.vec[r22];
    }

    public void invNttToMont() {
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            getVectorIndex(r02).invNttToMont();
        }
    }

    public int makeHint(PolyVecK polyVecK, PolyVecK polyVecK2) {
        int r12 = 0;
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            r12 += getVectorIndex(r02).polyMakeHint(polyVecK.getVectorIndex(r02), polyVecK2.getVectorIndex(r02));
        }
        return r12;
    }

    public byte[] packW1() {
        byte[] bArr = new byte[this.dilithiumK * this.engine.getDilithiumPolyW1PackedBytes()];
        for (int r22 = 0; r22 < this.dilithiumK; r22++) {
            System.arraycopy(getVectorIndex(r22).w1Pack(), 0, bArr, this.engine.getDilithiumPolyW1PackedBytes() * r22, this.engine.getDilithiumPolyW1PackedBytes());
        }
        return bArr;
    }

    public void pointwisePolyMontgomery(Poly poly, PolyVecK polyVecK) {
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            getVectorIndex(r02).pointwiseMontgomery(poly, polyVecK.getVectorIndex(r02));
        }
    }

    public void polyVecNtt() {
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            this.vec[r02].polyNtt();
        }
    }

    public void power2Round(PolyVecK polyVecK) {
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            getVectorIndex(r02).power2Round(polyVecK.getVectorIndex(r02));
        }
    }

    public void reduce() {
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            getVectorIndex(r02).reduce();
        }
    }

    public void setVectorIndex(int r22, Poly poly) {
        this.vec[r22] = poly;
    }

    public void shiftLeft() {
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            getVectorIndex(r02).shiftLeft();
        }
    }

    public void subtract(PolyVecK polyVecK) {
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            getVectorIndex(r02).subtract(polyVecK.getVectorIndex(r02));
        }
    }

    public String toString() {
        String strF = "[";
        for (int r12 = 0; r12 < this.dilithiumK; r12++) {
            strF = strF + r12 + " " + getVectorIndex(r12).toString();
            if (r12 != this.dilithiumK - 1) {
                strF = a.f(strF, ",\n");
            }
        }
        return a.f(strF, "]");
    }

    public void uniformEta(byte[] bArr, short s7) {
        int r02 = 0;
        while (r02 < this.dilithiumK) {
            getVectorIndex(r02).uniformEta(bArr, s7);
            r02++;
            s7 = (short) (s7 + 1);
        }
    }

    public void useHint(PolyVecK polyVecK, PolyVecK polyVecK2) {
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            getVectorIndex(r02).polyUseHint(polyVecK.getVectorIndex(r02), polyVecK2.getVectorIndex(r02));
        }
    }

    public String toString(String str) {
        StringBuilder sbI = b.i(str, ": ");
        sbI.append(toString());
        return sbI.toString();
    }
}
