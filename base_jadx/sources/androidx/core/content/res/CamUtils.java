package androidx.core.content.res;

import android.graphics.Color;
import androidx.annotation.NonNull;
import androidx.appcompat.graphics.drawable.a;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
final class CamUtils {
    static final float[][] XYZ_TO_CAM16RGB = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};
    static final float[][] CAM16RGB_TO_XYZ = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};
    static final float[] WHITE_POINT_D65 = {95.047f, 100.0f, 108.883f};
    static final float[][] SRGB_TO_XYZ = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};

    private CamUtils() {
    }

    public static int intFromLStar(float f) {
        if (f < 1.0f) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        if (f > 99.0f) {
            return -1;
        }
        float f10 = (f + 16.0f) / 116.0f;
        float f11 = (f > 8.0f ? 1 : (f == 8.0f ? 0 : -1)) > 0 ? f10 * f10 * f10 : f / 903.2963f;
        float f12 = f10 * f10 * f10;
        boolean z10 = f12 > 0.008856452f;
        float f13 = z10 ? f12 : ((f10 * 116.0f) - 16.0f) / 903.2963f;
        if (!z10) {
            f12 = ((f10 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = WHITE_POINT_D65;
        return ColorUtils.XYZToColor(f13 * fArr[0], f11 * fArr[1], f12 * fArr[2]);
    }

    public static float lStarFromInt(int r02) {
        return lStarFromY(yFromInt(r02));
    }

    public static float lStarFromY(float f) {
        float f10 = f / 100.0f;
        return f10 <= 0.008856452f ? f10 * 903.2963f : (((float) Math.cbrt(f10)) * 116.0f) - 16.0f;
    }

    public static float lerp(float f, float f10, float f11) {
        return a.d(f10, f, f11, f);
    }

    public static float linearized(int r6) {
        float f = r6 / 255.0f;
        return (f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    @NonNull
    public static float[] xyzFromInt(int r10) {
        float fLinearized = linearized(Color.red(r10));
        float fLinearized2 = linearized(Color.green(r10));
        float fLinearized3 = linearized(Color.blue(r10));
        float[][] fArr = SRGB_TO_XYZ;
        float[] fArr2 = fArr[0];
        float f = (fArr2[2] * fLinearized3) + (fArr2[1] * fLinearized2) + (fArr2[0] * fLinearized);
        float[] fArr3 = fArr[1];
        float f10 = (fArr3[2] * fLinearized3) + (fArr3[1] * fLinearized2) + (fArr3[0] * fLinearized);
        float[] fArr4 = fArr[2];
        return new float[]{f, f10, (fLinearized3 * fArr4[2]) + (fLinearized2 * fArr4[1]) + (fLinearized * fArr4[0])};
    }

    public static float yFromInt(int r52) {
        float fLinearized = linearized(Color.red(r52));
        float fLinearized2 = linearized(Color.green(r52));
        float fLinearized3 = linearized(Color.blue(r52));
        float[] fArr = SRGB_TO_XYZ[1];
        return (fLinearized3 * fArr[2]) + (fLinearized2 * fArr[1]) + (fLinearized * fArr[0]);
    }

    public static float yFromLStar(float f) {
        return (f > 8.0f ? (float) Math.pow((f + 16.0d) / 116.0d, 3.0d) : f / 903.2963f) * 100.0f;
    }
}
