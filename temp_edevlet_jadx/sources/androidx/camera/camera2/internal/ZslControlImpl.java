package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import android.media.Image;
import android.media.ImageWriter;
import android.os.Build;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.ImageReaderProxys;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.compat.ImageWriterCompat;
import java.util.LinkedList;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Queue;

@RequiresApi(23)
/* loaded from: classes.dex */
final class ZslControlImpl implements ZslControl {
    private static final int MAX_IMAGES = 2;
    private boolean mIsPrivateReprocessingSupported;
    private boolean mIsYuvReprocessingSupported;
    private DeferrableSurface mReprocessingImageDeferrableSurface;
    SafeCloseImageReaderProxy mReprocessingImageReader;

    @Nullable
    ImageWriter mReprocessingImageWriter;

    @NonNull
    final Queue<ImageProxy> mImageRingBuffer = new LinkedList();

    @NonNull
    final Queue<TotalCaptureResult> mTotalCaptureResultRingBuffer = new LinkedList();
    private boolean mIsZslDisabled = false;

    public ZslControlImpl(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        this.mIsYuvReprocessingSupported = false;
        this.mIsPrivateReprocessingSupported = false;
        this.mIsYuvReprocessingSupported = ZslUtil.isCapabilitySupported(cameraCharacteristicsCompat, 7);
        this.mIsPrivateReprocessingSupported = ZslUtil.isCapabilitySupported(cameraCharacteristicsCompat, 4);
    }

    private void cleanup() {
        Queue<ImageProxy> queue = this.mImageRingBuffer;
        while (!queue.isEmpty()) {
            queue.remove().close();
        }
        this.mTotalCaptureResultRingBuffer.clear();
        DeferrableSurface deferrableSurface = this.mReprocessingImageDeferrableSurface;
        if (deferrableSurface != null) {
            SafeCloseImageReaderProxy safeCloseImageReaderProxy = this.mReprocessingImageReader;
            if (safeCloseImageReaderProxy != null) {
                deferrableSurface.getTerminationFuture().addListener(new o0(1, safeCloseImageReaderProxy), CameraXExecutors.mainThreadExecutor());
            }
            deferrableSurface.close();
        }
        ImageWriter imageWriter = this.mReprocessingImageWriter;
        if (imageWriter != null) {
            imageWriter.close();
            this.mReprocessingImageWriter = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addZslConfig$0(ImageReaderProxy imageReaderProxy) {
        ImageProxy imageProxyAcquireLatestImage = imageReaderProxy.acquireLatestImage();
        if (imageProxyAcquireLatestImage != null) {
            this.mImageRingBuffer.add(imageProxyAcquireLatestImage);
        }
    }

    @Override // androidx.camera.camera2.internal.ZslControl
    public void addZslConfig(@NonNull Size size, @NonNull SessionConfig.Builder builder) {
        if (this.mIsZslDisabled) {
            return;
        }
        if (this.mIsYuvReprocessingSupported || this.mIsPrivateReprocessingSupported) {
            cleanup();
            int r02 = this.mIsYuvReprocessingSupported ? 35 : 34;
            SafeCloseImageReaderProxy safeCloseImageReaderProxy = new SafeCloseImageReaderProxy(ImageReaderProxys.createIsolatedReader(size.getWidth(), size.getHeight(), r02, 2));
            this.mReprocessingImageReader = safeCloseImageReaderProxy;
            safeCloseImageReaderProxy.setOnImageAvailableListener(new ImageReaderProxy.OnImageAvailableListener() { // from class: androidx.camera.camera2.internal.o1
                @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
                public final void onImageAvailable(ImageReaderProxy imageReaderProxy) {
                    this.f589a.lambda$addZslConfig$0(imageReaderProxy);
                }
            }, CameraXExecutors.ioExecutor());
            ImmediateSurface immediateSurface = new ImmediateSurface(this.mReprocessingImageReader.getSurface(), new Size(this.mReprocessingImageReader.getWidth(), this.mReprocessingImageReader.getHeight()), r02);
            this.mReprocessingImageDeferrableSurface = immediateSurface;
            SafeCloseImageReaderProxy safeCloseImageReaderProxy2 = this.mReprocessingImageReader;
            m5.a<Void> terminationFuture = immediateSurface.getTerminationFuture();
            Objects.requireNonNull(safeCloseImageReaderProxy2);
            terminationFuture.addListener(new m(1, safeCloseImageReaderProxy2), CameraXExecutors.mainThreadExecutor());
            builder.addSurface(this.mReprocessingImageDeferrableSurface);
            builder.addCameraCaptureCallback(new CameraCaptureCallback() { // from class: androidx.camera.camera2.internal.ZslControlImpl.1
                @Override // androidx.camera.core.impl.CameraCaptureCallback
                public void onCaptureCompleted(@NonNull CameraCaptureResult cameraCaptureResult) {
                    super.onCaptureCompleted(cameraCaptureResult);
                    CaptureResult captureResult = cameraCaptureResult.getCaptureResult();
                    if (captureResult == null || !(captureResult instanceof TotalCaptureResult)) {
                        return;
                    }
                    ZslControlImpl.this.mTotalCaptureResultRingBuffer.add((TotalCaptureResult) captureResult);
                }
            });
            builder.addSessionStateCallback(new CameraCaptureSession.StateCallback() { // from class: androidx.camera.camera2.internal.ZslControlImpl.2
                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigureFailed(@NonNull CameraCaptureSession cameraCaptureSession) {
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigured(@NonNull CameraCaptureSession cameraCaptureSession) {
                    Surface inputSurface = cameraCaptureSession.getInputSurface();
                    if (inputSurface != null) {
                        ZslControlImpl.this.mReprocessingImageWriter = ImageWriterCompat.newInstance(inputSurface, 1);
                    }
                }
            });
            builder.setInputConfiguration(new InputConfiguration(this.mReprocessingImageReader.getWidth(), this.mReprocessingImageReader.getHeight(), this.mReprocessingImageReader.getImageFormat()));
        }
    }

    @Override // androidx.camera.camera2.internal.ZslControl
    @Nullable
    public ImageProxy dequeueImageFromBuffer() {
        try {
            return this.mImageRingBuffer.remove();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }

    @Override // androidx.camera.camera2.internal.ZslControl
    public boolean enqueueImageToImageWriter(@NonNull ImageProxy imageProxy) {
        ImageWriter imageWriter;
        Image image = imageProxy.getImage();
        if (Build.VERSION.SDK_INT < 23 || (imageWriter = this.mReprocessingImageWriter) == null || image == null) {
            return false;
        }
        ImageWriterCompat.queueInputImage(imageWriter, image);
        return true;
    }

    @Override // androidx.camera.camera2.internal.ZslControl
    public void setZslDisabled(boolean z10) {
        this.mIsZslDisabled = z10;
    }
}
