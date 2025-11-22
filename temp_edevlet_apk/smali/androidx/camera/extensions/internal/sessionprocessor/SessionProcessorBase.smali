.class abstract Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/SessionProcessor;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase$ImageRefHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionProcessorBase"


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private mImageReaderHandlerThread:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mImageReaderMap:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mSurfacesList:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mSurfacesList:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;ILandroid/media/ImageReader;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->lambda$setImageProcessor$1(Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;ILandroid/media/ImageReader;)V

    return-void
.end method

.method public static synthetic b(Landroid/media/ImageReader;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->lambda$initSession$0(Landroid/media/ImageReader;)V

    return-void
.end method

.method private static synthetic lambda$initSession$0(Landroid/media/ImageReader;)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V

    return-void
.end method

.method private static synthetic lambda$setImageProcessor$1(Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;ILandroid/media/ImageReader;)V
    .locals 6

    :try_start_0
    invoke-virtual {p2}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p2

    new-instance v4, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase$ImageRefHolder;

    invoke-direct {v4, p2}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase$ImageRefHolder;-><init>(Landroid/media/Image;)V

    invoke-virtual {p2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-interface/range {v0 .. v5}, Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;->onNextImageAvailable(IJLandroidx/camera/extensions/internal/sessionprocessor/ImageReference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SessionProcessorBase"

    const-string p2, "Failed to acquire next image."

    invoke-static {p1, p2, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final deInitSession()V
    .locals 3

    const-string v0, "SessionProcessorBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deInitSession: cameraId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->deInitSessionInternal()V

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mSurfacesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mSurfacesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public abstract deInitSessionInternal()V
.end method

.method public final initSession(Landroidx/camera/core/CameraInfo;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;)Landroidx/camera/core/impl/SessionConfig;
    .locals 6
    .param p1    # Landroidx/camera/core/CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/OutputSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/OutputSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/impl/OutputSurface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/camera/camera2/interop/ExperimentalCamera2Interop;
        }
    .end annotation

    invoke-static {p1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->getCameraCharacteristicsMap()Ljava/util/Map;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->initSessionInternal(Ljava/lang/String;Ljava/util/Map;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;

    move-result-object p2

    iget-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    invoke-interface {p2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;->getOutputConfigs()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    instance-of v1, v0, Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;

    new-instance v2, Landroidx/camera/core/impl/SessionProcessorSurface;

    invoke-interface {v1}, Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v0

    invoke-direct {v2, v1, v0}, Landroidx/camera/core/impl/SessionProcessorSurface;-><init>(Landroid/view/Surface;I)V

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mSurfacesList:Ljava/util/List;

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;

    invoke-interface {v1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-interface {v1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-interface {v1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getImageFormat()I

    move-result v4

    invoke-interface {v1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getMaxImages()I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {v0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/camera/core/impl/SessionProcessorSurface;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroidx/camera/core/impl/SessionProcessorSurface;-><init>(Landroid/view/Surface;I)V

    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lm5/a;

    move-result-object v0

    new-instance v3, Landroidx/camera/extensions/internal/sessionprocessor/a;

    invoke-direct {v3, v1}, Landroidx/camera/extensions/internal/sessionprocessor/a;-><init>(Landroid/media/ImageReader;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lm5/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mSurfacesList:Ljava/util/List;

    goto :goto_1

    :cond_1
    instance-of v0, v0, Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "MultiResolutionImageReader not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance p3, Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-direct {p3}, Landroidx/camera/core/impl/SessionConfig$Builder;-><init>()V

    iget-object p4, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_1
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mSurfacesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {p3, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    goto :goto_2

    :cond_4
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p4, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {p4}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    invoke-interface {p2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;->getSessionParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;->getSessionParameters()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    goto :goto_3

    :cond_5
    invoke-virtual {p4}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroidx/camera/core/impl/SessionConfig$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)V

    invoke-interface {p2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;->getSessionTemplateId()I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)V

    new-instance p2, Landroid/os/HandlerThread;

    const-string p4, "CameraX-extensions_image_reader"

    invoke-direct {p2, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mCameraId:Ljava/lang/String;

    const-string p1, "SessionProcessorBase"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "initSession: cameraId="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public abstract initSessionInternal(Ljava/lang/String;Ljava/util/Map;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/OutputSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/impl/OutputSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/core/impl/OutputSurface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;",
            "Landroidx/camera/core/impl/OutputSurface;",
            "Landroidx/camera/core/impl/OutputSurface;",
            "Landroidx/camera/core/impl/OutputSurface;",
            ")",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;"
        }
    .end annotation
.end method

.method public setImageProcessor(ILandroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;)V
    .locals 3
    .param p2    # Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/camera/extensions/internal/sessionprocessor/b;

    invoke-direct {v0, p1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/b;-><init>(ILandroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;)V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
