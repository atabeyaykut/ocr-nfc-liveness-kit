.class public final synthetic Landroidx/camera/camera2/internal/compat/workaround/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/compat/workaround/WaitForRepeatingRequestStart$OpenCaptureSession;

.field public final synthetic b:Landroid/hardware/camera2/CameraDevice;

.field public final synthetic c:Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/workaround/WaitForRepeatingRequestStart$OpenCaptureSession;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/workaround/c;->a:Landroidx/camera/camera2/internal/compat/workaround/WaitForRepeatingRequestStart$OpenCaptureSession;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/workaround/c;->b:Landroid/hardware/camera2/CameraDevice;

    iput-object p3, p0, Landroidx/camera/camera2/internal/compat/workaround/c;->c:Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;

    iput-object p4, p0, Landroidx/camera/camera2/internal/compat/workaround/c;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lm5/a;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/workaround/c;->d:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/workaround/c;->a:Landroidx/camera/camera2/internal/compat/workaround/WaitForRepeatingRequestStart$OpenCaptureSession;

    iget-object v2, p0, Landroidx/camera/camera2/internal/compat/workaround/c;->b:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p0, Landroidx/camera/camera2/internal/compat/workaround/c;->c:Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;

    invoke-static {v1, v2, v3, v0, p1}, Landroidx/camera/camera2/internal/compat/workaround/WaitForRepeatingRequestStart;->b(Landroidx/camera/camera2/internal/compat/workaround/WaitForRepeatingRequestStart$OpenCaptureSession;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;Ljava/util/List;Ljava/util/List;)Lm5/a;

    move-result-object p1

    return-object p1
.end method
