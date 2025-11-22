.class public final synthetic Landroidx/camera/camera2/interop/a;
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

    iput p1, p0, Landroidx/camera/camera2/interop/a;->a:I

    iput-object p2, p0, Landroidx/camera/camera2/interop/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/camera2/interop/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/camera/camera2/interop/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/camera2/interop/a;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/core/util/Consumer;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/camera/camera2/interop/a;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroid/view/Surface;

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/camera/core/SurfaceRequest;->a(Landroidx/core/util/Consumer;Landroid/view/Surface;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    iget-object v0, p0, Landroidx/camera/camera2/interop/a;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroidx/camera/core/ImageCapture;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/camera/camera2/interop/a;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/camera/core/ImageCapture;->b(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_2
    iget-object v0, p0, Landroidx/camera/camera2/interop/a;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Landroidx/camera/camera2/interop/Camera2CameraControl;

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/camera/camera2/interop/a;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 38
    .line 39
    invoke-static {v0, v1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->c(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/interop/a;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lc6/u;

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/camera/camera2/interop/a;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, La7/b;

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v2, v0, Lc6/u;->b:Ljava/util/Set;

    .line 53
    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    iget-object v2, v0, Lc6/u;->a:Ljava/util/Set;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    iget-object v2, v0, Lc6/u;->b:Ljava/util/Set;

    .line 60
    .line 61
    invoke-interface {v1}, La7/b;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_1
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception v1

    .line 71
    monitor-exit v0

    .line 72
    throw v1

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
