.class Landroidx/camera/camera2/internal/ProcessingCaptureSession$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/internal/ProcessingCaptureSession;->issueCaptureRequests(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/ProcessingCaptureSession;

.field final synthetic val$captureConfig:Landroidx/camera/core/impl/CaptureConfig;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/ProcessingCaptureSession;Landroidx/camera/core/impl/CaptureConfig;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession$2;->this$0:Landroidx/camera/camera2/internal/ProcessingCaptureSession;

    iput-object p2, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession$2;->val$captureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/internal/ProcessingCaptureSession$2;Landroidx/camera/core/impl/CaptureConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ProcessingCaptureSession$2;->lambda$onCaptureSequenceCompleted$1(Landroidx/camera/core/impl/CaptureConfig;)V

    return-void
.end method

.method public static synthetic b(Landroidx/camera/camera2/internal/ProcessingCaptureSession$2;Landroidx/camera/core/impl/CaptureConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ProcessingCaptureSession$2;->lambda$onCaptureFailed$0(Landroidx/camera/core/impl/CaptureConfig;)V

    return-void
.end method

.method private synthetic lambda$onCaptureFailed$0(Landroidx/camera/core/impl/CaptureConfig;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getCameraCaptureCallbacks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    new-instance v1, Landroidx/camera/core/impl/CameraCaptureFailure;

    sget-object v2, Landroidx/camera/core/impl/CameraCaptureFailure$Reason;->ERROR:Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    invoke-direct {v1, v2}, Landroidx/camera/core/impl/CameraCaptureFailure;-><init>(Landroidx/camera/core/impl/CameraCaptureFailure$Reason;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureFailed(Landroidx/camera/core/impl/CameraCaptureFailure;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession$2;->this$0:Landroidx/camera/camera2/internal/ProcessingCaptureSession;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->mIsExecutingStillCaptureRequest:Z

    return-void
.end method

.method private synthetic lambda$onCaptureSequenceCompleted$1(Landroidx/camera/core/impl/CaptureConfig;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getCameraCaptureCallbacks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    new-instance v1, Landroidx/camera/core/impl/CameraCaptureResult$EmptyCameraCaptureResult;

    invoke-direct {v1}, Landroidx/camera/core/impl/CameraCaptureResult$EmptyCameraCaptureResult;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCompleted(Landroidx/camera/core/impl/CameraCaptureResult;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession$2;->this$0:Landroidx/camera/camera2/internal/ProcessingCaptureSession;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->mIsExecutingStillCaptureRequest:Z

    return-void
.end method


# virtual methods
.method public onCaptureFailed(I)V
    .locals 3

    iget-object p1, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession$2;->this$0:Landroidx/camera/camera2/internal/ProcessingCaptureSession;

    iget-object p1, p1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession$2;->val$captureConfig:Landroidx/camera/core/impl/CaptureConfig;

    new-instance v1, Landroidx/camera/camera2/internal/q;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, v0}, Landroidx/camera/camera2/internal/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureProcessStarted(I)V
    .locals 0

    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 0

    return-void
.end method

.method public onCaptureSequenceCompleted(I)V
    .locals 3

    iget-object p1, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession$2;->this$0:Landroidx/camera/camera2/internal/ProcessingCaptureSession;

    iget-object p1, p1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession$2;->val$captureConfig:Landroidx/camera/core/impl/CaptureConfig;

    new-instance v1, Landroidx/camera/camera2/internal/l;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, v0}, Landroidx/camera/camera2/internal/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureStarted(IJ)V
    .locals 0

    return-void
.end method
