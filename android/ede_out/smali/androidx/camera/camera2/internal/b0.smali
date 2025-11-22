.class public final synthetic Landroidx/camera/camera2/internal/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/camera2/internal/b0;->a:I

    iput-object p2, p0, Landroidx/camera/camera2/internal/b0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/camera/camera2/internal/b0;->a:I

    iget-object v1, p0, Landroidx/camera/camera2/internal/b0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    invoke-static {v1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->a(Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;)V

    return-void

    :pswitch_1
    check-cast v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen;

    invoke-static {v1}, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen;->a(Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen;)V

    return-void

    :goto_0
    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-static {v1}, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->c(Landroidx/camera/core/impl/DeferrableSurface;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
