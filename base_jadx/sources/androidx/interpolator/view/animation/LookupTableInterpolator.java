package androidx.interpolator.view.animation;

import android.view.animation.Interpolator;
import androidx.appcompat.graphics.drawable.a;

/* loaded from: classes.dex */
abstract class LookupTableInterpolator implements Interpolator {
    private final float mStepSize;
    private final float[] mValues;

    public LookupTableInterpolator(float[] fArr) {
        this.mValues = fArr;
        this.mStepSize = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.mValues;
        int r02 = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f10 = this.mStepSize;
        float f11 = (f - (r02 * f10)) / f10;
        float[] fArr2 = this.mValues;
        float f12 = fArr2[r02];
        return a.d(fArr2[r02 + 1], f12, f11, f12);
    }
}
