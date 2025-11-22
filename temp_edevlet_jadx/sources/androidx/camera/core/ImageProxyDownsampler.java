package androidx.camera.core;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.ImageProxy;
import java.nio.ByteBuffer;

@RequiresApi(21)
/* loaded from: classes.dex */
final class ImageProxyDownsampler {

    /* renamed from: androidx.camera.core.ImageProxyDownsampler$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$androidx$camera$core$ImageProxyDownsampler$DownsamplingMethod;

        static {
            int[] r02 = new int[DownsamplingMethod.values().length];
            $SwitchMap$androidx$camera$core$ImageProxyDownsampler$DownsamplingMethod = r02;
            try {
                r02[DownsamplingMethod.NEAREST_NEIGHBOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$camera$core$ImageProxyDownsampler$DownsamplingMethod[DownsamplingMethod.AVERAGING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum DownsamplingMethod {
        NEAREST_NEIGHBOR,
        AVERAGING
    }

    public static final class ForwardingImageProxyImpl extends ForwardingImageProxy {
        private final int mDownsampledHeight;
        private final ImageProxy.PlaneProxy[] mDownsampledPlanes;
        private final int mDownsampledWidth;

        public ForwardingImageProxyImpl(ImageProxy imageProxy, ImageProxy.PlaneProxy[] planeProxyArr, int r32, int r42) {
            super(imageProxy);
            this.mDownsampledPlanes = planeProxyArr;
            this.mDownsampledWidth = r32;
            this.mDownsampledHeight = r42;
        }

        @Override // androidx.camera.core.ForwardingImageProxy, androidx.camera.core.ImageProxy
        public synchronized int getHeight() {
            return this.mDownsampledHeight;
        }

        @Override // androidx.camera.core.ForwardingImageProxy, androidx.camera.core.ImageProxy
        @NonNull
        public synchronized ImageProxy.PlaneProxy[] getPlanes() {
            return this.mDownsampledPlanes;
        }

        @Override // androidx.camera.core.ForwardingImageProxy, androidx.camera.core.ImageProxy
        public synchronized int getWidth() {
            return this.mDownsampledWidth;
        }
    }

    private ImageProxyDownsampler() {
    }

    private static ImageProxy.PlaneProxy createPlaneProxy(int r12, int r22, byte[] bArr) {
        return new ImageProxy.PlaneProxy(bArr, r12, r22) { // from class: androidx.camera.core.ImageProxyDownsampler.1
            final ByteBuffer mBuffer;
            final /* synthetic */ byte[] val$data;
            final /* synthetic */ int val$pixelStride;
            final /* synthetic */ int val$rowStride;

            {
                this.val$data = bArr;
                this.val$rowStride = r12;
                this.val$pixelStride = r22;
                this.mBuffer = ByteBuffer.wrap(bArr);
            }

            @Override // androidx.camera.core.ImageProxy.PlaneProxy
            @NonNull
            public ByteBuffer getBuffer() {
                return this.mBuffer;
            }

            @Override // androidx.camera.core.ImageProxy.PlaneProxy
            public int getPixelStride() {
                return this.val$pixelStride;
            }

            @Override // androidx.camera.core.ImageProxy.PlaneProxy
            public int getRowStride() {
                return this.val$rowStride;
            }
        };
    }

    public static ForwardingImageProxy downsample(ImageProxy imageProxy, int r23, int r24, DownsamplingMethod downsamplingMethod) {
        byte[] bArr;
        if (imageProxy.getFormat() != 35) {
            throw new UnsupportedOperationException("Only YUV_420_888 format is currently supported.");
        }
        if (imageProxy.getWidth() < r23 || imageProxy.getHeight() < r24) {
            throw new IllegalArgumentException("Downsampled dimension " + new Size(r23, r24) + " is not <= original dimension " + new Size(imageProxy.getWidth(), imageProxy.getHeight()) + ".");
        }
        if (imageProxy.getWidth() == r23 && imageProxy.getHeight() == r24) {
            return new ForwardingImageProxyImpl(imageProxy, imageProxy.getPlanes(), r23, r24);
        }
        int[] r42 = {imageProxy.getWidth(), imageProxy.getWidth() / 2, imageProxy.getWidth() / 2};
        int[] r52 = {imageProxy.getHeight(), imageProxy.getHeight() / 2, imageProxy.getHeight() / 2};
        int r10 = r23 / 2;
        int[] r92 = {r23, r10, r10};
        int r11 = r24 / 2;
        int[] r102 = {r24, r11, r11};
        ImageProxy.PlaneProxy[] planeProxyArr = new ImageProxy.PlaneProxy[3];
        for (int r6 = 0; r6 < 3; r6++) {
            ImageProxy.PlaneProxy planeProxy = imageProxy.getPlanes()[r6];
            ByteBuffer buffer = planeProxy.getBuffer();
            byte[] bArr2 = new byte[r92[r6] * r102[r6]];
            int r14 = AnonymousClass2.$SwitchMap$androidx$camera$core$ImageProxyDownsampler$DownsamplingMethod[downsamplingMethod.ordinal()];
            if (r14 == 1) {
                bArr = bArr2;
                resizeNearestNeighbor(buffer, r42[r6], planeProxy.getPixelStride(), planeProxy.getRowStride(), r52[r6], bArr, r92[r6], r102[r6]);
            } else if (r14 != 2) {
                bArr = bArr2;
            } else {
                bArr = bArr2;
                resizeAveraging(buffer, r42[r6], planeProxy.getPixelStride(), planeProxy.getRowStride(), r52[r6], bArr, r92[r6], r102[r6]);
            }
            planeProxyArr[r6] = createPlaneProxy(r92[r6], 1, bArr);
        }
        return new ForwardingImageProxyImpl(imageProxy, planeProxyArr, r23, r24);
    }

    private static void resizeAveraging(ByteBuffer byteBuffer, int r17, int r18, int r19, int r20, byte[] bArr, int r22, int r23) {
        float f = r17 / r22;
        float f10 = r20 / r23;
        byte[] bArr2 = new byte[r19];
        byte[] bArr3 = new byte[r19];
        int[] r92 = new int[r22];
        int r10 = 0;
        for (int r11 = 0; r11 < r22; r11++) {
            r92[r11] = ((int) (r11 * f)) * r18;
        }
        synchronized (byteBuffer) {
            byteBuffer.rewind();
            int r42 = 0;
            while (r42 < r23) {
                int r112 = (int) (r42 * f10);
                int r12 = r20 - 1;
                int r13 = Math.min(r112, r12) * r19;
                int r113 = Math.min(r112 + 1, r12) * r19;
                int r122 = r42 * r22;
                byteBuffer.position(r13);
                byteBuffer.get(bArr2, r10, Math.min(r19, byteBuffer.remaining()));
                byteBuffer.position(r113);
                byteBuffer.get(bArr3, r10, Math.min(r19, byteBuffer.remaining()));
                for (int r114 = 0; r114 < r22; r114++) {
                    int r132 = r92[r114];
                    bArr[r122 + r114] = (byte) ((((((bArr2[r132] & 255) + (bArr2[r132 + r18] & 255)) + (bArr3[r132] & 255)) + (bArr3[r132 + r18] & 255)) / 4) & 255);
                }
                r42++;
                r10 = 0;
            }
        }
    }

    private static void resizeNearestNeighbor(ByteBuffer byteBuffer, int r82, int r92, int r10, int r11, byte[] bArr, int r13, int r14) {
        float f = r82 / r13;
        float f10 = r11 / r14;
        byte[] bArr2 = new byte[r10];
        int[] r22 = new int[r13];
        for (int r42 = 0; r42 < r13; r42++) {
            r22[r42] = ((int) (r42 * f)) * r92;
        }
        synchronized (byteBuffer) {
            byteBuffer.rewind();
            for (int r83 = 0; r83 < r14; r83++) {
                int r43 = r83 * r13;
                byteBuffer.position(Math.min((int) (r83 * f10), r11 - 1) * r10);
                byteBuffer.get(bArr2, 0, Math.min(r10, byteBuffer.remaining()));
                for (int r93 = 0; r93 < r13; r93++) {
                    bArr[r43 + r93] = bArr2[r22[r93]];
                }
            }
        }
    }
}
