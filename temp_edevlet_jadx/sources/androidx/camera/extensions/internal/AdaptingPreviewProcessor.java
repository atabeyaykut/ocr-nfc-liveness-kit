package androidx.camera.extensions.internal;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.impl.Camera2CameraCaptureResultConverter;
import androidx.camera.core.ExperimentalGetImage;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureResults;
import androidx.camera.core.impl.CaptureProcessor;
import androidx.camera.core.impl.ImageProxyBundle;
import androidx.camera.core.impl.m;
import androidx.camera.extensions.impl.PreviewImageProcessorImpl;
import androidx.core.util.Preconditions;
import java.util.List;
import java.util.concurrent.ExecutionException;
import m5.a;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class AdaptingPreviewProcessor implements CaptureProcessor, CloseableProcessor {
    private static final String TAG = "AdaptingPreviewProcesso";
    private BlockingCloseAccessCounter mAccessCounter = new BlockingCloseAccessCounter();
    private final PreviewImageProcessorImpl mImpl;

    public AdaptingPreviewProcessor(@NonNull PreviewImageProcessorImpl previewImageProcessorImpl) {
        this.mImpl = previewImageProcessorImpl;
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    public void close() {
        this.mAccessCounter.destroyAndWaitForZeroAccess();
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    public final /* synthetic */ a getCloseFuture() {
        return m.b(this);
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    public void onOutputSurface(@NonNull Surface surface, int r32) {
        if (this.mAccessCounter.tryIncrement()) {
            try {
                this.mImpl.onOutputSurface(surface, r32);
                this.mImpl.onImageFormatUpdate(35);
            } finally {
                this.mAccessCounter.decrement();
            }
        }
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    public void onResolutionUpdate(@NonNull Size size) {
        if (this.mAccessCounter.tryIncrement()) {
            try {
                this.mImpl.onResolutionUpdate(size);
            } finally {
                this.mAccessCounter.decrement();
            }
        }
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    @ExperimentalGetImage
    public void process(@NonNull ImageProxyBundle imageProxyBundle) throws ExecutionException, InterruptedException {
        List<Integer> captureIds = imageProxyBundle.getCaptureIds();
        Preconditions.checkArgument(captureIds.size() == 1, "Processing preview bundle must be 1, but found " + captureIds.size());
        a<ImageProxy> imageProxy = imageProxyBundle.getImageProxy(captureIds.get(0).intValue());
        Preconditions.checkArgument(imageProxy.isDone());
        try {
            ImageProxy imageProxy2 = imageProxy.get();
            Image image = imageProxy2.getImage();
            CaptureResult captureResult = Camera2CameraCaptureResultConverter.getCaptureResult(CameraCaptureResults.retrieveCameraCaptureResult(imageProxy2.getImageInfo()));
            TotalCaptureResult totalCaptureResult = captureResult instanceof TotalCaptureResult ? (TotalCaptureResult) captureResult : null;
            if (image != null && this.mAccessCounter.tryIncrement()) {
                try {
                    this.mImpl.process(image, totalCaptureResult);
                } finally {
                    this.mAccessCounter.decrement();
                }
            }
        } catch (InterruptedException | ExecutionException unused) {
            Logger.e(TAG, "Unable to retrieve ImageProxy from bundle");
        }
    }
}
