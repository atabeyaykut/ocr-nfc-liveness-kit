.class Landroidx/camera/camera2/internal/CaptureSessionRepository$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/CaptureSessionRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/CaptureSessionRepository;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/LinkedHashSet;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->lambda$forceOnClosedCaptureSessions$0(Ljava/util/LinkedHashSet;)V

    return-void
.end method

.method private cameraClosed()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v0, v0, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/CaptureSessionRepository;->getSessionsInOrder()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v2, v2, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mCreatingCaptureSessions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v2, v2, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mCaptureSessions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v2, v2, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mClosingCaptureSession:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSession;

    invoke-interface {v1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession;->finishClose()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private forceOnClosedCaptureSessions()V
    .locals 4

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v1, v1, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v2, v2, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mCreatingCaptureSessions:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v2, v2, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mCaptureSessions:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v1, v1, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/camera/camera2/internal/o0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroidx/camera/camera2/internal/o0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static synthetic lambda$forceOnClosedCaptureSessions$0(Ljava/util/LinkedHashSet;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository;->forceOnClosed(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->cameraClosed()V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->forceOnClosedCaptureSessions()V

    invoke-direct {p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->cameraClosed()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->forceOnClosedCaptureSessions()V

    invoke-direct {p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->cameraClosed()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
