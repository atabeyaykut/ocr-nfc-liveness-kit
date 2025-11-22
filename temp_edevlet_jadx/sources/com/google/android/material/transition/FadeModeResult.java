package com.google.android.material.transition;

/* loaded from: classes2.dex */
class FadeModeResult {
    final int endAlpha;
    final boolean endOnTop;
    final int startAlpha;

    private FadeModeResult(int r12, int r22, boolean z10) {
        this.startAlpha = r12;
        this.endAlpha = r22;
        this.endOnTop = z10;
    }

    public static FadeModeResult endOnTop(int r22, int r32) {
        return new FadeModeResult(r22, r32, true);
    }

    public static FadeModeResult startOnTop(int r22, int r32) {
        return new FadeModeResult(r22, r32, false);
    }
}
