package androidx.camera.extensions.internal;

import android.content.Context;
import android.os.Build;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.CameraEventCallback;
import androidx.camera.camera2.impl.CameraEventCallbacks;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ConfigProvider;
import androidx.camera.core.impl.PreviewConfig;
import androidx.camera.extensions.impl.CaptureStageImpl;
import androidx.camera.extensions.impl.PreviewExtenderImpl;

@RequiresApi(21)
/* loaded from: classes.dex */
public class PreviewConfigProvider implements ConfigProvider<PreviewConfig> {
    static final Config.Option<Integer> OPTION_PREVIEW_CONFIG_PROVIDER_MODE = Config.Option.create("camerax.extensions.previewConfigProvider.mode", Integer.class);
    private static final String TAG = "PreviewConfigProvider";
    private final Context mContext;
    private final int mEffectMode;
    private final VendorExtender mVendorExtender;

    /* renamed from: androidx.camera.extensions.internal.PreviewConfigProvider$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$camera$extensions$impl$PreviewExtenderImpl$ProcessorType;

        static {
            int[] r02 = new int[PreviewExtenderImpl.ProcessorType.values().length];
            $SwitchMap$androidx$camera$extensions$impl$PreviewExtenderImpl$ProcessorType = r02;
            try {
                r02[PreviewExtenderImpl.ProcessorType.PROCESSOR_TYPE_REQUEST_UPDATE_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$camera$extensions$impl$PreviewExtenderImpl$ProcessorType[PreviewExtenderImpl.ProcessorType.PROCESSOR_TYPE_IMAGE_PROCESSOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class PreviewEventAdapter extends CameraEventCallback implements UseCase.EventCallback {
        final CloseableProcessor mCloseableProcessor;

        @NonNull
        private final Context mContext;

        @NonNull
        final PreviewExtenderImpl mImpl;

        @GuardedBy("mLock")
        volatile boolean mActive = true;
        final Object mLock = new Object();

        @GuardedBy("mLock")
        private volatile int mEnabledSessionCount = 0;

        @GuardedBy("mLock")
        private volatile boolean mUnbind = false;

        public PreviewEventAdapter(@NonNull PreviewExtenderImpl previewExtenderImpl, @NonNull Context context, @Nullable CloseableProcessor closeableProcessor) {
            this.mImpl = previewExtenderImpl;
            this.mContext = context;
            this.mCloseableProcessor = closeableProcessor;
        }

        private void callDeInit() {
            synchronized (this.mLock) {
                if (this.mActive) {
                    CloseableProcessor closeableProcessor = this.mCloseableProcessor;
                    if (closeableProcessor != null) {
                        closeableProcessor.close();
                    }
                    this.mImpl.onDeInit();
                    this.mActive = false;
                }
            }
        }

        @Override // androidx.camera.core.UseCase.EventCallback
        @OptIn(markerClass = {ExperimentalCamera2Interop.class})
        public void onAttach(@NonNull CameraInfo cameraInfo) {
            synchronized (this.mLock) {
                if (this.mActive) {
                    this.mImpl.onInit(Camera2CameraInfo.from(cameraInfo).getCameraId(), Camera2CameraInfo.extractCameraCharacteristics(cameraInfo), this.mContext);
                }
            }
        }

        @Override // androidx.camera.core.UseCase.EventCallback
        public void onDetach() {
            synchronized (this.mLock) {
                this.mUnbind = true;
                if (this.mEnabledSessionCount == 0) {
                    callDeInit();
                }
            }
        }

        @Override // androidx.camera.camera2.impl.CameraEventCallback
        @Nullable
        public CaptureConfig onDisableSession() {
            CaptureStageImpl captureStageImplOnDisableSession;
            try {
                synchronized (this.mLock) {
                    if (!this.mActive || (captureStageImplOnDisableSession = this.mImpl.onDisableSession()) == null) {
                        synchronized (this.mLock) {
                            this.mEnabledSessionCount--;
                            if (this.mEnabledSessionCount == 0 && this.mUnbind) {
                                callDeInit();
                            }
                        }
                        return null;
                    }
                    CaptureConfig captureConfig = new AdaptingCaptureStage(captureStageImplOnDisableSession).getCaptureConfig();
                    synchronized (this.mLock) {
                        this.mEnabledSessionCount--;
                        if (this.mEnabledSessionCount == 0 && this.mUnbind) {
                            callDeInit();
                        }
                    }
                    return captureConfig;
                }
            } catch (Throwable th2) {
                synchronized (this.mLock) {
                    this.mEnabledSessionCount--;
                    if (this.mEnabledSessionCount == 0 && this.mUnbind) {
                        callDeInit();
                    }
                    throw th2;
                }
            }
        }

        @Override // androidx.camera.camera2.impl.CameraEventCallback
        @Nullable
        public CaptureConfig onEnableSession() {
            CaptureStageImpl captureStageImplOnEnableSession;
            try {
                synchronized (this.mLock) {
                    if (!this.mActive || (captureStageImplOnEnableSession = this.mImpl.onEnableSession()) == null) {
                        synchronized (this.mLock) {
                            this.mEnabledSessionCount++;
                        }
                        return null;
                    }
                    CaptureConfig captureConfig = new AdaptingCaptureStage(captureStageImplOnEnableSession).getCaptureConfig();
                    synchronized (this.mLock) {
                        this.mEnabledSessionCount++;
                    }
                    return captureConfig;
                }
            } catch (Throwable th2) {
                synchronized (this.mLock) {
                    this.mEnabledSessionCount++;
                    throw th2;
                }
            }
        }

        @Override // androidx.camera.camera2.impl.CameraEventCallback
        @Nullable
        public CaptureConfig onPresetSession() {
            synchronized (this.mLock) {
                CaptureStageImpl captureStageImplOnPresetSession = this.mImpl.onPresetSession();
                if (captureStageImplOnPresetSession != null) {
                    if (Build.VERSION.SDK_INT >= 28) {
                        return new AdaptingCaptureStage(captureStageImplOnPresetSession).getCaptureConfig();
                    }
                    Logger.w(PreviewConfigProvider.TAG, "The CaptureRequest parameters returned from onPresetSession() will be passed to the camera device as part of the capture session via SessionConfiguration#setSessionParameters(CaptureRequest) which only supported from API level 28!");
                }
                return null;
            }
        }

        @Override // androidx.camera.camera2.impl.CameraEventCallback
        @Nullable
        public CaptureConfig onRepeating() {
            CaptureStageImpl captureStage;
            synchronized (this.mLock) {
                if (!this.mActive || (captureStage = this.mImpl.getCaptureStage()) == null) {
                    return null;
                }
                return new AdaptingCaptureStage(captureStage).getCaptureConfig();
            }
        }
    }

    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    public PreviewConfigProvider(int r12, @NonNull VendorExtender vendorExtender, @NonNull Context context) {
        this.mEffectMode = r12;
        this.mVendorExtender = vendorExtender;
        this.mContext = context;
    }

    @Override // androidx.camera.core.impl.ConfigProvider
    @NonNull
    public PreviewConfig getConfig() {
        Preview.Builder builder = new Preview.Builder();
        updateBuilderConfig(builder, this.mEffectMode, this.mVendorExtender, this.mContext);
        return builder.getUseCaseConfig();
    }

    public void updateBuilderConfig(@NonNull Preview.Builder builder, int r6, @NonNull VendorExtender vendorExtender, @NonNull Context context) {
        UseCase.EventCallback previewEventAdapter;
        UseCase.EventCallback previewEventAdapter2;
        if (vendorExtender instanceof BasicVendorExtender) {
            PreviewExtenderImpl previewExtenderImpl = ((BasicVendorExtender) vendorExtender).getPreviewExtenderImpl();
            if (previewExtenderImpl != null) {
                int r22 = AnonymousClass1.$SwitchMap$androidx$camera$extensions$impl$PreviewExtenderImpl$ProcessorType[previewExtenderImpl.getProcessorType().ordinal()];
                if (r22 == 1) {
                    AdaptingRequestUpdateProcessor adaptingRequestUpdateProcessor = new AdaptingRequestUpdateProcessor(previewExtenderImpl);
                    builder.setImageInfoProcessor(adaptingRequestUpdateProcessor);
                    previewEventAdapter = new PreviewEventAdapter(previewExtenderImpl, context, adaptingRequestUpdateProcessor);
                } else if (r22 != 2) {
                    previewEventAdapter2 = new PreviewEventAdapter(previewExtenderImpl, context, null);
                    new Camera2ImplConfig.Extender(builder).setCameraEventCallback(new CameraEventCallbacks(previewEventAdapter2));
                    builder.setUseCaseEventCallback(previewEventAdapter2);
                } else {
                    AdaptingPreviewProcessor adaptingPreviewProcessor = new AdaptingPreviewProcessor(previewExtenderImpl.getProcessor());
                    builder.setCaptureProcessor(adaptingPreviewProcessor);
                    builder.setIsRgba8888SurfaceRequired(true);
                    previewEventAdapter = new PreviewEventAdapter(previewExtenderImpl, context, adaptingPreviewProcessor);
                }
                previewEventAdapter2 = previewEventAdapter;
                new Camera2ImplConfig.Extender(builder).setCameraEventCallback(new CameraEventCallbacks(previewEventAdapter2));
                builder.setUseCaseEventCallback(previewEventAdapter2);
            } else {
                Logger.e(TAG, "PreviewExtenderImpl is null!");
            }
        } else {
            builder.setIsRgba8888SurfaceRequired(true);
        }
        builder.getMutableConfig().insertOption(OPTION_PREVIEW_CONFIG_PROVIDER_MODE, Integer.valueOf(r6));
        builder.setSupportedResolutions(vendorExtender.getSupportedPreviewOutputResolutions());
    }
}
