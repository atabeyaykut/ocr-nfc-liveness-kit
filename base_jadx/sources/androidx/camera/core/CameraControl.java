package androidx.camera.core;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

@RequiresApi(21)
/* loaded from: classes.dex */
public interface CameraControl {

    public static final class OperationCanceledException extends Exception {
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public OperationCanceledException(@NonNull String str) {
            super(str);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public OperationCanceledException(@NonNull String str, @NonNull Throwable th2) {
            super(str, th2);
        }
    }

    @NonNull
    m5.a<Void> cancelFocusAndMetering();

    @NonNull
    m5.a<Void> enableTorch(boolean z10);

    @NonNull
    m5.a<Integer> setExposureCompensationIndex(int r12);

    @NonNull
    m5.a<Void> setLinearZoom(@FloatRange(from = 0.0d, to = 1.0d) float f);

    @NonNull
    m5.a<Void> setZoomRatio(float f);

    @NonNull
    m5.a<FocusMeteringResult> startFocusAndMetering(@NonNull FocusMeteringAction focusMeteringAction);
}
