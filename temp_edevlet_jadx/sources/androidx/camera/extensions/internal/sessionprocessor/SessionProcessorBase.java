package androidx.camera.extensions.internal.sessionprocessor;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.OutputSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.impl.SessionProcessorSurface;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@RequiresApi(21)
/* loaded from: classes.dex */
abstract class SessionProcessorBase implements SessionProcessor {
    private static final String TAG = "SessionProcessorBase";
    private String mCameraId;

    @Nullable
    private HandlerThread mImageReaderHandlerThread;

    @NonNull
    @GuardedBy("mLock")
    private Map<Integer, ImageReader> mImageReaderMap = new HashMap();

    @GuardedBy("mLock")
    private List<DeferrableSurface> mSurfacesList = new ArrayList();
    private final Object mLock = new Object();

    public static class ImageRefHolder implements ImageReference {
        private Image mImage;
        private final Object mImageLock = new Object();
        private int mRefCount = 1;

        public ImageRefHolder(@NonNull Image image) {
            this.mImage = image;
        }

        @Override // androidx.camera.extensions.internal.sessionprocessor.ImageReference
        public boolean decrement() {
            synchronized (this.mImageLock) {
                int r12 = this.mRefCount;
                if (r12 <= 0) {
                    return false;
                }
                int r13 = r12 - 1;
                this.mRefCount = r13;
                if (r13 <= 0) {
                    this.mImage.close();
                }
                return true;
            }
        }

        @Override // androidx.camera.extensions.internal.sessionprocessor.ImageReference
        @Nullable
        public Image get() {
            return this.mImage;
        }

        @Override // androidx.camera.extensions.internal.sessionprocessor.ImageReference
        public boolean increment() {
            synchronized (this.mImageLock) {
                int r12 = this.mRefCount;
                if (r12 <= 0) {
                    return false;
                }
                this.mRefCount = r12 + 1;
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setImageProcessor$1(ImageProcessor imageProcessor, int r72, ImageReader imageReader) {
        try {
            Image imageAcquireNextImage = imageReader.acquireNextImage();
            imageProcessor.onNextImageAvailable(r72, imageAcquireNextImage.getTimestamp(), new ImageRefHolder(imageAcquireNextImage), null);
        } catch (IllegalStateException e10) {
            Logger.e(TAG, "Failed to acquire next image.", e10);
        }
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public final void deInitSession() {
        Logger.e(TAG, "deInitSession: cameraId=" + this.mCameraId);
        deInitSessionInternal();
        synchronized (this.mLock) {
            Iterator<DeferrableSurface> it = this.mSurfacesList.iterator();
            while (it.hasNext()) {
                it.next().close();
            }
            this.mSurfacesList.clear();
            this.mImageReaderMap.clear();
        }
        HandlerThread handlerThread = this.mImageReaderHandlerThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.mImageReaderHandlerThread = null;
        }
    }

    public abstract void deInitSessionInternal();

    @Override // androidx.camera.core.impl.SessionProcessor
    @NonNull
    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    public final SessionConfig initSession(@NonNull CameraInfo cameraInfo, @NonNull OutputSurface outputSurface, @NonNull OutputSurface outputSurface2, @Nullable OutputSurface outputSurface3) {
        SessionProcessorSurface sessionProcessorSurface;
        List<DeferrableSurface> list;
        Camera2CameraInfo camera2CameraInfoFrom = Camera2CameraInfo.from(cameraInfo);
        Camera2SessionConfig camera2SessionConfigInitSessionInternal = initSessionInternal(camera2CameraInfoFrom.getCameraId(), camera2CameraInfoFrom.getCameraCharacteristicsMap(), outputSurface, outputSurface2, outputSurface3);
        synchronized (this.mLock) {
            for (Camera2OutputConfig camera2OutputConfig : camera2SessionConfigInitSessionInternal.getOutputConfigs()) {
                if (camera2OutputConfig instanceof SurfaceOutputConfig) {
                    sessionProcessorSurface = new SessionProcessorSurface(((SurfaceOutputConfig) camera2OutputConfig).getSurface(), camera2OutputConfig.getId());
                    list = this.mSurfacesList;
                } else if (camera2OutputConfig instanceof ImageReaderOutputConfig) {
                    ImageReaderOutputConfig imageReaderOutputConfig = (ImageReaderOutputConfig) camera2OutputConfig;
                    final ImageReader imageReaderNewInstance = ImageReader.newInstance(imageReaderOutputConfig.getSize().getWidth(), imageReaderOutputConfig.getSize().getHeight(), imageReaderOutputConfig.getImageFormat(), imageReaderOutputConfig.getMaxImages());
                    this.mImageReaderMap.put(Integer.valueOf(camera2OutputConfig.getId()), imageReaderNewInstance);
                    sessionProcessorSurface = new SessionProcessorSurface(imageReaderNewInstance.getSurface(), camera2OutputConfig.getId());
                    sessionProcessorSurface.getTerminationFuture().addListener(new Runnable() { // from class: androidx.camera.extensions.internal.sessionprocessor.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            imageReaderNewInstance.close();
                        }
                    }, CameraXExecutors.directExecutor());
                    list = this.mSurfacesList;
                } else if (camera2OutputConfig instanceof MultiResolutionImageReaderOutputConfig) {
                    throw new UnsupportedOperationException("MultiResolutionImageReader not supported");
                }
                list.add(sessionProcessorSurface);
            }
        }
        SessionConfig.Builder builder = new SessionConfig.Builder();
        synchronized (this.mLock) {
            Iterator<DeferrableSurface> it = this.mSurfacesList.iterator();
            while (it.hasNext()) {
                builder.addSurface(it.next());
            }
        }
        Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
        for (CaptureRequest.Key<?> key : camera2SessionConfigInitSessionInternal.getSessionParameters().keySet()) {
            builder2.setCaptureRequestOption(key, camera2SessionConfigInitSessionInternal.getSessionParameters().get(key));
        }
        builder.setImplementationOptions(builder2.build());
        builder.setTemplateType(camera2SessionConfigInitSessionInternal.getSessionTemplateId());
        HandlerThread handlerThread = new HandlerThread("CameraX-extensions_image_reader");
        this.mImageReaderHandlerThread = handlerThread;
        handlerThread.start();
        this.mCameraId = camera2CameraInfoFrom.getCameraId();
        Logger.d(TAG, "initSession: cameraId=" + this.mCameraId);
        return builder.build();
    }

    @NonNull
    public abstract Camera2SessionConfig initSessionInternal(@NonNull String str, @NonNull Map<String, CameraCharacteristics> map, @NonNull OutputSurface outputSurface, @NonNull OutputSurface outputSurface2, @Nullable OutputSurface outputSurface3);

    public void setImageProcessor(final int r42, @NonNull final ImageProcessor imageProcessor) {
        ImageReader imageReader;
        synchronized (this.mLock) {
            imageReader = this.mImageReaderMap.get(Integer.valueOf(r42));
        }
        if (imageReader != null) {
            imageReader.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: androidx.camera.extensions.internal.sessionprocessor.b
                @Override // android.media.ImageReader.OnImageAvailableListener
                public final void onImageAvailable(ImageReader imageReader2) {
                    SessionProcessorBase.lambda$setImageProcessor$1(imageProcessor, r42, imageReader2);
                }
            }, new Handler(this.mImageReaderHandlerThread.getLooper()));
        }
    }
}
