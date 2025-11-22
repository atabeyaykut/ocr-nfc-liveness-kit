package com.google.android.material.transition;

import androidx.appcompat.graphics.drawable.a;

/* loaded from: classes2.dex */
class FadeModeEvaluators {
    private static final FadeModeEvaluator IN = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.1
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f, float f10, float f11, float f12) {
            return FadeModeResult.endOnTop(255, TransitionUtils.lerp(0, 255, f10, f11, f));
        }
    };
    private static final FadeModeEvaluator OUT = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.2
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f, float f10, float f11, float f12) {
            return FadeModeResult.startOnTop(TransitionUtils.lerp(255, 0, f10, f11, f), 255);
        }
    };
    private static final FadeModeEvaluator CROSS = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.3
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f, float f10, float f11, float f12) {
            return FadeModeResult.startOnTop(TransitionUtils.lerp(255, 0, f10, f11, f), TransitionUtils.lerp(0, 255, f10, f11, f));
        }
    };
    private static final FadeModeEvaluator THROUGH = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.4
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f, float f10, float f11, float f12) {
            float fD = a.d(f11, f10, f12, f10);
            return FadeModeResult.startOnTop(TransitionUtils.lerp(255, 0, f10, fD, f), TransitionUtils.lerp(0, 255, fD, f11, f));
        }
    };

    private FadeModeEvaluators() {
    }

    public static FadeModeEvaluator get(int r12, boolean z10) {
        if (r12 == 0) {
            return z10 ? IN : OUT;
        }
        if (r12 == 1) {
            return z10 ? OUT : IN;
        }
        if (r12 == 2) {
            return CROSS;
        }
        if (r12 == 3) {
            return THROUGH;
        }
        throw new IllegalArgumentException(android.support.v4.media.a.d("Invalid fade mode: ", r12));
    }
}
