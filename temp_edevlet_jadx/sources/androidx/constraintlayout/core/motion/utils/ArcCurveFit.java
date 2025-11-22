package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* loaded from: classes.dex */
public class ArcCurveFit extends CurveFit {
    public static final int ARC_START_FLIP = 3;
    public static final int ARC_START_HORIZONTAL = 2;
    public static final int ARC_START_LINEAR = 0;
    public static final int ARC_START_VERTICAL = 1;
    private static final int START_HORIZONTAL = 2;
    private static final int START_LINEAR = 3;
    private static final int START_VERTICAL = 1;
    Arc[] mArcs;
    private boolean mExtrapolate = true;
    private final double[] mTime;

    public static class Arc {
        private static final double EPSILON = 0.001d;
        private static final String TAG = "Arc";
        private static double[] ourPercent = new double[91];
        boolean linear;
        double mArcDistance;
        double mArcVelocity;
        double mEllipseA;
        double mEllipseB;
        double mEllipseCenterX;
        double mEllipseCenterY;
        double[] mLut;
        double mOneOverDeltaTime;
        double mTime1;
        double mTime2;
        double mTmpCosAngle;
        double mTmpSinAngle;
        boolean mVertical;
        double mX1;
        double mX2;
        double mY1;
        double mY2;

        public Arc(int r21, double d10, double d11, double d12, double d13, double d14, double d15) {
            this.linear = false;
            this.mVertical = r21 == 1;
            this.mTime1 = d10;
            this.mTime2 = d11;
            this.mOneOverDeltaTime = 1.0d / (d11 - d10);
            if (3 == r21) {
                this.linear = true;
            }
            double d16 = d14 - d12;
            double d17 = d15 - d13;
            if (!this.linear && Math.abs(d16) >= EPSILON && Math.abs(d17) >= EPSILON) {
                this.mLut = new double[101];
                boolean z10 = this.mVertical;
                this.mEllipseA = d16 * (z10 ? -1 : 1);
                this.mEllipseB = d17 * (z10 ? 1 : -1);
                this.mEllipseCenterX = z10 ? d14 : d12;
                this.mEllipseCenterY = z10 ? d13 : d15;
                buildTable(d12, d13, d14, d15);
                this.mArcVelocity = this.mArcDistance * this.mOneOverDeltaTime;
                return;
            }
            this.linear = true;
            this.mX1 = d12;
            this.mX2 = d14;
            this.mY1 = d13;
            this.mY2 = d15;
            double dHypot = Math.hypot(d17, d16);
            this.mArcDistance = dHypot;
            this.mArcVelocity = dHypot * this.mOneOverDeltaTime;
            double d18 = this.mTime2;
            double d19 = this.mTime1;
            this.mEllipseCenterX = d16 / (d18 - d19);
            this.mEllipseCenterY = d17 / (d18 - d19);
        }

        private void buildTable(double d10, double d11, double d12, double d13) {
            double dHypot;
            double d14 = d12 - d10;
            double d15 = d11 - d13;
            int r82 = 0;
            double d16 = 0.0d;
            double d17 = 0.0d;
            double d18 = 0.0d;
            while (true) {
                if (r82 >= ourPercent.length) {
                    break;
                }
                double d19 = d16;
                double radians = Math.toRadians((r82 * 90.0d) / (r15.length - 1));
                double dSin = Math.sin(radians) * d14;
                double dCos = Math.cos(radians) * d15;
                if (r82 > 0) {
                    dHypot = Math.hypot(dSin - d17, dCos - d18) + d19;
                    ourPercent[r82] = dHypot;
                } else {
                    dHypot = d19;
                }
                r82++;
                d18 = dCos;
                d16 = dHypot;
                d17 = dSin;
            }
            double d20 = d16;
            this.mArcDistance = d20;
            int r12 = 0;
            while (true) {
                double[] dArr = ourPercent;
                if (r12 >= dArr.length) {
                    break;
                }
                dArr[r12] = dArr[r12] / d20;
                r12++;
            }
            int r72 = 0;
            while (true) {
                if (r72 >= this.mLut.length) {
                    return;
                }
                double length = r72 / (r1.length - 1);
                int r13 = Arrays.binarySearch(ourPercent, length);
                if (r13 >= 0) {
                    this.mLut[r72] = r13 / (ourPercent.length - 1);
                } else if (r13 == -1) {
                    this.mLut[r72] = 0.0d;
                } else {
                    int r14 = -r13;
                    int r6 = r14 - 2;
                    double[] dArr2 = ourPercent;
                    double d21 = dArr2[r6];
                    this.mLut[r72] = (((length - d21) / (dArr2[r14 - 1] - d21)) + r6) / (dArr2.length - 1);
                }
                r72++;
            }
        }

        public double getDX() {
            double d10 = this.mEllipseA * this.mTmpCosAngle;
            double dHypot = this.mArcVelocity / Math.hypot(d10, (-this.mEllipseB) * this.mTmpSinAngle);
            if (this.mVertical) {
                d10 = -d10;
            }
            return d10 * dHypot;
        }

        public double getDY() {
            double d10 = this.mEllipseA * this.mTmpCosAngle;
            double d11 = (-this.mEllipseB) * this.mTmpSinAngle;
            double dHypot = this.mArcVelocity / Math.hypot(d10, d11);
            return this.mVertical ? (-d11) * dHypot : d11 * dHypot;
        }

        public double getLinearDX(double d10) {
            return this.mEllipseCenterX;
        }

        public double getLinearDY(double d10) {
            return this.mEllipseCenterY;
        }

        public double getLinearX(double d10) {
            double d11 = (d10 - this.mTime1) * this.mOneOverDeltaTime;
            double d12 = this.mX1;
            return ((this.mX2 - d12) * d11) + d12;
        }

        public double getLinearY(double d10) {
            double d11 = (d10 - this.mTime1) * this.mOneOverDeltaTime;
            double d12 = this.mY1;
            return ((this.mY2 - d12) * d11) + d12;
        }

        public double getX() {
            return (this.mEllipseA * this.mTmpSinAngle) + this.mEllipseCenterX;
        }

        public double getY() {
            return (this.mEllipseB * this.mTmpCosAngle) + this.mEllipseCenterY;
        }

        public double lookup(double d10) {
            if (d10 <= 0.0d) {
                return 0.0d;
            }
            if (d10 >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.mLut;
            double length = d10 * (dArr.length - 1);
            int r12 = (int) length;
            double d11 = length - r12;
            double d12 = dArr[r12];
            return ((dArr[r12 + 1] - d12) * d11) + d12;
        }

        public void setPoint(double d10) {
            double dLookup = lookup((this.mVertical ? this.mTime2 - d10 : d10 - this.mTime1) * this.mOneOverDeltaTime) * 1.5707963267948966d;
            this.mTmpSinAngle = Math.sin(dLookup);
            this.mTmpCosAngle = Math.cos(dLookup);
        }
    }

    public ArcCurveFit(int[] r25, double[] dArr, double[][] dArr2) {
        this.mTime = dArr;
        this.mArcs = new Arc[dArr.length - 1];
        int r42 = 0;
        int r52 = 1;
        int r6 = 1;
        while (true) {
            Arc[] arcArr = this.mArcs;
            if (r42 >= arcArr.length) {
                return;
            }
            int r82 = r25[r42];
            if (r82 == 0) {
                r6 = 3;
            } else if (r82 == 1) {
                r52 = 1;
                r6 = 1;
            } else if (r82 == 2) {
                r52 = 2;
                r6 = 2;
            } else if (r82 == 3) {
                r52 = r52 == 1 ? 2 : 1;
                r6 = r52;
            }
            double d10 = dArr[r42];
            int r23 = r42 + 1;
            double d11 = dArr[r23];
            double[] dArr3 = dArr2[r42];
            double d12 = dArr3[0];
            double d13 = dArr3[1];
            double[] dArr4 = dArr2[r23];
            arcArr[r42] = new Arc(r6, d10, d11, d12, d13, dArr4[0], dArr4[1]);
            r42 = r23;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d10, int r10) {
        int r12 = 0;
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            Arc arc = arcArr[0];
            double d11 = arc.mTime1;
            if (d10 < d11) {
                double d12 = d10 - d11;
                if (arc.linear) {
                    if (r10 == 0) {
                        return (d12 * this.mArcs[0].getLinearDX(d11)) + arc.getLinearX(d11);
                    }
                    return (d12 * this.mArcs[0].getLinearDY(d11)) + arc.getLinearY(d11);
                }
                arc.setPoint(d11);
                if (r10 == 0) {
                    return (d12 * this.mArcs[0].getDX()) + this.mArcs[0].getX();
                }
                return (d12 * this.mArcs[0].getDY()) + this.mArcs[0].getY();
            }
            if (d10 > arcArr[arcArr.length - 1].mTime2) {
                double d13 = arcArr[arcArr.length - 1].mTime2;
                double d14 = d10 - d13;
                int length = arcArr.length - 1;
                if (r10 == 0) {
                    return (d14 * this.mArcs[length].getLinearDX(d13)) + arcArr[length].getLinearX(d13);
                }
                return (d14 * this.mArcs[length].getLinearDY(d13)) + arcArr[length].getLinearY(d13);
            }
        } else {
            Arc[] arcArr2 = this.mArcs;
            double d15 = arcArr2[0].mTime1;
            if (d10 < d15) {
                d10 = d15;
            } else if (d10 > arcArr2[arcArr2.length - 1].mTime2) {
                d10 = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (r12 >= arcArr3.length) {
                return Double.NaN;
            }
            Arc arc2 = arcArr3[r12];
            if (d10 <= arc2.mTime2) {
                if (arc2.linear) {
                    return r10 == 0 ? arc2.getLinearX(d10) : arc2.getLinearY(d10);
                }
                arc2.setPoint(d10);
                Arc[] arcArr4 = this.mArcs;
                return r10 == 0 ? arcArr4[r12].getX() : arcArr4[r12].getY();
            }
            r12++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d10, double[] dArr) {
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            Arc arc = arcArr[0];
            double d11 = arc.mTime1;
            if (d10 < d11) {
                double d12 = d10 - d11;
                if (arc.linear) {
                    dArr[0] = (this.mArcs[0].getLinearDX(d11) * d12) + arc.getLinearX(d11);
                    dArr[1] = (d12 * this.mArcs[0].getLinearDY(d11)) + this.mArcs[0].getLinearY(d11);
                    return;
                }
                arc.setPoint(d11);
                dArr[0] = (this.mArcs[0].getDX() * d12) + this.mArcs[0].getX();
                dArr[1] = (d12 * this.mArcs[0].getDY()) + this.mArcs[0].getY();
                return;
            }
            if (d10 > arcArr[arcArr.length - 1].mTime2) {
                double d13 = arcArr[arcArr.length - 1].mTime2;
                double d14 = d10 - d13;
                int length = arcArr.length - 1;
                Arc arc2 = arcArr[length];
                if (arc2.linear) {
                    dArr[0] = (this.mArcs[length].getLinearDX(d13) * d14) + arc2.getLinearX(d13);
                    dArr[1] = (d14 * this.mArcs[length].getLinearDY(d13)) + this.mArcs[length].getLinearY(d13);
                    return;
                }
                arc2.setPoint(d10);
                dArr[0] = (this.mArcs[length].getDX() * d14) + this.mArcs[length].getX();
                dArr[1] = (d14 * this.mArcs[length].getDY()) + this.mArcs[length].getY();
                return;
            }
        } else {
            Arc[] arcArr2 = this.mArcs;
            double d15 = arcArr2[0].mTime1;
            if (d10 < d15) {
                d10 = d15;
            }
            if (d10 > arcArr2[arcArr2.length - 1].mTime2) {
                d10 = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        int r02 = 0;
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (r02 >= arcArr3.length) {
                return;
            }
            Arc arc3 = arcArr3[r02];
            if (d10 <= arc3.mTime2) {
                if (arc3.linear) {
                    dArr[0] = arc3.getLinearX(d10);
                    dArr[1] = this.mArcs[r02].getLinearY(d10);
                    return;
                } else {
                    arc3.setPoint(d10);
                    dArr[0] = this.mArcs[r02].getX();
                    dArr[1] = this.mArcs[r02].getY();
                    return;
                }
            }
            r02++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d10, float[] fArr) {
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            Arc arc = arcArr[0];
            double d11 = arc.mTime1;
            if (d10 < d11) {
                double d12 = d10 - d11;
                if (arc.linear) {
                    fArr[0] = (float) ((this.mArcs[0].getLinearDX(d11) * d12) + arc.getLinearX(d11));
                    fArr[1] = (float) ((d12 * this.mArcs[0].getLinearDY(d11)) + this.mArcs[0].getLinearY(d11));
                    return;
                }
                arc.setPoint(d11);
                fArr[0] = (float) ((this.mArcs[0].getDX() * d12) + this.mArcs[0].getX());
                fArr[1] = (float) ((d12 * this.mArcs[0].getDY()) + this.mArcs[0].getY());
                return;
            }
            if (d10 > arcArr[arcArr.length - 1].mTime2) {
                double d13 = arcArr[arcArr.length - 1].mTime2;
                double d14 = d10 - d13;
                int length = arcArr.length - 1;
                Arc arc2 = arcArr[length];
                if (!arc2.linear) {
                    arc2.setPoint(d10);
                    fArr[0] = (float) this.mArcs[length].getX();
                    fArr[1] = (float) this.mArcs[length].getY();
                    return;
                } else {
                    fArr[0] = (float) ((this.mArcs[length].getLinearDX(d13) * d14) + arc2.getLinearX(d13));
                    fArr[1] = (float) ((d14 * this.mArcs[length].getLinearDY(d13)) + this.mArcs[length].getLinearY(d13));
                    return;
                }
            }
        } else {
            Arc[] arcArr2 = this.mArcs;
            double d15 = arcArr2[0].mTime1;
            if (d10 < d15) {
                d10 = d15;
            } else if (d10 > arcArr2[arcArr2.length - 1].mTime2) {
                d10 = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        int r02 = 0;
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (r02 >= arcArr3.length) {
                return;
            }
            Arc arc3 = arcArr3[r02];
            if (d10 <= arc3.mTime2) {
                if (arc3.linear) {
                    fArr[0] = (float) arc3.getLinearX(d10);
                    fArr[1] = (float) this.mArcs[r02].getLinearY(d10);
                    return;
                } else {
                    arc3.setPoint(d10);
                    fArr[0] = (float) this.mArcs[r02].getX();
                    fArr[1] = (float) this.mArcs[r02].getY();
                    return;
                }
            }
            r02++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d10, int r82) {
        Arc[] arcArr = this.mArcs;
        int r12 = 0;
        double d11 = arcArr[0].mTime1;
        if (d10 < d11) {
            d10 = d11;
        }
        if (d10 > arcArr[arcArr.length - 1].mTime2) {
            d10 = arcArr[arcArr.length - 1].mTime2;
        }
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (r12 >= arcArr2.length) {
                return Double.NaN;
            }
            Arc arc = arcArr2[r12];
            if (d10 <= arc.mTime2) {
                if (arc.linear) {
                    return r82 == 0 ? arc.getLinearDX(d10) : arc.getLinearDY(d10);
                }
                arc.setPoint(d10);
                Arc[] arcArr3 = this.mArcs;
                return r82 == 0 ? arcArr3[r12].getDX() : arcArr3[r12].getDY();
            }
            r12++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d10, double[] dArr) {
        Arc[] arcArr = this.mArcs;
        double d11 = arcArr[0].mTime1;
        if (d10 < d11) {
            d10 = d11;
        } else if (d10 > arcArr[arcArr.length - 1].mTime2) {
            d10 = arcArr[arcArr.length - 1].mTime2;
        }
        int r02 = 0;
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (r02 >= arcArr2.length) {
                return;
            }
            Arc arc = arcArr2[r02];
            if (d10 <= arc.mTime2) {
                if (arc.linear) {
                    dArr[0] = arc.getLinearDX(d10);
                    dArr[1] = this.mArcs[r02].getLinearDY(d10);
                    return;
                } else {
                    arc.setPoint(d10);
                    dArr[0] = this.mArcs[r02].getDX();
                    dArr[1] = this.mArcs[r02].getDY();
                    return;
                }
            }
            r02++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mTime;
    }
}
