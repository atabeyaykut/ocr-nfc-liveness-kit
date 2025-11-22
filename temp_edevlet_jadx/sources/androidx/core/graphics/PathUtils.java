package androidx.core.graphics;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.DoNotInline;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes.dex */
public final class PathUtils {

    @RequiresApi(26)
    public static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        public static float[] approximate(Path path, float f) {
            return path.approximate(f);
        }
    }

    private PathUtils() {
    }

    @NonNull
    @RequiresApi(26)
    public static Collection<PathSegment> flatten(@NonNull Path path) {
        return flatten(path, 0.5f);
    }

    @NonNull
    @RequiresApi(26)
    public static Collection<PathSegment> flatten(@NonNull Path path, @FloatRange(from = 0.0d) float f) {
        float[] fArrApproximate = Api26Impl.approximate(path, f);
        int length = fArrApproximate.length / 3;
        ArrayList arrayList = new ArrayList(length);
        for (int r12 = 1; r12 < length; r12++) {
            int r22 = r12 * 3;
            int r32 = (r12 - 1) * 3;
            float f10 = fArrApproximate[r22];
            float f11 = fArrApproximate[r22 + 1];
            float f12 = fArrApproximate[r22 + 2];
            float f13 = fArrApproximate[r32];
            float f14 = fArrApproximate[r32 + 1];
            float f15 = fArrApproximate[r32 + 2];
            if (f10 != f13 && (f11 != f14 || f12 != f15)) {
                arrayList.add(new PathSegment(new PointF(f14, f15), f13, new PointF(f11, f12), f10));
            }
        }
        return arrayList;
    }
}
