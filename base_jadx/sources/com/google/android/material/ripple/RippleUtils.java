package com.google.android.material.ripple;

import android.R;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.ColorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class RippleUtils {

    @VisibleForTesting
    static final String TRANSPARENT_DEFAULT_COLOR_WARNING = "Use a non-transparent color for the default color as it will be used to finish ripple animations.";
    public static final boolean USE_FRAMEWORK_RIPPLE = true;
    private static final int[] PRESSED_STATE_SET = {R.attr.state_pressed};
    private static final int[] HOVERED_FOCUSED_STATE_SET = {R.attr.state_hovered, R.attr.state_focused};
    private static final int[] FOCUSED_STATE_SET = {R.attr.state_focused};
    private static final int[] HOVERED_STATE_SET = {R.attr.state_hovered};
    private static final int[] SELECTED_PRESSED_STATE_SET = {R.attr.state_selected, R.attr.state_pressed};
    private static final int[] SELECTED_HOVERED_FOCUSED_STATE_SET = {R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};
    private static final int[] SELECTED_FOCUSED_STATE_SET = {R.attr.state_selected, R.attr.state_focused};
    private static final int[] SELECTED_HOVERED_STATE_SET = {R.attr.state_selected, R.attr.state_hovered};
    private static final int[] SELECTED_STATE_SET = {R.attr.state_selected};
    private static final int[] ENABLED_PRESSED_STATE_SET = {R.attr.state_enabled, R.attr.state_pressed};

    @VisibleForTesting
    static final String LOG_TAG = "RippleUtils";

    private RippleUtils() {
    }

    @NonNull
    public static ColorStateList convertToRippleDrawableColor(@Nullable ColorStateList colorStateList) {
        if (USE_FRAMEWORK_RIPPLE) {
            return new ColorStateList(new int[][]{SELECTED_STATE_SET, StateSet.NOTHING}, new int[]{getColorForState(colorStateList, SELECTED_PRESSED_STATE_SET), getColorForState(colorStateList, PRESSED_STATE_SET)});
        }
        int[] r52 = SELECTED_PRESSED_STATE_SET;
        int[] r53 = SELECTED_HOVERED_FOCUSED_STATE_SET;
        int[] r22 = SELECTED_FOCUSED_STATE_SET;
        int[] r12 = SELECTED_HOVERED_STATE_SET;
        int[] r13 = PRESSED_STATE_SET;
        int[] r14 = HOVERED_FOCUSED_STATE_SET;
        int[] r15 = FOCUSED_STATE_SET;
        int[] r16 = HOVERED_STATE_SET;
        return new ColorStateList(new int[][]{r52, r53, r22, r12, SELECTED_STATE_SET, r13, r14, r15, r16, StateSet.NOTHING}, new int[]{getColorForState(colorStateList, r52), getColorForState(colorStateList, r53), getColorForState(colorStateList, r22), getColorForState(colorStateList, r12), 0, getColorForState(colorStateList, r13), getColorForState(colorStateList, r14), getColorForState(colorStateList, r15), getColorForState(colorStateList, r16), 0});
    }

    @ColorInt
    @TargetApi(21)
    private static int doubleAlpha(@ColorInt int r22) {
        return ColorUtils.setAlphaComponent(r22, Math.min(Color.alpha(r22) * 2, 255));
    }

    @ColorInt
    private static int getColorForState(@Nullable ColorStateList colorStateList, int[] r22) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(r22, colorStateList.getDefaultColor()) : 0;
        return USE_FRAMEWORK_RIPPLE ? doubleAlpha(colorForState) : colorForState;
    }

    @NonNull
    public static ColorStateList sanitizeRippleDrawableColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        int r12 = Build.VERSION.SDK_INT;
        if (r12 >= 22 && r12 <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(ENABLED_PRESSED_STATE_SET, 0)) != 0) {
            Log.w(LOG_TAG, TRANSPARENT_DEFAULT_COLOR_WARNING);
        }
        return colorStateList;
    }

    public static boolean shouldDrawRippleCompat(@NonNull int[] r82) {
        boolean z10 = false;
        boolean z11 = false;
        for (int r6 : r82) {
            if (r6 == 16842910) {
                z10 = true;
            } else if (r6 == 16842908 || r6 == 16842919 || r6 == 16843623) {
                z11 = true;
            }
        }
        return z10 && z11;
    }
}
