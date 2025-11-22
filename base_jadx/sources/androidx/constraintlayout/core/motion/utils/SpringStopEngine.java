package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes.dex */
public class SpringStopEngine implements StopEngine {
    private static final double UNSET = Double.MAX_VALUE;
    private float mLastTime;
    private double mLastVelocity;
    private float mMass;
    private float mPos;
    private double mStiffness;
    private float mStopThreshold;
    private double mTargetPos;
    private float mV;
    double mDamping = 0.5d;
    private boolean mInitialized = false;
    private int mBoundaryMode = 0;

    private void compute(double d10) {
        double d11 = this.mStiffness;
        double d12 = this.mDamping;
        int r52 = (int) ((9.0d / ((Math.sqrt(d11 / this.mMass) * d10) * 4.0d)) + 1.0d);
        double d13 = d10 / r52;
        int r82 = 0;
        while (r82 < r52) {
            float f = this.mPos;
            double d14 = this.mTargetPos;
            float f10 = this.mV;
            double d15 = d11;
            double d16 = ((-d11) * (f - d14)) - (f10 * d12);
            float f11 = this.mMass;
            double d17 = d12;
            double d18 = (((d16 / f11) * d13) / 2.0d) + f10;
            double d19 = ((((-((((d13 * d18) / 2.0d) + f) - d14)) * d15) - (d18 * d17)) / f11) * d13;
            float f12 = (float) (f10 + d19);
            this.mV = f12;
            float f13 = (float) ((((d19 / 2.0d) + f10) * d13) + f);
            this.mPos = f13;
            int r32 = this.mBoundaryMode;
            if (r32 > 0) {
                if (f13 < 0.0f && (r32 & 1) == 1) {
                    this.mPos = -f13;
                    this.mV = -f12;
                }
                float f14 = this.mPos;
                if (f14 > 1.0f && (r32 & 2) == 2) {
                    this.mPos = 2.0f - f14;
                    this.mV = -this.mV;
                }
            }
            r82++;
            d11 = d15;
            d12 = d17;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public String debug(String str, float f) {
        return null;
    }

    public float getAcceleration() {
        return ((float) (((-this.mStiffness) * (this.mPos - this.mTargetPos)) - (this.mDamping * this.mV))) / this.mMass;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f) {
        compute(f - this.mLastTime);
        this.mLastTime = f;
        return this.mPos;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity() {
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity(float f) {
        return this.mV;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean isStopped() {
        double d10 = this.mPos - this.mTargetPos;
        double d11 = this.mStiffness;
        double d12 = this.mV;
        return Math.sqrt((((d11 * d10) * d10) + ((d12 * d12) * ((double) this.mMass))) / d11) <= ((double) this.mStopThreshold);
    }

    public void log(String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "() ";
        System.out.println(str2 + str);
    }

    public void springConfig(float f, float f10, float f11, float f12, float f13, float f14, float f15, int r10) {
        this.mTargetPos = f10;
        this.mDamping = f14;
        this.mInitialized = false;
        this.mPos = f;
        this.mLastVelocity = f11;
        this.mStiffness = f13;
        this.mMass = f12;
        this.mStopThreshold = f15;
        this.mBoundaryMode = r10;
        this.mLastTime = 0.0f;
    }
}
