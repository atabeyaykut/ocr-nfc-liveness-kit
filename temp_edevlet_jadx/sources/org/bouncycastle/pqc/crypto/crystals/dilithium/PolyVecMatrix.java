package org.bouncycastle.pqc.crypto.crystals.dilithium;

import androidx.browser.browseractions.b;
import androidx.constraintlayout.core.a;

/* loaded from: classes2.dex */
class PolyVecMatrix {
    private final int dilithiumK;
    private final int dilithiumL;
    private final PolyVecL[] mat;

    public PolyVecMatrix(DilithiumEngine dilithiumEngine) {
        int dilithiumK = dilithiumEngine.getDilithiumK();
        this.dilithiumK = dilithiumK;
        this.dilithiumL = dilithiumEngine.getDilithiumL();
        this.mat = new PolyVecL[dilithiumK];
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            this.mat[r02] = new PolyVecL(dilithiumEngine);
        }
    }

    private String addString() {
        String string = "[";
        int r12 = 0;
        while (r12 < this.dilithiumK) {
            StringBuilder sbE = a.e(string + "Outer Matrix " + r12 + " [");
            sbE.append(this.mat[r12].toString());
            String string2 = sbE.toString();
            string = (r12 == this.dilithiumK + (-1) ? b.i(string2, "]\n") : b.i(string2, "],\n")).toString();
            r12++;
        }
        return android.support.v4.media.a.f(string, "]\n");
    }

    public void expandMatrix(byte[] bArr) {
        for (int r12 = 0; r12 < this.dilithiumK; r12++) {
            for (int r22 = 0; r22 < this.dilithiumL; r22++) {
                this.mat[r12].getVectorIndex(r22).uniformBlocks(bArr, (short) ((r12 << 8) + r22));
            }
        }
    }

    public void pointwiseMontgomery(PolyVecK polyVecK, PolyVecL polyVecL) {
        for (int r02 = 0; r02 < this.dilithiumK; r02++) {
            polyVecK.getVectorIndex(r02).pointwiseAccountMontgomery(this.mat[r02], polyVecL);
        }
    }

    public String toString(String str) {
        return str.concat(": \n" + addString());
    }
}
