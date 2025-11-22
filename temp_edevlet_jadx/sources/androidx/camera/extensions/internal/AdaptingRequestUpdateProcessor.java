package androidx.camera.extensions.internal;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.impl.Camera2CameraCaptureResultConverter;
import androidx.camera.core.ImageInfo;
import androidx.camera.core.impl.CameraCaptureResults;
import androidx.camera.core.impl.CaptureStage;
import androidx.camera.core.impl.ImageInfoProcessor;
import androidx.camera.extensions.impl.PreviewExtenderImpl;
import androidx.camera.extensions.impl.RequestUpdateProcessorImpl;
import androidx.core.util.Preconditions;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class AdaptingRequestUpdateProcessor implements ImageInfoProcessor, CloseableProcessor {
    private BlockingCloseAccessCounter mAccessCounter = new BlockingCloseAccessCounter();
    private final PreviewExtenderImpl mPreviewExtenderImpl;
    private final RequestUpdateProcessorImpl mProcessorImpl;

    public AdaptingRequestUpdateProcessor(@NonNull PreviewExtenderImpl previewExtenderImpl) {
        Preconditions.checkArgument(previewExtenderImpl.getProcessorType() == PreviewExtenderImpl.ProcessorType.PROCESSOR_TYPE_REQUEST_UPDATE_ONLY, "AdaptingRequestUpdateProcess can only adapt extender with PROCESSOR_TYPE_REQUEST_UPDATE_ONLY ProcessorType.");
        this.mPreviewExtenderImpl = previewExtenderImpl;
        this.mProcessorImpl = previewExtenderImpl.getProcessor();
    }

    @Override // androidx.camera.extensions.internal.CloseableProcessor
    public void close() {
        this.mAccessCounter.destroyAndWaitForZeroAccess();
    }

    @Override // androidx.camera.core.impl.ImageInfoProcessor
    @Nullable
    public CaptureStage getCaptureStage() {
        if (!this.mAccessCounter.tryIncrement()) {
            return null;
        }
        try {
            return new AdaptingCaptureStage(this.mPreviewExtenderImpl.getCaptureStage());
        } finally {
            this.mAccessCounter.decrement();
        }
    }

    @Override // androidx.camera.core.impl.ImageInfoProcessor
    public boolean process(@NonNull ImageInfo imageInfo) {
        boolean z10 = false;
        if (!this.mAccessCounter.tryIncrement()) {
            return false;
        }
        try {
            CaptureResult captureResult = Camera2CameraCaptureResultConverter.getCaptureResult(CameraCaptureResults.retrieveCameraCaptureResult(imageInfo));
            if (captureResult instanceof TotalCaptureResult) {
                if (this.mProcessorImpl.process((TotalCaptureResult) captureResult) != null) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            this.mAccessCounter.decrement();
        }
    }
}
