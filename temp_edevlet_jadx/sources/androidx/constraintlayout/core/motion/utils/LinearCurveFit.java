package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes.dex */
public class LinearCurveFit extends CurveFit {
    private static final String TAG = "LinearCurveFit";
    private boolean mExtrapolate = true;
    double[] mSlopeTemp;
    private double[] mT;
    private double mTotalLength;
    private double[][] mY;

    public LinearCurveFit(double[] dArr, double[][] dArr2) {
        this.mTotalLength = Double.NaN;
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.mSlopeTemp = new double[length2];
        this.mT = dArr;
        this.mY = dArr2;
        if (length2 > 2) {
            double d10 = 0.0d;
            double d11 = 0.0d;
            int r32 = 0;
            while (r32 < dArr.length) {
                double d12 = dArr2[r32][0];
                if (r32 > 0) {
                    Math.hypot(d12 - d10, d12 - d11);
                }
                r32++;
                d10 = d12;
                d11 = d10;
            }
            this.mTotalLength = 0.0d;
        }
    }

    private double getLength2D(double d10) {
        if (Double.isNaN(this.mTotalLength)) {
            return 0.0d;
        }
        double[] dArr = this.mT;
        int length = dArr.length;
        if (d10 <= dArr[0]) {
            return 0.0d;
        }
        int r42 = length - 1;
        if (d10 >= dArr[r42]) {
            return this.mTotalLength;
        }
        double dHypot = 0.0d;
        double d11 = 0.0d;
        double d12 = 0.0d;
        int r12 = 0;
        while (r12 < r42) {
            double[] dArr2 = this.mY[r12];
            double d13 = dArr2[0];
            double d14 = dArr2[1];
            if (r12 > 0) {
                dHypot += Math.hypot(d13 - d11, d14 - d12);
            }
            double[] dArr3 = this.mT;
            double d15 = dArr3[r12];
            if (d10 == d15) {
                return dHypot;
            }
            int r122 = r12 + 1;
            double d16 = dArr3[r122];
            if (d10 < d16) {
                double d17 = (d10 - d15) / (d16 - d15);
                double[][] dArr4 = this.mY;
                double[] dArr5 = dArr4[r12];
                double d18 = dArr5[0];
                double[] dArr6 = dArr4[r122];
                double d19 = dArr6[0];
                double d20 = 1.0d - d17;
                return Math.hypot(d14 - ((dArr6[1] * d17) + (dArr5[1] * d20)), d13 - ((d19 * d17) + (d18 * d20))) + dHypot;
            }
            r12 = r122;
            d11 = d13;
            d12 = d14;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d10, int r11) {
        double d11;
        double[] dArr = this.mT;
        int length = dArr.length;
        int r32 = 0;
        if (this.mExtrapolate) {
            double d12 = dArr[0];
            if (d10 <= d12) {
                d11 = this.mY[0][r11];
            } else {
                int r22 = length - 1;
                d12 = dArr[r22];
                if (d10 >= d12) {
                    d11 = this.mY[r22][r11];
                }
            }
            return (getSlope(d12, r11) * (d10 - d12)) + d11;
        }
        if (d10 <= dArr[0]) {
            return this.mY[0][r11];
        }
        int r23 = length - 1;
        if (d10 >= dArr[r23]) {
            return this.mY[r23][r11];
        }
        while (r32 < length - 1) {
            double[] dArr2 = this.mT;
            double d13 = dArr2[r32];
            if (d10 == d13) {
                return this.mY[r32][r11];
            }
            int r24 = r32 + 1;
            double d14 = dArr2[r24];
            if (d10 < d14) {
                double d15 = (d10 - d13) / (d14 - d13);
                double[][] dArr3 = this.mY;
                return (dArr3[r24][r11] * d15) + ((1.0d - d15) * dArr3[r32][r11]);
            }
            r32 = r24;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d10, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int r32 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            double d11 = dArr2[0];
            if (d10 <= d11) {
                getSlope(d11, this.mSlopeTemp);
                for (int r02 = 0; r02 < length2; r02++) {
                    dArr[r02] = ((d10 - this.mT[0]) * this.mSlopeTemp[r02]) + this.mY[0][r02];
                }
                return;
            }
            int r42 = length - 1;
            double d12 = dArr2[r42];
            if (d10 >= d12) {
                getSlope(d12, this.mSlopeTemp);
                while (r32 < length2) {
                    dArr[r32] = ((d10 - this.mT[r42]) * this.mSlopeTemp[r32]) + this.mY[r42][r32];
                    r32++;
                }
                return;
            }
        } else {
            if (d10 <= dArr2[0]) {
                for (int r13 = 0; r13 < length2; r13++) {
                    dArr[r13] = this.mY[0][r13];
                }
                return;
            }
            int r43 = length - 1;
            if (d10 >= dArr2[r43]) {
                while (r32 < length2) {
                    dArr[r32] = this.mY[r43][r32];
                    r32++;
                }
                return;
            }
        }
        int r03 = 0;
        while (r03 < length - 1) {
            if (d10 == this.mT[r03]) {
                for (int r44 = 0; r44 < length2; r44++) {
                    dArr[r44] = this.mY[r03][r44];
                }
            }
            double[] dArr3 = this.mT;
            int r52 = r03 + 1;
            double d13 = dArr3[r52];
            if (d10 < d13) {
                double d14 = dArr3[r03];
                double d15 = (d10 - d14) / (d13 - d14);
                while (r32 < length2) {
                    double[][] dArr4 = this.mY;
                    dArr[r32] = (dArr4[r52][r32] * d15) + ((1.0d - d15) * dArr4[r03][r32]);
                    r32++;
                }
                return;
            }
            r03 = r52;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d10, float[] fArr) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int r32 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            double d11 = dArr[0];
            if (d10 <= d11) {
                getSlope(d11, this.mSlopeTemp);
                for (int r02 = 0; r02 < length2; r02++) {
                    fArr[r02] = (float) (((d10 - this.mT[0]) * this.mSlopeTemp[r02]) + this.mY[0][r02]);
                }
                return;
            }
            int r42 = length - 1;
            double d12 = dArr[r42];
            if (d10 >= d12) {
                getSlope(d12, this.mSlopeTemp);
                while (r32 < length2) {
                    fArr[r32] = (float) (((d10 - this.mT[r42]) * this.mSlopeTemp[r32]) + this.mY[r42][r32]);
                    r32++;
                }
                return;
            }
        } else {
            if (d10 <= dArr[0]) {
                for (int r13 = 0; r13 < length2; r13++) {
                    fArr[r13] = (float) this.mY[0][r13];
                }
                return;
            }
            int r43 = length - 1;
            if (d10 >= dArr[r43]) {
                while (r32 < length2) {
                    fArr[r32] = (float) this.mY[r43][r32];
                    r32++;
                }
                return;
            }
        }
        int r03 = 0;
        while (r03 < length - 1) {
            if (d10 == this.mT[r03]) {
                for (int r44 = 0; r44 < length2; r44++) {
                    fArr[r44] = (float) this.mY[r03][r44];
                }
            }
            double[] dArr2 = this.mT;
            int r52 = r03 + 1;
            double d13 = dArr2[r52];
            if (d10 < d13) {
                double d14 = dArr2[r03];
                double d15 = (d10 - d14) / (d13 - d14);
                while (r32 < length2) {
                    double[][] dArr3 = this.mY;
                    fArr[r32] = (float) ((dArr3[r52][r32] * d15) + ((1.0d - d15) * dArr3[r03][r32]));
                    r32++;
                }
                return;
            }
            r03 = r52;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x000a A[PHI: r3
      0x000a: PHI (r3v4 double) = (r3v0 double), (r3v2 double) binds: [B:3:0x0008, B:6:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double getSlope(double r8, int r10) {
        /*
            r7 = this;
            double[] r0 = r7.mT
            int r1 = r0.length
            r2 = 0
            r3 = r0[r2]
            int r5 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r5 >= 0) goto Lc
        La:
            r8 = r3
            goto L15
        Lc:
            int r3 = r1 + (-1)
            r3 = r0[r3]
            int r0 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r0 < 0) goto L15
            goto La
        L15:
            int r0 = r1 + (-1)
            if (r2 >= r0) goto L35
            double[] r0 = r7.mT
            int r3 = r2 + 1
            r4 = r0[r3]
            int r6 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r6 > 0) goto L33
            r8 = r0[r2]
            double r4 = r4 - r8
            double[][] r8 = r7.mY
            r9 = r8[r2]
            r0 = r9[r10]
            r8 = r8[r3]
            r9 = r8[r10]
            double r9 = r9 - r0
            double r9 = r9 / r4
            return r9
        L33:
            r2 = r3
            goto L15
        L35:
            r8 = 0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.LinearCurveFit.getSlope(double, int):double");
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x000f A[PHI: r4
      0x000f: PHI (r4v5 double) = (r4v0 double), (r4v2 double) binds: [B:3:0x000d, B:6:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getSlope(double r13, double[] r15) {
        /*
            r12 = this;
            double[] r0 = r12.mT
            int r1 = r0.length
            double[][] r2 = r12.mY
            r3 = 0
            r2 = r2[r3]
            int r2 = r2.length
            r4 = r0[r3]
            int r6 = (r13 > r4 ? 1 : (r13 == r4 ? 0 : -1))
            if (r6 > 0) goto L11
        Lf:
            r13 = r4
            goto L1a
        L11:
            int r4 = r1 + (-1)
            r4 = r0[r4]
            int r0 = (r13 > r4 ? 1 : (r13 == r4 ? 0 : -1))
            if (r0 < 0) goto L1a
            goto Lf
        L1a:
            r0 = 0
        L1b:
            int r4 = r1 + (-1)
            if (r0 >= r4) goto L41
            double[] r4 = r12.mT
            int r5 = r0 + 1
            r6 = r4[r5]
            int r8 = (r13 > r6 ? 1 : (r13 == r6 ? 0 : -1))
            if (r8 > 0) goto L3f
            r13 = r4[r0]
            double r6 = r6 - r13
        L2c:
            if (r3 >= r2) goto L41
            double[][] r13 = r12.mY
            r14 = r13[r0]
            r8 = r14[r3]
            r13 = r13[r5]
            r10 = r13[r3]
            double r10 = r10 - r8
            double r10 = r10 / r6
            r15[r3] = r10
            int r3 = r3 + 1
            goto L2c
        L3f:
            r0 = r5
            goto L1b
        L41:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.LinearCurveFit.getSlope(double, double[]):void");
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mT;
    }
}
