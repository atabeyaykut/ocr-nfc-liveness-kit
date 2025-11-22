package androidx.camera.core;

import android.media.Image;
import android.media.ImageWriter;
import android.os.Build;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.ForwardingImageProxy;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.internal.compat.ImageWriterCompat;
import androidx.core.util.Preconditions;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.nio.ByteBuffer;
import java.util.Locale;

@RequiresApi(21)
/* loaded from: classes.dex */
final class ImageProcessingUtil {
    private static final String TAG = "ImageProcessingUtil";
    private static int sImageCount;

    public enum Result {
        UNKNOWN,
        SUCCESS,
        ERROR_CONVERSION
    }

    static {
        System.loadLibrary("image_processing_util_jni");
    }

    private ImageProcessingUtil() {
    }

    public static boolean applyPixelShiftForYUV(@NonNull ImageProxy imageProxy) {
        String str;
        if (!isSupportedYUVFormat(imageProxy)) {
            str = "Unsupported format for YUV to RGB";
        } else {
            if (applyPixelShiftInternal(imageProxy) != Result.ERROR_CONVERSION) {
                return true;
            }
            str = "One pixel shift for YUV failure";
        }
        Logger.e(TAG, str);
        return false;
    }

    @NonNull
    private static Result applyPixelShiftInternal(@NonNull ImageProxy imageProxy) {
        int width = imageProxy.getWidth();
        int height = imageProxy.getHeight();
        int rowStride = imageProxy.getPlanes()[0].getRowStride();
        int rowStride2 = imageProxy.getPlanes()[1].getRowStride();
        int rowStride3 = imageProxy.getPlanes()[2].getRowStride();
        int pixelStride = imageProxy.getPlanes()[0].getPixelStride();
        int pixelStride2 = imageProxy.getPlanes()[1].getPixelStride();
        return nativeShiftPixel(imageProxy.getPlanes()[0].getBuffer(), rowStride, imageProxy.getPlanes()[1].getBuffer(), rowStride2, imageProxy.getPlanes()[2].getBuffer(), rowStride3, pixelStride, pixelStride2, width, height, pixelStride, pixelStride2, pixelStride2) != 0 ? Result.ERROR_CONVERSION : Result.SUCCESS;
    }

    @Nullable
    public static ImageProxy convertJpegBytesToImage(@NonNull ImageReaderProxy imageReaderProxy, @NonNull byte[] bArr) {
        Preconditions.checkArgument(imageReaderProxy.getImageFormat() == 256);
        Preconditions.checkNotNull(bArr);
        Surface surface = imageReaderProxy.getSurface();
        Preconditions.checkNotNull(surface);
        if (nativeWriteJpegToSurface(bArr, surface) != 0) {
            Logger.e(TAG, "Failed to enqueue JPEG image.");
            return null;
        }
        ImageProxy imageProxyAcquireLatestImage = imageReaderProxy.acquireLatestImage();
        if (imageProxyAcquireLatestImage == null) {
            Logger.e(TAG, "Failed to get acquire JPEG image.");
        }
        return imageProxyAcquireLatestImage;
    }

    @Nullable
    public static ImageProxy convertYUVToRGB(@NonNull final ImageProxy imageProxy, @NonNull ImageReaderProxy imageReaderProxy, @Nullable ByteBuffer byteBuffer, @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 359) int r10, boolean z10) {
        String str;
        if (isSupportedYUVFormat(imageProxy)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!isSupportedRotationDegrees(r10)) {
                str = "Unsupported rotation degrees for rotate RGB";
            } else if (convertYUVToRGBInternal(imageProxy, imageReaderProxy.getSurface(), byteBuffer, r10, z10) == Result.ERROR_CONVERSION) {
                str = "YUV to RGB conversion failure";
            } else {
                if (Log.isLoggable("MH", 3)) {
                    Logger.d(TAG, String.format(Locale.US, "Image processing performance profiling, duration: [%d], image count: %d", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis), Integer.valueOf(sImageCount)));
                    sImageCount++;
                }
                final ImageProxy imageProxyAcquireLatestImage = imageReaderProxy.acquireLatestImage();
                if (imageProxyAcquireLatestImage != null) {
                    SingleCloseImageProxy singleCloseImageProxy = new SingleCloseImageProxy(imageProxyAcquireLatestImage);
                    singleCloseImageProxy.addOnImageCloseListener(new ForwardingImageProxy.OnImageCloseListener() { // from class: androidx.camera.core.j0
                        @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
                        public final void onImageClose(ImageProxy imageProxy2) {
                            ImageProcessingUtil.lambda$convertYUVToRGB$0(imageProxyAcquireLatestImage, imageProxy, imageProxy2);
                        }
                    });
                    return singleCloseImageProxy;
                }
                str = "YUV to RGB acquireLatestImage failure";
            }
        } else {
            str = "Unsupported format for YUV to RGB";
        }
        Logger.e(TAG, str);
        return null;
    }

    @NonNull
    private static Result convertYUVToRGBInternal(@NonNull ImageProxy imageProxy, @NonNull Surface surface, @Nullable ByteBuffer byteBuffer, int r19, boolean z10) {
        int width = imageProxy.getWidth();
        int height = imageProxy.getHeight();
        int rowStride = imageProxy.getPlanes()[0].getRowStride();
        int rowStride2 = imageProxy.getPlanes()[1].getRowStride();
        int rowStride3 = imageProxy.getPlanes()[2].getRowStride();
        int pixelStride = imageProxy.getPlanes()[0].getPixelStride();
        int pixelStride2 = imageProxy.getPlanes()[1].getPixelStride();
        return nativeConvertAndroid420ToABGR(imageProxy.getPlanes()[0].getBuffer(), rowStride, imageProxy.getPlanes()[1].getBuffer(), rowStride2, imageProxy.getPlanes()[2].getBuffer(), rowStride3, pixelStride, pixelStride2, surface, byteBuffer, width, height, z10 ? pixelStride : 0, z10 ? pixelStride2 : 0, z10 ? pixelStride2 : 0, r19) != 0 ? Result.ERROR_CONVERSION : Result.SUCCESS;
    }

    private static boolean isSupportedRotationDegrees(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 359) int r12) {
        return r12 == 0 || r12 == 90 || r12 == 180 || r12 == 270;
    }

    private static boolean isSupportedYUVFormat(@NonNull ImageProxy imageProxy) {
        return imageProxy.getFormat() == 35 && imageProxy.getPlanes().length == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$convertYUVToRGB$0(ImageProxy imageProxy, ImageProxy imageProxy2, ImageProxy imageProxy3) {
        if (imageProxy == null || imageProxy2 == null) {
            return;
        }
        imageProxy2.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$rotateYUV$1(ImageProxy imageProxy, ImageProxy imageProxy2, ImageProxy imageProxy3) {
        if (imageProxy == null || imageProxy2 == null) {
            return;
        }
        imageProxy2.close();
    }

    private static native int nativeConvertAndroid420ToABGR(@NonNull ByteBuffer byteBuffer, int r12, @NonNull ByteBuffer byteBuffer2, int r32, @NonNull ByteBuffer byteBuffer3, int r52, int r6, int r72, @NonNull Surface surface, @Nullable ByteBuffer byteBuffer4, int r10, int r11, int r122, int r13, int r14, int r15);

    private static native int nativeRotateYUV(@NonNull ByteBuffer byteBuffer, int r12, @NonNull ByteBuffer byteBuffer2, int r32, @NonNull ByteBuffer byteBuffer3, int r52, int r6, @NonNull ByteBuffer byteBuffer4, int r82, int r92, @NonNull ByteBuffer byteBuffer5, int r11, int r122, @NonNull ByteBuffer byteBuffer6, int r14, int r15, @NonNull ByteBuffer byteBuffer7, @NonNull ByteBuffer byteBuffer8, @NonNull ByteBuffer byteBuffer9, int r19, int r20, int r21);

    private static native int nativeShiftPixel(@NonNull ByteBuffer byteBuffer, int r12, @NonNull ByteBuffer byteBuffer2, int r32, @NonNull ByteBuffer byteBuffer3, int r52, int r6, int r72, int r82, int r92, int r10, int r11, int r122);

    private static native int nativeWriteJpegToSurface(@NonNull byte[] bArr, @NonNull Surface surface);

    @Nullable
    public static ImageProxy rotateYUV(@NonNull final ImageProxy imageProxy, @NonNull ImageReaderProxy imageReaderProxy, @NonNull ImageWriter imageWriter, @NonNull ByteBuffer byteBuffer, @NonNull ByteBuffer byteBuffer2, @NonNull ByteBuffer byteBuffer3, @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 359) int r15) {
        String str;
        if (!isSupportedYUVFormat(imageProxy)) {
            str = "Unsupported format for rotate YUV";
        } else if (isSupportedRotationDegrees(r15)) {
            Result result = Result.ERROR_CONVERSION;
            if (((Build.VERSION.SDK_INT < 23 || r15 <= 0) ? result : rotateYUVInternal(imageProxy, imageWriter, byteBuffer, byteBuffer2, byteBuffer3, r15)) == result) {
                str = "rotate YUV failure";
            } else {
                final ImageProxy imageProxyAcquireLatestImage = imageReaderProxy.acquireLatestImage();
                if (imageProxyAcquireLatestImage != null) {
                    SingleCloseImageProxy singleCloseImageProxy = new SingleCloseImageProxy(imageProxyAcquireLatestImage);
                    singleCloseImageProxy.addOnImageCloseListener(new ForwardingImageProxy.OnImageCloseListener() { // from class: androidx.camera.core.k0
                        @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
                        public final void onImageClose(ImageProxy imageProxy2) {
                            ImageProcessingUtil.lambda$rotateYUV$1(imageProxyAcquireLatestImage, imageProxy, imageProxy2);
                        }
                    });
                    return singleCloseImageProxy;
                }
                str = "YUV rotation acquireLatestImage failure";
            }
        } else {
            str = "Unsupported rotation degrees for rotate YUV";
        }
        Logger.e(TAG, str);
        return null;
    }

    @Nullable
    @RequiresApi(23)
    private static Result rotateYUVInternal(@NonNull ImageProxy imageProxy, @NonNull ImageWriter imageWriter, @NonNull ByteBuffer byteBuffer, @NonNull ByteBuffer byteBuffer2, @NonNull ByteBuffer byteBuffer3, int r28) {
        int width = imageProxy.getWidth();
        int height = imageProxy.getHeight();
        int rowStride = imageProxy.getPlanes()[0].getRowStride();
        int rowStride2 = imageProxy.getPlanes()[1].getRowStride();
        int rowStride3 = imageProxy.getPlanes()[2].getRowStride();
        int pixelStride = imageProxy.getPlanes()[1].getPixelStride();
        Image imageDequeueInputImage = ImageWriterCompat.dequeueInputImage(imageWriter);
        if (imageDequeueInputImage != null && nativeRotateYUV(imageProxy.getPlanes()[0].getBuffer(), rowStride, imageProxy.getPlanes()[1].getBuffer(), rowStride2, imageProxy.getPlanes()[2].getBuffer(), rowStride3, pixelStride, imageDequeueInputImage.getPlanes()[0].getBuffer(), imageDequeueInputImage.getPlanes()[0].getRowStride(), imageDequeueInputImage.getPlanes()[0].getPixelStride(), imageDequeueInputImage.getPlanes()[1].getBuffer(), imageDequeueInputImage.getPlanes()[1].getRowStride(), imageDequeueInputImage.getPlanes()[1].getPixelStride(), imageDequeueInputImage.getPlanes()[2].getBuffer(), imageDequeueInputImage.getPlanes()[2].getRowStride(), imageDequeueInputImage.getPlanes()[2].getPixelStride(), byteBuffer, byteBuffer2, byteBuffer3, width, height, r28) == 0) {
            ImageWriterCompat.queueInputImage(imageWriter, imageDequeueInputImage);
            return Result.SUCCESS;
        }
        return Result.ERROR_CONVERSION;
    }
}
