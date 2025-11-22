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
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CaptureBundle;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.CaptureStage;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ConfigProvider;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.extensions.impl.CaptureProcessorImpl;
import androidx.camera.extensions.impl.CaptureStageImpl;
import androidx.camera.extensions.impl.ImageCaptureExtenderImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

@RequiresApi(21)
/* loaded from: classes.dex */
public class ImageCaptureConfigProvider implements ConfigProvider<ImageCaptureConfig> {
    static final Config.Option<Integer> OPTION_IMAGE_CAPTURE_CONFIG_PROVIDER_MODE = Config.Option.create("camerax.extensions.imageCaptureConfigProvider.mode", Integer.class);
    private static final String TAG = "ImageCaptureConfigProvider";
    private final Context mContext;
    private final int mEffectMode;
    private final VendorExtender mVendorExtender;

    public static class ImageCaptureEventAdapter extends CameraEventCallback implements UseCase.EventCallback, CaptureBundle {

        @NonNull
        private final Context mContext;

        @NonNull
        private final ImageCaptureExtenderImpl mImpl;
        private final AtomicBoolean mActive = new AtomicBoolean(true);
        private final Object mLock = new Object();

        @GuardedBy("mLock")
        private volatile int mEnabledSessionCount = 0;

        @GuardedBy("mLock")
        private volatile boolean mUnbind = false;

        public ImageCaptureEventAdapter(@NonNull ImageCaptureExtenderImpl imageCaptureExtenderImpl, @NonNull Context context) {
            this.mImpl = imageCaptureExtenderImpl;
            this.mContext = context;
        }

        private void callDeInit() {
            if (this.mActive.get()) {
                this.mImpl.onDeInit();
                this.mActive.set(false);
            }
        }

        @Override // androidx.camera.core.impl.CaptureBundle
        @Nullable
        public List<CaptureStage> getCaptureStages() {
            List captureStages;
            if (!this.mActive.get() || (captureStages = this.mImpl.getCaptureStages()) == null || captureStages.isEmpty()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = captureStages.iterator();
            while (it.hasNext()) {
                arrayList.add(new AdaptingCaptureStage((CaptureStageImpl) it.next()));
            }
            return arrayList;
        }

        @Override // androidx.camera.core.UseCase.EventCallback
        @OptIn(markerClass = {ExperimentalCamera2Interop.class})
        public void onAttach(@NonNull CameraInfo cameraInfo) {
            if (this.mActive.get()) {
                this.mImpl.onInit(Camera2CameraInfo.from(cameraInfo).getCameraId(), Camera2CameraInfo.extractCameraCharacteristics(cameraInfo), this.mContext);
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
                if (!this.mActive.get() || (captureStageImplOnDisableSession = this.mImpl.onDisableSession()) == null) {
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
                if (!this.mActive.get() || (captureStageImplOnEnableSession = this.mImpl.onEnableSession()) == null) {
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
            CaptureStageImpl captureStageImplOnPresetSession;
            if (!this.mActive.get() || (captureStageImplOnPresetSession = this.mImpl.onPresetSession()) == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT >= 28) {
                return new AdaptingCaptureStage(captureStageImplOnPresetSession).getCaptureConfig();
            }
            Logger.w(ImageCaptureConfigProvider.TAG, "The CaptureRequest parameters returned from onPresetSession() will be passed to the camera device as part of the capture session via SessionConfiguration#setSessionParameters(CaptureRequest) which only supported from API level 28!");
            return null;
        }
    }

    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    public ImageCaptureConfigProvider(int r12, @NonNull VendorExtender vendorExtender, @NonNull Context context) {
        this.mEffectMode = r12;
        this.mVendorExtender = vendorExtender;
        this.mContext = context;
    }

    @Override // androidx.camera.core.impl.ConfigProvider
    @NonNull
    public ImageCaptureConfig getConfig() {
        ImageCapture.Builder builder = new ImageCapture.Builder();
        updateBuilderConfig(builder, this.mEffectMode, this.mVendorExtender, this.mContext);
        return builder.getUseCaseConfig();
    }

    public void updateBuilderConfig(@NonNull ImageCapture.Builder builder, int r6, @NonNull VendorExtender vendorExtender, @NonNull Context context) {
        if (vendorExtender instanceof BasicVendorExtender) {
            ImageCaptureExtenderImpl imageCaptureExtenderImpl = ((BasicVendorExtender) vendorExtender).getImageCaptureExtenderImpl();
            if (imageCaptureExtenderImpl != null) {
                CaptureProcessorImpl captureProcessor = imageCaptureExtenderImpl.getCaptureProcessor();
                if (captureProcessor != null) {
                    builder.setCaptureProcessor(new AdaptingCaptureProcessor(captureProcessor));
                }
                if (imageCaptureExtenderImpl.getMaxCaptureStage() > 0) {
                    builder.setMaxCaptureStages(imageCaptureExtenderImpl.getMaxCaptureStage());
                }
                ImageCaptureEventAdapter imageCaptureEventAdapter = new ImageCaptureEventAdapter(imageCaptureExtenderImpl, context);
                new Camera2ImplConfig.Extender(builder).setCameraEventCallback(new CameraEventCallbacks(imageCaptureEventAdapter));
                builder.setUseCaseEventCallback((UseCase.EventCallback) imageCaptureEventAdapter);
                builder.setCaptureBundle(imageCaptureEventAdapter);
            } else {
                Logger.e(TAG, "ImageCaptureExtenderImpl is null!");
            }
        } else {
            builder.setSessionProcessorEnabled(true);
        }
        builder.getMutableConfig().insertOption(OPTION_IMAGE_CAPTURE_CONFIG_PROVIDER_MODE, Integer.valueOf(r6));
        builder.setSupportedResolutions(vendorExtender.getSupportedCaptureOutputResolutions());
    }
}
