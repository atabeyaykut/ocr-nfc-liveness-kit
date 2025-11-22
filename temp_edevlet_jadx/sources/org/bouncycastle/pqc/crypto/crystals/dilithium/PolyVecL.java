package org.bouncycastle.pqc.crypto.crystals.dilithium;

import android.support.v4.media.a;
import androidx.browser.browseractions.b;

/* loaded from: classes2.dex */
class PolyVecL {
    private int dilithiumK;
    private int dilithiumL;
    private DilithiumEngine engine;
    private int mode;
    private int polyVecBytes;
    Poly[] vec;

    public PolyVecL() throws Exception {
        throw new Exception("Requires Parameter");
    }

    public PolyVecL(DilithiumEngine dilithiumEngine) {
        this.engine = dilithiumEngine;
        this.mode = dilithiumEngine.getDilithiumMode();
        this.dilithiumL = dilithiumEngine.getDilithiumL();
        this.dilithiumK = dilithiumEngine.getDilithiumK();
        this.vec = new Poly[this.dilithiumL];
        for (int r02 = 0; r02 < this.dilithiumL; r02++) {
            this.vec[r02] = new Poly(dilithiumEngine);
        }
    }

    public void addPolyVecL(PolyVecL polyVecL) {
        for (int r02 = 0; r02 < this.dilithiumL; r02++) {
            getVectorIndex(r02).addPoly(polyVecL.getVectorIndex(r02));
        }
    }

    public boolean checkNorm(int r42) {
        for (int r12 = 0; r12 < this.dilithiumL; r12++) {
            if (getVectorIndex(r12).checkNorm(r42)) {
                return true;
            }
        }
        return false;
    }

    public void copyPolyVecL(PolyVecL polyVecL) {
        for (int r12 = 0; r12 < this.dilithiumL; r12++) {
            for (int r22 = 0; r22 < 256; r22++) {
                polyVecL.getVectorIndex(r12).setCoeffIndex(r22, getVectorIndex(r12).getCoeffIndex(r22));
            }
        }
    }

    public void expandMatrix(byte[] bArr, int r52) {
        for (int r02 = 0; r02 < this.dilithiumL; r02++) {
            this.vec[r02].uniformBlocks(bArr, (short) ((r52 << 8) + r02));
        }
    }

    public Poly getVectorIndex(int r22) {
        return this.vec[r22];
    }

    public void invNttToMont() {
        for (int r02 = 0; r02 < this.dilithiumL; r02++) {
            getVectorIndex(r02).invNttToMont();
        }
    }

    public void pointwisePolyMontgomery(Poly poly, PolyVecL polyVecL) {
        for (int r02 = 0; r02 < this.dilithiumL; r02++) {
            getVectorIndex(r02).pointwiseMontgomery(poly, polyVecL.getVectorIndex(r02));
        }
    }

    public void polyVecNtt() {
        for (int r02 = 0; r02 < this.dilithiumL; r02++) {
            this.vec[r02].polyNtt();
        }
    }

    public void reduce() {
        for (int r02 = 0; r02 < this.dilithiumL; r02++) {
            getVectorIndex(r02).reduce();
        }
    }

    public String toString() {
        String strF = "\n[";
        for (int r12 = 0; r12 < this.dilithiumL; r12++) {
            strF = strF + "Inner Matrix " + r12 + " " + getVectorIndex(r12).toString();
            if (r12 != this.dilithiumL - 1) {
                strF = a.f(strF, ",\n");
            }
        }
        return a.f(strF, "]");
    }

    public void uniformEta(byte[] bArr, short s7) {
        int r02 = 0;
        while (r02 < this.dilithiumL) {
            getVectorIndex(r02).uniformEta(bArr, s7);
            r02++;
            s7 = (short) (s7 + 1);
        }
    }

    public void uniformGamma1(byte[] bArr, short s7) {
        for (int r02 = 0; r02 < this.dilithiumL; r02++) {
            getVectorIndex(r02).uniformGamma1(bArr, (short) ((this.dilithiumL * s7) + r02));
        }
    }

    public String toString(String str) {
        StringBuilder sbI = b.i(str, ": ");
        sbI.append(toString());
        return sbI.toString();
    }
}
