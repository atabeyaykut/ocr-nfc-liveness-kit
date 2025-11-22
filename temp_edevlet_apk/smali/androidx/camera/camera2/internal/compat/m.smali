.class public final synthetic Landroidx/camera/camera2/internal/compat/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/AutoCloseable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/AutoCloseable;I)V
    .locals 0

    iput p3, p0, Landroidx/camera/camera2/internal/compat/m;->a:I

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/m;->c:Ljava/lang/AutoCloseable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/camera/camera2/internal/compat/m;->a:I

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/m;->c:Ljava/lang/AutoCloseable;

    iget-object v2, p0, Landroidx/camera/camera2/internal/compat/m;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;

    check-cast v1, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v2, v1}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->f(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void

    :goto_0
    check-cast v2, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;

    check-cast v1, Landroid/hardware/camera2/CameraDevice;

    invoke-static {v2, v1}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;->d(Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraDevice;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
