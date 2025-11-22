package com.google.android.material.transition.platform;

import android.graphics.RectF;
import android.support.v4.media.a;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes2.dex */
class FitModeEvaluators {
    private static final FitModeEvaluator WIDTH = new FitModeEvaluator() { // from class: com.google.android.material.transition.platform.FitModeEvaluators.1
        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        public void applyMask(RectF rectF, float f, FitModeResult fitModeResult) {
            rectF.bottom -= Math.abs(fitModeResult.currentEndHeight - fitModeResult.currentStartHeight) * f;
        }

        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        public FitModeResult evaluate(float f, float f10, float f11, float f12, float f13, float f14, float f15) {
            float fLerp = TransitionUtils.lerp(f12, f14, f10, f11, f, true);
            float f16 = fLerp / f12;
            float f17 = fLerp / f14;
            return new FitModeResult(f16, f17, fLerp, f13 * f16, fLerp, f15 * f17);
        }

        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        public boolean shouldMaskStartBounds(FitModeResult fitModeResult) {
            return fitModeResult.currentStartHeight > fitModeResult.currentEndHeight;
        }
    };
    private static final FitModeEvaluator HEIGHT = new FitModeEvaluator() { // from class: com.google.android.material.transition.platform.FitModeEvaluators.2
        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        public void applyMask(RectF rectF, float f, FitModeResult fitModeResult) {
            float fAbs = (Math.abs(fitModeResult.currentEndWidth - fitModeResult.currentStartWidth) / 2.0f) * f;
            rectF.left += fAbs;
            rectF.right -= fAbs;
        }

        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        public FitModeResult evaluate(float f, float f10, float f11, float f12, float f13, float f14, float f15) {
            float fLerp = TransitionUtils.lerp(f13, f15, f10, f11, f, true);
            float f16 = fLerp / f13;
            float f17 = fLerp / f15;
            return new FitModeResult(f16, f17, f12 * f16, fLerp, f14 * f17, fLerp);
        }

        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        public boolean shouldMaskStartBounds(FitModeResult fitModeResult) {
            return fitModeResult.currentStartWidth > fitModeResult.currentEndWidth;
        }
    };

    private FitModeEvaluators() {
    }

    public static FitModeEvaluator get(int r02, boolean z10, RectF rectF, RectF rectF2) {
        if (r02 == 0) {
            return shouldAutoFitToWidth(z10, rectF, rectF2) ? WIDTH : HEIGHT;
        }
        if (r02 == 1) {
            return WIDTH;
        }
        if (r02 == 2) {
            return HEIGHT;
        }
        throw new IllegalArgumentException(a.d("Invalid fit mode: ", r02));
    }

    private static boolean shouldAutoFitToWidth(boolean z10, RectF rectF, RectF rectF2) {
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        float fWidth2 = rectF2.width();
        float fHeight2 = rectF2.height();
        float f = (fHeight2 * fWidth) / fWidth2;
        float f10 = (fWidth2 * fHeight) / fWidth;
        if (z10) {
            if (f >= fHeight) {
                return true;
            }
        } else if (f10 >= fHeight2) {
            return true;
        }
        return false;
    }
}
