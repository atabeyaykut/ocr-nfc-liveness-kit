package androidx.core.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class PathInterpolatorCompat {

    @RequiresApi(21)
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        public static PathInterpolator createPathInterpolator(float f, float f10) {
            return new PathInterpolator(f, f10);
        }

        @DoNotInline
        public static PathInterpolator createPathInterpolator(float f, float f10, float f11, float f12) {
            return new PathInterpolator(f, f10, f11, f12);
        }

        @DoNotInline
        public static PathInterpolator createPathInterpolator(Path path) {
            return new PathInterpolator(path);
        }
    }

    private PathInterpolatorCompat() {
    }

    @NonNull
    public static Interpolator create(float f, float f10) {
        return Api21Impl.createPathInterpolator(f, f10);
    }

    @NonNull
    public static Interpolator create(float f, float f10, float f11, float f12) {
        return Api21Impl.createPathInterpolator(f, f10, f11, f12);
    }

    @NonNull
    public static Interpolator create(@NonNull Path path) {
        return Api21Impl.createPathInterpolator(path);
    }
}
