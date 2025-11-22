.class public final Landroidx/camera/camera2/internal/Camera2CameraCaptureFailure;
.super Landroidx/camera/core/impl/CameraCaptureFailure;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private final mCaptureFailure:Landroid/hardware/camera2/CaptureFailure;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraCaptureFailure$Reason;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/CameraCaptureFailure$Reason;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureFailure;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/camera/core/impl/CameraCaptureFailure;-><init>(Landroidx/camera/core/impl/CameraCaptureFailure$Reason;)V

    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureFailure;->mCaptureFailure:Landroid/hardware/camera2/CaptureFailure;

    return-void
.end method


# virtual methods
.method public getCaptureFailure()Landroid/hardware/camera2/CaptureFailure;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureFailure;->mCaptureFailure:Landroid/hardware/camera2/CaptureFailure;

    return-object v0
.end method
