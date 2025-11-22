package com.google.android.material.bottomappbar;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.a;
import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.ShapePath;

/* loaded from: classes2.dex */
public class BottomAppBarTopEdgeTreatment extends EdgeTreatment implements Cloneable {
    private static final int ANGLE_LEFT = 180;
    private static final int ANGLE_UP = 270;
    private static final int ARC_HALF = 180;
    private static final int ARC_QUARTER = 90;
    private static final float ROUNDED_CORNER_FAB_OFFSET = 1.75f;
    private float cradleVerticalOffset;
    private float fabCornerSize = -1.0f;
    private float fabDiameter;
    private float fabMargin;
    private float horizontalOffset;
    private float roundedCornerRadius;

    public BottomAppBarTopEdgeTreatment(float f, float f10, float f11) {
        this.fabMargin = f;
        this.roundedCornerRadius = f10;
        setCradleVerticalOffset(f11);
        this.horizontalOffset = 0.0f;
    }

    public float getCradleVerticalOffset() {
        return this.cradleVerticalOffset;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f10, float f11, @NonNull ShapePath shapePath) {
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20 = this.fabDiameter;
        if (f20 == 0.0f) {
            shapePath.lineTo(f, 0.0f);
            return;
        }
        float f21 = ((this.fabMargin * 2.0f) + f20) / 2.0f;
        float f22 = f11 * this.roundedCornerRadius;
        float f23 = f10 + this.horizontalOffset;
        float fD = a.d(1.0f, f11, f21, this.cradleVerticalOffset * f11);
        if (fD / f21 >= 1.0f) {
            shapePath.lineTo(f, 0.0f);
            return;
        }
        float f24 = this.fabCornerSize;
        float f25 = f24 * f11;
        boolean z10 = f24 == -1.0f || Math.abs((f24 * 2.0f) - f20) < 0.1f;
        if (z10) {
            f12 = 0.0f;
            f13 = fD;
        } else {
            f12 = ROUNDED_CORNER_FAB_OFFSET;
            f13 = 0.0f;
        }
        float f26 = f21 + f22;
        float f27 = f13 + f22;
        float fSqrt = (float) Math.sqrt((f26 * f26) - (f27 * f27));
        float f28 = f23 - fSqrt;
        float f29 = f23 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f27));
        float f30 = (90.0f - degrees) + f12;
        shapePath.lineTo(f28, 0.0f);
        float f31 = f22 * 2.0f;
        shapePath.addArc(f28 - f22, 0.0f, f28 + f22, f31, 270.0f, degrees);
        if (z10) {
            f14 = f23 - f21;
            f15 = (-f21) - f13;
            f19 = 180.0f - f30;
            f16 = f21 - f13;
            f17 = f23 + f21;
            f18 = (f30 * 2.0f) - 180.0f;
        } else {
            float f32 = this.fabMargin;
            float f33 = f25 * 2.0f;
            float f34 = f23 - f21;
            shapePath.addArc(f34, -(f25 + f32), f34 + f32 + f33, f32 + f25, 180.0f - f30, ((f30 * 2.0f) - 180.0f) / 2.0f);
            float f35 = f23 + f21;
            float f36 = this.fabMargin;
            shapePath.lineTo(f35 - ((f36 / 2.0f) + f25), f36 + f25);
            float f37 = this.fabMargin;
            f14 = f35 - (f33 + f37);
            f15 = -(f25 + f37);
            f16 = f37 + f25;
            f17 = f35;
            f18 = f30 - 90.0f;
            f19 = 90.0f;
        }
        shapePath.addArc(f14, f15, f17, f16, f19, f18);
        shapePath.addArc(f29 - f22, 0.0f, f29 + f22, f31, 270.0f - degrees, degrees);
        shapePath.lineTo(f, 0.0f);
    }

    public float getFabCornerRadius() {
        return this.fabCornerSize;
    }

    public float getFabCradleMargin() {
        return this.fabMargin;
    }

    public float getFabCradleRoundedCornerRadius() {
        return this.roundedCornerRadius;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getFabDiameter() {
        return this.fabDiameter;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getHorizontalOffset() {
        return this.horizontalOffset;
    }

    public void setCradleVerticalOffset(@FloatRange(from = 0.0d) float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.cradleVerticalOffset = f;
    }

    public void setFabCornerSize(float f) {
        this.fabCornerSize = f;
    }

    public void setFabCradleMargin(float f) {
        this.fabMargin = f;
    }

    public void setFabCradleRoundedCornerRadius(float f) {
        this.roundedCornerRadius = f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setFabDiameter(float f) {
        this.fabDiameter = f;
    }

    public void setHorizontalOffset(float f) {
        this.horizontalOffset = f;
    }
}
