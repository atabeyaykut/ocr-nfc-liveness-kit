.class public final synthetic Landroidx/camera/camera2/internal/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener$Checker;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/camera2/internal/t;->a:I

    iput-object p2, p0, Landroidx/camera/camera2/internal/t;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/camera/camera2/internal/t;->a:I

    iget-object v1, p0, Landroidx/camera/camera2/internal/t;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/camera/camera2/internal/Camera2CameraImpl;

    invoke-static {v1, p1}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->h(Landroidx/camera/camera2/internal/Camera2CameraImpl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast v1, Landroidx/camera/camera2/internal/CaptureSession;

    invoke-static {v1, p1}, Landroidx/camera/camera2/internal/CaptureSession;->a(Landroidx/camera/camera2/internal/CaptureSession;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final check(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/t;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->c(Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method
