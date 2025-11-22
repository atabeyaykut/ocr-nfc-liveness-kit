package androidx.camera.extensions.internal;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.util.Pair;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.impl.Camera2CameraCaptureResultConverter;
import androidx.camera.core.ExperimentalGetImage;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraCaptureResults;
import androidx.camera.core.impl.CaptureProcessor;
import androidx.camera.core.impl.ImageProxyBundle;
import androidx.camera.core.impl.m;
import androidx.camera.extensions.impl.CaptureProcessorImpl;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import m5.a;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class AdaptingCaptureProcessor implements CaptureProcessor {
    private final CaptureProcessorImpl mImpl;

    public AdaptingCaptureProcessor(@NonNull CaptureProcessorImpl captureProcessorImpl) {
        this.mImpl = captureProcessorImpl;
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    public final /* synthetic */ void close() {
        m.a(this);
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    public final /* synthetic */ a getCloseFuture() {
        return m.b(this);
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    public void onOutputSurface(@NonNull Surface surface, int r32) {
        this.mImpl.onOutputSurface(surface, r32);
        this.mImpl.onImageFormatUpdate(r32);
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    public void onResolutionUpdate(@NonNull Size size) {
        this.mImpl.onResolutionUpdate(size);
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    @ExperimentalGetImage
    public void process(@NonNull ImageProxyBundle imageProxyBundle) throws ExecutionException, InterruptedException, TimeoutException {
        CameraCaptureResult cameraCaptureResultRetrieveCameraCaptureResult;
        CaptureResult captureResult;
        List<Integer> captureIds = imageProxyBundle.getCaptureIds();
        HashMap map = new HashMap();
        for (Integer num : captureIds) {
            try {
                ImageProxy imageProxy = imageProxyBundle.getImageProxy(num.intValue()).get(5L, TimeUnit.SECONDS);
                if (imageProxy.getImage() == null || (cameraCaptureResultRetrieveCameraCaptureResult = CameraCaptureResults.retrieveCameraCaptureResult(imageProxy.getImageInfo())) == null || (captureResult = Camera2CameraCaptureResultConverter.getCaptureResult(cameraCaptureResultRetrieveCameraCaptureResult)) == null) {
                    return;
                } else {
                    map.put(num, new Pair(imageProxy.getImage(), (TotalCaptureResult) captureResult));
                }
            } catch (InterruptedException | ExecutionException | TimeoutException unused) {
                return;
            }
        }
        this.mImpl.process(map);
    }
}
