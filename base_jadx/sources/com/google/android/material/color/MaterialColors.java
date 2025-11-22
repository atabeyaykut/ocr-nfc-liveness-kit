package com.google.android.material.color;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.transformation.FabTransformationScrimBehavior;

/* loaded from: classes2.dex */
public class MaterialColors {
    public static final float ALPHA_DISABLED = 0.38f;
    public static final float ALPHA_DISABLED_LOW = 0.12f;
    public static final float ALPHA_FULL = 1.0f;
    public static final float ALPHA_LOW = 0.32f;
    public static final float ALPHA_MEDIUM = 0.54f;

    private MaterialColors() {
    }

    @ColorInt
    public static int compositeARGBWithAlpha(@ColorInt int r12, @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 255) int r22) {
        return ColorUtils.setAlphaComponent(r12, (Color.alpha(r12) * r22) / 255);
    }

    @ColorInt
    public static int getColor(@NonNull Context context, @AttrRes int r12, @ColorInt int r22) {
        TypedValue typedValueResolve = MaterialAttributes.resolve(context, r12);
        return typedValueResolve != null ? typedValueResolve.data : r22;
    }

    @ColorInt
    public static int getColor(Context context, @AttrRes int r12, String str) {
        return MaterialAttributes.resolveOrThrow(context, r12, str);
    }

    @ColorInt
    public static int getColor(@NonNull View view, @AttrRes int r12) {
        return MaterialAttributes.resolveOrThrow(view, r12);
    }

    @ColorInt
    public static int getColor(@NonNull View view, @AttrRes int r12, @ColorInt int r22) {
        return getColor(view.getContext(), r12, r22);
    }

    public static boolean isColorLight(@ColorInt int r42) {
        return r42 != 0 && ColorUtils.calculateLuminance(r42) > 0.5d;
    }

    @ColorInt
    public static int layer(@ColorInt int r02, @ColorInt int r12) {
        return ColorUtils.compositeColors(r12, r02);
    }

    @ColorInt
    public static int layer(@ColorInt int r12, @ColorInt int r22, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        return layer(r12, ColorUtils.setAlphaComponent(r22, Math.round(Color.alpha(r22) * f)));
    }

    @ColorInt
    public static int layer(@NonNull View view, @AttrRes int r22, @AttrRes int r32) {
        return layer(view, r22, r32, 1.0f);
    }

    @ColorInt
    public static int layer(@NonNull View view, @AttrRes int r12, @AttrRes int r22, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        return layer(getColor(view, r12), getColor(view, r22), f);
    }
}
