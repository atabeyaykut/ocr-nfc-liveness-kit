package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class TriangleEdgeTreatment extends EdgeTreatment {
    private final boolean inside;
    private final float size;

    public TriangleEdgeTreatment(float f, boolean z10) {
        this.size = f;
        this.inside = z10;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f10, float f11, @NonNull ShapePath shapePath) {
        shapePath.lineTo(f10 - (this.size * f11), 0.0f);
        shapePath.lineTo(f10, (this.inside ? this.size : -this.size) * f11);
        shapePath.lineTo((this.size * f11) + f10, 0.0f);
        shapePath.lineTo(f, 0.0f);
    }
}
