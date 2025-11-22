.class public final synthetic Landroidx/camera/camera2/internal/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/internal/CameraBurstCaptureCallback$CaptureSequenceCallback;
.implements Landroidx/camera/camera2/internal/compat/workaround/ForceCloseCaptureSession$OnConfigured;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/internal/m0;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureSequenceCompletedOrAborted(Landroid/hardware/camera2/CameraCaptureSession;IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/m0;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/internal/CaptureSession;

    invoke-static {v0, p1, p2, p3}, Landroidx/camera/camera2/internal/CaptureSession;->c(Landroidx/camera/camera2/internal/CaptureSession;Landroid/hardware/camera2/CameraCaptureSession;IZ)V

    return-void
.end method

.method public final run(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/m0;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;->h(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    return-void
.end method
