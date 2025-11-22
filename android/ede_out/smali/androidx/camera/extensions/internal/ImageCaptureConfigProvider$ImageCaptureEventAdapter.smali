.class Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;
.super Landroidx/camera/camera2/impl/CameraEventCallback;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/UseCase$EventCallback;
.implements Landroidx/camera/core/impl/CaptureBundle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCaptureEventAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private volatile mEnabledSessionCount:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private volatile mUnbind:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/camera/camera2/impl/CameraEventCallback;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    iput-boolean v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mUnbind:Z

    iput-object p1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    iput-object p2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private callDeInit()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->onDeInit()V

    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCaptureStages()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureStage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->getCaptureStages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/extensions/impl/CaptureStageImpl;

    new-instance v3, Landroidx/camera/extensions/internal/AdaptingCaptureStage;

    invoke-direct {v3, v2}, Landroidx/camera/extensions/internal/AdaptingCaptureStage;-><init>(Landroidx/camera/extensions/impl/CaptureStageImpl;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroidx/camera/core/CameraInfo;)V
    .locals 3
    .param p1    # Landroidx/camera/core/CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/camera/camera2/interop/ExperimentalCamera2Interop;
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->extractCameraCharacteristics(Landroidx/camera/core/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    iget-object v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    iget-object v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1, v0, p1, v2}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->onInit(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mUnbind:Z

    iget v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->callDeInit()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisableSession()Landroidx/camera/core/impl/CaptureConfig;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->onDisableSession()Landroidx/camera/extensions/impl/CaptureStageImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroidx/camera/extensions/internal/AdaptingCaptureStage;

    invoke-direct {v1, v0}, Landroidx/camera/extensions/internal/AdaptingCaptureStage;-><init>(Landroidx/camera/extensions/impl/CaptureStageImpl;)V

    invoke-virtual {v1}, Landroidx/camera/extensions/internal/AdaptingCaptureStage;->getCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    iget v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mUnbind:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->callDeInit()V

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    iget v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mUnbind:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->callDeInit()V

    :cond_2
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    iget-object v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    iget v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mUnbind:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->callDeInit()V

    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method

.method public onEnableSession()Landroidx/camera/core/impl/CaptureConfig;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->onEnableSession()Landroidx/camera/extensions/impl/CaptureStageImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/camera/extensions/internal/AdaptingCaptureStage;

    invoke-direct {v1, v0}, Landroidx/camera/extensions/internal/AdaptingCaptureStage;-><init>(Landroidx/camera/extensions/impl/CaptureStageImpl;)V

    invoke-virtual {v1}, Landroidx/camera/extensions/internal/AdaptingCaptureStage;->getCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    iget-object v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mEnabledSessionCount:I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method

.method public onPresetSession()Landroidx/camera/core/impl/CaptureConfig;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider$ImageCaptureEventAdapter;->mImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->onPresetSession()Landroidx/camera/extensions/impl/CaptureStageImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    new-instance v1, Landroidx/camera/extensions/internal/AdaptingCaptureStage;

    invoke-direct {v1, v0}, Landroidx/camera/extensions/internal/AdaptingCaptureStage;-><init>(Landroidx/camera/extensions/impl/CaptureStageImpl;)V

    invoke-virtual {v1}, Landroidx/camera/extensions/internal/AdaptingCaptureStage;->getCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ImageCaptureConfigProvider"

    const-string v1, "The CaptureRequest parameters returned from onPresetSession() will be passed to the camera device as part of the capture session via SessionConfiguration#setSessionParameters(CaptureRequest) which only supported from API level 28!"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
