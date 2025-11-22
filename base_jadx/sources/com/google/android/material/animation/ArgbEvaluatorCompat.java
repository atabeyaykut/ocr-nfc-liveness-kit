package com.google.android.material.animation;

import android.animation.TypeEvaluator;
import androidx.annotation.NonNull;
import androidx.appcompat.graphics.drawable.a;

/* loaded from: classes2.dex */
public class ArgbEvaluatorCompat implements TypeEvaluator<Integer> {
    private static final ArgbEvaluatorCompat instance = new ArgbEvaluatorCompat();

    @NonNull
    public static ArgbEvaluatorCompat getInstance() {
        return instance;
    }

    @Override // android.animation.TypeEvaluator
    @NonNull
    public Integer evaluate(float f, Integer num, Integer num2) {
        int r13 = num.intValue();
        float f10 = ((r13 >> 24) & 255) / 255.0f;
        int r14 = num2.intValue();
        float f11 = ((r14 >> 24) & 255) / 255.0f;
        float fPow = (float) Math.pow(((r13 >> 16) & 255) / 255.0f, 2.2d);
        float fPow2 = (float) Math.pow(((r13 >> 8) & 255) / 255.0f, 2.2d);
        float fPow3 = (float) Math.pow((r13 & 255) / 255.0f, 2.2d);
        float fPow4 = (float) Math.pow(((r14 >> 16) & 255) / 255.0f, 2.2d);
        float fPow5 = (float) Math.pow(((r14 >> 8) & 255) / 255.0f, 2.2d);
        float fPow6 = (float) Math.pow((r14 & 255) / 255.0f, 2.2d);
        float fD = a.d(f11, f10, f, f10);
        float fD2 = a.d(fPow4, fPow, f, fPow);
        float fD3 = a.d(fPow5, fPow2, f, fPow2);
        float fD4 = a.d(fPow6, fPow3, f, fPow3);
        float fPow7 = ((float) Math.pow(fD2, 0.45454545454545453d)) * 255.0f;
        float fPow8 = ((float) Math.pow(fD3, 0.45454545454545453d)) * 255.0f;
        return Integer.valueOf(Math.round(((float) Math.pow(fD4, 0.45454545454545453d)) * 255.0f) | (Math.round(fPow7) << 16) | (Math.round(fD * 255.0f) << 24) | (Math.round(fPow8) << 8));
    }
}
