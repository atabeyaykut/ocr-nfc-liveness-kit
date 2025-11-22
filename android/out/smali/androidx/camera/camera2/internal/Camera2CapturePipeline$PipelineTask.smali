.class interface abstract Landroidx/camera/camera2/internal/Camera2CapturePipeline$PipelineTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/Camera2CapturePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PipelineTask"
.end annotation


# virtual methods
.method public abstract isCaptureResultNeeded()Z
.end method

.method public abstract postCapture()V
.end method

.method public abstract preCapture(Landroid/hardware/camera2/TotalCaptureResult;)Lm5/a;
    .param p1    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ")",
            "Lm5/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
