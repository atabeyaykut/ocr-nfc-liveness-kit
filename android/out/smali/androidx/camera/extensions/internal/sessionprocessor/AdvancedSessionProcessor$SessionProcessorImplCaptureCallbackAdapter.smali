.class Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionProcessorImplCaptureCallbackAdapter"
.end annotation


# instance fields
.field private final mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;->mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    return-void
.end method


# virtual methods
.method public onCaptureFailed(I)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;->mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureFailed(I)V

    return-void
.end method

.method public onCaptureProcessStarted(I)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;->mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureProcessStarted(I)V

    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;->mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureSequenceAborted(I)V

    return-void
.end method

.method public onCaptureSequenceCompleted(I)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;->mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureSequenceCompleted(I)V

    return-void
.end method

.method public onCaptureStarted(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;->mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureStarted(IJ)V

    return-void
.end method
