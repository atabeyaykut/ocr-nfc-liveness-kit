package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class EdgeTreatment {
    public boolean forceIntersection() {
        return false;
    }

    public void getEdgePath(float f, float f10, float f11, @NonNull ShapePath shapePath) {
        shapePath.lineTo(f, 0.0f);
    }

    @Deprecated
    public void getEdgePath(float f, float f10, @NonNull ShapePath shapePath) {
        getEdgePath(f, f / 2.0f, f10, shapePath);
    }
}
