package androidx.camera.camera2.internal;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.util.Range;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.core.CameraControl;
import androidx.camera.core.ExposureState;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import java.util.concurrent.Executor;

@RequiresApi(21)
/* loaded from: classes.dex */
public class ExposureControl {
    private static final int DEFAULT_EXPOSURE_COMPENSATION = 0;

    @NonNull
    private final Camera2CameraControlImpl mCameraControl;

    @NonNull
    private final Executor mExecutor;

    @NonNull
    private final ExposureStateImpl mExposureStateImpl;
    private boolean mIsActive = false;

    @Nullable
    private Camera2CameraControlImpl.CaptureResultListener mRunningCaptureResultListener;

    @Nullable
    private CallbackToFutureAdapter.Completer<Integer> mRunningCompleter;

    public ExposureControl(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, @NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull Executor executor) {
        this.mCameraControl = camera2CameraControlImpl;
        this.mExposureStateImpl = new ExposureStateImpl(cameraCharacteristicsCompat, 0);
        this.mExecutor = executor;
    }

    private void clearRunningTask() {
        CallbackToFutureAdapter.Completer<Integer> completer = this.mRunningCompleter;
        if (completer != null) {
            completer.setException(new CameraControl.OperationCanceledException("Cancelled by another setExposureCompensationIndex()"));
            this.mRunningCompleter = null;
        }
        Camera2CameraControlImpl.CaptureResultListener captureResultListener = this.mRunningCaptureResultListener;
        if (captureResultListener != null) {
            this.mCameraControl.removeCaptureResultListener(captureResultListener);
            this.mRunningCaptureResultListener = null;
        }
    }

    public static ExposureState getDefaultExposureState(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        return new ExposureStateImpl(cameraCharacteristicsCompat, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$setExposureCompensationIndex$0(int r32, CallbackToFutureAdapter.Completer completer, TotalCaptureResult totalCaptureResult) {
        Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
        Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION);
        if (num != null && num2 != null) {
            int r02 = num.intValue();
            if ((r02 != 2 && r02 != 3 && r02 != 4) || num2.intValue() != r32) {
                return false;
            }
        } else if (num2 == null || num2.intValue() != r32) {
            return false;
        }
        completer.set(Integer.valueOf(r32));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setExposureCompensationIndex$1(final CallbackToFutureAdapter.Completer completer, final int r6) {
        if (!this.mIsActive) {
            this.mExposureStateImpl.setExposureCompensationIndex(0);
            completer.setException(new CameraControl.OperationCanceledException("Camera is not active."));
            return;
        }
        clearRunningTask();
        Preconditions.checkState(this.mRunningCompleter == null, "mRunningCompleter should be null when starting set a new exposure compensation value");
        Preconditions.checkState(this.mRunningCaptureResultListener == null, "mRunningCaptureResultListener should be null when starting set a new exposure compensation value");
        Camera2CameraControlImpl.CaptureResultListener captureResultListener = new Camera2CameraControlImpl.CaptureResultListener() { // from class: androidx.camera.camera2.internal.r0
            @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
            public final boolean onCaptureResult(TotalCaptureResult totalCaptureResult) {
                return ExposureControl.lambda$setExposureCompensationIndex$0(r6, completer, totalCaptureResult);
            }
        };
        this.mRunningCaptureResultListener = captureResultListener;
        this.mRunningCompleter = completer;
        this.mCameraControl.addCaptureResultListener(captureResultListener);
        this.mCameraControl.updateSessionConfigSynchronous();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$setExposureCompensationIndex$2(final int r32, final CallbackToFutureAdapter.Completer completer) throws Exception {
        this.mExecutor.execute(new Runnable() { // from class: androidx.camera.camera2.internal.p0
            @Override // java.lang.Runnable
            public final void run() {
                this.lambda$setExposureCompensationIndex$1(completer, r32);
            }
        });
        return androidx.browser.browseractions.a.b(new StringBuilder("setExposureCompensationIndex["), r32, "]");
    }

    @NonNull
    public ExposureState getExposureState() {
        return this.mExposureStateImpl;
    }

    public void setActive(boolean z10) {
        if (z10 == this.mIsActive) {
            return;
        }
        this.mIsActive = z10;
        if (z10) {
            return;
        }
        this.mExposureStateImpl.setExposureCompensationIndex(0);
        clearRunningTask();
    }

    public void setCaptureRequestOption(@NonNull Camera2ImplConfig.Builder builder) {
        builder.setCaptureRequestOption(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, Integer.valueOf(this.mExposureStateImpl.getExposureCompensationIndex()));
    }

    @NonNull
    public m5.a<Integer> setExposureCompensationIndex(final int r52) {
        if (!this.mExposureStateImpl.isExposureCompensationSupported()) {
            return Futures.immediateFailedFuture(new IllegalArgumentException("ExposureCompensation is not supported"));
        }
        Range<Integer> exposureCompensationRange = this.mExposureStateImpl.getExposureCompensationRange();
        if (exposureCompensationRange.contains((Range<Integer>) Integer.valueOf(r52))) {
            this.mExposureStateImpl.setExposureCompensationIndex(r52);
            return Futures.nonCancellationPropagating(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.internal.q0
                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                    return this.f599a.lambda$setExposureCompensationIndex$2(r52, completer);
                }
            }));
        }
        StringBuilder sbE = androidx.appcompat.widget.v.e("Requested ExposureCompensation ", r52, " is not within valid range [");
        sbE.append(exposureCompensationRange.getUpper());
        sbE.append("..");
        sbE.append(exposureCompensationRange.getLower());
        sbE.append("]");
        return Futures.immediateFailedFuture(new IllegalArgumentException(sbE.toString()));
    }
}
