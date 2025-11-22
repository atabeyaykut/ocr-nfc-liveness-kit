.class public final Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CaptureProcessor;
.implements Landroidx/camera/extensions/internal/CloseableProcessor;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdaptingPreviewProcesso"


# instance fields
.field private mAccessCounter:Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;

.field private final mImpl:Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;)V
    .locals 1
    .param p1    # Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;

    invoke-direct {v0}, Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mAccessCounter:Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;

    iput-object p1, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mImpl:Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mAccessCounter:Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;->destroyAndWaitForZeroAccess()V

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

    iget-object v0, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mAccessCounter:Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;->tryIncrement()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mImpl:Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;

    invoke-interface {v0, p1, p2}, Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    iget-object p1, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mImpl:Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;

    const/16 p2, 0x23

    invoke-interface {p1, p2}, Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;->onImageFormatUpdate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mAccessCounter:Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;

    invoke-virtual {p1}, Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;->decrement()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mAccessCounter:Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;

    invoke-virtual {p2}, Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;->decrement()V

    throw p1
.end method

.method public onResolutionUpdate(Landroid/util/Size;)V
    .locals 1
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mAccessCounter:Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;->tryIncrement()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mImpl:Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;->onResolutionUpdate(Landroid/util/Size;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mAccessCounter:Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;

    invoke-virtual {p1}, Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;->decrement()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mAccessCounter:Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;->decrement()V

    throw p1
.end method

.method public process(Landroidx/camera/core/impl/ImageProxyBundle;)V
    .locals 5
    .param p1    # Landroidx/camera/core/impl/ImageProxyBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/camera/core/ExperimentalGetImage;
    .end annotation

    invoke-interface {p1}, Landroidx/camera/core/impl/ImageProxyBundle;->getCaptureIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Processing preview bundle must be 1, but found "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/ImageProxyBundle;->getImageProxy(I)Lm5/a;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/ImageProxy;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v0

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/core/impl/CameraCaptureResults;->retrieveCameraCaptureResult(Landroidx/camera/core/ImageInfo;)Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/impl/Camera2CameraCaptureResultConverter;->getCaptureResult(Landroidx/camera/core/impl/CameraCaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    instance-of v1, p1, Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mAccessCounter:Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;

    invoke-virtual {v1}, Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;->tryIncrement()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mImpl:Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;

    invoke-interface {v1, v0, p1}, Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;->process(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mAccessCounter:Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;

    invoke-virtual {p1}, Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;->decrement()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/camera/extensions/internal/AdaptingPreviewProcessor;->mAccessCounter:Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/BlockingCloseAccessCounter;->decrement()V

    throw p1

    :catch_0
    const-string p1, "AdaptingPreviewProcesso"

    const-string v0, "Unable to retrieve ImageProxy from bundle"

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
