package androidx.camera.core;

import android.graphics.PointF;
import android.util.Rational;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

@RequiresApi(21)
/* loaded from: classes.dex */
public abstract class MeteringPointFactory {

    @Nullable
    private Rational mSurfaceAspectRatio;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public MeteringPointFactory() {
        this(null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public MeteringPointFactory(@Nullable Rational rational) {
        this.mSurfaceAspectRatio = rational;
    }

    public static float getDefaultPointSize() {
        return 0.15f;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public abstract PointF convertPoint(float f, float f10);

    @NonNull
    public final MeteringPoint createPoint(float f, float f10) {
        return createPoint(f, f10, getDefaultPointSize());
    }

    @NonNull
    public final MeteringPoint createPoint(float f, float f10, float f11) {
        PointF pointFConvertPoint = convertPoint(f, f10);
        return new MeteringPoint(pointFConvertPoint.x, pointFConvertPoint.y, f11, this.mSurfaceAspectRatio);
    }
}
