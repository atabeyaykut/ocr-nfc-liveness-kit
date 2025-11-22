package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class RoundedCornerTreatment extends CornerTreatment {
    float radius;

    public RoundedCornerTreatment() {
        this.radius = -1.0f;
    }

    @Deprecated
    public RoundedCornerTreatment(float f) {
        this.radius = f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(@NonNull ShapePath shapePath, float f, float f10, float f11) {
        shapePath.reset(0.0f, f11 * f10, 180.0f, 180.0f - f);
        float f12 = f11 * 2.0f * f10;
        shapePath.addArc(0.0f, 0.0f, f12, f12, 180.0f, f);
    }
}
