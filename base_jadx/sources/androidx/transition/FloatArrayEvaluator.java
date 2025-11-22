package androidx.transition;

import android.animation.TypeEvaluator;
import androidx.appcompat.graphics.drawable.a;

/* loaded from: classes.dex */
class FloatArrayEvaluator implements TypeEvaluator<float[]> {
    private float[] mArray;

    public FloatArrayEvaluator(float[] fArr) {
        this.mArray = fArr;
    }

    @Override // android.animation.TypeEvaluator
    public float[] evaluate(float f, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.mArray;
        if (fArr3 == null) {
            fArr3 = new float[fArr.length];
        }
        for (int r12 = 0; r12 < fArr3.length; r12++) {
            float f10 = fArr[r12];
            fArr3[r12] = a.d(fArr2[r12], f10, f, f10);
        }
        return fArr3;
    }
}
