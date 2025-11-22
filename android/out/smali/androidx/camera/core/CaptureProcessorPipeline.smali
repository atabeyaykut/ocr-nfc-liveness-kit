.class Landroidx/camera/core/CaptureProcessorPipeline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CaptureProcessor;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureProcessorPipeline"


# instance fields
.field mCloseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseFuture:Lm5/a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mClosed:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mIntermediateImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private final mPostCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mPreCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mProcessing:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSourceImageInfo:Landroidx/camera/core/ImageInfo;

.field private final mUnderlyingCaptureProcessorsCloseFuture:Lm5/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/a<",
            "Ljava/util/List<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CaptureProcessor;ILandroidx/camera/core/impl/CaptureProcessor;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CaptureProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/CaptureProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mIntermediateImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    iput-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mSourceImageInfo:Landroidx/camera/core/ImageInfo;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mClosed:Z

    iput-boolean v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mProcessing:Z

    iput-object p1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mPreCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    iput-object p3, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mPostCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Landroidx/camera/core/impl/CaptureProcessor;->getCloseFuture()Lm5/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Landroidx/camera/core/impl/CaptureProcessor;->getCloseFuture()Lm5/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->allAsList(Ljava/util/Collection;)Lm5/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mUnderlyingCaptureProcessorsCloseFuture:Lm5/a;

    iput-object p4, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    iput p2, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mMaxImages:I

    return-void
.end method

.method public static synthetic a(Landroidx/camera/core/CaptureProcessorPipeline;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/CaptureProcessorPipeline;->lambda$onResolutionUpdate$1(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method public static synthetic b(Landroidx/camera/core/CaptureProcessorPipeline;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/CaptureProcessorPipeline;->lambda$getCloseFuture$4(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/camera/core/CaptureProcessorPipeline;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/CaptureProcessorPipeline;->lambda$onResolutionUpdate$0(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method private closeAndCompleteFutureIfNecessary()V
    .locals 5

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mClosed:Z

    iget-boolean v2, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mProcessing:Z

    iget-object v3, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mCloseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    iget-object v4, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mIntermediateImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v4}, Landroidx/camera/core/impl/ImageReaderProxy;->close()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mUnderlyingCaptureProcessorsCloseFuture:Lm5/a;

    new-instance v1, Landroidx/camera/core/o;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/camera/core/o;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lm5/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

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

.method public static synthetic d(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/core/CaptureProcessorPipeline;->lambda$closeAndCompleteFutureIfNecessary$2(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/List;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0}, Landroidx/camera/core/CaptureProcessorPipeline;->lambda$getCloseFuture$3(Ljava/util/List;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$closeAndCompleteFutureIfNecessary$2(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getCloseFuture$3(Ljava/util/List;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getCloseFuture$4(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mCloseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "CaptureProcessorPipeline-close"

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$onResolutionUpdate$0(Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/core/CaptureProcessorPipeline;->postProcess(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method private synthetic lambda$onResolutionUpdate$1(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 3

    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/core/n;-><init>(Ljava/lang/Object;Landroidx/camera/core/ImageProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CaptureProcessorPipeline"

    const-string v1, "The executor for post-processing might have been shutting down or terminated!"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mClosed:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mPreCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    invoke-interface {v0}, Landroidx/camera/core/impl/CaptureProcessor;->close()V

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mPostCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    invoke-interface {v0}, Landroidx/camera/core/impl/CaptureProcessor;->close()V

    invoke-direct {p0}, Landroidx/camera/core/CaptureProcessorPipeline;->closeAndCompleteFutureIfNecessary()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCloseFuture()Lm5/a;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm5/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mClosed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mProcessing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mUnderlyingCaptureProcessorsCloseFuture:Lm5/a;

    new-instance v2, Landroidx/camera/core/l;

    invoke-direct {v2}, Landroidx/camera/core/l;-><init>()V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/camera/core/impl/utils/futures/Futures;->transform(Lm5/a;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lm5/a;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mCloseFuture:Lm5/a;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/camera/core/m;

    invoke-direct {v1, p0}, Landroidx/camera/core/m;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lm5/a;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mCloseFuture:Lm5/a;

    :cond_1
    iget-object v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mCloseFuture:Lm5/a;

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lm5/a;)Lm5/a;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onOutputSurface(Landroid/view/Surface;I)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mPostCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    invoke-interface {v0, p1, p2}, Landroidx/camera/core/impl/CaptureProcessor;->onOutputSurface(Landroid/view/Surface;I)V

    return-void
.end method

.method public onResolutionUpdate(Landroid/util/Size;)V
    .locals 5
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/camera/core/AndroidImageReaderProxy;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget v3, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mMaxImages:I

    const/16 v4, 0x23

    invoke-static {v1, v2, v4, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/core/AndroidImageReaderProxy;-><init>(Landroid/media/ImageReader;)V

    iput-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mIntermediateImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    iget-object v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mPreCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Landroidx/camera/core/impl/CaptureProcessor;->onOutputSurface(Landroid/view/Surface;I)V

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mPreCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CaptureProcessor;->onResolutionUpdate(Landroid/util/Size;)V

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mPostCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CaptureProcessor;->onResolutionUpdate(Landroid/util/Size;)V

    iget-object p1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mIntermediateImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    new-instance v0, Landroidx/camera/core/k;

    invoke-direct {v0, p0}, Landroidx/camera/core/k;-><init>(Landroidx/camera/core/CaptureProcessorPipeline;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/camera/core/impl/ImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public postProcess(Landroidx/camera/core/ImageProxy;)V
    .locals 5

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mClosed:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    new-instance v0, Landroid/util/Size;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iget-object v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mSourceImageInfo:Landroidx/camera/core/ImageInfo;

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mSourceImageInfo:Landroidx/camera/core/ImageInfo;

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/impl/TagBundle;->listKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mSourceImageInfo:Landroidx/camera/core/ImageInfo;

    invoke-interface {v2}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Landroidx/camera/core/SettableImageProxy;

    iget-object v4, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mSourceImageInfo:Landroidx/camera/core/ImageInfo;

    invoke-direct {v3, p1, v0, v4}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroid/util/Size;Landroidx/camera/core/ImageInfo;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mSourceImageInfo:Landroidx/camera/core/ImageInfo;

    new-instance p1, Landroidx/camera/core/SettableImageProxyBundle;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroidx/camera/core/SettableImageProxyBundle;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroidx/camera/core/SettableImageProxyBundle;->addImageProxy(Landroidx/camera/core/ImageProxy;)V

    :try_start_1
    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mPostCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CaptureProcessor;->process(Landroidx/camera/core/impl/ImageProxyBundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CaptureProcessorPipeline"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Post processing image failed! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mProcessing:Z

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Landroidx/camera/core/CaptureProcessorPipeline;->closeAndCompleteFutureIfNecessary()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public process(Landroidx/camera/core/impl/ImageProxyBundle;)V
    .locals 2
    .param p1    # Landroidx/camera/core/impl/ImageProxyBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mProcessing:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroidx/camera/core/impl/ImageProxyBundle;->getCaptureIds()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/ImageProxyBundle;->getImageProxy(I)Lm5/a;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mSourceImageInfo:Landroidx/camera/core/ImageInfo;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline;->mPreCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CaptureProcessor;->process(Landroidx/camera/core/impl/ImageProxyBundle;)V

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not successfully extract ImageProxy from the ImageProxyBundle."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
