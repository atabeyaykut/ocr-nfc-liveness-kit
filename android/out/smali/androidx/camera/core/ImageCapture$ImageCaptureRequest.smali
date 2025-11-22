.class Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCaptureRequest"
.end annotation


# instance fields
.field private final mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mJpegQuality:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
        to = 0x64L
    .end annotation
.end field

.field private final mListenerExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final mRotationDegrees:I

.field private final mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mTargetRatio:Landroid/util/Rational;

.field private final mViewPortCropRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/util/Rational;Landroid/graphics/Rect;Landroid/graphics/Matrix;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x64L
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mRotationDegrees:I

    iput p2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mJpegQuality:I

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/util/Rational;->isZero()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const-string v0, "Target ratio cannot be zero"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p3}, Landroid/util/Rational;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p1, "Target ratio must be positive"

    invoke-static {v1, p1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :cond_1
    iput-object p3, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    iput-object p4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mViewPortCropRect:Landroid/graphics/Rect;

    iput-object p5, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    iput-object p6, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mListenerExecutor:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->lambda$notifyCallbackError$1(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->lambda$dispatchImage$0(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method private synthetic lambda$dispatchImage$0(Landroidx/camera/core/ImageProxy;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onCaptureSuccess(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method private synthetic lambda$notifyCallbackError$1(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    invoke-direct {v1, p1, p2, p3}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method


# virtual methods
.method public dispatchImage(Landroidx/camera/core/ImageProxy;)V
    .locals 7

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    return-void

    :cond_0
    sget-object v0, Landroidx/camera/core/ImageCapture;->EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-virtual {v0, p1}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;->shouldUseExifOrientation(Landroidx/camera/core/ImageProxy;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Landroidx/camera/core/impl/utils/Exif;->createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v0, Landroid/util/Size;

    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif;->getHeight()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif;->getRotation()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to parse JPEG exif"

    invoke-virtual {p0, v2, v1, v0}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    return-void

    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/util/Size;-><init>(II)V

    iget v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mRotationDegrees:I

    :goto_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v3

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v4

    invoke-interface {v4}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    invoke-static {v3, v4, v5, v1, v6}, Landroidx/camera/core/ImmutableImageInfo;->create(Landroidx/camera/core/impl/TagBundle;JILandroid/graphics/Matrix;)Landroidx/camera/core/ImageInfo;

    move-result-object v3

    new-instance v4, Landroidx/camera/core/SettableImageProxy;

    invoke-direct {v4, p1, v0, v3}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroid/util/Size;Landroidx/camera/core/ImageInfo;)V

    iget-object v3, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mViewPortCropRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    iget v6, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mRotationDegrees:I

    invoke-static {v3, v5, v6, v0, v1}, Landroidx/camera/core/ImageCapture;->computeDispatchCropRect(Landroid/graphics/Rect;Landroid/util/Rational;ILandroid/util/Size;I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {v4, v0}, Landroidx/camera/core/ImageProxy;->setCropRect(Landroid/graphics/Rect;)V

    :try_start_1
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/n;

    invoke-direct {v1, p0, v4, v2}, Landroidx/camera/core/n;-><init>(Ljava/lang/Object;Landroidx/camera/core/ImageProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "ImageCapture"

    const-string v1, "Unable to post to the supplied executor."

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    :goto_1
    return-void
.end method

.method public notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroidx/camera/core/h0;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/h0;-><init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Throwable;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ImageCapture"

    const-string p2, "Unable to post to the supplied executor."

    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
