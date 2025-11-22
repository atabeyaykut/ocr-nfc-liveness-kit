.class Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/RequestProcessor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackAdapter"
.end annotation


# instance fields
.field private final mCallback:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;


# direct methods
.method public constructor <init>(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;->mCallback:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;

    return-void
.end method

.method private getImplRequest(Landroidx/camera/core/impl/RequestProcessor$Request;)Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .locals 1

    instance-of v0, p1, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestAdapter;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    check-cast p1, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestAdapter;

    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestAdapter;->getImplRequest()Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onCaptureBufferLost(Landroidx/camera/core/impl/RequestProcessor$Request;JI)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/RequestProcessor$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;->mCallback:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;

    invoke-direct {p0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;->getImplRequest(Landroidx/camera/core/impl/RequestProcessor$Request;)Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;->onCaptureBufferLost(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;JI)V

    return-void
.end method

.method public onCaptureCompleted(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 2
    .param p1    # Landroidx/camera/core/impl/RequestProcessor$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CameraCaptureResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p2}, Landroidx/camera/camera2/impl/Camera2CameraCaptureResultConverter;->getCaptureResult(Landroidx/camera/core/impl/CameraCaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p2

    instance-of v0, p2, Landroid/hardware/camera2/TotalCaptureResult;

    const-string v1, "CaptureResult in cameraCaptureResult is not a TotalCaptureResult"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;->mCallback:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;

    invoke-direct {p0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;->getImplRequest(Landroidx/camera/core/impl/RequestProcessor$Request;)Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object p1

    check-cast p2, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-interface {v0, p1, p2}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;->onCaptureCompleted(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public onCaptureFailed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 2
    .param p1    # Landroidx/camera/core/impl/RequestProcessor$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CameraCaptureFailure;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p2}, Landroidx/camera/camera2/impl/Camera2CameraCaptureResultConverter;->getCaptureFailure(Landroidx/camera/core/impl/CameraCaptureFailure;)Landroid/hardware/camera2/CaptureFailure;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "CameraCaptureFailure does not contain CaptureFailure."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;->mCallback:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;

    invoke-direct {p0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;->getImplRequest(Landroidx/camera/core/impl/RequestProcessor$Request;)Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;->onCaptureFailed(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public onCaptureProgressed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 2
    .param p1    # Landroidx/camera/core/impl/RequestProcessor$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CameraCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Landroidx/camera/camera2/impl/Camera2CameraCaptureResultConverter;->getCaptureResult(Landroidx/camera/core/impl/CameraCaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot get CaptureResult from the cameraCaptureResult "

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;->mCallback:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;

    invoke-direct {p0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;->getImplRequest(Landroidx/camera/core/impl/RequestProcessor$Request;)Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;->onCaptureProgressed(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;->mCallback:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;->onCaptureSequenceAborted(I)V

    return-void
.end method

.method public onCaptureSequenceCompleted(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;->mCallback:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method public onCaptureStarted(Landroidx/camera/core/impl/RequestProcessor$Request;JJ)V
    .locals 6
    .param p1    # Landroidx/camera/core/impl/RequestProcessor$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;->mCallback:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;

    invoke-direct {p0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;->getImplRequest(Landroidx/camera/core/impl/RequestProcessor$Request;)Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;->onCaptureStarted(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;JJ)V

    return-void
.end method
