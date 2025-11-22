.class public final Landroidx/camera/core/ImageCapture;
.super Landroidx/camera/core/UseCase;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageCapture$Builder;,
        Landroidx/camera/core/ImageCapture$ImageCaptureRequest;,
        Landroidx/camera/core/ImageCapture$Metadata;,
        Landroidx/camera/core/ImageCapture$OutputFileResults;,
        Landroidx/camera/core/ImageCapture$OutputFileOptions;,
        Landroidx/camera/core/ImageCapture$Defaults;,
        Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;,
        Landroidx/camera/core/ImageCapture$OnImageSavedCallback;,
        Landroidx/camera/core/ImageCapture$FlashType;,
        Landroidx/camera/core/ImageCapture$FlashMode;,
        Landroidx/camera/core/ImageCapture$CaptureMode;,
        Landroidx/camera/core/ImageCapture$ImageCaptureError;,
        Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;
    }
.end annotation


# static fields
.field public static final CAPTURE_MODE_MAXIMIZE_QUALITY:I = 0x0

.field public static final CAPTURE_MODE_MINIMIZE_LATENCY:I = 0x1

.field public static final CAPTURE_MODE_ZERO_SHUTTER_LAG:I = 0x2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final DEFAULT_CAPTURE_MODE:I = 0x1

.field public static final DEFAULT_CONFIG:Landroidx/camera/core/ImageCapture$Defaults;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final DEFAULT_FLASH_MODE:I = 0x2

.field public static final ERROR_CAMERA_CLOSED:I = 0x3

.field public static final ERROR_CAPTURE_FAILED:I = 0x2

.field public static final ERROR_FILE_IO:I = 0x1

.field public static final ERROR_INVALID_CAMERA:I = 0x4

.field public static final ERROR_UNKNOWN:I = 0x0

.field static final EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

.field public static final FLASH_MODE_AUTO:I = 0x0

.field public static final FLASH_MODE_OFF:I = 0x2

.field public static final FLASH_MODE_ON:I = 0x1

.field private static final FLASH_MODE_UNKNOWN:I = -0x1

.field public static final FLASH_TYPE_ONE_SHOT_FLASH:I = 0x0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final FLASH_TYPE_USE_TORCH_AS_FLASH:I = 0x1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final JPEG_QUALITY_MAXIMIZE_QUALITY_MODE:B = 0x64t

.field private static final JPEG_QUALITY_MINIMIZE_LATENCY_MODE:B = 0x5ft

.field private static final MAX_IMAGES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImageCapture"


# instance fields
.field private mCaptureBundle:Landroidx/camera/core/impl/CaptureBundle;

.field private mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

.field private final mCaptureMode:I

.field private mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

.field private final mClosingListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

.field private mCropAspectRatio:Landroid/util/Rational;

.field private mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFlashMode:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLockedFlashMode"
    .end annotation
.end field

.field private final mFlashType:I

.field private mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

.field mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

.field private mImageReaderCloseFuture:Lm5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final mIoExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mIsSessionProcessorEnabled:Z

.field private final mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLockedFlashMode"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCaptureStages:I

.field private mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

.field mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

.field private mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;

.field final mSequentialIoExecutor:Ljava/util/concurrent/Executor;

.field mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

.field private mUseSoftwareJpeg:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/ImageCapture$Defaults;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$Defaults;-><init>()V

    sput-object v0, Landroidx/camera/core/ImageCapture;->DEFAULT_CONFIG:Landroidx/camera/core/ImageCapture$Defaults;

    new-instance v0, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-direct {v0}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;-><init>()V

    sput-object v0, Landroidx/camera/core/ImageCapture;->EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/ImageCaptureConfig;)V
    .locals 3
    .param p1    # Landroidx/camera/core/impl/ImageCaptureConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    new-instance p1, Landroidx/camera/core/x;

    invoke-direct {p1}, Landroidx/camera/core/x;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mClosingListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/camera/core/ImageCapture;->mFlashMode:I

    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/camera/core/ImageCapture;->mUseSoftwareJpeg:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/camera/core/ImageCapture;->mIsSessionProcessorEnabled:Z

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lm5/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mImageReaderCloseFuture:Lm5/a;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    sget-object v2, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_IMAGE_CAPTURE_MODE:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Landroidx/camera/core/impl/b0;->a(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureMode()I

    move-result v1

    :cond_0
    iput v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getFlashType(I)I

    move-result p1

    iput p1, p0, Landroidx/camera/core/ImageCapture;->mFlashType:I

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getIoExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mIoExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mSequentialIoExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/ImageCapture;->lambda$issueTakePicture$11(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private abortImageCaptureRequests()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/camera/core/CameraClosedException;

    const-string v1, "Camera is closed."

    invoke-direct {v0, v1}, Landroidx/camera/core/CameraClosedException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    invoke-virtual {v1, v0}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->cancelRequests(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/ImageCapture;->lambda$sendImageCaptureRequest$5(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/core/ImageCapture;->lambda$onDetached$10(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static computeDispatchCropRect(Landroid/graphics/Rect;Landroid/util/Rational;ILandroid/util/Size;I)Landroid/graphics/Rect;
    .locals 0
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0, p2, p3, p4}, Landroidx/camera/core/internal/utils/ImageUtil;->computeCropRectFromDispatchInfo(Landroid/graphics/Rect;ILandroid/util/Size;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    rem-int/lit16 p4, p4, 0xb4

    if-eqz p4, :cond_1

    new-instance p0, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/util/Rational;-><init>(II)V

    move-object p1, p0

    :cond_1
    invoke-static {p3, p1}, Landroidx/camera/core/internal/utils/ImageUtil;->isAspectRatioValid(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p3, p1}, Landroidx/camera/core/internal/utils/ImageUtil;->computeCropRectFromAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p2

    const/4 p3, 0x0

    invoke-direct {p0, p3, p3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static synthetic d(Landroidx/camera/core/ImageCapture;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/core/ImageCapture;->lambda$takePicture$3(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method

.method public static synthetic e(Lm5/a;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/core/ImageCapture;->lambda$takePictureInternal$8(Lm5/a;)V

    return-void
.end method

.method public static enforceSoftwareJpegConstraints(Landroidx/camera/core/impl/MutableConfig;)Z
    .locals 7
    .param p0    # Landroidx/camera/core/impl/MutableConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_USE_SOFTWARE_JPEG_ENCODER:Landroidx/camera/core/impl/Config$Option;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0, v1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const-string v5, "ImageCapture"

    if-ge v2, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Software JPEG only supported on API 26+, but current API level is "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    sget-object v4, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_BUFFER_FORMAT:Landroidx/camera/core/impl/Config$Option;

    const/4 v6, 0x0

    invoke-interface {p0, v4, v6}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x100

    if-eq v4, v6, :cond_1

    const-string v2, "Software JPEG cannot be used with non-JPEG output buffer format."

    invoke-static {v5, v2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v3, :cond_2

    const-string v2, "Unable to support software JPEG. Disabling."

    invoke-static {v5, v2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, v1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_2
    return v3
.end method

.method public static synthetic f(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/core/ImageCapture;->lambda$takePictureInternal$9(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/ImageCapture;->lambda$takePictureInternal$7(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method private getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mCaptureBundle:Landroidx/camera/core/impl/CaptureBundle;

    invoke-interface {v0}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroidx/camera/core/CaptureBundles;->createCaptureBundle(Ljava/util/List;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static getError(Ljava/lang/Throwable;)I
    .locals 1

    instance-of v0, p0, Landroidx/camera/core/CameraClosedException;

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    instance-of v0, p0, Landroidx/camera/core/ImageCaptureException;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/camera/core/ImageCaptureException;

    invoke-virtual {p0}, Landroidx/camera/core/ImageCaptureException;->getImageCaptureError()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getJpegQualityForImageCaptureRequest(Landroidx/camera/core/impl/CameraInternal;Z)I
    .locals 2
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getViewPortCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    invoke-static {v0, v1, p1, p2, p1}, Landroidx/camera/core/ImageCapture;->computeDispatchCropRect(Landroid/graphics/Rect;Landroid/util/Rational;ILandroid/util/Size;I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p2, v1, p1}, Landroidx/camera/core/internal/utils/ImageUtil;->shouldCropImage(IIII)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    if-nez p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x5f

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->getJpegQualityInternal()I

    move-result p1

    :goto_0
    return p1
.end method

.method private getJpegQualityInternal()I
    .locals 4
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
        to = 0x64L
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 6
    .line 7
    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_JPEG_COMPRESSION_QUALITY:Landroidx/camera/core/impl/Config$Option;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/camera/core/impl/b0;->a(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageCaptureConfig;->getJpegQuality()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_0
    iget v0, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "CaptureMode "

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v2, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    .line 44
    .line 45
    const-string v3, " is invalid"

    .line 46
    .line 47
    invoke-static {v1, v2, v3}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    :goto_0
    const/16 v0, 0x5f

    .line 56
    .line 57
    return v0

    .line 58
    :cond_3
    const/16 v0, 0x64

    .line 59
    .line 60
    return v0
.end method

.method public static synthetic h(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture;->lambda$takePicture$4(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method

.method public static synthetic i(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lm5/a;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/ImageCapture;->lambda$createPipeline$1(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lm5/a;

    move-result-object p0

    return-object p0
.end method

.method private static isImageFormatSupported(Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static synthetic j(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/core/ImageCapture;->lambda$sendImageCaptureRequest$6(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method

.method public static synthetic k(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/core/ImageCapture;->lambda$new$0(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method public static synthetic l(Ljava/util/List;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0}, Landroidx/camera/core/ImageCapture;->lambda$issueTakePicture$12(Ljava/util/List;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createPipeline$1(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lm5/a;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/ImageCapture;->takePictureInternal(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lm5/a;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$createPipeline$2(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->clearPipeline()V

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->isCurrentCamera(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyReset()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$issueTakePicture$11(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Processing image failed! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageCapture"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$issueTakePicture$12(Ljava/util/List;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 3

    const-string v0, "ImageCapture"

    const-string v1, "Discarding ImageProxy which was inadvertently acquired: "

    :try_start_0
    invoke-interface {p0}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_0

    :try_start_3
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "Failed to acquire latest image."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private static synthetic lambda$onDetached$10(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private synthetic lambda$sendImageCaptureRequest$5(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 4

    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not bound to a valid Camera ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method private static synthetic lambda$sendImageCaptureRequest$6(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 4

    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    const-string v1, "Request is canceled"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method private synthetic lambda$takePicture$3(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/camera/core/ImageCapture;->takePicture(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method

.method private synthetic lambda$takePicture$4(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method

.method private static synthetic lambda$takePictureInternal$7(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to acquire image"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$takePictureInternal$8(Lm5/a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method private synthetic lambda$takePictureInternal$9(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    new-instance v1, Landroidx/camera/core/e0;

    invoke-direct {v1, p2}, Landroidx/camera/core/e0;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/SafeCloseImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->lockFlashMode()V

    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture;->issueTakePicture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lm5/a;

    move-result-object p1

    new-instance v0, Landroidx/camera/core/ImageCapture$6;

    invoke-direct {v0, p0, p2}, Landroidx/camera/core/ImageCapture$6;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1, v0, v1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lm5/a;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    new-instance v0, Landroidx/camera/core/f0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroidx/camera/core/f0;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const-string p1, "takePictureInternal"

    return-object p1
.end method

.method private lockFlashMode()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic m(Landroidx/camera/core/ImageCapture;Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/camera/core/ImageCapture;->lambda$createPipeline$2(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method

.method private sendImageCaptureRequest(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Z)V
    .locals 11
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p3, Landroidx/camera/camera2/interop/a;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p0, p2}, Landroidx/camera/camera2/interop/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    if-nez v1, :cond_1

    new-instance p3, Landroidx/camera/core/g0;

    invoke-direct {p3, p2}, Landroidx/camera/core/g0;-><init>(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v10, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    move-result v3

    invoke-direct {p0, v0, p3}, Landroidx/camera/core/ImageCapture;->getJpegQualityForImageCaptureRequest(Landroidx/camera/core/impl/CameraInternal;Z)I

    move-result v4

    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getViewPortCropRect()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Landroidx/camera/core/ImageCapture;->mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    move-object v2, v10

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;-><init>(IILandroid/util/Rational;Landroid/graphics/Rect;Landroid/graphics/Matrix;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    invoke-virtual {v1, v10}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->sendRequest(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V

    return-void
.end method

.method private takePictureInternal(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lm5/a;
    .locals 2
    .param p1    # Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ImageCapture$ImageCaptureRequest;",
            ")",
            "Lm5/a<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/core/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroidx/camera/core/d0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lm5/a;

    move-result-object p1

    return-object p1
.end method

.method private trySetFlashModeToCameraControl()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/camera/core/impl/CameraControlInternal;->setFlashMode(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearPipeline()V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "Request is canceled."

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->cancelRequests(Ljava/lang/Throwable;)V

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lm5/a;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageReaderCloseFuture:Lm5/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    :cond_1
    return-void
.end method

.method public createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/ImageCaptureConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    invoke-static/range {p2 .. p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x2

    if-lt v3, v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/ImageCapture;->getCaptureMode()I

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Landroidx/camera/core/impl/CameraControlInternal;->addZslConfig(Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig$Builder;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/ImageCaptureConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    new-instance v3, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/ImageCaptureConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v11

    const/4 v12, 0x2

    const-wide/16 v13, 0x0

    invoke-interface/range {v8 .. v14}, Landroidx/camera/core/ImageReaderProxyProvider;->newInstance(IIIIJ)Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v3, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    new-instance v3, Landroidx/camera/core/ImageCapture$1;

    invoke-direct {v3, v0}, Landroidx/camera/core/ImageCapture$1;-><init>(Landroidx/camera/core/ImageCapture;)V

    iput-object v3, v0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    goto/16 :goto_1

    :cond_1
    iget-boolean v4, v0, Landroidx/camera/core/ImageCapture;->mIsSessionProcessorEnabled:Z

    const/16 v8, 0x1a

    const/16 v9, 0x100

    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v4

    if-ne v4, v9, :cond_2

    new-instance v3, Landroidx/camera/core/AndroidImageReaderProxy;

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v9

    invoke-static {v4, v8, v9, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/camera/core/AndroidImageReaderProxy;-><init>(Landroid/media/ImageReader;)V

    move-object v4, v7

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v4

    const/16 v10, 0x23

    if-ne v4, v10, :cond_4

    if-lt v3, v8, :cond_3

    new-instance v3, Landroidx/camera/core/internal/YuvToJpegProcessor;

    invoke-direct/range {p0 .. p0}, Landroidx/camera/core/ImageCapture;->getJpegQualityInternal()I

    move-result v4

    invoke-direct {v3, v4, v5}, Landroidx/camera/core/internal/YuvToJpegProcessor;-><init>(II)V

    new-instance v4, Landroidx/camera/core/ModifiableImageReaderProxy;

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-static {v8, v11, v10, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v8

    invoke-direct {v4, v8}, Landroidx/camera/core/ModifiableImageReaderProxy;-><init>(Landroid/media/ImageReader;)V

    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v8

    new-instance v10, Landroidx/camera/core/ProcessingImageReader$Builder;

    invoke-direct {v10, v4, v8, v3}, Landroidx/camera/core/ProcessingImageReader$Builder;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/impl/CaptureProcessor;)V

    iget-object v11, v0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v10, v11}, Landroidx/camera/core/ProcessingImageReader$Builder;->setPostProcessExecutor(Ljava/util/concurrent/Executor;)Landroidx/camera/core/ProcessingImageReader$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroidx/camera/core/ProcessingImageReader$Builder;->setOutputFormat(I)Landroidx/camera/core/ProcessingImageReader$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/camera/core/ProcessingImageReader$Builder;->build()Landroidx/camera/core/ProcessingImageReader;

    move-result-object v9

    invoke-static {}, Landroidx/camera/core/impl/MutableTagBundle;->create()Landroidx/camera/core/impl/MutableTagBundle;

    move-result-object v10

    invoke-virtual {v9}, Landroidx/camera/core/ProcessingImageReader;->getTagBundleKey()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/core/impl/CaptureStage;

    invoke-interface {v8}, Landroidx/camera/core/impl/CaptureStage;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v11, v8}, Landroidx/camera/core/impl/MutableTagBundle;->putTag(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v10}, Landroidx/camera/core/ModifiableImageReaderProxy;->setImageTagBundle(Landroidx/camera/core/impl/TagBundle;)V

    move-object v4, v3

    move-object v3, v9

    :goto_0
    new-instance v8, Landroidx/camera/core/ImageCapture$2;

    invoke-direct {v8, v0}, Landroidx/camera/core/ImageCapture$2;-><init>(Landroidx/camera/core/ImageCapture;)V

    iput-object v8, v0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    new-instance v8, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {v8, v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v8, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    goto/16 :goto_5

    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Does not support API level < 26"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported image format:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v4, v0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    if-nez v4, :cond_7

    iget-boolean v10, v0, Landroidx/camera/core/ImageCapture;->mUseSoftwareJpeg:Z

    if-eqz v10, :cond_6

    goto :goto_2

    :cond_6
    new-instance v3, Landroidx/camera/core/MetadataImageReader;

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v9

    invoke-direct {v3, v4, v8, v9, v5}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    invoke-virtual {v3}, Landroidx/camera/core/MetadataImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v4

    iput-object v4, v0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    new-instance v4, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {v4, v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v4, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    :goto_1
    move-object v4, v7

    goto/16 :goto_5

    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v10

    iget-boolean v12, v0, Landroidx/camera/core/ImageCapture;->mUseSoftwareJpeg:Z

    if-eqz v12, :cond_a

    if-lt v3, v8, :cond_9

    const-string v3, "ImageCapture"

    const-string v4, "Using software JPEG encoder."

    invoke-static {v3, v4}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    if-eqz v3, :cond_8

    new-instance v3, Landroidx/camera/core/internal/YuvToJpegProcessor;

    invoke-direct/range {p0 .. p0}, Landroidx/camera/core/ImageCapture;->getJpegQualityInternal()I

    move-result v4

    iget v8, v0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    invoke-direct {v3, v4, v8}, Landroidx/camera/core/internal/YuvToJpegProcessor;-><init>(II)V

    new-instance v4, Landroidx/camera/core/CaptureProcessorPipeline;

    iget-object v8, v0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    iget v10, v0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    iget-object v12, v0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v4, v8, v10, v3, v12}, Landroidx/camera/core/CaptureProcessorPipeline;-><init>(Landroidx/camera/core/impl/CaptureProcessor;ILandroidx/camera/core/impl/CaptureProcessor;Ljava/util/concurrent/Executor;)V

    goto :goto_3

    :cond_8
    new-instance v3, Landroidx/camera/core/internal/YuvToJpegProcessor;

    invoke-direct/range {p0 .. p0}, Landroidx/camera/core/ImageCapture;->getJpegQualityInternal()I

    move-result v4

    iget v8, v0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    invoke-direct {v3, v4, v8}, Landroidx/camera/core/internal/YuvToJpegProcessor;-><init>(II)V

    move-object v4, v3

    :goto_3
    move-object v14, v4

    move-object v4, v3

    const/16 v3, 0x100

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Software JPEG only supported on API 26+"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object v14, v4

    move-object v4, v7

    move v3, v10

    :goto_4
    new-instance v15, Landroidx/camera/core/ProcessingImageReader$Builder;

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v10

    iget v12, v0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v8

    invoke-direct {v0, v8}, Landroidx/camera/core/ImageCapture;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v13

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Landroidx/camera/core/ProcessingImageReader$Builder;-><init>(IIIILandroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/impl/CaptureProcessor;)V

    iget-object v8, v0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v15, v8}, Landroidx/camera/core/ProcessingImageReader$Builder;->setPostProcessExecutor(Ljava/util/concurrent/Executor;)Landroidx/camera/core/ProcessingImageReader$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroidx/camera/core/ProcessingImageReader$Builder;->setOutputFormat(I)Landroidx/camera/core/ProcessingImageReader$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/core/ProcessingImageReader$Builder;->build()Landroidx/camera/core/ProcessingImageReader;

    move-result-object v3

    iput-object v3, v0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    invoke-virtual {v3}, Landroidx/camera/core/ProcessingImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v3

    iput-object v3, v0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    new-instance v3, Landroidx/camera/core/SafeCloseImageReaderProxy;

    iget-object v8, v0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    invoke-direct {v3, v8}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v3, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    :goto_5
    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    if-eqz v3, :cond_b

    new-instance v8, Ljava/util/concurrent/CancellationException;

    const-string v9, "Request is canceled."

    invoke-direct {v8, v9}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->cancelRequests(Ljava/lang/Throwable;)V

    :cond_b
    new-instance v3, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    new-instance v8, Landroidx/camera/core/a0;

    invoke-direct {v8, v0}, Landroidx/camera/core/a0;-><init>(Landroidx/camera/core/ImageCapture;)V

    if-nez v4, :cond_c

    move-object v9, v7

    goto :goto_6

    :cond_c
    new-instance v9, Landroidx/camera/core/ImageCapture$3;

    invoke-direct {v9, v0, v4}, Landroidx/camera/core/ImageCapture$3;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/internal/YuvToJpegProcessor;)V

    :goto_6
    invoke-direct {v3, v5, v8, v9}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;-><init>(ILandroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$RequestProcessCallback;)V

    iput-object v3, v0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    iget-object v4, v0, Landroidx/camera/core/ImageCapture;->mClosingListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/camera/core/SafeCloseImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    :cond_d
    new-instance v3, Landroidx/camera/core/impl/ImmediateSurface;

    iget-object v4, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-virtual {v4}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v4

    new-instance v5, Landroid/util/Size;

    iget-object v8, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-virtual {v8}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getWidth()I

    move-result v8

    iget-object v9, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-virtual {v9}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getHeight()I

    move-result v9

    invoke-direct {v5, v8, v9}, Landroid/util/Size;-><init>(II)V

    iget-object v8, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-virtual {v8}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getImageFormat()I

    move-result v8

    invoke-direct {v3, v4, v5, v8}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    iput-object v3, v0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroidx/camera/core/ProcessingImageReader;->getCloseFuture()Lm5/a;

    move-result-object v3

    goto :goto_7

    :cond_e
    invoke-static {v7}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lm5/a;

    move-result-object v3

    :goto_7
    iput-object v3, v0, Landroidx/camera/core/ImageCapture;->mImageReaderCloseFuture:Lm5/a;

    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v3}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lm5/a;

    move-result-object v3

    iget-object v4, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/camera/core/b0;

    invoke-direct {v5, v6, v4}, Landroidx/camera/core/b0;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lm5/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SessionConfig$Builder;->addNonRepeatingSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    new-instance v3, Landroidx/camera/core/c0;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct {v3, v0, v4, v5, v1}, Landroidx/camera/core/c0;-><init>(Landroidx/camera/core/ImageCapture;Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)V

    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SessionConfig$Builder;->addErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    return-object v2
.end method

.method public getCaptureMode()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    return v0
.end method

.method public getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 2
    .param p2    # Landroidx/camera/core/impl/UseCaseConfigFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/camera/core/impl/UseCaseConfigFactory;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCaptureMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroidx/camera/core/impl/UseCaseConfigFactory;->getConfig(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;

    move-result-object p2

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/camera/core/ImageCapture;->DEFAULT_CONFIG:Landroidx/camera/core/ImageCapture$Defaults;

    invoke-virtual {p1}, Landroidx/camera/core/ImageCapture$Defaults;->getConfig()Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/camera/core/impl/n;->b(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/Config;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/camera/core/ImageCapture;->getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getFlashMode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/camera/core/ImageCapture;->mFlashMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/ImageCaptureConfig;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/ImageCaptureConfig;->getFlashMode(I)I

    move-result v1

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getJpegQuality()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
        to = 0x64L
    .end annotation

    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->getJpegQualityInternal()I

    move-result v0

    return v0
.end method

.method public getResolutionInfo()Landroidx/camera/core/ResolutionInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Landroidx/camera/core/UseCase;->getResolutionInfo()Landroidx/camera/core/ResolutionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getResolutionInfoInternal()Landroidx/camera/core/ResolutionInfo;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getViewPortCropRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    invoke-static {v1, v3}, Landroidx/camera/core/internal/utils/ImageUtil;->computeCropRectFromAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroidx/camera/core/ResolutionInfo;->create(Landroid/util/Size;Landroid/graphics/Rect;I)Landroidx/camera/core/ResolutionInfo;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetRotation()I
    .locals 1

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getTargetRotationInternal()I

    move-result v0

    return v0
.end method

.method public getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 0
    .param p1    # Landroidx/camera/core/impl/Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;"
        }
    .end annotation

    invoke-static {p1}, Landroidx/camera/core/ImageCapture$Builder;->fromConfig(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object p1

    return-object p1
.end method

.method public issueTakePicture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lm5/a;
    .locals 7
    .param p1    # Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ImageCapture$ImageCaptureRequest;",
            ")",
            "Lm5/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "ImageCapture"

    const-string v1, "issueTakePicture"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/camera/core/ImageCapture;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageCapture cannot set empty CaptureBundle."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lm5/a;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v3, p0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    if-nez v3, :cond_1

    invoke-interface {v1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No CaptureProcessor can be found to process the images captured for multiple CaptureStages."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lm5/a;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    if-le v2, v3, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageCapture has CaptureStages > Max CaptureStage size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lm5/a;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    invoke-virtual {v2, v1}, Landroidx/camera/core/ProcessingImageReader;->setCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)V

    iget-object v2, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroidx/camera/core/m;

    invoke-direct {v4, p1}, Landroidx/camera/core/m;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Landroidx/camera/core/ProcessingImageReader;->setOnProcessingErrorCallback(Ljava/util/concurrent/Executor;Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;)V

    iget-object v2, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    invoke-virtual {v2}, Landroidx/camera/core/ProcessingImageReader;->getTagBundleKey()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/camera/core/ImageCapture;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_4

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageCapture have no CaptureProcess set with CaptureBundle size > 1."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lm5/a;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/CaptureStage;

    new-instance v4, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v5}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v5}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->getSingleCameraCaptureCallbacks()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addAllCameraCaptureCallbacks(Ljava/util/Collection;)V

    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v5

    const/16 v6, 0x100

    if-ne v5, v6, :cond_6

    sget-object v5, Landroidx/camera/core/ImageCapture;->EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-virtual {v5}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;->isRotationOptionSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    iget v6, p1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mRotationDegrees:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_5
    sget-object v5, Landroidx/camera/core/impl/CaptureConfig;->OPTION_JPEG_QUALITY:Landroidx/camera/core/impl/Config$Option;

    iget v6, p1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mJpegQuality:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_6
    invoke-interface {v3}, Landroidx/camera/core/impl/CaptureStage;->getCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    if-eqz v2, :cond_7

    invoke-interface {v3}, Landroidx/camera/core/impl/CaptureStage;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addTag(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget-object v3, p0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-virtual {v4, v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    invoke-virtual {v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object p1

    iget v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    iget v2, p0, Landroidx/camera/core/ImageCapture;->mFlashType:I

    invoke-interface {p1, v0, v1, v2}, Landroidx/camera/core/impl/CameraControlInternal;->submitStillCaptureRequests(Ljava/util/List;II)Lm5/a;

    move-result-object p1

    new-instance v0, Landroidx/browser/browseractions/a;

    invoke-direct {v0}, Landroidx/browser/browseractions/a;-><init>()V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/camera/core/impl/utils/futures/Futures;->transform(Lm5/a;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lm5/a;

    move-result-object p1

    return-object p1
.end method

.method public onAttached()V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-static {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/CaptureConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureProcessor(Landroidx/camera/core/impl/CaptureProcessor;)Landroidx/camera/core/impl/CaptureProcessor;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getMaxCaptureStages(I)I

    move-result v1

    iput v1, p0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureBundle:Landroidx/camera/core/impl/CaptureBundle;

    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageCaptureConfig;->isSoftwareJpegEncoderRequested()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/camera/core/ImageCapture;->mUseSoftwareJpeg:Z

    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageCaptureConfig;->isSessionProcessorEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/camera/core/ImageCapture;->mIsSessionProcessorEnabled:Z

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    const-string v1, "Attached camera cannot be null"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/camera/core/ImageCapture$7;

    invoke-direct {v0, p0}, Landroidx/camera/core/ImageCapture$7;-><init>(Landroidx/camera/core/ImageCapture;)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public onCameraControlReady()V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->trySetFlashModeToCameraControl()V

    return-void
.end method

.method public onDetached()V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mImageReaderCloseFuture:Lm5/a;

    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->abortImageCaptureRequests()V

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->clearPipeline()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/camera/core/ImageCapture;->mUseSoftwareJpeg:Z

    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroidx/camera/core/o;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Landroidx/camera/core/o;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lm5/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public onMergeConfig(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 7
    .param p1    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/UseCaseConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;)",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_CAPTURE_PROCESSOR:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "ImageCapture"

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_0

    const-string p1, "Requesting software JPEG due to a CaptureProcessor is set."

    invoke-static {v3, p1}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    sget-object v0, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_USE_SOFTWARE_JPEG_ENCODER:Landroidx/camera/core/impl/Config$Option;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v3}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object p1

    const-class v0, Landroidx/camera/core/internal/compat/quirk/SoftwareJpegEncodingPreferredQuirk;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    sget-object v0, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_USE_SOFTWARE_JPEG_ENCODER:Landroidx/camera/core/impl/Config$Option;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v4}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Device quirk suggests software JPEG encoder, but it has been explicitly disabled."

    invoke-static {v3, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Requesting software JPEG due to device quirk."

    invoke-static {v3, p1}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    invoke-interface {p1, v0, v4}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/core/ImageCapture;->enforceSoftwareJpegConstraints(Landroidx/camera/core/impl/MutableConfig;)Z

    move-result p1

    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v3, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_BUFFER_FORMAT:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v3, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x23

    if-eqz v0, :cond_5

    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v6

    invoke-interface {v6, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Cannot set buffer format with CaptureProcessor defined."

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_SUPPORTED_RESOLUTIONS:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p1, v0, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/16 v0, 0x100

    if-nez p1, :cond_7

    :goto_3
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    invoke-static {p1, v0}, Landroidx/camera/core/ImageCapture;->isImageFormatSupported(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {p1, v5}, Landroidx/camera/core/ImageCapture;->isImageFormatSupported(Ljava/util/List;I)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    :goto_4
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_a
    :goto_5
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    sget-object v0, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_MAX_CAPTURE_STAGES:Landroidx/camera/core/impl/Config$Option;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v4, :cond_b

    const/4 v3, 0x1

    :cond_b
    const-string p1, "Maximum outstanding image count must be at least 1"

    invoke-static {v3, p1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    return-object p1
.end method

.method public onStateDetached()V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->abortImageCaptureRequests()V

    return-void
.end method

.method public onSuggestedResolutionUpdated(Landroid/util/Size;)Landroid/util/Size;
    .locals 2
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/camera/core/ImageCapture;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyActive()V

    return-object p1
.end method

.method public setCropAspectRatio(Landroid/util/Rational;)V
    .locals 0
    .param p1    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    return-void
.end method

.method public setFlashMode(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Invalid flash mode: "

    .line 13
    .line 14
    invoke-static {v1, p1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iput p1, p0, Landroidx/camera/core/ImageCapture;->mFlashMode:I

    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->trySetFlashModeToCameraControl()V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method public setSensorToBufferTransformMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public setTargetRotation(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getTargetRotation()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->setTargetRotationInternal(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->surfaceRotationToDegrees(I)I

    move-result v0

    invoke-static {p1}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->surfaceRotationToDegrees(I)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    invoke-static {p1, v0}, Landroidx/camera/core/internal/utils/ImageUtil;->getRotatedAspectRatio(ILandroid/util/Rational;)Landroid/util/Rational;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    :cond_0
    return-void
.end method

.method public takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .locals 9
    .param p1    # Landroidx/camera/core/ImageCapture$OutputFileOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/ImageCapture$OnImageSavedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/z;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/z;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v7, Landroidx/camera/core/ImageCapture$4;

    invoke-direct {v7, p0, p3}, Landroidx/camera/core/ImageCapture$4;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->getJpegQualityInternal()I

    move-result v5

    new-instance v0, Landroidx/camera/core/ImageCapture$5;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Landroidx/camera/core/ImageCapture$5;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;ILjava/util/concurrent/Executor;Landroidx/camera/core/ImageSaver$OnImageSavedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroidx/camera/core/ImageCapture;->sendImageCaptureRequest(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Z)V

    return-void
.end method

.method public takePicture(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/y;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/core/y;-><init>(Landroidx/camera/core/ImageCapture;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/camera/core/ImageCapture;->sendImageCaptureRequest(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageCapture:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlockFlashMode()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->trySetFlashModeToCameraControl()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
