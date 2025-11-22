package androidx.camera.core.internal;

import android.graphics.Rect;
import android.graphics.YuvImage;
import android.media.Image;
import android.media.ImageWriter;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CaptureProcessor;
import androidx.camera.core.impl.ImageProxyBundle;
import androidx.camera.core.impl.utils.ExifData;
import androidx.camera.core.impl.utils.ExifOutputStream;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.compat.ImageWriterCompat;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.List;

@RequiresApi(26)
/* loaded from: classes.dex */
public class YuvToJpegProcessor implements CaptureProcessor {
    private static final String TAG = "YuvToJpegProcessor";
    private static final Rect UNINITIALIZED_RECT = new Rect(0, 0, 0, 0);

    @GuardedBy("mLock")
    CallbackToFutureAdapter.Completer<Void> mCloseCompleter;

    @GuardedBy("mLock")
    private m5.a<Void> mCloseFuture;

    @GuardedBy("mLock")
    private ImageWriter mImageWriter;
    private final int mMaxImages;

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 100)
    @GuardedBy("mLock")
    private int mQuality;
    private final Object mLock = new Object();

    @GuardedBy("mLock")
    private int mRotationDegrees = 0;

    @GuardedBy("mLock")
    private boolean mClosed = false;

    @GuardedBy("mLock")
    private int mProcessingImages = 0;

    @GuardedBy("mLock")
    private Rect mImageRect = UNINITIALIZED_RECT;

    public static final class ByteBufferOutputStream extends OutputStream {
        private final ByteBuffer mByteBuffer;

        public ByteBufferOutputStream(@NonNull ByteBuffer byteBuffer) {
            this.mByteBuffer = byteBuffer;
        }

        @Override // java.io.OutputStream
        public void write(int r22) throws IOException {
            if (!this.mByteBuffer.hasRemaining()) {
                throw new EOFException("Output ByteBuffer has no bytes remaining.");
            }
            this.mByteBuffer.put((byte) r22);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int r42, int r52) throws IOException {
            int r02;
            bArr.getClass();
            if (r42 < 0 || r42 > bArr.length || r52 < 0 || (r02 = r42 + r52) > bArr.length || r02 < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (r52 == 0) {
                return;
            }
            if (this.mByteBuffer.remaining() < r52) {
                throw new EOFException("Output ByteBuffer has insufficient bytes remaining.");
            }
            this.mByteBuffer.put(bArr, r42, r52);
        }
    }

    public YuvToJpegProcessor(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 100) int r22, int r32) {
        this.mQuality = r22;
        this.mMaxImages = r32;
    }

    @NonNull
    private static ExifData getExifData(@NonNull ImageProxy imageProxy, int r32) {
        ExifData.Builder builderBuilderForDevice = ExifData.builderForDevice();
        imageProxy.getImageInfo().populateExifData(builderBuilderForDevice);
        builderBuilderForDevice.setOrientationDegrees(r32);
        return builderBuilderForDevice.setImageWidth(imageProxy.getWidth()).setImageHeight(imageProxy.getHeight()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getCloseFuture$0(CallbackToFutureAdapter.Completer completer) throws Exception {
        synchronized (this.mLock) {
            this.mCloseCompleter = completer;
        }
        return "YuvToJpegProcessor-close";
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    public void close() {
        CallbackToFutureAdapter.Completer<Void> completer;
        synchronized (this.mLock) {
            if (this.mClosed) {
                return;
            }
            this.mClosed = true;
            if (this.mProcessingImages != 0 || this.mImageWriter == null) {
                Logger.d(TAG, "close() called while processing. Will close after completion.");
                completer = null;
            } else {
                Logger.d(TAG, "No processing in progress. Closing immediately.");
                this.mImageWriter.close();
                completer = this.mCloseCompleter;
            }
            if (completer != null) {
                completer.set(null);
            }
        }
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    @NonNull
    public m5.a<Void> getCloseFuture() {
        m5.a<Void> aVarNonCancellationPropagating;
        synchronized (this.mLock) {
            if (this.mClosed && this.mProcessingImages == 0) {
                aVarNonCancellationPropagating = Futures.immediateFuture(null);
            } else {
                if (this.mCloseFuture == null) {
                    this.mCloseFuture = CallbackToFutureAdapter.getFuture(new androidx.camera.camera2.interop.d(1, this));
                }
                aVarNonCancellationPropagating = Futures.nonCancellationPropagating(this.mCloseFuture);
            }
        }
        return aVarNonCancellationPropagating;
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    public void onOutputSurface(@NonNull Surface surface, int r42) {
        Preconditions.checkState(r42 == 256, "YuvToJpegProcessor only supports JPEG output format.");
        synchronized (this.mLock) {
            if (this.mClosed) {
                Logger.w(TAG, "Cannot set output surface. Processor is closed.");
            } else {
                if (this.mImageWriter != null) {
                    throw new IllegalStateException("Output surface already set.");
                }
                this.mImageWriter = ImageWriterCompat.newInstance(surface, this.mMaxImages, r42);
            }
        }
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    public void onResolutionUpdate(@NonNull Size size) {
        synchronized (this.mLock) {
            this.mImageRect = new Rect(0, 0, size.getWidth(), size.getHeight());
        }
    }

    @Override // androidx.camera.core.impl.CaptureProcessor
    public void process(@NonNull ImageProxyBundle imageProxyBundle) throws Throwable {
        ImageWriter imageWriter;
        boolean z10;
        Rect rect;
        int r82;
        int r92;
        ImageProxy imageProxy;
        Image imageDequeueInputImage;
        CallbackToFutureAdapter.Completer<Void> completer;
        CallbackToFutureAdapter.Completer<Void> completer2;
        CallbackToFutureAdapter.Completer<Void> completer3;
        List<Integer> captureIds = imageProxyBundle.getCaptureIds();
        boolean z11 = false;
        Preconditions.checkArgument(captureIds.size() == 1, "Processing image bundle have single capture id, but found " + captureIds.size());
        m5.a<ImageProxy> imageProxy2 = imageProxyBundle.getImageProxy(captureIds.get(0).intValue());
        Preconditions.checkArgument(imageProxy2.isDone());
        synchronized (this.mLock) {
            imageWriter = this.mImageWriter;
            z10 = !this.mClosed;
            rect = this.mImageRect;
            if (z10) {
                this.mProcessingImages++;
            }
            r82 = this.mQuality;
            r92 = this.mRotationDegrees;
        }
        try {
            imageProxy = imageProxy2.get();
            try {
            } catch (Exception e10) {
                e = e10;
                imageDequeueInputImage = null;
            } catch (Throwable th2) {
                th = th2;
                imageDequeueInputImage = null;
            }
        } catch (Exception e11) {
            e = e11;
            imageProxy = null;
            imageDequeueInputImage = null;
        } catch (Throwable th3) {
            th = th3;
            imageProxy = null;
            imageDequeueInputImage = null;
        }
        if (!z10) {
            Logger.w(TAG, "Image enqueued for processing on closed processor.");
            imageProxy.close();
            synchronized (this.mLock) {
                if (z10) {
                    try {
                        int r02 = this.mProcessingImages;
                        this.mProcessingImages = r02 - 1;
                        if (r02 == 0 && this.mClosed) {
                            z11 = true;
                        }
                    } finally {
                    }
                }
                completer3 = this.mCloseCompleter;
            }
            if (z11) {
                imageWriter.close();
                Logger.d(TAG, "Closed after completion of last image processed.");
                if (completer3 != null) {
                    completer3.set(null);
                    return;
                }
                return;
            }
            return;
        }
        imageDequeueInputImage = imageWriter.dequeueInputImage();
        try {
            try {
                ImageProxy imageProxy3 = imageProxy2.get();
                try {
                    Preconditions.checkState(imageProxy3.getFormat() == 35, "Input image is not expected YUV_420_888 image format");
                    YuvImage yuvImage = new YuvImage(ImageUtil.yuv_420_888toNv21(imageProxy3), 17, imageProxy3.getWidth(), imageProxy3.getHeight(), null);
                    ByteBuffer buffer = imageDequeueInputImage.getPlanes()[0].getBuffer();
                    int r13 = buffer.position();
                    yuvImage.compressToJpeg(rect, r82, new ExifOutputStream(new ByteBufferOutputStream(buffer), getExifData(imageProxy3, r92)));
                    imageProxy3.close();
                    try {
                        buffer.limit(buffer.position());
                        buffer.position(r13);
                        imageWriter.queueInputImage(imageDequeueInputImage);
                        synchronized (this.mLock) {
                            if (z10) {
                                try {
                                    int r03 = this.mProcessingImages;
                                    this.mProcessingImages = r03 - 1;
                                    if (r03 == 0 && this.mClosed) {
                                        z11 = true;
                                    }
                                } finally {
                                }
                            }
                            completer2 = this.mCloseCompleter;
                        }
                    } catch (Exception e12) {
                        e = e12;
                        imageProxy = null;
                        if (z10) {
                            Logger.e(TAG, "Failed to process YUV -> JPEG", e);
                            imageDequeueInputImage = imageWriter.dequeueInputImage();
                            ByteBuffer buffer2 = imageDequeueInputImage.getPlanes()[0].getBuffer();
                            buffer2.rewind();
                            buffer2.limit(0);
                            imageWriter.queueInputImage(imageDequeueInputImage);
                        }
                        synchronized (this.mLock) {
                            if (z10) {
                                try {
                                    int r04 = this.mProcessingImages;
                                    this.mProcessingImages = r04 - 1;
                                    if (r04 == 0 && this.mClosed) {
                                        z11 = true;
                                    }
                                } finally {
                                }
                            }
                            completer2 = this.mCloseCompleter;
                        }
                        if (imageDequeueInputImage != null) {
                            imageDequeueInputImage.close();
                        }
                        if (imageProxy != null) {
                            imageProxy.close();
                        }
                        if (z11) {
                            imageWriter.close();
                            Logger.d(TAG, "Closed after completion of last image processed.");
                            if (completer2 == null) {
                                return;
                            }
                            completer2.set(null);
                        }
                        return;
                    } catch (Throwable th4) {
                        th = th4;
                        imageProxy = null;
                        synchronized (this.mLock) {
                            if (z10) {
                                try {
                                    int r6 = this.mProcessingImages;
                                    this.mProcessingImages = r6 - 1;
                                    if (r6 == 0 && this.mClosed) {
                                        z11 = true;
                                    }
                                } finally {
                                }
                            }
                            completer = this.mCloseCompleter;
                        }
                        if (imageDequeueInputImage != null) {
                            imageDequeueInputImage.close();
                        }
                        if (imageProxy != null) {
                            imageProxy.close();
                        }
                        if (z11) {
                            imageWriter.close();
                            Logger.d(TAG, "Closed after completion of last image processed.");
                            if (completer != null) {
                                completer.set(null);
                            }
                        }
                        throw th;
                    }
                } catch (Exception e13) {
                    e = e13;
                    imageProxy = imageProxy3;
                } catch (Throwable th5) {
                    th = th5;
                    imageProxy = imageProxy3;
                }
            } catch (Exception e14) {
                e = e14;
            }
            if (z11) {
                imageWriter.close();
                Logger.d(TAG, "Closed after completion of last image processed.");
                if (completer2 == null) {
                    return;
                }
                completer2.set(null);
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    public void setJpegQuality(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 100) int r22) {
        synchronized (this.mLock) {
            this.mQuality = r22;
        }
    }

    public void setRotationDegrees(int r22) {
        synchronized (this.mLock) {
            this.mRotationDegrees = r22;
        }
    }
}
