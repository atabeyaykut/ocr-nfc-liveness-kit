.class public final synthetic Landroidx/camera/camera2/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/camera/camera2/internal/x;->a:I

    iput-object p1, p0, Landroidx/camera/camera2/internal/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/camera2/internal/x;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/camera2/internal/x;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/camera/camera2/internal/x;->a:I

    iget-object v1, p0, Landroidx/camera/camera2/internal/x;->d:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/camera/camera2/internal/x;->c:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/camera/camera2/internal/x;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Landroidx/camera/camera2/internal/Camera2CameraImpl;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Landroidx/camera/core/impl/SessionConfig;

    invoke-static {v3, v2, v1}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->m(Landroidx/camera/camera2/internal/Camera2CameraImpl;Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;)V

    return-void

    :pswitch_1
    check-cast v3, Landroidx/camera/camera2/internal/Camera2CameraImpl;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Landroidx/camera/core/impl/SessionConfig;

    invoke-static {v3, v2, v1}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->a(Landroidx/camera/camera2/internal/Camera2CameraImpl;Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;)V

    return-void

    :goto_0
    check-cast v3, Landroidx/camera/camera2/internal/ZoomControl;

    check-cast v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    check-cast v1, Landroidx/camera/core/ZoomState;

    invoke-static {v3, v1, v2}, Landroidx/camera/camera2/internal/ZoomControl;->a(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
