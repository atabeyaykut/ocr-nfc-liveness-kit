.class public final synthetic Landroidx/camera/camera2/internal/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/ProcessingCaptureSession;

.field public final synthetic b:Landroidx/camera/core/impl/SessionConfig;

.field public final synthetic c:Landroid/hardware/camera2/CameraDevice;

.field public final synthetic d:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/ProcessingCaptureSession;Landroidx/camera/core/impl/SessionConfig;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/b1;->a:Landroidx/camera/camera2/internal/ProcessingCaptureSession;

    iput-object p2, p0, Landroidx/camera/camera2/internal/b1;->b:Landroidx/camera/core/impl/SessionConfig;

    iput-object p3, p0, Landroidx/camera/camera2/internal/b1;->c:Landroid/hardware/camera2/CameraDevice;

    iput-object p4, p0, Landroidx/camera/camera2/internal/b1;->d:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lm5/a;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/internal/b1;->d:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener;

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Landroidx/camera/camera2/internal/b1;->a:Landroidx/camera/camera2/internal/ProcessingCaptureSession;

    iget-object v2, p0, Landroidx/camera/camera2/internal/b1;->b:Landroidx/camera/core/impl/SessionConfig;

    iget-object v3, p0, Landroidx/camera/camera2/internal/b1;->c:Landroid/hardware/camera2/CameraDevice;

    invoke-static {v1, v2, v3, v0, p1}, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->a(Landroidx/camera/camera2/internal/ProcessingCaptureSession;Landroidx/camera/core/impl/SessionConfig;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/SynchronizedCaptureSessionOpener;Ljava/util/List;)Lm5/a;

    move-result-object p1

    return-object p1
.end method
