.class Landroidx/camera/camera2/internal/ZslControlImpl$1;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/internal/ZslControlImpl;->addZslConfig(Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/ZslControlImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/ZslControlImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/internal/ZslControlImpl$1;->this$0:Landroidx/camera/camera2/internal/ZslControlImpl;

    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCompleted(Landroidx/camera/core/impl/CameraCaptureResult;)V

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl$1;->this$0:Landroidx/camera/camera2/internal/ZslControlImpl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/ZslControlImpl;->mTotalCaptureResultRingBuffer:Ljava/util/Queue;

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
