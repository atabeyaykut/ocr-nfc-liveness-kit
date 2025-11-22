.class public final synthetic Landroidx/camera/camera2/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/camera2/internal/o;->a:I

    iput-object p2, p0, Landroidx/camera/camera2/internal/o;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/camera2/internal/o;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/camera/camera2/internal/o;->a:I

    iget-object v1, p0, Landroidx/camera/camera2/internal/o;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/camera/camera2/internal/o;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v2, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;->a(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void

    :goto_0
    check-cast v2, Landroidx/camera/camera2/internal/Camera2CameraImpl;

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v2, v1}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->d(Landroidx/camera/camera2/internal/Camera2CameraImpl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
