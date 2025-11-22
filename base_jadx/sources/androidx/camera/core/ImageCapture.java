package androidx.camera.core;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import android.util.Pair;
import android.util.Rational;
import android.util.Size;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.ForwardingImageProxy;
import androidx.camera.core.ImageSaver;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CaptureBundle;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.CaptureProcessor;
import androidx.camera.core.impl.CaptureStage;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ConfigProvider;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.IoConfig;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.internal.UseCaseEventConfig;
import androidx.camera.core.internal.compat.workaround.ExifRotationAvailability;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class ImageCapture extends UseCase {
    public static final int CAPTURE_MODE_MAXIMIZE_QUALITY = 0;
    public static final int CAPTURE_MODE_MINIMIZE_LATENCY = 1;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final int CAPTURE_MODE_ZERO_SHUTTER_LAG = 2;
    private static final int DEFAULT_CAPTURE_MODE = 1;
    private static final int DEFAULT_FLASH_MODE = 2;
    public static final int ERROR_CAMERA_CLOSED = 3;
    public static final int ERROR_CAPTURE_FAILED = 2;
    public static final int ERROR_FILE_IO = 1;
    public static final int ERROR_INVALID_CAMERA = 4;
    public static final int ERROR_UNKNOWN = 0;
    public static final int FLASH_MODE_AUTO = 0;
    public static final int FLASH_MODE_OFF = 2;
    public static final int FLASH_MODE_ON = 1;
    private static final int FLASH_MODE_UNKNOWN = -1;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final int FLASH_TYPE_ONE_SHOT_FLASH = 0;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final int FLASH_TYPE_USE_TORCH_AS_FLASH = 1;
    private static final byte JPEG_QUALITY_MAXIMIZE_QUALITY_MODE = 100;
    private static final byte JPEG_QUALITY_MINIMIZE_LATENCY_MODE = 95;
    private static final int MAX_IMAGES = 2;
    private static final String TAG = "ImageCapture";
    private CaptureBundle mCaptureBundle;
    private CaptureConfig mCaptureConfig;
    private final int mCaptureMode;
    private CaptureProcessor mCaptureProcessor;
    private final ImageReaderProxy.OnImageAvailableListener mClosingListener;
    private Rational mCropAspectRatio;
    private DeferrableSurface mDeferrableSurface;
    private ExecutorService mExecutor;

    @GuardedBy("mLockedFlashMode")
    private int mFlashMode;
    private final int mFlashType;
    private ImageCaptureRequestProcessor mImageCaptureRequestProcessor;
    SafeCloseImageReaderProxy mImageReader;
    private m5.a<Void> mImageReaderCloseFuture;

    @NonNull
    final Executor mIoExecutor;
    private boolean mIsSessionProcessorEnabled;

    @GuardedBy("mLockedFlashMode")
    private final AtomicReference<Integer> mLockedFlashMode;
    private int mMaxCaptureStages;
    private CameraCaptureCallback mMetadataMatchingCaptureCallback;
    ProcessingImageReader mProcessingImageReader;
    private Matrix mSensorToBufferTransformMatrix;
    final Executor mSequentialIoExecutor;
    SessionConfig.Builder mSessionConfigBuilder;
    private boolean mUseSoftwareJpeg;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final Defaults DEFAULT_CONFIG = new Defaults();
    static final ExifRotationAvailability EXIF_ROTATION_AVAILABILITY = new ExifRotationAvailability();

    /* renamed from: androidx.camera.core.ImageCapture$8, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass8 {
        static final /* synthetic */ int[] $SwitchMap$androidx$camera$core$ImageSaver$SaveError;

        static {
            int[] r02 = new int[ImageSaver.SaveError.values().length];
            $SwitchMap$androidx$camera$core$ImageSaver$SaveError = r02;
            try {
                r02[ImageSaver.SaveError.FILE_IO_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static final class Builder implements UseCaseConfig.Builder<ImageCapture, ImageCaptureConfig, Builder>, ImageOutputConfig.Builder<Builder>, IoConfig.Builder<Builder> {
        private final MutableOptionsBundle mMutableConfig;

        public Builder() {
            this(MutableOptionsBundle.create());
        }

        private Builder(MutableOptionsBundle mutableOptionsBundle) {
            this.mMutableConfig = mutableOptionsBundle;
            Class cls = (Class) mutableOptionsBundle.retrieveOption(TargetConfig.OPTION_TARGET_CLASS, null);
            if (cls == null || cls.equals(ImageCapture.class)) {
                setTargetClass(ImageCapture.class);
                return;
            }
            throw new IllegalArgumentException("Invalid target class configuration for " + this + ": " + cls);
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static Builder fromConfig(@NonNull Config config) {
            return new Builder(MutableOptionsBundle.from(config));
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static Builder fromConfig(@NonNull ImageCaptureConfig imageCaptureConfig) {
            return new Builder(MutableOptionsBundle.from((Config) imageCaptureConfig));
        }

        @Override // androidx.camera.core.ExtendableBuilder
        @NonNull
        public ImageCapture build() {
            MutableConfig mutableConfig;
            Config.Option<Integer> option;
            int r52;
            int r12;
            if (getMutableConfig().retrieveOption(ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO, null) != null && getMutableConfig().retrieveOption(ImageOutputConfig.OPTION_TARGET_RESOLUTION, null) != null) {
                throw new IllegalArgumentException("Cannot use both setTargetResolution and setTargetAspectRatio on the same config.");
            }
            Integer num = (Integer) getMutableConfig().retrieveOption(ImageCaptureConfig.OPTION_BUFFER_FORMAT, null);
            if (num != null) {
                Preconditions.checkArgument(getMutableConfig().retrieveOption(ImageCaptureConfig.OPTION_CAPTURE_PROCESSOR, null) == null, "Cannot set buffer format with CaptureProcessor defined.");
                getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, num);
            } else {
                if (getMutableConfig().retrieveOption(ImageCaptureConfig.OPTION_CAPTURE_PROCESSOR, null) != null) {
                    mutableConfig = getMutableConfig();
                    option = ImageInputConfig.OPTION_INPUT_FORMAT;
                    r52 = 35;
                } else {
                    mutableConfig = getMutableConfig();
                    option = ImageInputConfig.OPTION_INPUT_FORMAT;
                    r52 = 256;
                }
                mutableConfig.insertOption(option, Integer.valueOf(r52));
            }
            ImageCapture imageCapture = new ImageCapture(getUseCaseConfig());
            Size size = (Size) getMutableConfig().retrieveOption(ImageOutputConfig.OPTION_TARGET_RESOLUTION, null);
            if (size != null) {
                imageCapture.setCropAspectRatio(new Rational(size.getWidth(), size.getHeight()));
            }
            Preconditions.checkArgument(((Integer) getMutableConfig().retrieveOption(ImageCaptureConfig.OPTION_MAX_CAPTURE_STAGES, 2)).intValue() >= 1, "Maximum outstanding image count must be at least 1");
            Preconditions.checkNotNull((Executor) getMutableConfig().retrieveOption(IoConfig.OPTION_IO_EXECUTOR, CameraXExecutors.ioExecutor()), "The IO executor can't be null");
            MutableConfig mutableConfig2 = getMutableConfig();
            Config.Option<Integer> option2 = ImageCaptureConfig.OPTION_FLASH_MODE;
            if (!mutableConfig2.containsOption(option2) || (r12 = ((Integer) getMutableConfig().retrieveOption(option2)).intValue()) == 0 || r12 == 1 || r12 == 2) {
                return imageCapture;
            }
            throw new IllegalArgumentException(android.support.v4.media.a.d("The flash mode is not allowed to set: ", r12));
        }

        @Override // androidx.camera.core.ExtendableBuilder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public MutableConfig getMutableConfig() {
            return this.mMutableConfig;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public ImageCaptureConfig getUseCaseConfig() {
            return new ImageCaptureConfig(OptionsBundle.from(this.mMutableConfig));
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setBufferFormat(int r32) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_BUFFER_FORMAT, Integer.valueOf(r32));
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setCameraSelector(@NonNull CameraSelector cameraSelector) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_CAMERA_SELECTOR, cameraSelector);
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setCaptureBundle(@NonNull CaptureBundle captureBundle) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_CAPTURE_BUNDLE, captureBundle);
            return this;
        }

        @NonNull
        public Builder setCaptureMode(int r32) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_IMAGE_CAPTURE_MODE, Integer.valueOf(r32));
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setCaptureOptionUnpacker(@NonNull CaptureConfig.OptionUnpacker optionUnpacker) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_CAPTURE_CONFIG_UNPACKER, optionUnpacker);
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setCaptureProcessor(@NonNull CaptureProcessor captureProcessor) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_CAPTURE_PROCESSOR, captureProcessor);
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setDefaultCaptureConfig(@NonNull CaptureConfig captureConfig) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_DEFAULT_CAPTURE_CONFIG, captureConfig);
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setDefaultResolution(@NonNull Size size) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_DEFAULT_RESOLUTION, size);
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setDefaultSessionConfig(@NonNull SessionConfig sessionConfig) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_DEFAULT_SESSION_CONFIG, sessionConfig);
            return this;
        }

        @NonNull
        public Builder setFlashMode(int r32) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_FLASH_MODE, Integer.valueOf(r32));
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setFlashType(int r32) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_FLASH_TYPE, Integer.valueOf(r32));
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setImageReaderProxyProvider(@NonNull ImageReaderProxyProvider imageReaderProxyProvider) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_IMAGE_READER_PROXY_PROVIDER, imageReaderProxyProvider);
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.internal.IoConfig.Builder
        @NonNull
        public Builder setIoExecutor(@NonNull Executor executor) {
            getMutableConfig().insertOption(IoConfig.OPTION_IO_EXECUTOR, executor);
            return this;
        }

        @NonNull
        public Builder setJpegQuality(@IntRange(from = 1, to = 100) int r42) {
            Preconditions.checkArgumentInRange(r42, 1, 100, "jpegQuality");
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_JPEG_COMPRESSION_QUALITY, Integer.valueOf(r42));
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setMaxCaptureStages(int r32) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_MAX_CAPTURE_STAGES, Integer.valueOf(r32));
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setMaxResolution(@NonNull Size size) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_MAX_RESOLUTION, size);
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setSessionOptionUnpacker(@NonNull SessionConfig.OptionUnpacker optionUnpacker) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_SESSION_CONFIG_UNPACKER, optionUnpacker);
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setSessionProcessorEnabled(boolean z10) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_SESSION_PROCESSOR_ENABLED, Boolean.valueOf(z10));
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setSoftwareJpegEncoderRequested(boolean z10) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_USE_SOFTWARE_JPEG_ENCODER, Boolean.valueOf(z10));
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setSupportedResolutions(@NonNull List<Pair<Integer, Size[]>> list) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_SUPPORTED_RESOLUTIONS, list);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public /* bridge */ /* synthetic */ Builder setSupportedResolutions(@NonNull List list) {
            return setSupportedResolutions((List<Pair<Integer, Size[]>>) list);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setSurfaceOccupancyPriority(int r32) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_SURFACE_OCCUPANCY_PRIORITY, Integer.valueOf(r32));
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        public Builder setTargetAspectRatio(int r32) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO, Integer.valueOf(r32));
            return this;
        }

        @Override // androidx.camera.core.internal.TargetConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setTargetClass(@NonNull Class<ImageCapture> cls) {
            getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_CLASS, cls);
            if (getMutableConfig().retrieveOption(TargetConfig.OPTION_TARGET_NAME, null) == null) {
                setTargetName(cls.getCanonicalName() + "-" + UUID.randomUUID());
            }
            return this;
        }

        @Override // androidx.camera.core.internal.TargetConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public /* bridge */ /* synthetic */ Object setTargetClass(@NonNull Class cls) {
            return setTargetClass((Class<ImageCapture>) cls);
        }

        @Override // androidx.camera.core.internal.TargetConfig.Builder
        @NonNull
        public Builder setTargetName(@NonNull String str) {
            getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_NAME, str);
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        public Builder setTargetResolution(@NonNull Size size) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_TARGET_RESOLUTION, size);
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        public Builder setTargetRotation(int r32) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_TARGET_ROTATION, Integer.valueOf(r32));
            return this;
        }

        @Override // androidx.camera.core.internal.UseCaseEventConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setUseCaseEventCallback(@NonNull UseCase.EventCallback eventCallback) {
            getMutableConfig().insertOption(UseCaseEventConfig.OPTION_USE_CASE_EVENT_CALLBACK, eventCallback);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface CaptureMode {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final class Defaults implements ConfigProvider<ImageCaptureConfig> {
        private static final int DEFAULT_ASPECT_RATIO = 0;
        private static final ImageCaptureConfig DEFAULT_CONFIG = new Builder().setSurfaceOccupancyPriority(4).setTargetAspectRatio(0).getUseCaseConfig();
        private static final int DEFAULT_SURFACE_OCCUPANCY_PRIORITY = 4;

        @Override // androidx.camera.core.impl.ConfigProvider
        @NonNull
        public ImageCaptureConfig getConfig() {
            return DEFAULT_CONFIG;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface FlashMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface FlashType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface ImageCaptureError {
    }

    @VisibleForTesting
    public static class ImageCaptureRequest {

        @NonNull
        private final OnImageCapturedCallback mCallback;
        AtomicBoolean mDispatched = new AtomicBoolean(false);

        @IntRange(from = 1, to = 100)
        final int mJpegQuality;

        @NonNull
        private final Executor mListenerExecutor;
        final int mRotationDegrees;

        @NonNull
        private final Matrix mSensorToBufferTransformMatrix;
        private final Rational mTargetRatio;
        private final Rect mViewPortCropRect;

        public ImageCaptureRequest(int r32, @IntRange(from = 1, to = 100) int r42, Rational rational, @Nullable Rect rect, @NonNull Matrix matrix, @NonNull Executor executor, @NonNull OnImageCapturedCallback onImageCapturedCallback) {
            this.mRotationDegrees = r32;
            this.mJpegQuality = r42;
            if (rational != null) {
                Preconditions.checkArgument(!rational.isZero(), "Target ratio cannot be zero");
                Preconditions.checkArgument(rational.floatValue() > 0.0f, "Target ratio must be positive");
            }
            this.mTargetRatio = rational;
            this.mViewPortCropRect = rect;
            this.mSensorToBufferTransformMatrix = matrix;
            this.mListenerExecutor = executor;
            this.mCallback = onImageCapturedCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchImage$0(ImageProxy imageProxy) {
            this.mCallback.onCaptureSuccess(imageProxy);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$notifyCallbackError$1(int r32, String str, Throwable th2) {
            this.mCallback.onError(new ImageCaptureException(r32, str, th2));
        }

        public void dispatchImage(ImageProxy imageProxy) {
            Size size;
            int rotation;
            int r22 = 1;
            if (!this.mDispatched.compareAndSet(false, true)) {
                imageProxy.close();
                return;
            }
            if (ImageCapture.EXIF_ROTATION_AVAILABILITY.shouldUseExifOrientation(imageProxy)) {
                try {
                    ByteBuffer buffer = imageProxy.getPlanes()[0].getBuffer();
                    buffer.rewind();
                    byte[] bArr = new byte[buffer.capacity()];
                    buffer.get(bArr);
                    Exif exifCreateFromInputStream = Exif.createFromInputStream(new ByteArrayInputStream(bArr));
                    buffer.rewind();
                    size = new Size(exifCreateFromInputStream.getWidth(), exifCreateFromInputStream.getHeight());
                    rotation = exifCreateFromInputStream.getRotation();
                } catch (IOException e10) {
                    notifyCallbackError(1, "Unable to parse JPEG exif", e10);
                    imageProxy.close();
                    return;
                }
            } else {
                size = new Size(imageProxy.getWidth(), imageProxy.getHeight());
                rotation = this.mRotationDegrees;
            }
            SettableImageProxy settableImageProxy = new SettableImageProxy(imageProxy, size, ImmutableImageInfo.create(imageProxy.getImageInfo().getTagBundle(), imageProxy.getImageInfo().getTimestamp(), rotation, this.mSensorToBufferTransformMatrix));
            settableImageProxy.setCropRect(ImageCapture.computeDispatchCropRect(this.mViewPortCropRect, this.mTargetRatio, this.mRotationDegrees, size, rotation));
            try {
                this.mListenerExecutor.execute(new n(this, settableImageProxy, r22));
            } catch (RejectedExecutionException unused) {
                Logger.e(ImageCapture.TAG, "Unable to post to the supplied executor.");
                imageProxy.close();
            }
        }

        public void notifyCallbackError(int r92, String str, Throwable th2) {
            if (this.mDispatched.compareAndSet(false, true)) {
                try {
                    this.mListenerExecutor.execute(new h0(this, r92, str, th2, 0));
                } catch (RejectedExecutionException unused) {
                    Logger.e(ImageCapture.TAG, "Unable to post to the supplied executor.");
                }
            }
        }
    }

    @VisibleForTesting
    public static class ImageCaptureRequestProcessor implements ForwardingImageProxy.OnImageCloseListener {

        @GuardedBy("mLock")
        ImageCaptureRequest mCurrentRequest;

        @GuardedBy("mLock")
        m5.a<ImageProxy> mCurrentRequestFuture;

        @GuardedBy("mLock")
        private final ImageCaptor mImageCaptor;
        final Object mLock;
        private final int mMaxImages;

        @GuardedBy("mLock")
        int mOutstandingImages;

        @GuardedBy("mLock")
        private final Deque<ImageCaptureRequest> mPendingRequests;

        @Nullable
        private final RequestProcessCallback mRequestProcessCallback;

        public interface ImageCaptor {
            @NonNull
            m5.a<ImageProxy> capture(@NonNull ImageCaptureRequest imageCaptureRequest);
        }

        public interface RequestProcessCallback {
            void onPreProcessRequest(@NonNull ImageCaptureRequest imageCaptureRequest);
        }

        public ImageCaptureRequestProcessor(int r22, @NonNull ImageCaptor imageCaptor) {
            this(r22, imageCaptor, null);
        }

        public ImageCaptureRequestProcessor(int r22, @NonNull ImageCaptor imageCaptor, @Nullable RequestProcessCallback requestProcessCallback) {
            this.mPendingRequests = new ArrayDeque();
            this.mCurrentRequest = null;
            this.mCurrentRequestFuture = null;
            this.mOutstandingImages = 0;
            this.mLock = new Object();
            this.mMaxImages = r22;
            this.mImageCaptor = imageCaptor;
            this.mRequestProcessCallback = requestProcessCallback;
        }

        public void cancelRequests(@NonNull Throwable th2) {
            ImageCaptureRequest imageCaptureRequest;
            m5.a<ImageProxy> aVar;
            ArrayList arrayList;
            synchronized (this.mLock) {
                imageCaptureRequest = this.mCurrentRequest;
                this.mCurrentRequest = null;
                aVar = this.mCurrentRequestFuture;
                this.mCurrentRequestFuture = null;
                arrayList = new ArrayList(this.mPendingRequests);
                this.mPendingRequests.clear();
            }
            if (imageCaptureRequest != null && aVar != null) {
                imageCaptureRequest.notifyCallbackError(ImageCapture.getError(th2), th2.getMessage(), th2);
                aVar.cancel(true);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((ImageCaptureRequest) it.next()).notifyCallbackError(ImageCapture.getError(th2), th2.getMessage(), th2);
            }
        }

        @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
        public void onImageClose(ImageProxy imageProxy) {
            synchronized (this.mLock) {
                this.mOutstandingImages--;
                processNextRequest();
            }
        }

        public void processNextRequest() {
            synchronized (this.mLock) {
                if (this.mCurrentRequest != null) {
                    return;
                }
                if (this.mOutstandingImages >= this.mMaxImages) {
                    Logger.w(ImageCapture.TAG, "Too many acquire images. Close image to be able to process next.");
                    return;
                }
                final ImageCaptureRequest imageCaptureRequestPoll = this.mPendingRequests.poll();
                if (imageCaptureRequestPoll == null) {
                    return;
                }
                this.mCurrentRequest = imageCaptureRequestPoll;
                RequestProcessCallback requestProcessCallback = this.mRequestProcessCallback;
                if (requestProcessCallback != null) {
                    requestProcessCallback.onPreProcessRequest(imageCaptureRequestPoll);
                }
                m5.a<ImageProxy> aVarCapture = this.mImageCaptor.capture(imageCaptureRequestPoll);
                this.mCurrentRequestFuture = aVarCapture;
                Futures.addCallback(aVarCapture, new FutureCallback<ImageProxy>() { // from class: androidx.camera.core.ImageCapture.ImageCaptureRequestProcessor.1
                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onFailure(Throwable th2) {
                        synchronized (ImageCaptureRequestProcessor.this.mLock) {
                            if (!(th2 instanceof CancellationException)) {
                                imageCaptureRequestPoll.notifyCallbackError(ImageCapture.getError(th2), th2 != null ? th2.getMessage() : "Unknown error", th2);
                            }
                            ImageCaptureRequestProcessor imageCaptureRequestProcessor = ImageCaptureRequestProcessor.this;
                            imageCaptureRequestProcessor.mCurrentRequest = null;
                            imageCaptureRequestProcessor.mCurrentRequestFuture = null;
                            imageCaptureRequestProcessor.processNextRequest();
                        }
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onSuccess(@Nullable ImageProxy imageProxy) {
                        synchronized (ImageCaptureRequestProcessor.this.mLock) {
                            Preconditions.checkNotNull(imageProxy);
                            SingleCloseImageProxy singleCloseImageProxy = new SingleCloseImageProxy(imageProxy);
                            singleCloseImageProxy.addOnImageCloseListener(ImageCaptureRequestProcessor.this);
                            ImageCaptureRequestProcessor.this.mOutstandingImages++;
                            imageCaptureRequestPoll.dispatchImage(singleCloseImageProxy);
                            ImageCaptureRequestProcessor imageCaptureRequestProcessor = ImageCaptureRequestProcessor.this;
                            imageCaptureRequestProcessor.mCurrentRequest = null;
                            imageCaptureRequestProcessor.mCurrentRequestFuture = null;
                            imageCaptureRequestProcessor.processNextRequest();
                        }
                    }
                }, CameraXExecutors.directExecutor());
            }
        }

        public void sendRequest(@NonNull ImageCaptureRequest imageCaptureRequest) {
            synchronized (this.mLock) {
                this.mPendingRequests.offer(imageCaptureRequest);
                Locale locale = Locale.US;
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(this.mCurrentRequest != null ? 1 : 0);
                objArr[1] = Integer.valueOf(this.mPendingRequests.size());
                Logger.d(ImageCapture.TAG, String.format(locale, "Send image capture request [current, pending] = [%d, %d]", objArr));
                processNextRequest();
            }
        }
    }

    public static final class Metadata {
        private boolean mIsReversedHorizontal;
        private boolean mIsReversedHorizontalSet = false;
        private boolean mIsReversedVertical;

        @Nullable
        private Location mLocation;

        @Nullable
        public Location getLocation() {
            return this.mLocation;
        }

        public boolean isReversedHorizontal() {
            return this.mIsReversedHorizontal;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public boolean isReversedHorizontalSet() {
            return this.mIsReversedHorizontalSet;
        }

        public boolean isReversedVertical() {
            return this.mIsReversedVertical;
        }

        public void setLocation(@Nullable Location location) {
            this.mLocation = location;
        }

        public void setReversedHorizontal(boolean z10) {
            this.mIsReversedHorizontal = z10;
            this.mIsReversedHorizontalSet = true;
        }

        public void setReversedVertical(boolean z10) {
            this.mIsReversedVertical = z10;
        }
    }

    public static abstract class OnImageCapturedCallback {
        public void onCaptureSuccess(@NonNull ImageProxy imageProxy) {
        }

        public void onError(@NonNull ImageCaptureException imageCaptureException) {
        }
    }

    public interface OnImageSavedCallback {
        void onError(@NonNull ImageCaptureException imageCaptureException);

        void onImageSaved(@NonNull OutputFileResults outputFileResults);
    }

    public static final class OutputFileOptions {

        @Nullable
        private final ContentResolver mContentResolver;

        @Nullable
        private final ContentValues mContentValues;

        @Nullable
        private final File mFile;

        @NonNull
        private final Metadata mMetadata;

        @Nullable
        private final OutputStream mOutputStream;

        @Nullable
        private final Uri mSaveCollection;

        public static final class Builder {

            @Nullable
            private ContentResolver mContentResolver;

            @Nullable
            private ContentValues mContentValues;

            @Nullable
            private File mFile;

            @Nullable
            private Metadata mMetadata;

            @Nullable
            private OutputStream mOutputStream;

            @Nullable
            private Uri mSaveCollection;

            public Builder(@NonNull ContentResolver contentResolver, @NonNull Uri uri, @NonNull ContentValues contentValues) {
                this.mContentResolver = contentResolver;
                this.mSaveCollection = uri;
                this.mContentValues = contentValues;
            }

            public Builder(@NonNull File file) {
                this.mFile = file;
            }

            public Builder(@NonNull OutputStream outputStream) {
                this.mOutputStream = outputStream;
            }

            @NonNull
            public OutputFileOptions build() {
                return new OutputFileOptions(this.mFile, this.mContentResolver, this.mSaveCollection, this.mContentValues, this.mOutputStream, this.mMetadata);
            }

            @NonNull
            public Builder setMetadata(@NonNull Metadata metadata) {
                this.mMetadata = metadata;
                return this;
            }
        }

        public OutputFileOptions(@Nullable File file, @Nullable ContentResolver contentResolver, @Nullable Uri uri, @Nullable ContentValues contentValues, @Nullable OutputStream outputStream, @Nullable Metadata metadata) {
            this.mFile = file;
            this.mContentResolver = contentResolver;
            this.mSaveCollection = uri;
            this.mContentValues = contentValues;
            this.mOutputStream = outputStream;
            this.mMetadata = metadata == null ? new Metadata() : metadata;
        }

        @Nullable
        public ContentResolver getContentResolver() {
            return this.mContentResolver;
        }

        @Nullable
        public ContentValues getContentValues() {
            return this.mContentValues;
        }

        @Nullable
        public File getFile() {
            return this.mFile;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Metadata getMetadata() {
            return this.mMetadata;
        }

        @Nullable
        public OutputStream getOutputStream() {
            return this.mOutputStream;
        }

        @Nullable
        public Uri getSaveCollection() {
            return this.mSaveCollection;
        }
    }

    public static class OutputFileResults {

        @Nullable
        private Uri mSavedUri;

        public OutputFileResults(@Nullable Uri uri) {
            this.mSavedUri = uri;
        }

        @Nullable
        public Uri getSavedUri() {
            return this.mSavedUri;
        }
    }

    public ImageCapture(@NonNull ImageCaptureConfig imageCaptureConfig) {
        super(imageCaptureConfig);
        this.mClosingListener = new ImageReaderProxy.OnImageAvailableListener() { // from class: androidx.camera.core.x
            @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
            public final void onImageAvailable(ImageReaderProxy imageReaderProxy) {
                ImageCapture.lambda$new$0(imageReaderProxy);
            }
        };
        this.mLockedFlashMode = new AtomicReference<>(null);
        this.mFlashMode = -1;
        this.mCropAspectRatio = null;
        this.mUseSoftwareJpeg = false;
        this.mIsSessionProcessorEnabled = true;
        this.mImageReaderCloseFuture = Futures.immediateFuture(null);
        this.mSensorToBufferTransformMatrix = new Matrix();
        ImageCaptureConfig imageCaptureConfig2 = (ImageCaptureConfig) getCurrentConfig();
        Config.Option<Integer> option = ImageCaptureConfig.OPTION_IMAGE_CAPTURE_MODE;
        imageCaptureConfig2.getClass();
        this.mCaptureMode = androidx.camera.core.impl.b0.a(imageCaptureConfig2, option) ? imageCaptureConfig2.getCaptureMode() : 1;
        this.mFlashType = imageCaptureConfig2.getFlashType(0);
        Executor executor = (Executor) Preconditions.checkNotNull(imageCaptureConfig2.getIoExecutor(CameraXExecutors.ioExecutor()));
        this.mIoExecutor = executor;
        this.mSequentialIoExecutor = CameraXExecutors.newSequentialExecutor(executor);
    }

    @UiThread
    private void abortImageCaptureRequests() {
        if (this.mImageCaptureRequestProcessor != null) {
            this.mImageCaptureRequestProcessor.cancelRequests(new CameraClosedException("Camera is closed."));
        }
    }

    @NonNull
    public static Rect computeDispatchCropRect(@Nullable Rect rect, @Nullable Rational rational, int r22, @NonNull Size size, int r42) {
        if (rect != null) {
            return ImageUtil.computeCropRectFromDispatchInfo(rect, r22, size, r42);
        }
        if (rational != null) {
            if (r42 % 180 != 0) {
                rational = new Rational(rational.getDenominator(), rational.getNumerator());
            }
            if (ImageUtil.isAspectRatioValid(size, rational)) {
                return ImageUtil.computeCropRectFromAspectRatio(size, rational);
            }
        }
        return new Rect(0, 0, size.getWidth(), size.getHeight());
    }

    public static boolean enforceSoftwareJpegConstraints(@NonNull MutableConfig mutableConfig) {
        boolean z10;
        Config.Option<Boolean> option = ImageCaptureConfig.OPTION_USE_SOFTWARE_JPEG_ENCODER;
        Boolean bool = Boolean.FALSE;
        boolean z11 = false;
        if (((Boolean) mutableConfig.retrieveOption(option, bool)).booleanValue()) {
            int r22 = Build.VERSION.SDK_INT;
            if (r22 < 26) {
                Logger.w(TAG, "Software JPEG only supported on API 26+, but current API level is " + r22);
                z10 = false;
            } else {
                z10 = true;
            }
            Integer num = (Integer) mutableConfig.retrieveOption(ImageCaptureConfig.OPTION_BUFFER_FORMAT, null);
            if (num == null || num.intValue() == 256) {
                z11 = z10;
            } else {
                Logger.w(TAG, "Software JPEG cannot be used with non-JPEG output buffer format.");
            }
            if (!z11) {
                Logger.w(TAG, "Unable to support software JPEG. Disabling.");
                mutableConfig.insertOption(option, bool);
            }
        }
        return z11;
    }

    private CaptureBundle getCaptureBundle(CaptureBundle captureBundle) {
        List<CaptureStage> captureStages = this.mCaptureBundle.getCaptureStages();
        return (captureStages == null || captureStages.isEmpty()) ? captureBundle : CaptureBundles.createCaptureBundle(captureStages);
    }

    public static int getError(Throwable th2) {
        if (th2 instanceof CameraClosedException) {
            return 3;
        }
        if (th2 instanceof ImageCaptureException) {
            return ((ImageCaptureException) th2).getImageCaptureError();
        }
        return 0;
    }

    @UiThread
    private int getJpegQualityForImageCaptureRequest(@NonNull CameraInternal cameraInternal, boolean z10) {
        if (z10) {
            int relativeRotation = getRelativeRotation(cameraInternal);
            Size attachedSurfaceResolution = getAttachedSurfaceResolution();
            Rect rectComputeDispatchCropRect = computeDispatchCropRect(getViewPortCropRect(), this.mCropAspectRatio, relativeRotation, attachedSurfaceResolution, relativeRotation);
            if (ImageUtil.shouldCropImage(attachedSurfaceResolution.getWidth(), attachedSurfaceResolution.getHeight(), rectComputeDispatchCropRect.width(), rectComputeDispatchCropRect.height())) {
                return this.mCaptureMode == 0 ? 100 : 95;
            }
        }
        return getJpegQualityInternal();
    }

    @IntRange(from = 1, to = 100)
    private int getJpegQualityInternal() {
        ImageCaptureConfig imageCaptureConfig = (ImageCaptureConfig) getCurrentConfig();
        Config.Option<Integer> option = ImageCaptureConfig.OPTION_JPEG_COMPRESSION_QUALITY;
        imageCaptureConfig.getClass();
        if (androidx.camera.core.impl.b0.a(imageCaptureConfig, option)) {
            return imageCaptureConfig.getJpegQuality();
        }
        int r02 = this.mCaptureMode;
        if (r02 == 0) {
            return 100;
        }
        if (r02 == 1 || r02 == 2) {
            return 95;
        }
        throw new IllegalStateException(androidx.browser.browseractions.a.b(new StringBuilder("CaptureMode "), this.mCaptureMode, " is invalid"));
    }

    private static boolean isImageFormatSupported(List<Pair<Integer, Size[]>> list, int r42) {
        if (list == null) {
            return false;
        }
        Iterator<Pair<Integer, Size[]>> it = list.iterator();
        while (it.hasNext()) {
            if (((Integer) it.next().first).equals(Integer.valueOf(r42))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createPipeline$2(String str, ImageCaptureConfig imageCaptureConfig, Size size, SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        clearPipeline();
        if (isCurrentCamera(str)) {
            SessionConfig.Builder builderCreatePipeline = createPipeline(str, imageCaptureConfig, size);
            this.mSessionConfigBuilder = builderCreatePipeline;
            updateSessionConfig(builderCreatePipeline.build());
            notifyReset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$issueTakePicture$11(ImageCaptureRequest imageCaptureRequest, String str, Throwable th2) {
        Logger.e(TAG, "Processing image failed! " + str);
        imageCaptureRequest.notifyCallbackError(2, str, th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Void lambda$issueTakePicture$12(List list) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(ImageReaderProxy imageReaderProxy) {
        try {
            ImageProxy imageProxyAcquireLatestImage = imageReaderProxy.acquireLatestImage();
            try {
                Log.d(TAG, "Discarding ImageProxy which was inadvertently acquired: " + imageProxyAcquireLatestImage);
                if (imageProxyAcquireLatestImage != null) {
                    imageProxyAcquireLatestImage.close();
                }
            } finally {
            }
        } catch (IllegalStateException e10) {
            Log.e(TAG, "Failed to acquire latest image.", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendImageCaptureRequest$5(OnImageCapturedCallback onImageCapturedCallback) {
        onImageCapturedCallback.onError(new ImageCaptureException(4, "Not bound to a valid Camera [" + this + "]", null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendImageCaptureRequest$6(OnImageCapturedCallback onImageCapturedCallback) {
        onImageCapturedCallback.onError(new ImageCaptureException(0, "Request is canceled", null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$takePictureInternal$7(CallbackToFutureAdapter.Completer completer, ImageReaderProxy imageReaderProxy) {
        try {
            ImageProxy imageProxyAcquireLatestImage = imageReaderProxy.acquireLatestImage();
            if (imageProxyAcquireLatestImage == null) {
                completer.setException(new IllegalStateException("Unable to acquire image"));
            } else if (!completer.set(imageProxyAcquireLatestImage)) {
                imageProxyAcquireLatestImage.close();
            }
        } catch (IllegalStateException e10) {
            completer.setException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$takePictureInternal$9(ImageCaptureRequest imageCaptureRequest, final CallbackToFutureAdapter.Completer completer) throws Exception {
        this.mImageReader.setOnImageAvailableListener(new ImageReaderProxy.OnImageAvailableListener() { // from class: androidx.camera.core.e0
            @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
            public final void onImageAvailable(ImageReaderProxy imageReaderProxy) {
                ImageCapture.lambda$takePictureInternal$7(completer, imageReaderProxy);
            }
        }, CameraXExecutors.mainThreadExecutor());
        lockFlashMode();
        m5.a<Void> aVarIssueTakePicture = issueTakePicture(imageCaptureRequest);
        Futures.addCallback(aVarIssueTakePicture, new FutureCallback<Void>() { // from class: androidx.camera.core.ImageCapture.6
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th2) {
                ImageCapture.this.unlockFlashMode();
                completer.setException(th2);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(Void r12) {
                ImageCapture.this.unlockFlashMode();
            }
        }, this.mExecutor);
        completer.addCancellationListener(new f0(0, aVarIssueTakePicture), CameraXExecutors.directExecutor());
        return "takePictureInternal";
    }

    private void lockFlashMode() {
        synchronized (this.mLockedFlashMode) {
            if (this.mLockedFlashMode.get() != null) {
                return;
            }
            this.mLockedFlashMode.set(Integer.valueOf(getFlashMode()));
        }
    }

    @UiThread
    private void sendImageCaptureRequest(@NonNull Executor executor, @NonNull final OnImageCapturedCallback onImageCapturedCallback, boolean z10) {
        CameraInternal camera = getCamera();
        if (camera == null) {
            executor.execute(new androidx.camera.camera2.interop.a(1, this, onImageCapturedCallback));
            return;
        }
        ImageCaptureRequestProcessor imageCaptureRequestProcessor = this.mImageCaptureRequestProcessor;
        if (imageCaptureRequestProcessor == null) {
            executor.execute(new Runnable() { // from class: androidx.camera.core.g0
                @Override // java.lang.Runnable
                public final void run() {
                    ImageCapture.lambda$sendImageCaptureRequest$6(onImageCapturedCallback);
                }
            });
        } else {
            imageCaptureRequestProcessor.sendRequest(new ImageCaptureRequest(getRelativeRotation(camera), getJpegQualityForImageCaptureRequest(camera, z10), this.mCropAspectRatio, getViewPortCropRect(), this.mSensorToBufferTransformMatrix, executor, onImageCapturedCallback));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: takePictureInternal, reason: merged with bridge method [inline-methods] */
    public m5.a<ImageProxy> lambda$createPipeline$1(@NonNull ImageCaptureRequest imageCaptureRequest) {
        return CallbackToFutureAdapter.getFuture(new d0(0, this, imageCaptureRequest));
    }

    private void trySetFlashModeToCameraControl() {
        synchronized (this.mLockedFlashMode) {
            if (this.mLockedFlashMode.get() != null) {
                return;
            }
            getCameraControl().setFlashMode(getFlashMode());
        }
    }

    @UiThread
    public void clearPipeline() {
        Threads.checkMainThread();
        ImageCaptureRequestProcessor imageCaptureRequestProcessor = this.mImageCaptureRequestProcessor;
        if (imageCaptureRequestProcessor != null) {
            imageCaptureRequestProcessor.cancelRequests(new CancellationException("Request is canceled."));
            this.mImageCaptureRequestProcessor = null;
        }
        DeferrableSurface deferrableSurface = this.mDeferrableSurface;
        this.mDeferrableSurface = null;
        this.mImageReader = null;
        this.mProcessingImageReader = null;
        this.mImageReaderCloseFuture = Futures.immediateFuture(null);
        if (deferrableSurface != null) {
            deferrableSurface.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x020f  */
    @androidx.annotation.UiThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.camera.core.impl.SessionConfig.Builder createPipeline(@androidx.annotation.NonNull final java.lang.String r17, @androidx.annotation.NonNull final androidx.camera.core.impl.ImageCaptureConfig r18, @androidx.annotation.NonNull final android.util.Size r19) {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.ImageCapture.createPipeline(java.lang.String, androidx.camera.core.impl.ImageCaptureConfig, android.util.Size):androidx.camera.core.impl.SessionConfig$Builder");
    }

    public int getCaptureMode() {
        return this.mCaptureMode;
    }

    @Override // androidx.camera.core.UseCase
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public UseCaseConfig<?> getDefaultConfig(boolean z10, @NonNull UseCaseConfigFactory useCaseConfigFactory) {
        Config config = useCaseConfigFactory.getConfig(UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE, getCaptureMode());
        if (z10) {
            config = androidx.camera.core.impl.n.b(config, DEFAULT_CONFIG.getConfig());
        }
        if (config == null) {
            return null;
        }
        return getUseCaseConfigBuilder(config).getUseCaseConfig();
    }

    public int getFlashMode() {
        int flashMode;
        synchronized (this.mLockedFlashMode) {
            flashMode = this.mFlashMode;
            if (flashMode == -1) {
                flashMode = ((ImageCaptureConfig) getCurrentConfig()).getFlashMode(2);
            }
        }
        return flashMode;
    }

    @IntRange(from = 1, to = 100)
    public int getJpegQuality() {
        return getJpegQualityInternal();
    }

    @Override // androidx.camera.core.UseCase
    @Nullable
    public ResolutionInfo getResolutionInfo() {
        return super.getResolutionInfo();
    }

    @Override // androidx.camera.core.UseCase
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ResolutionInfo getResolutionInfoInternal() {
        CameraInternal camera = getCamera();
        Size attachedSurfaceResolution = getAttachedSurfaceResolution();
        if (camera == null || attachedSurfaceResolution == null) {
            return null;
        }
        Rect viewPortCropRect = getViewPortCropRect();
        Rational rational = this.mCropAspectRatio;
        if (viewPortCropRect == null) {
            viewPortCropRect = rational != null ? ImageUtil.computeCropRectFromAspectRatio(attachedSurfaceResolution, rational) : new Rect(0, 0, attachedSurfaceResolution.getWidth(), attachedSurfaceResolution.getHeight());
        }
        return ResolutionInfo.create(attachedSurfaceResolution, viewPortCropRect, getRelativeRotation(camera));
    }

    public int getTargetRotation() {
        return getTargetRotationInternal();
    }

    @Override // androidx.camera.core.UseCase
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public UseCaseConfig.Builder<?, ?, ?> getUseCaseConfigBuilder(@NonNull Config config) {
        return Builder.fromConfig(config);
    }

    public m5.a<Void> issueTakePicture(@NonNull ImageCaptureRequest imageCaptureRequest) {
        CaptureBundle captureBundle;
        String tagBundleKey;
        Logger.d(TAG, "issueTakePicture");
        ArrayList arrayList = new ArrayList();
        if (this.mProcessingImageReader != null) {
            captureBundle = getCaptureBundle(CaptureBundles.singleDefaultCaptureBundle());
            if (captureBundle == null) {
                return Futures.immediateFailedFuture(new IllegalArgumentException("ImageCapture cannot set empty CaptureBundle."));
            }
            if (this.mCaptureProcessor == null && captureBundle.getCaptureStages().size() > 1) {
                return Futures.immediateFailedFuture(new IllegalArgumentException("No CaptureProcessor can be found to process the images captured for multiple CaptureStages."));
            }
            if (captureBundle.getCaptureStages().size() > this.mMaxCaptureStages) {
                return Futures.immediateFailedFuture(new IllegalArgumentException("ImageCapture has CaptureStages > Max CaptureStage size"));
            }
            this.mProcessingImageReader.setCaptureBundle(captureBundle);
            this.mProcessingImageReader.setOnProcessingErrorCallback(CameraXExecutors.directExecutor(), new m(imageCaptureRequest));
            tagBundleKey = this.mProcessingImageReader.getTagBundleKey();
        } else {
            captureBundle = getCaptureBundle(CaptureBundles.singleDefaultCaptureBundle());
            if (captureBundle.getCaptureStages().size() > 1) {
                return Futures.immediateFailedFuture(new IllegalArgumentException("ImageCapture have no CaptureProcess set with CaptureBundle size > 1."));
            }
            tagBundleKey = null;
        }
        for (CaptureStage captureStage : captureBundle.getCaptureStages()) {
            CaptureConfig.Builder builder = new CaptureConfig.Builder();
            builder.setTemplateType(this.mCaptureConfig.getTemplateType());
            builder.addImplementationOptions(this.mCaptureConfig.getImplementationOptions());
            builder.addAllCameraCaptureCallbacks(this.mSessionConfigBuilder.getSingleCameraCaptureCallbacks());
            builder.addSurface(this.mDeferrableSurface);
            if (getImageFormat() == 256) {
                if (EXIF_ROTATION_AVAILABILITY.isRotationOptionSupported()) {
                    builder.addImplementationOption(CaptureConfig.OPTION_ROTATION, Integer.valueOf(imageCaptureRequest.mRotationDegrees));
                }
                builder.addImplementationOption(CaptureConfig.OPTION_JPEG_QUALITY, Integer.valueOf(imageCaptureRequest.mJpegQuality));
            }
            builder.addImplementationOptions(captureStage.getCaptureConfig().getImplementationOptions());
            if (tagBundleKey != null) {
                builder.addTag(tagBundleKey, Integer.valueOf(captureStage.getId()));
            }
            builder.addCameraCaptureCallback(this.mMetadataMatchingCaptureCallback);
            arrayList.add(builder.build());
        }
        return Futures.transform(getCameraControl().submitStillCaptureRequests(arrayList, this.mCaptureMode, this.mFlashType), new androidx.browser.browseractions.a(), CameraXExecutors.directExecutor());
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onAttached() {
        ImageCaptureConfig imageCaptureConfig = (ImageCaptureConfig) getCurrentConfig();
        this.mCaptureConfig = CaptureConfig.Builder.createFrom(imageCaptureConfig).build();
        this.mCaptureProcessor = imageCaptureConfig.getCaptureProcessor(null);
        this.mMaxCaptureStages = imageCaptureConfig.getMaxCaptureStages(2);
        this.mCaptureBundle = imageCaptureConfig.getCaptureBundle(CaptureBundles.singleDefaultCaptureBundle());
        this.mUseSoftwareJpeg = imageCaptureConfig.isSoftwareJpegEncoderRequested();
        this.mIsSessionProcessorEnabled = imageCaptureConfig.isSessionProcessorEnabled();
        Preconditions.checkNotNull(getCamera(), "Attached camera cannot be null");
        this.mExecutor = Executors.newFixedThreadPool(1, new ThreadFactory() { // from class: androidx.camera.core.ImageCapture.7
            private final AtomicInteger mId = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(@NonNull Runnable runnable) {
                return new Thread(runnable, "CameraX-image_capture_" + this.mId.getAndIncrement());
            }
        });
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onCameraControlReady() {
        trySetFlashModeToCameraControl();
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onDetached() {
        m5.a<Void> aVar = this.mImageReaderCloseFuture;
        abortImageCaptureRequests();
        clearPipeline();
        this.mUseSoftwareJpeg = false;
        aVar.addListener(new o(2, this.mExecutor), CameraXExecutors.directExecutor());
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00d1  */
    @Override // androidx.camera.core.UseCase
    @androidx.annotation.NonNull
    @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.camera.core.impl.UseCaseConfig<?> onMergeConfig(@androidx.annotation.NonNull androidx.camera.core.impl.CameraInfoInternal r8, @androidx.annotation.NonNull androidx.camera.core.impl.UseCaseConfig.Builder<?, ?, ?> r9) {
        /*
            r7 = this;
            androidx.camera.core.impl.UseCaseConfig r0 = r9.getUseCaseConfig()
            androidx.camera.core.impl.Config$Option<androidx.camera.core.impl.CaptureProcessor> r1 = androidx.camera.core.impl.ImageCaptureConfig.OPTION_CAPTURE_PROCESSOR
            r2 = 0
            java.lang.Object r0 = r0.retrieveOption(r1, r2)
            java.lang.String r3 = "ImageCapture"
            if (r0 == 0) goto L26
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = 29
            if (r0 < r4) goto L26
            java.lang.String r8 = "Requesting software JPEG due to a CaptureProcessor is set."
            androidx.camera.core.Logger.i(r3, r8)
            androidx.camera.core.impl.MutableConfig r8 = r9.getMutableConfig()
            androidx.camera.core.impl.Config$Option<java.lang.Boolean> r0 = androidx.camera.core.impl.ImageCaptureConfig.OPTION_USE_SOFTWARE_JPEG_ENCODER
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            r8.insertOption(r0, r3)
            goto L58
        L26:
            androidx.camera.core.impl.Quirks r8 = r8.getCameraQuirks()
            java.lang.Class<androidx.camera.core.internal.compat.quirk.SoftwareJpegEncodingPreferredQuirk> r0 = androidx.camera.core.internal.compat.quirk.SoftwareJpegEncodingPreferredQuirk.class
            boolean r8 = r8.contains(r0)
            if (r8 == 0) goto L58
            androidx.camera.core.impl.MutableConfig r8 = r9.getMutableConfig()
            androidx.camera.core.impl.Config$Option<java.lang.Boolean> r0 = androidx.camera.core.impl.ImageCaptureConfig.OPTION_USE_SOFTWARE_JPEG_ENCODER
            java.lang.Boolean r4 = java.lang.Boolean.TRUE
            java.lang.Object r8 = r8.retrieveOption(r0, r4)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L4c
            java.lang.String r8 = "Device quirk suggests software JPEG encoder, but it has been explicitly disabled."
            androidx.camera.core.Logger.w(r3, r8)
            goto L58
        L4c:
            java.lang.String r8 = "Requesting software JPEG due to device quirk."
            androidx.camera.core.Logger.i(r3, r8)
            androidx.camera.core.impl.MutableConfig r8 = r9.getMutableConfig()
            r8.insertOption(r0, r4)
        L58:
            androidx.camera.core.impl.MutableConfig r8 = r9.getMutableConfig()
            boolean r8 = enforceSoftwareJpegConstraints(r8)
            androidx.camera.core.impl.MutableConfig r0 = r9.getMutableConfig()
            androidx.camera.core.impl.Config$Option<java.lang.Integer> r3 = androidx.camera.core.impl.ImageCaptureConfig.OPTION_BUFFER_FORMAT
            java.lang.Object r0 = r0.retrieveOption(r3, r2)
            java.lang.Integer r0 = (java.lang.Integer) r0
            r3 = 0
            r4 = 1
            r5 = 35
            if (r0 == 0) goto L99
            androidx.camera.core.impl.MutableConfig r6 = r9.getMutableConfig()
            java.lang.Object r1 = r6.retrieveOption(r1, r2)
            if (r1 != 0) goto L7e
            r1 = 1
            goto L7f
        L7e:
            r1 = 0
        L7f:
            java.lang.String r2 = "Cannot set buffer format with CaptureProcessor defined."
            androidx.core.util.Preconditions.checkArgument(r1, r2)
            androidx.camera.core.impl.MutableConfig r1 = r9.getMutableConfig()
            androidx.camera.core.impl.Config$Option<java.lang.Integer> r2 = androidx.camera.core.impl.ImageInputConfig.OPTION_INPUT_FORMAT
            if (r8 == 0) goto L8d
            goto L91
        L8d:
            int r5 = r0.intValue()
        L91:
            java.lang.Integer r8 = java.lang.Integer.valueOf(r5)
            r1.insertOption(r2, r8)
            goto Lde
        L99:
            androidx.camera.core.impl.MutableConfig r0 = r9.getMutableConfig()
            java.lang.Object r0 = r0.retrieveOption(r1, r2)
            if (r0 != 0) goto Ld1
            if (r8 == 0) goto La6
            goto Ld1
        La6:
            androidx.camera.core.impl.MutableConfig r8 = r9.getMutableConfig()
            androidx.camera.core.impl.Config$Option<java.util.List<android.util.Pair<java.lang.Integer, android.util.Size[]>>> r0 = androidx.camera.core.impl.ImageOutputConfig.OPTION_SUPPORTED_RESOLUTIONS
            java.lang.Object r8 = r8.retrieveOption(r0, r2)
            java.util.List r8 = (java.util.List) r8
            r0 = 256(0x100, float:3.59E-43)
            if (r8 != 0) goto Lc4
        Lb6:
            androidx.camera.core.impl.MutableConfig r8 = r9.getMutableConfig()
            androidx.camera.core.impl.Config$Option<java.lang.Integer> r1 = androidx.camera.core.impl.ImageInputConfig.OPTION_INPUT_FORMAT
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r8.insertOption(r1, r0)
            goto Lde
        Lc4:
            boolean r1 = isImageFormatSupported(r8, r0)
            if (r1 == 0) goto Lcb
            goto Lb6
        Lcb:
            boolean r8 = isImageFormatSupported(r8, r5)
            if (r8 == 0) goto Lde
        Ld1:
            androidx.camera.core.impl.MutableConfig r8 = r9.getMutableConfig()
            androidx.camera.core.impl.Config$Option<java.lang.Integer> r0 = androidx.camera.core.impl.ImageInputConfig.OPTION_INPUT_FORMAT
            java.lang.Integer r1 = java.lang.Integer.valueOf(r5)
            r8.insertOption(r0, r1)
        Lde:
            androidx.camera.core.impl.MutableConfig r8 = r9.getMutableConfig()
            androidx.camera.core.impl.Config$Option<java.lang.Integer> r0 = androidx.camera.core.impl.ImageCaptureConfig.OPTION_MAX_CAPTURE_STAGES
            r1 = 2
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object r8 = r8.retrieveOption(r0, r1)
            java.lang.Integer r8 = (java.lang.Integer) r8
            int r8 = r8.intValue()
            if (r8 < r4) goto Lf6
            r3 = 1
        Lf6:
            java.lang.String r8 = "Maximum outstanding image count must be at least 1"
            androidx.core.util.Preconditions.checkArgument(r3, r8)
            androidx.camera.core.impl.UseCaseConfig r8 = r9.getUseCaseConfig()
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.ImageCapture.onMergeConfig(androidx.camera.core.impl.CameraInfoInternal, androidx.camera.core.impl.UseCaseConfig$Builder):androidx.camera.core.impl.UseCaseConfig");
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @UiThread
    public void onStateDetached() {
        abortImageCaptureRequests();
    }

    @Override // androidx.camera.core.UseCase
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Size onSuggestedResolutionUpdated(@NonNull Size size) {
        SessionConfig.Builder builderCreatePipeline = createPipeline(getCameraId(), (ImageCaptureConfig) getCurrentConfig(), size);
        this.mSessionConfigBuilder = builderCreatePipeline;
        updateSessionConfig(builderCreatePipeline.build());
        notifyActive();
        return size;
    }

    public void setCropAspectRatio(@NonNull Rational rational) {
        this.mCropAspectRatio = rational;
    }

    public void setFlashMode(int r32) {
        if (r32 != 0 && r32 != 1 && r32 != 2) {
            throw new IllegalArgumentException(android.support.v4.media.a.d("Invalid flash mode: ", r32));
        }
        synchronized (this.mLockedFlashMode) {
            this.mFlashMode = r32;
            trySetFlashModeToCameraControl();
        }
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSensorToBufferTransformMatrix(@NonNull Matrix matrix) {
        this.mSensorToBufferTransformMatrix = matrix;
    }

    public void setTargetRotation(int r32) {
        int targetRotation = getTargetRotation();
        if (!setTargetRotationInternal(r32) || this.mCropAspectRatio == null) {
            return;
        }
        this.mCropAspectRatio = ImageUtil.getRotatedAspectRatio(Math.abs(CameraOrientationUtil.surfaceRotationToDegrees(r32) - CameraOrientationUtil.surfaceRotationToDegrees(targetRotation)), this.mCropAspectRatio);
    }

    /* renamed from: takePicture, reason: merged with bridge method [inline-methods] */
    public void lambda$takePicture$4(@NonNull final OutputFileOptions outputFileOptions, @NonNull final Executor executor, @NonNull final OnImageSavedCallback onImageSavedCallback) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.z
                @Override // java.lang.Runnable
                public final void run() {
                    this.f815a.lambda$takePicture$4(outputFileOptions, executor, onImageSavedCallback);
                }
            });
            return;
        }
        final ImageSaver.OnImageSavedCallback onImageSavedCallback2 = new ImageSaver.OnImageSavedCallback() { // from class: androidx.camera.core.ImageCapture.4
            @Override // androidx.camera.core.ImageSaver.OnImageSavedCallback
            public void onError(@NonNull ImageSaver.SaveError saveError, @NonNull String str, @Nullable Throwable th2) {
                onImageSavedCallback.onError(new ImageCaptureException(AnonymousClass8.$SwitchMap$androidx$camera$core$ImageSaver$SaveError[saveError.ordinal()] != 1 ? 0 : 1, str, th2));
            }

            @Override // androidx.camera.core.ImageSaver.OnImageSavedCallback
            public void onImageSaved(@NonNull OutputFileResults outputFileResults) {
                onImageSavedCallback.onImageSaved(outputFileResults);
            }
        };
        final int jpegQualityInternal = getJpegQualityInternal();
        sendImageCaptureRequest(CameraXExecutors.mainThreadExecutor(), new OnImageCapturedCallback() { // from class: androidx.camera.core.ImageCapture.5
            @Override // androidx.camera.core.ImageCapture.OnImageCapturedCallback
            public void onCaptureSuccess(@NonNull ImageProxy imageProxy) {
                ImageCapture.this.mIoExecutor.execute(new ImageSaver(imageProxy, outputFileOptions, imageProxy.getImageInfo().getRotationDegrees(), jpegQualityInternal, executor, ImageCapture.this.mSequentialIoExecutor, onImageSavedCallback2));
            }

            @Override // androidx.camera.core.ImageCapture.OnImageCapturedCallback
            public void onError(@NonNull ImageCaptureException imageCaptureException) {
                onImageSavedCallback.onError(imageCaptureException);
            }
        }, true);
    }

    /* renamed from: takePicture, reason: merged with bridge method [inline-methods] */
    public void lambda$takePicture$3(@NonNull final Executor executor, @NonNull final OnImageCapturedCallback onImageCapturedCallback) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.y
                @Override // java.lang.Runnable
                public final void run() {
                    this.f810a.lambda$takePicture$3(executor, onImageCapturedCallback);
                }
            });
        } else {
            sendImageCaptureRequest(executor, onImageCapturedCallback, false);
        }
    }

    @NonNull
    public String toString() {
        return "ImageCapture:" + getName();
    }

    public void unlockFlashMode() {
        synchronized (this.mLockedFlashMode) {
            Integer andSet = this.mLockedFlashMode.getAndSet(null);
            if (andSet == null) {
                return;
            }
            if (andSet.intValue() != getFlashMode()) {
                trySetFlashModeToCameraControl();
            }
        }
    }
}
