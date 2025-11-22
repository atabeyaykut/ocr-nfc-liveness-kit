package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes.dex */
public class StopLogicEngine implements StopEngine {
    private static final float EPSILON = 1.0E-5f;
    private boolean mBackwards = false;
    private boolean mDone = false;
    private float mLastPosition;
    private int mNumberOfStages;
    private float mStage1Duration;
    private float mStage1EndPosition;
    private float mStage1Velocity;
    private float mStage2Duration;
    private float mStage2EndPosition;
    private float mStage2Velocity;
    private float mStage3Duration;
    private float mStage3EndPosition;
    private float mStage3Velocity;
    private float mStartPosition;
    private String mType;

    private float calcY(float f) {
        this.mDone = false;
        float f10 = this.mStage1Duration;
        if (f <= f10) {
            float f11 = this.mStage1Velocity;
            return ((((this.mStage2Velocity - f11) * f) * f) / (f10 * 2.0f)) + (f11 * f);
        }
        int r22 = this.mNumberOfStages;
        if (r22 == 1) {
            return this.mStage1EndPosition;
        }
        float f12 = f - f10;
        float f13 = this.mStage2Duration;
        if (f12 < f13) {
            float f14 = this.mStage1EndPosition;
            float f15 = this.mStage2Velocity;
            return ((((this.mStage3Velocity - f15) * f12) * f12) / (f13 * 2.0f)) + (f15 * f12) + f14;
        }
        if (r22 == 2) {
            return this.mStage2EndPosition;
        }
        float f16 = f12 - f13;
        float f17 = this.mStage3Duration;
        if (f16 > f17) {
            this.mDone = true;
            return this.mStage3EndPosition;
        }
        float f18 = this.mStage2EndPosition;
        float f19 = this.mStage3Velocity;
        return ((f19 * f16) + f18) - (((f19 * f16) * f16) / (f17 * 2.0f));
    }

    private void setup(float f, float f10, float f11, float f12, float f13) {
        this.mDone = false;
        if (f == 0.0f) {
            f = 1.0E-4f;
        }
        this.mStage1Velocity = f;
        float f14 = f / f11;
        float f15 = (f14 * f) / 2.0f;
        if (f < 0.0f) {
            float fSqrt = (float) Math.sqrt((f10 - ((((-f) / f11) * f) / 2.0f)) * f11);
            if (fSqrt < f12) {
                this.mType = "backward accelerate, decelerate";
                this.mNumberOfStages = 2;
                this.mStage1Velocity = f;
                this.mStage2Velocity = fSqrt;
                this.mStage3Velocity = 0.0f;
                float f16 = (fSqrt - f) / f11;
                this.mStage1Duration = f16;
                this.mStage2Duration = fSqrt / f11;
                this.mStage1EndPosition = ((f + fSqrt) * f16) / 2.0f;
                this.mStage2EndPosition = f10;
                this.mStage3EndPosition = f10;
                return;
            }
            this.mType = "backward accelerate cruse decelerate";
            this.mNumberOfStages = 3;
            this.mStage1Velocity = f;
            this.mStage2Velocity = f12;
            this.mStage3Velocity = f12;
            float f17 = (f12 - f) / f11;
            this.mStage1Duration = f17;
            float f18 = f12 / f11;
            this.mStage3Duration = f18;
            float f19 = ((f + f12) * f17) / 2.0f;
            float f20 = (f18 * f12) / 2.0f;
            this.mStage2Duration = ((f10 - f19) - f20) / f12;
            this.mStage1EndPosition = f19;
            this.mStage2EndPosition = f10 - f20;
            this.mStage3EndPosition = f10;
            return;
        }
        if (f15 >= f10) {
            this.mType = "hard stop";
            this.mNumberOfStages = 1;
            this.mStage1Velocity = f;
            this.mStage2Velocity = 0.0f;
            this.mStage1EndPosition = f10;
            this.mStage1Duration = (2.0f * f10) / f;
            return;
        }
        float f21 = f10 - f15;
        float f22 = f21 / f;
        if (f22 + f14 < f13) {
            this.mType = "cruse decelerate";
            this.mNumberOfStages = 2;
            this.mStage1Velocity = f;
            this.mStage2Velocity = f;
            this.mStage3Velocity = 0.0f;
            this.mStage1EndPosition = f21;
            this.mStage2EndPosition = f10;
            this.mStage1Duration = f22;
            this.mStage2Duration = f14;
            return;
        }
        float fSqrt2 = (float) Math.sqrt(((f * f) / 2.0f) + (f11 * f10));
        float f23 = (fSqrt2 - f) / f11;
        this.mStage1Duration = f23;
        float f24 = fSqrt2 / f11;
        this.mStage2Duration = f24;
        if (fSqrt2 < f12) {
            this.mType = "accelerate decelerate";
            this.mNumberOfStages = 2;
            this.mStage1Velocity = f;
            this.mStage2Velocity = fSqrt2;
            this.mStage3Velocity = 0.0f;
            this.mStage1Duration = f23;
            this.mStage2Duration = f24;
            this.mStage1EndPosition = ((f + fSqrt2) * f23) / 2.0f;
            this.mStage2EndPosition = f10;
            return;
        }
        this.mType = "accelerate cruse decelerate";
        this.mNumberOfStages = 3;
        this.mStage1Velocity = f;
        this.mStage2Velocity = f12;
        this.mStage3Velocity = f12;
        float f25 = (f12 - f) / f11;
        this.mStage1Duration = f25;
        float f26 = f12 / f11;
        this.mStage3Duration = f26;
        float f27 = ((f + f12) * f25) / 2.0f;
        float f28 = (f26 * f12) / 2.0f;
        this.mStage2Duration = ((f10 - f27) - f28) / f12;
        this.mStage1EndPosition = f27;
        this.mStage2EndPosition = f10 - f28;
        this.mStage3EndPosition = f10;
    }

    public void config(float f, float f10, float f11, float f12, float f13, float f14) {
        float f15;
        StopLogicEngine stopLogicEngine;
        float f16;
        this.mDone = false;
        this.mStartPosition = f;
        boolean z10 = f > f10;
        this.mBackwards = z10;
        if (z10) {
            f16 = -f11;
            f15 = f - f10;
            stopLogicEngine = this;
        } else {
            f15 = f10 - f;
            stopLogicEngine = this;
            f16 = f11;
        }
        stopLogicEngine.setup(f16, f15, f13, f14, f12);
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public String debug(String str, float f) {
        StringBuilder sbI;
        String str2;
        StringBuilder sbI2 = androidx.browser.browseractions.b.i(androidx.camera.camera2.internal.c.h(androidx.browser.browseractions.b.i(str, " ===== "), this.mType, "\n"), str);
        sbI2.append(this.mBackwards ? "backwards" : "forward ");
        sbI2.append(" time = ");
        sbI2.append(f);
        sbI2.append("  stages ");
        String str3 = androidx.browser.browseractions.a.b(sbI2, this.mNumberOfStages, "\n") + str + " dur " + this.mStage1Duration + " vel " + this.mStage1Velocity + " pos " + this.mStage1EndPosition + "\n";
        if (this.mNumberOfStages > 1) {
            str3 = str3 + str + " dur " + this.mStage2Duration + " vel " + this.mStage2Velocity + " pos " + this.mStage2EndPosition + "\n";
        }
        if (this.mNumberOfStages > 2) {
            str3 = str3 + str + " dur " + this.mStage3Duration + " vel " + this.mStage3Velocity + " pos " + this.mStage3EndPosition + "\n";
        }
        float f10 = this.mStage1Duration;
        if (f <= f10) {
            sbI = androidx.browser.browseractions.b.i(str3, str);
            str2 = "stage 0\n";
        } else {
            int r22 = this.mNumberOfStages;
            if (r22 == 1) {
                sbI = androidx.browser.browseractions.b.i(str3, str);
                str2 = "end stage 0\n";
            } else {
                float f11 = f - f10;
                float f12 = this.mStage2Duration;
                if (f11 < f12) {
                    sbI = androidx.browser.browseractions.b.i(str3, str);
                    str2 = " stage 1\n";
                } else if (r22 == 2) {
                    sbI = androidx.browser.browseractions.b.i(str3, str);
                    str2 = "end stage 1\n";
                } else if (f11 - f12 < this.mStage3Duration) {
                    sbI = androidx.browser.browseractions.b.i(str3, str);
                    str2 = " stage 2\n";
                } else {
                    sbI = androidx.browser.browseractions.b.i(str3, str);
                    str2 = " end stage 2\n";
                }
            }
        }
        sbI.append(str2);
        return sbI.toString();
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f) {
        float fCalcY = calcY(f);
        this.mLastPosition = f;
        return this.mBackwards ? this.mStartPosition - fCalcY : this.mStartPosition + fCalcY;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity() {
        return this.mBackwards ? -getVelocity(this.mLastPosition) : getVelocity(this.mLastPosition);
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity(float f) {
        float f10;
        float f11;
        float f12 = this.mStage1Duration;
        if (f <= f12) {
            f10 = this.mStage1Velocity;
            f11 = this.mStage2Velocity;
        } else {
            int r12 = this.mNumberOfStages;
            if (r12 == 1) {
                return 0.0f;
            }
            f -= f12;
            f12 = this.mStage2Duration;
            if (f >= f12) {
                if (r12 == 2) {
                    return this.mStage2EndPosition;
                }
                float f13 = f - f12;
                float f14 = this.mStage3Duration;
                if (f13 >= f14) {
                    return this.mStage3EndPosition;
                }
                float f15 = this.mStage3Velocity;
                return f15 - ((f13 * f15) / f14);
            }
            f10 = this.mStage2Velocity;
            f11 = this.mStage3Velocity;
        }
        return (((f11 - f10) * f) / f12) + f10;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean isStopped() {
        return getVelocity() < EPSILON && Math.abs(this.mStage3EndPosition - this.mLastPosition) < EPSILON;
    }
}
