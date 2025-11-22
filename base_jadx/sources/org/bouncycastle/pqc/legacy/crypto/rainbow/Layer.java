package org.bouncycastle.pqc.legacy.crypto.rainbow;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.pqc.legacy.crypto.rainbow.util.GF2Field;
import org.bouncycastle.pqc.legacy.crypto.rainbow.util.RainbowUtil;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class Layer {
    private short[][][] coeff_alpha;
    private short[][][] coeff_beta;
    private short[] coeff_eta;
    private short[][] coeff_gamma;
    private int oi;
    private int vi;
    private int viNext;

    public Layer(byte b10, byte b11, short[][][] sArr, short[][][] sArr2, short[][] sArr3, short[] sArr4) {
        int r12 = b10 & 255;
        this.vi = r12;
        int r22 = b11 & 255;
        this.viNext = r22;
        this.oi = r22 - r12;
        this.coeff_alpha = sArr;
        this.coeff_beta = sArr2;
        this.coeff_gamma = sArr3;
        this.coeff_eta = sArr4;
    }

    public Layer(int r6, int r72, SecureRandom secureRandom) {
        this.vi = r6;
        this.viNext = r72;
        int r73 = r72 - r6;
        this.oi = r73;
        this.coeff_alpha = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, r73, r73, r6);
        int r74 = this.oi;
        int r12 = this.vi;
        this.coeff_beta = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, r74, r12, r12);
        this.coeff_gamma = (short[][]) Array.newInstance((Class<?>) Short.TYPE, this.oi, this.viNext);
        int r62 = this.oi;
        this.coeff_eta = new short[r62];
        for (int r75 = 0; r75 < r62; r75++) {
            for (int r02 = 0; r02 < this.oi; r02++) {
                for (int r13 = 0; r13 < this.vi; r13++) {
                    this.coeff_alpha[r75][r02][r13] = (short) (secureRandom.nextInt() & 255);
                }
            }
        }
        for (int r76 = 0; r76 < r62; r76++) {
            for (int r03 = 0; r03 < this.vi; r03++) {
                for (int r14 = 0; r14 < this.vi; r14++) {
                    this.coeff_beta[r76][r03][r14] = (short) (secureRandom.nextInt() & 255);
                }
            }
        }
        for (int r77 = 0; r77 < r62; r77++) {
            for (int r04 = 0; r04 < this.viNext; r04++) {
                this.coeff_gamma[r77][r04] = (short) (secureRandom.nextInt() & 255);
            }
        }
        for (int r32 = 0; r32 < r62; r32++) {
            this.coeff_eta[r32] = (short) (secureRandom.nextInt() & 255);
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Layer)) {
            return false;
        }
        Layer layer = (Layer) obj;
        return this.vi == layer.getVi() && this.viNext == layer.getViNext() && this.oi == layer.getOi() && RainbowUtil.equals(this.coeff_alpha, layer.getCoeffAlpha()) && RainbowUtil.equals(this.coeff_beta, layer.getCoeffBeta()) && RainbowUtil.equals(this.coeff_gamma, layer.getCoeffGamma()) && RainbowUtil.equals(this.coeff_eta, layer.getCoeffEta());
    }

    public short[][][] getCoeffAlpha() {
        return this.coeff_alpha;
    }

    public short[][][] getCoeffBeta() {
        return this.coeff_beta;
    }

    public short[] getCoeffEta() {
        return this.coeff_eta;
    }

    public short[][] getCoeffGamma() {
        return this.coeff_gamma;
    }

    public int getOi() {
        return this.oi;
    }

    public int getVi() {
        return this.vi;
    }

    public int getViNext() {
        return this.viNext;
    }

    public int hashCode() {
        return Arrays.hashCode(this.coeff_eta) + ((Arrays.hashCode(this.coeff_gamma) + ((Arrays.hashCode(this.coeff_beta) + ((Arrays.hashCode(this.coeff_alpha) + (((((this.vi * 37) + this.viNext) * 37) + this.oi) * 37)) * 37)) * 37)) * 37);
    }

    public short[][] plugInVinegars(short[] sArr) {
        int r02 = this.oi;
        int r12 = 0;
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, r02, r02 + 1);
        short[] sArr3 = new short[this.oi];
        for (int r32 = 0; r32 < this.oi; r32++) {
            for (int r42 = 0; r42 < this.vi; r42++) {
                for (int r52 = 0; r52 < this.vi; r52++) {
                    sArr3[r32] = GF2Field.addElem(sArr3[r32], GF2Field.multElem(GF2Field.multElem(this.coeff_beta[r32][r42][r52], sArr[r42]), sArr[r52]));
                }
            }
        }
        for (int r33 = 0; r33 < this.oi; r33++) {
            for (int r43 = 0; r43 < this.oi; r43++) {
                for (int r53 = 0; r53 < this.vi; r53++) {
                    short sMultElem = GF2Field.multElem(this.coeff_alpha[r33][r43][r53], sArr[r53]);
                    short[] sArr4 = sArr2[r33];
                    sArr4[r43] = GF2Field.addElem(sArr4[r43], sMultElem);
                }
            }
        }
        for (int r34 = 0; r34 < this.oi; r34++) {
            for (int r44 = 0; r44 < this.vi; r44++) {
                sArr3[r34] = GF2Field.addElem(sArr3[r34], GF2Field.multElem(this.coeff_gamma[r34][r44], sArr[r44]));
            }
        }
        for (int r10 = 0; r10 < this.oi; r10++) {
            for (int r35 = this.vi; r35 < this.viNext; r35++) {
                short[] sArr5 = sArr2[r10];
                int r54 = this.vi;
                sArr5[r35 - r54] = GF2Field.addElem(this.coeff_gamma[r10][r35], sArr5[r35 - r54]);
            }
        }
        for (int r102 = 0; r102 < this.oi; r102++) {
            sArr3[r102] = GF2Field.addElem(sArr3[r102], this.coeff_eta[r102]);
        }
        while (true) {
            int r103 = this.oi;
            if (r12 >= r103) {
                return sArr2;
            }
            sArr2[r12][r103] = sArr3[r12];
            r12++;
        }
    }
}
