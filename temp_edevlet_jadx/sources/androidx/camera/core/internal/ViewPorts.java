package androidx.camera.core.internal;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Rational;
import android.util.Size;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.UseCase;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.core.util.Preconditions;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.HashMap;
import java.util.Map;

@RequiresApi(21)
/* loaded from: classes.dex */
public class ViewPorts {
    private ViewPorts() {
    }

    @NonNull
    public static Map<UseCase, Rect> calculateViewPortRects(@NonNull Rect rect, boolean z10, @NonNull Rational rational, @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 359) int r11, int r12, int r13, @NonNull Map<UseCase, Size> map) {
        Preconditions.checkArgument(rect.width() > 0 && rect.height() > 0, "Cannot compute viewport crop rects zero sized sensor rect.");
        RectF rectF = new RectF(rect);
        HashMap map2 = new HashMap();
        RectF rectF2 = new RectF(rect);
        for (Map.Entry<UseCase, Size> entry : map.entrySet()) {
            Matrix matrix = new Matrix();
            RectF rectF3 = new RectF(0.0f, 0.0f, entry.getValue().getWidth(), entry.getValue().getHeight());
            matrix.setRectToRect(rectF3, rectF, Matrix.ScaleToFit.CENTER);
            map2.put(entry.getKey(), matrix);
            RectF rectF4 = new RectF();
            matrix.mapRect(rectF4, rectF3);
            rectF2.intersect(rectF4);
        }
        RectF scaledRect = getScaledRect(rectF2, ImageUtil.getRotatedAspectRatio(r11, rational), r12, z10, r13, r11);
        HashMap map3 = new HashMap();
        RectF rectF5 = new RectF();
        Matrix matrix2 = new Matrix();
        for (Map.Entry entry2 : map2.entrySet()) {
            ((Matrix) entry2.getValue()).invert(matrix2);
            matrix2.mapRect(rectF5, scaledRect);
            Rect rect2 = new Rect();
            rectF5.round(rect2);
            map3.put((UseCase) entry2.getKey(), rect2);
        }
        return map3;
    }

    private static RectF correctStartOrEnd(boolean z10, @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 359) int r72, RectF rectF, RectF rectF2) {
        boolean z11 = r72 == 0 && !z10;
        boolean z12 = r72 == 90 && z10;
        if (z11 || z12) {
            return rectF2;
        }
        boolean z13 = r72 == 0 && z10;
        boolean z14 = r72 == 270 && !z10;
        if (z13 || z14) {
            return flipHorizontally(rectF2, rectF.centerX());
        }
        boolean z15 = r72 == 90 && !z10;
        boolean z16 = r72 == 180 && z10;
        if (z15 || z16) {
            return flipVertically(rectF2, rectF.centerY());
        }
        boolean z17 = r72 == 180 && !z10;
        boolean z18 = r72 == 270 && z10;
        if (z17 || z18) {
            return flipHorizontally(flipVertically(rectF2, rectF.centerY()), rectF.centerX());
        }
        throw new IllegalArgumentException("Invalid argument: mirrored " + z10 + " rotation " + r72);
    }

    private static RectF flipHorizontally(RectF rectF, float f) {
        return new RectF(flipX(rectF.right, f), rectF.top, flipX(rectF.left, f), rectF.bottom);
    }

    private static RectF flipVertically(RectF rectF, float f) {
        return new RectF(rectF.left, flipY(rectF.bottom, f), rectF.right, flipY(rectF.top, f));
    }

    private static float flipX(float f, float f10) {
        return (f10 + f10) - f;
    }

    private static float flipY(float f, float f10) {
        return (f10 + f10) - f;
    }

    @NonNull
    @SuppressLint({"SwitchIntDef"})
    public static RectF getScaledRect(@NonNull RectF rectF, @NonNull Rational rational, int r6, boolean z10, int r82, @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 359) int r92) {
        Matrix.ScaleToFit scaleToFit;
        if (r6 == 3) {
            return rectF;
        }
        Matrix matrix = new Matrix();
        RectF rectF2 = new RectF(0.0f, 0.0f, rational.getNumerator(), rational.getDenominator());
        if (r6 == 0) {
            scaleToFit = Matrix.ScaleToFit.START;
        } else if (r6 == 1) {
            scaleToFit = Matrix.ScaleToFit.CENTER;
        } else {
            if (r6 != 2) {
                throw new IllegalStateException(android.support.v4.media.a.d("Unexpected scale type: ", r6));
            }
            scaleToFit = Matrix.ScaleToFit.END;
        }
        matrix.setRectToRect(rectF2, rectF, scaleToFit);
        RectF rectF3 = new RectF();
        matrix.mapRect(rectF3, rectF2);
        return correctStartOrEnd(shouldMirrorStartAndEnd(z10, r82), r92, rectF, rectF3);
    }

    private static boolean shouldMirrorStartAndEnd(boolean z10, int r22) {
        return z10 ^ (r22 == 1);
    }
}
