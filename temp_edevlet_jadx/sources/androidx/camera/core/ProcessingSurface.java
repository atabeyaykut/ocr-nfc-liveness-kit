package androidx.camera.core;

import android.os.Handler;
import android.os.Looper;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CaptureProcessor;
import androidx.camera.core.impl.CaptureStage;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.SingleImageProxyBundle;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import java.util.concurrent.ScheduledExecutorService;

@RequiresApi(21)
/* loaded from: classes.dex */
final class ProcessingSurface extends DeferrableSurface {
    private static final int MAX_IMAGES = 2;
    private static final String TAG = "ProcessingSurfaceTextur";
    private final CameraCaptureCallback mCameraCaptureCallback;

    @NonNull
    @GuardedBy("mLock")
    final CaptureProcessor mCaptureProcessor;
    final CaptureStage mCaptureStage;
    private final Handler mImageReaderHandler;

    @GuardedBy("mLock")
    final MetadataImageReader mInputImageReader;

    @GuardedBy("mLock")
    final Surface mInputSurface;
    final Object mLock;
    private final DeferrableSurface mOutputDeferrableSurface;

    @GuardedBy("mLock")
    boolean mReleased;

    @NonNull
    private final Size mResolution;
    private String mTagBundleKey;
    private final ImageReaderProxy.OnImageAvailableListener mTransformedListener;

    public ProcessingSurface(int r52, int r6, int r72, @Nullable Handler handler, @NonNull CaptureStage captureStage, @NonNull CaptureProcessor captureProcessor, @NonNull DeferrableSurface deferrableSurface, @NonNull String str) {
        super(new Size(r52, r6), r72);
        this.mLock = new Object();
        ImageReaderProxy.OnImageAvailableListener onImageAvailableListener = new ImageReaderProxy.OnImageAvailableListener() { // from class: androidx.camera.core.u0
            @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
            public final void onImageAvailable(ImageReaderProxy imageReaderProxy) {
                this.f802a.lambda$new$0(imageReaderProxy);
            }
        };
        this.mTransformedListener = onImageAvailableListener;
        this.mReleased = false;
        Size size = new Size(r52, r6);
        this.mResolution = size;
        if (handler != null) {
            this.mImageReaderHandler = handler;
        } else {
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper == null) {
                throw new IllegalStateException("Creating a ProcessingSurface requires a non-null Handler, or be created  on a thread with a Looper.");
            }
            this.mImageReaderHandler = new Handler(looperMyLooper);
        }
        ScheduledExecutorService scheduledExecutorServiceNewHandlerExecutor = CameraXExecutors.newHandlerExecutor(this.mImageReaderHandler);
        MetadataImageReader metadataImageReader = new MetadataImageReader(r52, r6, r72, 2);
        this.mInputImageReader = metadataImageReader;
        metadataImageReader.setOnImageAvailableListener(onImageAvailableListener, scheduledExecutorServiceNewHandlerExecutor);
        this.mInputSurface = metadataImageReader.getSurface();
        this.mCameraCaptureCallback = metadataImageReader.getCameraCaptureCallback();
        this.mCaptureProcessor = captureProcessor;
        captureProcessor.onResolutionUpdate(size);
        this.mCaptureStage = captureStage;
        this.mOutputDeferrableSurface = deferrableSurface;
        this.mTagBundleKey = str;
        Futures.addCallback(deferrableSurface.getSurface(), new FutureCallback<Surface>() { // from class: androidx.camera.core.ProcessingSurface.1
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th2) {
                Logger.e(ProcessingSurface.TAG, "Failed to extract Listenable<Surface>.", th2);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Surface surface) {
                synchronized (ProcessingSurface.this.mLock) {
                    ProcessingSurface.this.mCaptureProcessor.onOutputSurface(surface, 1);
                }
            }
        }, CameraXExecutors.directExecutor());
        getTerminationFuture().addListener(new o(1, this), CameraXExecutors.directExecutor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ImageReaderProxy imageReaderProxy) {
        synchronized (this.mLock) {
            imageIncoming(imageReaderProxy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release() {
        synchronized (this.mLock) {
            if (this.mReleased) {
                return;
            }
            this.mInputImageReader.close();
            this.mInputSurface.release();
            this.mOutputDeferrableSurface.close();
            this.mReleased = true;
        }
    }

    @Nullable
    public CameraCaptureCallback getCameraCaptureCallback() {
        CameraCaptureCallback cameraCaptureCallback;
        synchronized (this.mLock) {
            if (this.mReleased) {
                throw new IllegalStateException("ProcessingSurface already released!");
            }
            cameraCaptureCallback = this.mCameraCaptureCallback;
        }
        return cameraCaptureCallback;
    }

    @GuardedBy("mLock")
    public void imageIncoming(ImageReaderProxy imageReaderProxy) {
        ImageProxy imageProxyAcquireNextImage;
        if (this.mReleased) {
            return;
        }
        try {
            imageProxyAcquireNextImage = imageReaderProxy.acquireNextImage();
        } catch (IllegalStateException e10) {
            Logger.e(TAG, "Failed to acquire next image.", e10);
            imageProxyAcquireNextImage = null;
        }
        if (imageProxyAcquireNextImage == null) {
            return;
        }
        ImageInfo imageInfo = imageProxyAcquireNextImage.getImageInfo();
        if (imageInfo == null) {
            imageProxyAcquireNextImage.close();
            return;
        }
        Integer num = (Integer) imageInfo.getTagBundle().getTag(this.mTagBundleKey);
        if (num == null) {
            imageProxyAcquireNextImage.close();
            return;
        }
        if (this.mCaptureStage.getId() == num.intValue()) {
            SingleImageProxyBundle singleImageProxyBundle = new SingleImageProxyBundle(imageProxyAcquireNextImage, this.mTagBundleKey);
            this.mCaptureProcessor.process(singleImageProxyBundle);
            singleImageProxyBundle.close();
        } else {
            Logger.w(TAG, "ImageProxyBundle does not contain this id: " + num);
            imageProxyAcquireNextImage.close();
        }
    }

    @Override // androidx.camera.core.impl.DeferrableSurface
    @NonNull
    public m5.a<Surface> provideSurface() {
        m5.a<Surface> aVarImmediateFuture;
        synchronized (this.mLock) {
            aVarImmediateFuture = Futures.immediateFuture(this.mInputSurface);
        }
        return aVarImmediateFuture;
    }
}
