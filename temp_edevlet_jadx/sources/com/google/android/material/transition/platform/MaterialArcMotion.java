package com.google.android.material.transition.platform;

import android.graphics.Path;
import android.graphics.PointF;
import android.transition.PathMotion;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes2.dex */
public final class MaterialArcMotion extends PathMotion {
    private static PointF getControlPoint(float f, float f10, float f11, float f12) {
        return f10 > f12 ? new PointF(f11, f10) : new PointF(f, f12);
    }

    @Override // android.transition.PathMotion
    @NonNull
    public Path getPath(float f, float f10, float f11, float f12) {
        Path path = new Path();
        path.moveTo(f, f10);
        PointF controlPoint = getControlPoint(f, f10, f11, f12);
        path.quadTo(controlPoint.x, controlPoint.y, f11, f12);
        return path;
    }
}
