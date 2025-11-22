package androidx.camera.view;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

@RequiresApi(21)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class TransformUtils {
    public static final RectF NORMALIZED_RECT = new RectF(-1.0f, -1.0f, 1.0f, 1.0f);

    private TransformUtils() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @NonNull
    public static Matrix getExifTransform(int r92, int r10, int r11) {
        Matrix matrix = new Matrix();
        float f = r10;
        float f10 = r11;
        RectF rectF = new RectF(0.0f, 0.0f, f, f10);
        RectF rectF2 = NORMALIZED_RECT;
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
        boolean z10 = true;
        switch (r92) {
            case 2:
                matrix.postScale(-1.0f, 1.0f);
                z10 = false;
                break;
            case 3:
                matrix.postRotate(180.0f);
                z10 = false;
                break;
            case 4:
                matrix.postScale(1.0f, -1.0f);
                z10 = false;
                break;
            case 5:
                matrix.postScale(-1.0f, 1.0f);
                matrix.postRotate(270.0f);
                break;
            case 6:
                matrix.postRotate(90.0f);
                break;
            case 7:
                matrix.postScale(-1.0f, 1.0f);
                matrix.postRotate(90.0f);
                break;
            case 8:
                matrix.postRotate(270.0f);
                break;
            default:
                z10 = false;
                break;
        }
        if (z10) {
            rectF = new RectF(0.0f, 0.0f, f10, f);
        }
        Matrix matrix2 = new Matrix();
        matrix2.setRectToRect(rectF2, rectF, Matrix.ScaleToFit.FILL);
        matrix.postConcat(matrix2);
        return matrix;
    }

    @NonNull
    public static Matrix getNormalizedToBuffer(@NonNull Rect rect) {
        return getNormalizedToBuffer(new RectF(rect));
    }

    @NonNull
    private static Matrix getNormalizedToBuffer(@NonNull RectF rectF) {
        Matrix matrix = new Matrix();
        matrix.setRectToRect(NORMALIZED_RECT, rectF, Matrix.ScaleToFit.FILL);
        return matrix;
    }

    @NonNull
    public static Matrix getRectToRect(@NonNull RectF rectF, @NonNull RectF rectF2, int r52) {
        Matrix matrix = new Matrix();
        matrix.setRectToRect(rectF, NORMALIZED_RECT, Matrix.ScaleToFit.FILL);
        matrix.postRotate(r52);
        matrix.postConcat(getNormalizedToBuffer(rectF2));
        return matrix;
    }

    public static boolean is90or270(int r22) {
        if (r22 == 90 || r22 == 270) {
            return true;
        }
        if (r22 == 0 || r22 == 180) {
            return false;
        }
        throw new IllegalArgumentException(android.support.v4.media.a.d("Invalid rotation degrees: ", r22));
    }

    public static boolean isAspectRatioMatchingWithRoundingError(@NonNull Size size, boolean z10, @NonNull Size size2, boolean z11) {
        float width;
        float width2;
        float width3;
        float width4;
        if (z10) {
            width = size.getWidth() / size.getHeight();
            width2 = width;
        } else {
            width = (size.getWidth() + 1.0f) / (size.getHeight() - 1.0f);
            width2 = (size.getWidth() - 1.0f) / (size.getHeight() + 1.0f);
        }
        if (z11) {
            width3 = size2.getWidth() / size2.getHeight();
            width4 = width3;
        } else {
            width3 = (size2.getWidth() - 1.0f) / (size2.getHeight() + 1.0f);
            width4 = (size2.getWidth() + 1.0f) / (size2.getHeight() - 1.0f);
        }
        return width >= width3 && width4 >= width2;
    }

    public static float max(float f, float f10, float f11, float f12) {
        return Math.max(Math.max(f, f10), Math.max(f11, f12));
    }

    public static float min(float f, float f10, float f11, float f12) {
        return Math.min(Math.min(f, f10), Math.min(f11, f12));
    }

    @NonNull
    public static Size rectToSize(@NonNull Rect rect) {
        return new Size(rect.width(), rect.height());
    }

    @NonNull
    public static float[] rectToVertices(@NonNull RectF rectF) {
        float f = rectF.left;
        float f10 = rectF.top;
        float f11 = rectF.right;
        float f12 = rectF.bottom;
        return new float[]{f, f10, f11, f10, f11, f12, f, f12};
    }

    @NonNull
    public static float[] sizeToVertices(@NonNull Size size) {
        return new float[]{0.0f, 0.0f, size.getWidth(), 0.0f, size.getWidth(), size.getHeight(), 0.0f, size.getHeight()};
    }

    public static int surfaceRotationToRotationDegrees(int r22) {
        if (r22 == 0) {
            return 0;
        }
        if (r22 == 1) {
            return 90;
        }
        if (r22 == 2) {
            return 180;
        }
        if (r22 == 3) {
            return 270;
        }
        throw new IllegalStateException(android.support.v4.media.a.d("Unexpected rotation value ", r22));
    }

    @NonNull
    public static RectF verticesToRect(@NonNull float[] fArr) {
        return new RectF(min(fArr[0], fArr[2], fArr[4], fArr[6]), min(fArr[1], fArr[3], fArr[5], fArr[7]), max(fArr[0], fArr[2], fArr[4], fArr[6]), max(fArr[1], fArr[3], fArr[5], fArr[7]));
    }
}
