.class public final Landroidx/camera/extensions/internal/AdaptingCaptureProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CaptureProcessor;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private final mImpl:Landroidx/camera/extensions/impl/CaptureProcessorImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/extensions/impl/CaptureProcessorImpl;)V
    .locals 0
    .param p1    # Landroidx/camera/extensions/impl/CaptureProcessorImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/AdaptingCaptureProcessor;->mImpl:Landroidx/camera/extensions/impl/CaptureProcessorImpl;

    return-void
.end method


# virtual methods
.method public final synthetic close()V
    .locals 0

    invoke-static {p0}, Landroidx/camera/core/impl/m;->a(Landroidx/camera/core/impl/CaptureProcessor;)V

    return-void
.end method

.method public final synthetic getCloseFuture()Lm5/a;
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/impl/m;->b(Landroidx/camera/core/impl/CaptureProcessor;)Lm5/a;

    move-result-object v0

    return-object v0
.end method

.method public onOutputSurface(Landroid/view/Surface;I)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/camera/extensions/internal/AdaptingCaptureProcessor;->mImpl:Landroidx/camera/extensions/impl/CaptureProcessorImpl;

    invoke-interface {v0, p1, p2}, Landroidx/camera/extensions/impl/CaptureProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    iget-object p1, p0, Landroidx/camera/extensions/internal/AdaptingCaptureProcessor;->mImpl:Landroidx/camera/extensions/impl/CaptureProcessorImpl;

    invoke-interface {p1, p2}, Landroidx/camera/extensions/impl/CaptureProcessorImpl;->onImageFormatUpdate(I)V

    return-void
.end method

.method public onResolutionUpdate(Landroid/util/Size;)V
    .locals 1
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/camera/extensions/internal/AdaptingCaptureProcessor;->mImpl:Landroidx/camera/extensions/impl/CaptureProcessorImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/CaptureProcessorImpl;->onResolutionUpdate(Landroid/util/Size;)V

    return-void
.end method

.method public process(Landroidx/camera/core/impl/ImageProxyBundle;)V
    .locals 7
    .param p1    # Landroidx/camera/core/impl/ImageProxyBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/camera/core/ExperimentalGetImage;
    .end annotation

    invoke-interface {p1}, Landroidx/camera/core/impl/ImageProxyBundle;->getCaptureIds()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Landroidx/camera/core/impl/ImageProxyBundle;->getImageProxy(I)Lm5/a;

    move-result-object v3

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    invoke-interface {v3, v5, v6, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/ImageProxy;

    invoke-interface {v3}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-interface {v3}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v4

    invoke-static {v4}, Landroidx/camera/core/impl/CameraCaptureResults;->retrieveCameraCaptureResult(Landroidx/camera/core/ImageInfo;)Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-static {v4}, Landroidx/camera/camera2/impl/Camera2CameraCaptureResultConverter;->getCaptureResult(Landroidx/camera/core/impl/CameraCaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    check-cast v4, Landroid/hardware/camera2/TotalCaptureResult;

    new-instance v5, Landroid/util/Pair;

    invoke-interface {v3}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_3
    iget-object p1, p0, Landroidx/camera/extensions/internal/AdaptingCaptureProcessor;->mImpl:Landroidx/camera/extensions/impl/CaptureProcessorImpl;

    invoke-interface {p1, v1}, Landroidx/camera/extensions/impl/CaptureProcessorImpl;->process(Ljava/util/Map;)V

    return-void
.end method
