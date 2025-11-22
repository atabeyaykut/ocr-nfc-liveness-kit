package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.ImageInfo;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.utils.futures.Futures;
import java.util.Collections;
import java.util.List;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class SingleImageProxyBundle implements ImageProxyBundle {
    private final int mCaptureId;
    private final ImageProxy mImageProxy;

    public SingleImageProxyBundle(@NonNull ImageProxy imageProxy, int r22) {
        this.mCaptureId = r22;
        this.mImageProxy = imageProxy;
    }

    public SingleImageProxyBundle(@NonNull ImageProxy imageProxy, @NonNull String str) {
        ImageInfo imageInfo = imageProxy.getImageInfo();
        if (imageInfo == null) {
            throw new IllegalArgumentException("ImageProxy has no associated ImageInfo");
        }
        Integer num = (Integer) imageInfo.getTagBundle().getTag(str);
        if (num == null) {
            throw new IllegalArgumentException("ImageProxy has no associated tag");
        }
        this.mCaptureId = num.intValue();
        this.mImageProxy = imageProxy;
    }

    public void close() {
        this.mImageProxy.close();
    }

    @Override // androidx.camera.core.impl.ImageProxyBundle
    @NonNull
    public List<Integer> getCaptureIds() {
        return Collections.singletonList(Integer.valueOf(this.mCaptureId));
    }

    @Override // androidx.camera.core.impl.ImageProxyBundle
    @NonNull
    public m5.a<ImageProxy> getImageProxy(int r22) {
        return r22 != this.mCaptureId ? Futures.immediateFailedFuture(new IllegalArgumentException("Capture id does not exist in the bundle")) : Futures.immediateFuture(this.mImageProxy);
    }
}
