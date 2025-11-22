package androidx.core.view.animation;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;
import androidx.appcompat.graphics.drawable.a;

/* loaded from: classes.dex */
class PathInterpolatorApi14 implements Interpolator {
    private static final float PRECISION = 0.002f;
    private final float[] mX;
    private final float[] mY;

    public PathInterpolatorApi14(float f, float f10) {
        this(createQuad(f, f10));
    }

    public PathInterpolatorApi14(float f, float f10, float f11, float f12) {
        this(createCubic(f, f10, f11, f12));
    }

    public PathInterpolatorApi14(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int r22 = ((int) (length / 0.002f)) + 1;
        this.mX = new float[r22];
        this.mY = new float[r22];
        float[] fArr = new float[2];
        for (int r52 = 0; r52 < r22; r52++) {
            pathMeasure.getPosTan((r52 * length) / (r22 - 1), fArr, null);
            this.mX[r52] = fArr[0];
            this.mY[r52] = fArr[1];
        }
    }

    private static Path createCubic(float f, float f10, float f11, float f12) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f10, f11, f12, 1.0f, 1.0f);
        return path;
    }

    private static Path createQuad(float f, float f10) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f10, 1.0f, 1.0f);
        return path;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int length = this.mX.length - 1;
        int r32 = 0;
        while (length - r32 > 1) {
            int r42 = (r32 + length) / 2;
            if (f < this.mX[r42]) {
                length = r42;
            } else {
                r32 = r42;
            }
        }
        float[] fArr = this.mX;
        float f10 = fArr[length];
        float f11 = fArr[r32];
        float f12 = f10 - f11;
        if (f12 == 0.0f) {
            return this.mY[r32];
        }
        float f13 = (f - f11) / f12;
        float[] fArr2 = this.mY;
        float f14 = fArr2[r32];
        return a.d(fArr2[length], f14, f13, f14);
    }
}
