package androidx.camera.camera2.internal;

import android.graphics.Rect;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.util.ArrayMap;
import android.util.Rational;
import android.util.Size;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.workaround.AeFpsRange;
import androidx.camera.camera2.internal.compat.workaround.AutoFlashAEModeDisabler;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.CameraControl;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.FocusMeteringResult;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicLong;

@OptIn(markerClass = {ExperimentalCamera2Interop.class})
@RequiresApi(21)
/* loaded from: classes.dex */
public class Camera2CameraControlImpl implements CameraControlInternal {
    private static final int DEFAULT_TEMPLATE = 1;
    private static final String TAG = "Camera2CameraControlImp";
    static final String TAG_SESSION_UPDATE_ID = "CameraControlSessionUpdateId";
    private final AeFpsRange mAeFpsRange;
    private final AutoFlashAEModeDisabler mAutoFlashAEModeDisabler;
    private final Camera2CameraControl mCamera2CameraControl;
    private final Camera2CapturePipeline mCamera2CapturePipeline;
    private final CameraCaptureCallbackSet mCameraCaptureCallbackSet;
    private final CameraCharacteristicsCompat mCameraCharacteristics;
    private final CameraControlInternal.ControlUpdateCallback mControlUpdateCallback;
    private long mCurrentSessionUpdateId;
    final Executor mExecutor;
    private final ExposureControl mExposureControl;
    private volatile int mFlashMode;

    @NonNull
    private volatile m5.a<Void> mFlashModeChangeSessionUpdateFuture;
    private final FocusMeteringControl mFocusMeteringControl;
    private volatile boolean mIsTorchOn;
    private final Object mLock;
    private final AtomicLong mNextSessionUpdateId;

    @VisibleForTesting
    final CameraControlSessionCallback mSessionCallback;
    private final SessionConfig.Builder mSessionConfigBuilder;
    private int mTemplate;
    private final TorchControl mTorchControl;

    @GuardedBy("mLock")
    private int mUseCount;
    private final ZoomControl mZoomControl;

    @VisibleForTesting
    ZslControl mZslControl;

    @RequiresApi(21)
    public static final class CameraCaptureCallbackSet extends CameraCaptureCallback {
        Set<CameraCaptureCallback> mCallbacks = new HashSet();
        Map<CameraCaptureCallback, Executor> mCallbackExecutors = new ArrayMap();

        public void addCaptureCallback(@NonNull Executor executor, @NonNull CameraCaptureCallback cameraCaptureCallback) {
            this.mCallbacks.add(cameraCaptureCallback);
            this.mCallbackExecutors.put(cameraCaptureCallback, executor);
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCancelled() {
            for (CameraCaptureCallback cameraCaptureCallback : this.mCallbacks) {
                try {
                    this.mCallbackExecutors.get(cameraCaptureCallback).execute(new m(0, cameraCaptureCallback));
                } catch (RejectedExecutionException e10) {
                    Logger.e(Camera2CameraControlImpl.TAG, "Executor rejected to invoke onCaptureCancelled.", e10);
                }
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCompleted(@NonNull CameraCaptureResult cameraCaptureResult) {
            for (CameraCaptureCallback cameraCaptureCallback : this.mCallbacks) {
                try {
                    this.mCallbackExecutors.get(cameraCaptureCallback).execute(new n(0, cameraCaptureCallback, cameraCaptureResult));
                } catch (RejectedExecutionException e10) {
                    Logger.e(Camera2CameraControlImpl.TAG, "Executor rejected to invoke onCaptureCompleted.", e10);
                }
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureFailed(@NonNull CameraCaptureFailure cameraCaptureFailure) {
            for (CameraCaptureCallback cameraCaptureCallback : this.mCallbacks) {
                try {
                    this.mCallbackExecutors.get(cameraCaptureCallback).execute(new l(0, cameraCaptureCallback, cameraCaptureFailure));
                } catch (RejectedExecutionException e10) {
                    Logger.e(Camera2CameraControlImpl.TAG, "Executor rejected to invoke onCaptureFailed.", e10);
                }
            }
        }

        public void removeCaptureCallback(@NonNull CameraCaptureCallback cameraCaptureCallback) {
            this.mCallbacks.remove(cameraCaptureCallback);
            this.mCallbackExecutors.remove(cameraCaptureCallback);
        }
    }

    public static final class CameraControlSessionCallback extends CameraCaptureSession.CaptureCallback {
        private final Executor mExecutor;
        final Set<CaptureResultListener> mResultListeners = new HashSet();

        public CameraControlSessionCallback(@NonNull Executor executor) {
            this.mExecutor = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCaptureCompleted$0(TotalCaptureResult totalCaptureResult) {
            HashSet hashSet = new HashSet();
            for (CaptureResultListener captureResultListener : this.mResultListeners) {
                if (captureResultListener.onCaptureResult(totalCaptureResult)) {
                    hashSet.add(captureResultListener);
                }
            }
            if (hashSet.isEmpty()) {
                return;
            }
            this.mResultListeners.removeAll(hashSet);
        }

        public void addListener(@NonNull CaptureResultListener captureResultListener) {
            this.mResultListeners.add(captureResultListener);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureCompleted(@NonNull CameraCaptureSession cameraCaptureSession, @NonNull CaptureRequest captureRequest, @NonNull TotalCaptureResult totalCaptureResult) {
            this.mExecutor.execute(new o(0, this, totalCaptureResult));
        }

        public void removeListener(@NonNull CaptureResultListener captureResultListener) {
            this.mResultListeners.remove(captureResultListener);
        }
    }

    public interface CaptureResultListener {
        boolean onCaptureResult(@NonNull TotalCaptureResult totalCaptureResult);
    }

    @VisibleForTesting
    public Camera2CameraControlImpl(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull ScheduledExecutorService scheduledExecutorService, @NonNull Executor executor, @NonNull CameraControlInternal.ControlUpdateCallback controlUpdateCallback) {
        this(cameraCharacteristicsCompat, scheduledExecutorService, executor, controlUpdateCallback, new Quirks(new ArrayList()));
    }

    public Camera2CameraControlImpl(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull ScheduledExecutorService scheduledExecutorService, @NonNull Executor executor, @NonNull CameraControlInternal.ControlUpdateCallback controlUpdateCallback, @NonNull Quirks quirks) {
        this.mLock = new Object();
        SessionConfig.Builder builder = new SessionConfig.Builder();
        this.mSessionConfigBuilder = builder;
        this.mUseCount = 0;
        this.mIsTorchOn = false;
        this.mFlashMode = 2;
        this.mAutoFlashAEModeDisabler = new AutoFlashAEModeDisabler();
        this.mNextSessionUpdateId = new AtomicLong(0L);
        this.mFlashModeChangeSessionUpdateFuture = Futures.immediateFuture(null);
        int r12 = 1;
        this.mTemplate = 1;
        this.mCurrentSessionUpdateId = 0L;
        CameraCaptureCallbackSet cameraCaptureCallbackSet = new CameraCaptureCallbackSet();
        this.mCameraCaptureCallbackSet = cameraCaptureCallbackSet;
        this.mCameraCharacteristics = cameraCharacteristicsCompat;
        this.mControlUpdateCallback = controlUpdateCallback;
        this.mExecutor = executor;
        CameraControlSessionCallback cameraControlSessionCallback = new CameraControlSessionCallback(executor);
        this.mSessionCallback = cameraControlSessionCallback;
        builder.setTemplateType(this.mTemplate);
        builder.addRepeatingCameraCaptureCallback(CaptureCallbackContainer.create(cameraControlSessionCallback));
        builder.addRepeatingCameraCaptureCallback(cameraCaptureCallbackSet);
        this.mExposureControl = new ExposureControl(this, cameraCharacteristicsCompat, executor);
        this.mFocusMeteringControl = new FocusMeteringControl(this, scheduledExecutorService, executor, quirks);
        this.mZoomControl = new ZoomControl(this, cameraCharacteristicsCompat, executor);
        this.mTorchControl = new TorchControl(this, cameraCharacteristicsCompat, executor);
        this.mZslControl = Build.VERSION.SDK_INT >= 23 ? new ZslControlImpl(cameraCharacteristicsCompat) : new ZslControlNoOpImpl();
        this.mAeFpsRange = new AeFpsRange(quirks);
        this.mCamera2CameraControl = new Camera2CameraControl(this, executor);
        this.mCamera2CapturePipeline = new Camera2CapturePipeline(this, cameraCharacteristicsCompat, quirks, executor);
        executor.execute(new f(r12, this));
    }

    private int getSupportedAwbMode(int r42) {
        int[] r02 = (int[]) this.mCameraCharacteristics.get(CameraCharacteristics.CONTROL_AWB_AVAILABLE_MODES);
        if (r02 == null) {
            return 0;
        }
        return isModeInList(r42, r02) ? r42 : isModeInList(1, r02) ? 1 : 0;
    }

    private boolean isControlInUse() {
        return getUseCount() > 0;
    }

    private boolean isModeInList(int r52, int[] r6) {
        for (int r02 : r6) {
            if (r52 == r02) {
                return true;
            }
        }
        return false;
    }

    public static boolean isSessionUpdated(@NonNull TotalCaptureResult totalCaptureResult, long j10) {
        Long l5;
        if (totalCaptureResult.getRequest() == null) {
            return false;
        }
        Object tag = totalCaptureResult.getRequest().getTag();
        return (tag instanceof TagBundle) && (l5 = (Long) ((TagBundle) tag).getTag(TAG_SESSION_UPDATE_ID)) != null && l5.longValue() >= j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$addInteropConfig$1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addSessionCameraCaptureCallback$8(Executor executor, CameraCaptureCallback cameraCaptureCallback) {
        this.mCameraCaptureCallbackSet.addCaptureCallback(executor, cameraCaptureCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$clearInteropConfig$2() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        addCaptureResultListener(this.mCamera2CameraControl.getCaptureRequestListener());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeSessionCameraCaptureCallback$9(CameraCaptureCallback cameraCaptureCallback) {
        this.mCameraCaptureCallbackSet.removeCaptureCallback(cameraCaptureCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ m5.a lambda$submitStillCaptureRequests$5(List list, int r22, int r32, int r42, Void r52) throws Exception {
        return this.mCamera2CapturePipeline.submitStillCaptures(list, r22, r32, r42);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSessionConfigAsync$6(CallbackToFutureAdapter.Completer completer) {
        Futures.propagate(waitForSessionUpdateId(updateSessionConfigSynchronous()), completer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$updateSessionConfigAsync$7(CallbackToFutureAdapter.Completer completer) throws Exception {
        this.mExecutor.execute(new e(this, completer, 1));
        return "updateSessionConfigAsync";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$waitForSessionUpdateId$3(long j10, CallbackToFutureAdapter.Completer completer, TotalCaptureResult totalCaptureResult) {
        if (!isSessionUpdated(totalCaptureResult, j10)) {
            return false;
        }
        completer.set(null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$waitForSessionUpdateId$4(final long j10, final CallbackToFutureAdapter.Completer completer) throws Exception {
        addCaptureResultListener(new CaptureResultListener() { // from class: androidx.camera.camera2.internal.i
            @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
            public final boolean onCaptureResult(TotalCaptureResult totalCaptureResult) {
                return Camera2CameraControlImpl.lambda$waitForSessionUpdateId$3(j10, completer, totalCaptureResult);
            }
        });
        return "waitForSessionUpdateId:" + j10;
    }

    @NonNull
    private m5.a<Void> waitForSessionUpdateId(final long j10) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.internal.h
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return this.f546a.lambda$waitForSessionUpdateId$4(j10, completer);
            }
        });
    }

    public void addCaptureResultListener(@NonNull CaptureResultListener captureResultListener) {
        this.mSessionCallback.addListener(captureResultListener);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void addInteropConfig(@NonNull Config config) {
        this.mCamera2CameraControl.addCaptureRequestOptions(CaptureRequestOptions.Builder.from(config).build()).addListener(new Runnable() { // from class: androidx.camera.camera2.internal.k
            @Override // java.lang.Runnable
            public final void run() {
                Camera2CameraControlImpl.lambda$addInteropConfig$1();
            }
        }, CameraXExecutors.directExecutor());
    }

    public void addSessionCameraCaptureCallback(@NonNull Executor executor, @NonNull CameraCaptureCallback cameraCaptureCallback) {
        this.mExecutor.execute(new w(this, executor, cameraCaptureCallback, 1));
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void addZslConfig(@NonNull Size size, @NonNull SessionConfig.Builder builder) {
        this.mZslControl.addZslConfig(size, builder);
    }

    @Override // androidx.camera.core.CameraControl
    @NonNull
    public m5.a<Void> cancelFocusAndMetering() {
        return !isControlInUse() ? Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active.")) : Futures.nonCancellationPropagating(this.mFocusMeteringControl.cancelFocusAndMetering());
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void clearInteropConfig() {
        this.mCamera2CameraControl.clearCaptureRequestOptions().addListener(new Runnable() { // from class: androidx.camera.camera2.internal.g
            @Override // java.lang.Runnable
            public final void run() {
                Camera2CameraControlImpl.lambda$clearInteropConfig$2();
            }
        }, CameraXExecutors.directExecutor());
    }

    public void decrementUseCount() {
        synchronized (this.mLock) {
            int r12 = this.mUseCount;
            if (r12 == 0) {
                throw new IllegalStateException("Decrementing use count occurs more times than incrementing");
            }
            this.mUseCount = r12 - 1;
        }
    }

    @Override // androidx.camera.core.CameraControl
    @NonNull
    public m5.a<Void> enableTorch(boolean z10) {
        return !isControlInUse() ? Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active.")) : Futures.nonCancellationPropagating(this.mTorchControl.enableTorch(z10));
    }

    public void enableTorchInternal(boolean z10) {
        this.mIsTorchOn = z10;
        if (!z10) {
            CaptureConfig.Builder builder = new CaptureConfig.Builder();
            builder.setTemplateType(this.mTemplate);
            builder.setUseRepeatingSurface(true);
            Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
            builder2.setCaptureRequestOption(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(getSupportedAeMode(1)));
            builder2.setCaptureRequestOption(CaptureRequest.FLASH_MODE, 0);
            builder.addImplementationOptions(builder2.build());
            submitCaptureRequestsInternal(Collections.singletonList(builder.build()));
        }
        updateSessionConfigSynchronous();
    }

    @NonNull
    public Camera2CameraControl getCamera2CameraControl() {
        return this.mCamera2CameraControl;
    }

    @NonNull
    public Rect getCropSensorRegion() {
        return this.mZoomControl.getCropSensorRegion();
    }

    @VisibleForTesting
    public long getCurrentSessionUpdateId() {
        return this.mCurrentSessionUpdateId;
    }

    @NonNull
    public ExposureControl getExposureControl() {
        return this.mExposureControl;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public int getFlashMode() {
        return this.mFlashMode;
    }

    @NonNull
    public FocusMeteringControl getFocusMeteringControl() {
        return this.mFocusMeteringControl;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    @NonNull
    public Config getInteropConfig() {
        return this.mCamera2CameraControl.getCamera2ImplConfig();
    }

    public int getMaxAeRegionCount() {
        Integer num = (Integer) this.mCameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AE);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public int getMaxAfRegionCount() {
        Integer num = (Integer) this.mCameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public int getMaxAwbRegionCount() {
        Integer num = (Integer) this.mCameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AWB);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    @NonNull
    public Rect getSensorRect() {
        return (Rect) Preconditions.checkNotNull((Rect) this.mCameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE));
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    @NonNull
    public SessionConfig getSessionConfig() {
        this.mSessionConfigBuilder.setTemplateType(this.mTemplate);
        this.mSessionConfigBuilder.setImplementationOptions(getSessionOptions());
        Object captureRequestTag = this.mCamera2CameraControl.getCamera2ImplConfig().getCaptureRequestTag(null);
        if (captureRequestTag != null && (captureRequestTag instanceof Integer)) {
            this.mSessionConfigBuilder.addTag(Camera2CameraControl.TAG_KEY, captureRequestTag);
        }
        this.mSessionConfigBuilder.addTag(TAG_SESSION_UPDATE_ID, Long.valueOf(this.mCurrentSessionUpdateId));
        return this.mSessionConfigBuilder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0073 A[LOOP:0: B:12:0x006d->B:14:0x0073, LOOP_END] */
    @androidx.annotation.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.camera.core.impl.Config getSessionOptions() {
        /*
            r7 = this;
            androidx.camera.camera2.impl.Camera2ImplConfig$Builder r0 = new androidx.camera.camera2.impl.Camera2ImplConfig$Builder
            r0.<init>()
            android.hardware.camera2.CaptureRequest$Key r1 = android.hardware.camera2.CaptureRequest.CONTROL_MODE
            r2 = 1
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)
            r0.setCaptureRequestOption(r1, r3)
            androidx.camera.camera2.internal.FocusMeteringControl r1 = r7.mFocusMeteringControl
            r1.addFocusMeteringOptions(r0)
            androidx.camera.camera2.internal.compat.workaround.AeFpsRange r1 = r7.mAeFpsRange
            r1.addAeFpsRangeOptions(r0)
            androidx.camera.camera2.internal.ZoomControl r1 = r7.mZoomControl
            r1.addZoomOption(r0)
            boolean r1 = r7.mIsTorchOn
            r3 = 2
            if (r1 == 0) goto L2d
            android.hardware.camera2.CaptureRequest$Key r1 = android.hardware.camera2.CaptureRequest.FLASH_MODE
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r0.setCaptureRequestOption(r1, r3)
            goto L33
        L2d:
            int r1 = r7.mFlashMode
            if (r1 == 0) goto L37
            if (r1 == r2) goto L35
        L33:
            r1 = 1
            goto L3d
        L35:
            r1 = 3
            goto L3d
        L37:
            androidx.camera.camera2.internal.compat.workaround.AutoFlashAEModeDisabler r1 = r7.mAutoFlashAEModeDisabler
            int r1 = r1.getCorrectedAeMode(r3)
        L3d:
            android.hardware.camera2.CaptureRequest$Key r3 = android.hardware.camera2.CaptureRequest.CONTROL_AE_MODE
            int r1 = r7.getSupportedAeMode(r1)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0.setCaptureRequestOption(r3, r1)
            android.hardware.camera2.CaptureRequest$Key r1 = android.hardware.camera2.CaptureRequest.CONTROL_AWB_MODE
            int r2 = r7.getSupportedAwbMode(r2)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.setCaptureRequestOption(r1, r2)
            androidx.camera.camera2.internal.ExposureControl r1 = r7.mExposureControl
            r1.setCaptureRequestOption(r0)
            androidx.camera.camera2.interop.Camera2CameraControl r1 = r7.mCamera2CameraControl
            androidx.camera.camera2.impl.Camera2ImplConfig r1 = r1.getCamera2ImplConfig()
            r1.getClass()
            java.util.Set r2 = androidx.camera.core.impl.b0.e(r1)
            java.util.Iterator r2 = r2.iterator()
        L6d:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L87
            java.lang.Object r3 = r2.next()
            androidx.camera.core.impl.Config$Option r3 = (androidx.camera.core.impl.Config.Option) r3
            androidx.camera.core.impl.MutableConfig r4 = r0.getMutableConfig()
            androidx.camera.core.impl.Config$OptionPriority r5 = androidx.camera.core.impl.Config.OptionPriority.ALWAYS_OVERRIDE
            java.lang.Object r6 = androidx.camera.core.impl.b0.f(r1, r3)
            r4.insertOption(r3, r5, r6)
            goto L6d
        L87:
            androidx.camera.camera2.impl.Camera2ImplConfig r0 = r0.build()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.internal.Camera2CameraControlImpl.getSessionOptions():androidx.camera.core.impl.Config");
    }

    public int getSupportedAeMode(int r42) {
        int[] r02 = (int[]) this.mCameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES);
        if (r02 == null) {
            return 0;
        }
        return isModeInList(r42, r02) ? r42 : isModeInList(1, r02) ? 1 : 0;
    }

    public int getSupportedAfMode(int r42) {
        int[] r02 = (int[]) this.mCameraCharacteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
        if (r02 == null) {
            return 0;
        }
        if (isModeInList(r42, r02)) {
            return r42;
        }
        if (isModeInList(4, r02)) {
            return 4;
        }
        return isModeInList(1, r02) ? 1 : 0;
    }

    @NonNull
    public TorchControl getTorchControl() {
        return this.mTorchControl;
    }

    @VisibleForTesting
    public int getUseCount() {
        int r12;
        synchronized (this.mLock) {
            r12 = this.mUseCount;
        }
        return r12;
    }

    @NonNull
    public ZoomControl getZoomControl() {
        return this.mZoomControl;
    }

    @NonNull
    public ZslControl getZslControl() {
        return this.mZslControl;
    }

    public void incrementUseCount() {
        synchronized (this.mLock) {
            this.mUseCount++;
        }
    }

    public boolean isTorchOn() {
        return this.mIsTorchOn;
    }

    public void removeCaptureResultListener(@NonNull CaptureResultListener captureResultListener) {
        this.mSessionCallback.removeListener(captureResultListener);
    }

    public void removeSessionCameraCaptureCallback(@NonNull CameraCaptureCallback cameraCaptureCallback) {
        this.mExecutor.execute(new e(this, cameraCaptureCallback, 0));
    }

    public void resetTemplate() {
        setTemplate(1);
    }

    public void setActive(boolean z10) {
        this.mFocusMeteringControl.setActive(z10);
        this.mZoomControl.setActive(z10);
        this.mTorchControl.setActive(z10);
        this.mExposureControl.setActive(z10);
        this.mCamera2CameraControl.setActive(z10);
    }

    @Override // androidx.camera.core.CameraControl
    @NonNull
    public m5.a<Integer> setExposureCompensationIndex(int r22) {
        return !isControlInUse() ? Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active.")) : this.mExposureControl.setExposureCompensationIndex(r22);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void setFlashMode(int r22) {
        if (!isControlInUse()) {
            Logger.w(TAG, "Camera is not active.");
        } else {
            this.mFlashMode = r22;
            this.mFlashModeChangeSessionUpdateFuture = updateSessionConfigAsync();
        }
    }

    @Override // androidx.camera.core.CameraControl
    @NonNull
    public m5.a<Void> setLinearZoom(float f) {
        return !isControlInUse() ? Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active.")) : Futures.nonCancellationPropagating(this.mZoomControl.setLinearZoom(f));
    }

    public void setPreviewAspectRatio(@Nullable Rational rational) {
        this.mFocusMeteringControl.setPreviewAspectRatio(rational);
    }

    public void setTemplate(int r22) {
        this.mTemplate = r22;
        this.mFocusMeteringControl.setTemplate(r22);
        this.mCamera2CapturePipeline.setTemplate(this.mTemplate);
    }

    @Override // androidx.camera.core.CameraControl
    @NonNull
    public m5.a<Void> setZoomRatio(float f) {
        return !isControlInUse() ? Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active.")) : Futures.nonCancellationPropagating(this.mZoomControl.setZoomRatio(f));
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void setZslDisabled(boolean z10) {
        this.mZslControl.setZslDisabled(z10);
    }

    @Override // androidx.camera.core.CameraControl
    @NonNull
    public m5.a<FocusMeteringResult> startFocusAndMetering(@NonNull FocusMeteringAction focusMeteringAction) {
        return !isControlInUse() ? Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active.")) : Futures.nonCancellationPropagating(this.mFocusMeteringControl.startFocusAndMetering(focusMeteringAction));
    }

    public void submitCaptureRequestsInternal(List<CaptureConfig> list) {
        this.mControlUpdateCallback.onCameraControlCaptureRequests(list);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    @NonNull
    public m5.a<List<Void>> submitStillCaptureRequests(@NonNull final List<CaptureConfig> list, final int r10, final int r11) {
        if (isControlInUse()) {
            final int flashMode = getFlashMode();
            return FutureChain.from(this.mFlashModeChangeSessionUpdateFuture).transformAsync(new AsyncFunction() { // from class: androidx.camera.camera2.internal.j
                @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                public final m5.a apply(Object obj) {
                    return this.f555a.lambda$submitStillCaptureRequests$5(list, r10, flashMode, r11, (Void) obj);
                }
            }, this.mExecutor);
        }
        Logger.w(TAG, "Camera is not active.");
        return Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active."));
    }

    public void updateSessionConfig() {
        this.mExecutor.execute(new f(0, this));
    }

    @NonNull
    public m5.a<Void> updateSessionConfigAsync() {
        return Futures.nonCancellationPropagating(CallbackToFutureAdapter.getFuture(new d0(1, this)));
    }

    public long updateSessionConfigSynchronous() {
        this.mCurrentSessionUpdateId = this.mNextSessionUpdateId.getAndIncrement();
        this.mControlUpdateCallback.onCameraControlUpdateSessionConfig();
        return this.mCurrentSessionUpdateId;
    }
}
