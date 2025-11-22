.class public final synthetic Landroidx/camera/camera2/internal/z;
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

    iput p1, p0, Landroidx/camera/camera2/internal/z;->a:I

    iput-object p2, p0, Landroidx/camera/camera2/internal/z;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/camera2/internal/z;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/camera/camera2/internal/z;->a:I

    iget-object v1, p0, Landroidx/camera/camera2/internal/z;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/camera/camera2/internal/z;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/camera/camera2/internal/Camera2CameraImpl;

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->q(Landroidx/camera/camera2/internal/Camera2CameraImpl;Ljava/util/List;)V

    return-void

    :goto_0
    check-cast v2, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    check-cast v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSession;

    invoke-static {v2, v1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->c(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
