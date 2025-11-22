package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class CutCornerTreatment extends CornerTreatment {
    float size;

    public CutCornerTreatment() {
        this.size = -1.0f;
    }

    @Deprecated
    public CutCornerTreatment(float f) {
        this.size = f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(@NonNull ShapePath shapePath, float f, float f10, float f11) {
        shapePath.reset(0.0f, f11 * f10, 180.0f, 180.0f - f);
        double d10 = f11;
        double d11 = f10;
        shapePath.lineTo((float) (Math.sin(Math.toRadians(f)) * d10 * d11), (float) (Math.sin(Math.toRadians(90.0f - f)) * d10 * d11));
    }
}
