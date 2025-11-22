package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class CornerTreatment {
    @Deprecated
    public void getCornerPath(float f, float f10, @NonNull ShapePath shapePath) {
    }

    public void getCornerPath(@NonNull ShapePath shapePath, float f, float f10, float f11) {
        getCornerPath(f, f10, shapePath);
    }

    public void getCornerPath(@NonNull ShapePath shapePath, float f, float f10, @NonNull RectF rectF, @NonNull CornerSize cornerSize) {
        getCornerPath(shapePath, f, f10, cornerSize.getCornerSize(rectF));
    }
}
