package com.google.android.material.timepicker;

import androidx.annotation.IntRange;
import androidx.annotation.StringRes;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
interface TimePickerControls {

    @Retention(RetentionPolicy.SOURCE)
    public @interface ActiveSelection {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ClockPeriod {
    }

    void setActiveSelection(int r12);

    void setHandRotation(float f);

    void setValues(String[] strArr, @StringRes int r22);

    void updateTime(int r12, int r22, @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int r32);
}
