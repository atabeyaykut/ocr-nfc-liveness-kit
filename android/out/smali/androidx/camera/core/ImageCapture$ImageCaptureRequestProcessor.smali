.class Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCaptureRequestProcessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$RequestProcessCallback;,
        Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;
    }
.end annotation


# instance fields
.field mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mCurrentRequestFuture:Lm5/a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/a<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageCaptor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field mOutstandingImages:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPendingRequests:Ljava/util/Deque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/camera/core/ImageCapture$ImageCaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestProcessCallback:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$RequestProcessCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;)V
    .locals 1
    .param p2    # Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;-><init>(ILandroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$RequestProcessCallback;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$RequestProcessCallback;)V
    .locals 1
    .param p2    # Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$RequestProcessCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mPendingRequests:Ljava/util/Deque;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequestFuture:Lm5/a;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mOutstandingImages:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mLock:Ljava/lang/Object;

    iput p1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mMaxImages:I

    iput-object p2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mImageCaptor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;

    iput-object p3, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mRequestProcessCallback:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$RequestProcessCallback;

    return-void
.end method


# virtual methods
.method public cancelRequests(Ljava/lang/Throwable;)V
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    iget-object v3, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequestFuture:Lm5/a;

    iput-object v2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequestFuture:Lm5/a;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mPendingRequests:Ljava/util/Deque;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mPendingRequests:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroidx/camera/core/ImageCapture;->getError(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4, p1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    invoke-static {p1}, Landroidx/camera/core/ImageCapture;->getError(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onImageClose(Landroidx/camera/core/ImageProxy;)V
    .locals 1

    iget-object p1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mOutstandingImages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mOutstandingImages:I

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->processNextRequest()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processNextRequest()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mOutstandingImages:I

    iget v2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mMaxImages:I

    if-lt v1, v2, :cond_1

    const-string v1, "ImageCapture"

    const-string v2, "Too many acquire images. Close image to be able to process next."

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mPendingRequests:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iput-object v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    iget-object v2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mRequestProcessCallback:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$RequestProcessCallback;

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$RequestProcessCallback;->onPreProcessRequest(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V

    :cond_3
    iget-object v2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mImageCaptor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;

    invoke-interface {v2, v1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;->capture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lm5/a;

    move-result-object v2

    iput-object v2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequestFuture:Lm5/a;

    new-instance v3, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$1;

    invoke-direct {v3, p0, v1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$1;-><init>(Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lm5/a;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendRequest(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V
    .locals 7
    .param p1    # Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mPendingRequests:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    const-string p1, "ImageCapture"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Send image capture request [current, pending] = [%d, %d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mPendingRequests:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->processNextRequest()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
