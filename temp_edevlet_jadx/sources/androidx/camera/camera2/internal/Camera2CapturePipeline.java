package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.arch.core.util.Function;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.internal.Camera2CapturePipeline;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.workaround.OverrideAeModeForStillCapture;
import androidx.camera.camera2.internal.compat.workaround.UseTorchAsFlash;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.CameraCaptureMetaData;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

@RequiresApi(21)
/* loaded from: classes.dex */
class Camera2CapturePipeline {
    private static final String TAG = "Camera2CapturePipeline";

    @NonNull
    private final Camera2CameraControlImpl mCameraControl;

    @NonNull
    private final Quirks mCameraQuirk;

    @NonNull
    private final Executor mExecutor;
    private final boolean mIsLegacyDevice;
    private int mTemplate = 1;

    @NonNull
    private final UseTorchAsFlash mUseTorchAsFlash;

    public static class AePreCaptureTask implements PipelineTask {
        private final Camera2CameraControlImpl mCameraControl;
        private final int mFlashMode;
        private boolean mIsExecuted = false;
        private final OverrideAeModeForStillCapture mOverrideAeModeForStillCapture;

        public AePreCaptureTask(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, int r32, @NonNull OverrideAeModeForStillCapture overrideAeModeForStillCapture) {
            this.mCameraControl = camera2CameraControlImpl;
            this.mFlashMode = r32;
            this.mOverrideAeModeForStillCapture = overrideAeModeForStillCapture;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$preCapture$0(CallbackToFutureAdapter.Completer completer) throws Exception {
            this.mCameraControl.getFocusMeteringControl().triggerAePrecapture(completer);
            this.mOverrideAeModeForStillCapture.onAePrecaptureStarted();
            return "AePreCapture";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Boolean lambda$preCapture$1(Void r02) {
            return Boolean.TRUE;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public boolean isCaptureResultNeeded() {
            return this.mFlashMode == 0;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public void postCapture() {
            if (this.mIsExecuted) {
                Logger.d(Camera2CapturePipeline.TAG, "cancel TriggerAePreCapture");
                this.mCameraControl.getFocusMeteringControl().cancelAfAeTrigger(false, true);
                this.mOverrideAeModeForStillCapture.onAePrecaptureFinished();
            }
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        @NonNull
        public m5.a<Boolean> preCapture(@Nullable TotalCaptureResult totalCaptureResult) {
            if (!Camera2CapturePipeline.isFlashRequired(this.mFlashMode, totalCaptureResult)) {
                return Futures.immediateFuture(Boolean.FALSE);
            }
            Logger.d(Camera2CapturePipeline.TAG, "Trigger AE");
            this.mIsExecuted = true;
            return FutureChain.from(CallbackToFutureAdapter.getFuture(new d0(0, this))).transform(new Function() { // from class: androidx.camera.camera2.internal.e0
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return Camera2CapturePipeline.AePreCaptureTask.lambda$preCapture$1((Void) obj);
                }
            }, CameraXExecutors.directExecutor());
        }
    }

    public static class AfTask implements PipelineTask {
        private final Camera2CameraControlImpl mCameraControl;
        private boolean mIsExecuted = false;

        public AfTask(@NonNull Camera2CameraControlImpl camera2CameraControlImpl) {
            this.mCameraControl = camera2CameraControlImpl;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public boolean isCaptureResultNeeded() {
            return true;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public void postCapture() {
            if (this.mIsExecuted) {
                Logger.d(Camera2CapturePipeline.TAG, "cancel TriggerAF");
                this.mCameraControl.getFocusMeteringControl().cancelAfAeTrigger(true, false);
            }
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        @NonNull
        public m5.a<Boolean> preCapture(@Nullable TotalCaptureResult totalCaptureResult) {
            Integer num;
            m5.a<Boolean> aVarImmediateFuture = Futures.immediateFuture(Boolean.TRUE);
            if (totalCaptureResult == null || (num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_MODE)) == null) {
                return aVarImmediateFuture;
            }
            int r12 = num.intValue();
            if (r12 == 1 || r12 == 2) {
                Logger.d(Camera2CapturePipeline.TAG, "TriggerAf? AF mode auto");
                Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
                if (num2 != null && num2.intValue() == 0) {
                    Logger.d(Camera2CapturePipeline.TAG, "Trigger AF");
                    this.mIsExecuted = true;
                    this.mCameraControl.getFocusMeteringControl().triggerAf(null, false);
                }
            }
            return aVarImmediateFuture;
        }
    }

    @VisibleForTesting
    public static class Pipeline {
        private static final long CHECK_3A_TIMEOUT_IN_NS;
        private static final long CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS;
        private final Camera2CameraControlImpl mCameraControl;
        private final Executor mExecutor;
        private final boolean mIsLegacyDevice;
        private final OverrideAeModeForStillCapture mOverrideAeModeForStillCapture;
        private final int mTemplate;
        private long mTimeout3A = CHECK_3A_TIMEOUT_IN_NS;
        final List<PipelineTask> mTasks = new ArrayList();
        private final PipelineTask mPipelineSubTask = new AnonymousClass1();

        /* renamed from: androidx.camera.camera2.internal.Camera2CapturePipeline$Pipeline$1, reason: invalid class name */
        public class AnonymousClass1 implements PipelineTask {
            public AnonymousClass1() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ Boolean lambda$preCapture$0(List list) {
                return Boolean.valueOf(list.contains(Boolean.TRUE));
            }

            @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
            public boolean isCaptureResultNeeded() {
                Iterator<PipelineTask> it = Pipeline.this.mTasks.iterator();
                while (it.hasNext()) {
                    if (it.next().isCaptureResultNeeded()) {
                        return true;
                    }
                }
                return false;
            }

            @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
            public void postCapture() {
                Iterator<PipelineTask> it = Pipeline.this.mTasks.iterator();
                while (it.hasNext()) {
                    it.next().postCapture();
                }
            }

            @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
            @NonNull
            public m5.a<Boolean> preCapture(@Nullable TotalCaptureResult totalCaptureResult) {
                ArrayList arrayList = new ArrayList();
                Iterator<PipelineTask> it = Pipeline.this.mTasks.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().preCapture(totalCaptureResult));
                }
                return Futures.transform(Futures.allAsList(arrayList), new Function() { // from class: androidx.camera.camera2.internal.j0
                    @Override // androidx.arch.core.util.Function
                    public final Object apply(Object obj) {
                        return Camera2CapturePipeline.Pipeline.AnonymousClass1.lambda$preCapture$0((List) obj);
                    }
                }, CameraXExecutors.directExecutor());
            }
        }

        static {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            CHECK_3A_TIMEOUT_IN_NS = timeUnit.toNanos(1L);
            CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS = timeUnit.toNanos(5L);
        }

        public Pipeline(int r32, @NonNull Executor executor, @NonNull Camera2CameraControlImpl camera2CameraControlImpl, boolean z10, @NonNull OverrideAeModeForStillCapture overrideAeModeForStillCapture) {
            this.mTemplate = r32;
            this.mExecutor = executor;
            this.mCameraControl = camera2CameraControlImpl;
            this.mIsLegacyDevice = z10;
            this.mOverrideAeModeForStillCapture = overrideAeModeForStillCapture;
        }

        @OptIn(markerClass = {ExperimentalCamera2Interop.class})
        private void applyAeModeQuirk(@NonNull CaptureConfig.Builder builder) {
            Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
            builder2.setCaptureRequestOption(CaptureRequest.CONTROL_AE_MODE, 3);
            builder.addImplementationOptions(builder2.build());
        }

        private void applyStillCaptureTemplate(@NonNull CaptureConfig.Builder builder, @NonNull CaptureConfig captureConfig) {
            int r52 = (this.mTemplate != 3 || this.mIsLegacyDevice) ? (captureConfig.getTemplateType() == -1 || captureConfig.getTemplateType() == 5) ? 2 : -1 : 4;
            if (r52 != -1) {
                builder.setTemplateType(r52);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean is3AConverged(@Nullable TotalCaptureResult totalCaptureResult) {
            if (totalCaptureResult == null) {
                return false;
            }
            Camera2CameraCaptureResult camera2CameraCaptureResult = new Camera2CameraCaptureResult(totalCaptureResult);
            boolean z10 = camera2CameraCaptureResult.getAfMode() == CameraCaptureMetaData.AfMode.OFF || camera2CameraCaptureResult.getAfMode() == CameraCaptureMetaData.AfMode.UNKNOWN || camera2CameraCaptureResult.getAfState() == CameraCaptureMetaData.AfState.PASSIVE_FOCUSED || camera2CameraCaptureResult.getAfState() == CameraCaptureMetaData.AfState.PASSIVE_NOT_FOCUSED || camera2CameraCaptureResult.getAfState() == CameraCaptureMetaData.AfState.LOCKED_FOCUSED || camera2CameraCaptureResult.getAfState() == CameraCaptureMetaData.AfState.LOCKED_NOT_FOCUSED;
            boolean z11 = camera2CameraCaptureResult.getAeState() == CameraCaptureMetaData.AeState.CONVERGED || camera2CameraCaptureResult.getAeState() == CameraCaptureMetaData.AeState.FLASH_REQUIRED || camera2CameraCaptureResult.getAeState() == CameraCaptureMetaData.AeState.UNKNOWN;
            boolean z12 = camera2CameraCaptureResult.getAwbState() == CameraCaptureMetaData.AwbState.CONVERGED || camera2CameraCaptureResult.getAwbState() == CameraCaptureMetaData.AwbState.UNKNOWN;
            Logger.d(Camera2CapturePipeline.TAG, "checkCaptureResult, AE=" + camera2CameraCaptureResult.getAeState() + " AF =" + camera2CameraCaptureResult.getAfState() + " AWB=" + camera2CameraCaptureResult.getAwbState());
            return z10 && z11 && z12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ m5.a lambda$executeCapture$0(int r32, TotalCaptureResult totalCaptureResult) throws Exception {
            if (Camera2CapturePipeline.isFlashRequired(r32, totalCaptureResult)) {
                setTimeout3A(CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS);
            }
            return this.mPipelineSubTask.preCapture(totalCaptureResult);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ m5.a lambda$executeCapture$1(Boolean bool) throws Exception {
            return bool.booleanValue() ? waitForResult(this.mTimeout3A, new t(1, this)) : Futures.immediateFuture(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ m5.a lambda$executeCapture$2(List list, int r22, TotalCaptureResult totalCaptureResult) throws Exception {
            return submitConfigsInternal(list, r22);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$executeCapture$3() {
            this.mPipelineSubTask.postCapture();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$submitConfigsInternal$4(CaptureConfig.Builder builder, final CallbackToFutureAdapter.Completer completer) throws Exception {
            builder.addCameraCaptureCallback(new CameraCaptureCallback() { // from class: androidx.camera.camera2.internal.Camera2CapturePipeline.Pipeline.2
                @Override // androidx.camera.core.impl.CameraCaptureCallback
                public void onCaptureCancelled() {
                    completer.setException(new ImageCaptureException(3, "Capture request is cancelled because camera is closed", null));
                }

                @Override // androidx.camera.core.impl.CameraCaptureCallback
                public void onCaptureCompleted(@NonNull CameraCaptureResult cameraCaptureResult) {
                    completer.set(null);
                }

                @Override // androidx.camera.core.impl.CameraCaptureCallback
                public void onCaptureFailed(@NonNull CameraCaptureFailure cameraCaptureFailure) {
                    completer.setException(new ImageCaptureException(2, "Capture request failed with reason " + cameraCaptureFailure.getReason(), null));
                }
            });
            return "submitStillCapture";
        }

        private void setTimeout3A(long j10) {
            this.mTimeout3A = j10;
        }

        @NonNull
        private m5.a<TotalCaptureResult> waitForResult(long j10, @Nullable ResultListener.Checker checker) {
            ResultListener resultListener = new ResultListener(j10, checker);
            this.mCameraControl.addCaptureResultListener(resultListener);
            return resultListener.getFuture();
        }

        public void addTask(@NonNull PipelineTask pipelineTask) {
            this.mTasks.add(pipelineTask);
        }

        @NonNull
        public m5.a<List<Void>> executeCapture(@NonNull final List<CaptureConfig> list, final int r52) {
            m5.a aVarImmediateFuture = Futures.immediateFuture(null);
            if (!this.mTasks.isEmpty()) {
                aVarImmediateFuture = FutureChain.from(this.mPipelineSubTask.isCaptureResultNeeded() ? waitForResult(0L, null) : Futures.immediateFuture(null)).transformAsync(new AsyncFunction() { // from class: androidx.camera.camera2.internal.g0
                    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                    public final m5.a apply(Object obj) {
                        return this.f540a.lambda$executeCapture$0(r52, (TotalCaptureResult) obj);
                    }
                }, this.mExecutor).transformAsync(new AsyncFunction() { // from class: androidx.camera.camera2.internal.h0
                    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                    public final m5.a apply(Object obj) {
                        return this.f548a.lambda$executeCapture$1((Boolean) obj);
                    }
                }, this.mExecutor);
            }
            FutureChain futureChainTransformAsync = FutureChain.from(aVarImmediateFuture).transformAsync(new AsyncFunction() { // from class: androidx.camera.camera2.internal.i0
                @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                public final m5.a apply(Object obj) {
                    return this.f551a.lambda$executeCapture$2(list, r52, (TotalCaptureResult) obj);
                }
            }, this.mExecutor);
            futureChainTransformAsync.addListener(new b0(1, this), this.mExecutor);
            return futureChainTransformAsync;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
        @androidx.annotation.NonNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public m5.a<java.util.List<java.lang.Void>> submitConfigsInternal(@androidx.annotation.NonNull java.util.List<androidx.camera.core.impl.CaptureConfig> r7, int r8) {
            /*
                r6 = this;
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                java.util.ArrayList r1 = new java.util.ArrayList
                r1.<init>()
                java.util.Iterator r7 = r7.iterator()
            Le:
                boolean r2 = r7.hasNext()
                if (r2 == 0) goto L74
                java.lang.Object r2 = r7.next()
                androidx.camera.core.impl.CaptureConfig r2 = (androidx.camera.core.impl.CaptureConfig) r2
                androidx.camera.core.impl.CaptureConfig$Builder r3 = androidx.camera.core.impl.CaptureConfig.Builder.from(r2)
                int r4 = r2.getTemplateType()
                r5 = 5
                if (r4 != r5) goto L4b
                androidx.camera.camera2.internal.Camera2CameraControlImpl r4 = r6.mCameraControl
                androidx.camera.camera2.internal.ZslControl r4 = r4.getZslControl()
                androidx.camera.core.ImageProxy r4 = r4.dequeueImageFromBuffer()
                if (r4 == 0) goto L3f
                androidx.camera.camera2.internal.Camera2CameraControlImpl r5 = r6.mCameraControl
                androidx.camera.camera2.internal.ZslControl r5 = r5.getZslControl()
                boolean r5 = r5.enqueueImageToImageWriter(r4)
                if (r5 == 0) goto L3f
                r5 = 1
                goto L40
            L3f:
                r5 = 0
            L40:
                if (r5 == 0) goto L4b
                androidx.camera.core.ImageInfo r4 = r4.getImageInfo()
                androidx.camera.core.impl.CameraCaptureResult r4 = androidx.camera.core.impl.CameraCaptureResults.retrieveCameraCaptureResult(r4)
                goto L4c
            L4b:
                r4 = 0
            L4c:
                if (r4 == 0) goto L52
                r3.setCameraCaptureResult(r4)
                goto L55
            L52:
                r6.applyStillCaptureTemplate(r3, r2)
            L55:
                androidx.camera.camera2.internal.compat.workaround.OverrideAeModeForStillCapture r2 = r6.mOverrideAeModeForStillCapture
                boolean r2 = r2.shouldSetAeModeAlwaysFlash(r8)
                if (r2 == 0) goto L60
                r6.applyAeModeQuirk(r3)
            L60:
                androidx.camera.camera2.internal.f0 r2 = new androidx.camera.camera2.internal.f0
                r2.<init>()
                m5.a r2 = androidx.concurrent.futures.CallbackToFutureAdapter.getFuture(r2)
                r0.add(r2)
                androidx.camera.core.impl.CaptureConfig r2 = r3.build()
                r1.add(r2)
                goto Le
            L74:
                androidx.camera.camera2.internal.Camera2CameraControlImpl r7 = r6.mCameraControl
                r7.submitCaptureRequestsInternal(r1)
                m5.a r7 = androidx.camera.core.impl.utils.futures.Futures.allAsList(r0)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.internal.Camera2CapturePipeline.Pipeline.submitConfigsInternal(java.util.List, int):m5.a");
        }
    }

    public interface PipelineTask {
        boolean isCaptureResultNeeded();

        void postCapture();

        @NonNull
        m5.a<Boolean> preCapture(@Nullable TotalCaptureResult totalCaptureResult);
    }

    public static class ResultListener implements Camera2CameraControlImpl.CaptureResultListener {
        static final long NO_TIMEOUT = 0;
        private final Checker mChecker;
        private CallbackToFutureAdapter.Completer<TotalCaptureResult> mCompleter;
        private final long mTimeLimitNs;
        private final m5.a<TotalCaptureResult> mFuture = CallbackToFutureAdapter.getFuture(new v(1, this));
        private volatile Long mTimestampOfFirstUpdateNs = null;

        public interface Checker {
            boolean check(@NonNull TotalCaptureResult totalCaptureResult);
        }

        public ResultListener(long j10, @Nullable Checker checker) {
            this.mTimeLimitNs = j10;
            this.mChecker = checker;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$new$0(CallbackToFutureAdapter.Completer completer) throws Exception {
            this.mCompleter = completer;
            return "waitFor3AResult";
        }

        @NonNull
        public m5.a<TotalCaptureResult> getFuture() {
            return this.mFuture;
        }

        @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
        public boolean onCaptureResult(@NonNull TotalCaptureResult totalCaptureResult) {
            Long l5 = (Long) totalCaptureResult.get(CaptureResult.SENSOR_TIMESTAMP);
            if (l5 != null && this.mTimestampOfFirstUpdateNs == null) {
                this.mTimestampOfFirstUpdateNs = l5;
            }
            Long l10 = this.mTimestampOfFirstUpdateNs;
            if (0 == this.mTimeLimitNs || l10 == null || l5 == null || l5.longValue() - l10.longValue() <= this.mTimeLimitNs) {
                Checker checker = this.mChecker;
                if (checker != null && !checker.check(totalCaptureResult)) {
                    return false;
                }
                this.mCompleter.set(totalCaptureResult);
                return true;
            }
            this.mCompleter.set(null);
            Logger.d(Camera2CapturePipeline.TAG, "Wait for capture result timeout, current:" + l5 + " first: " + l10);
            return true;
        }
    }

    public static class TorchTask implements PipelineTask {
        private final Camera2CameraControlImpl mCameraControl;
        private final int mFlashMode;
        private boolean mIsExecuted = false;

        public TorchTask(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, int r32) {
            this.mCameraControl = camera2CameraControlImpl;
            this.mFlashMode = r32;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$preCapture$0(CallbackToFutureAdapter.Completer completer) throws Exception {
            this.mCameraControl.getTorchControl().lambda$enableTorch$1(completer, true);
            return "TorchOn";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Boolean lambda$preCapture$1(Void r02) {
            return Boolean.TRUE;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public boolean isCaptureResultNeeded() {
            return this.mFlashMode == 0;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public void postCapture() {
            if (this.mIsExecuted) {
                this.mCameraControl.getTorchControl().lambda$enableTorch$1(null, false);
                Logger.d(Camera2CapturePipeline.TAG, "Turn off torch");
            }
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        @NonNull
        public m5.a<Boolean> preCapture(@Nullable TotalCaptureResult totalCaptureResult) {
            if (Camera2CapturePipeline.isFlashRequired(this.mFlashMode, totalCaptureResult)) {
                if (!this.mCameraControl.isTorchOn()) {
                    Logger.d(Camera2CapturePipeline.TAG, "Turn on torch");
                    this.mIsExecuted = true;
                    return FutureChain.from(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.internal.k0
                        @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                        public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                            return this.f563a.lambda$preCapture$0(completer);
                        }
                    })).transform(new Function() { // from class: androidx.camera.camera2.internal.l0
                        @Override // androidx.arch.core.util.Function
                        public final Object apply(Object obj) {
                            return Camera2CapturePipeline.TorchTask.lambda$preCapture$1((Void) obj);
                        }
                    }, CameraXExecutors.directExecutor());
                }
                Logger.d(Camera2CapturePipeline.TAG, "Torch already on, not turn on");
            }
            return Futures.immediateFuture(Boolean.FALSE);
        }
    }

    public Camera2CapturePipeline(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, @NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull Quirks quirks, @NonNull Executor executor) {
        this.mCameraControl = camera2CameraControlImpl;
        Integer num = (Integer) cameraCharacteristicsCompat.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        this.mIsLegacyDevice = num != null && num.intValue() == 2;
        this.mExecutor = executor;
        this.mCameraQuirk = quirks;
        this.mUseTorchAsFlash = new UseTorchAsFlash(quirks);
    }

    public static boolean isFlashRequired(int r22, @Nullable TotalCaptureResult totalCaptureResult) {
        if (r22 == 0) {
            Integer num = totalCaptureResult != null ? (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE) : null;
            return num != null && num.intValue() == 4;
        }
        if (r22 == 1) {
            return true;
        }
        if (r22 == 2) {
            return false;
        }
        throw new AssertionError(r22);
    }

    private boolean isTorchAsFlash(int r42) {
        return this.mUseTorchAsFlash.shouldUseTorchAsFlash() || this.mTemplate == 3 || r42 == 1;
    }

    public void setTemplate(int r12) {
        this.mTemplate = r12;
    }

    @NonNull
    public m5.a<List<Void>> submitStillCaptures(@NonNull List<CaptureConfig> list, int r10, int r11, int r12) {
        OverrideAeModeForStillCapture overrideAeModeForStillCapture = new OverrideAeModeForStillCapture(this.mCameraQuirk);
        Pipeline pipeline = new Pipeline(this.mTemplate, this.mExecutor, this.mCameraControl, this.mIsLegacyDevice, overrideAeModeForStillCapture);
        if (r10 == 0) {
            pipeline.addTask(new AfTask(this.mCameraControl));
        }
        pipeline.addTask(isTorchAsFlash(r12) ? new TorchTask(this.mCameraControl, r11) : new AePreCaptureTask(this.mCameraControl, r11, overrideAeModeForStillCapture));
        return Futures.nonCancellationPropagating(pipeline.executeCapture(list, r11));
    }
}
