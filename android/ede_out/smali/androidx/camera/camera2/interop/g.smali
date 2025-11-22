.class public final synthetic Landroidx/camera/camera2/interop/g;
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

    iput p1, p0, Landroidx/camera/camera2/interop/g;->a:I

    iput-object p2, p0, Landroidx/camera/camera2/interop/g;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/camera2/interop/g;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/camera/camera2/interop/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/camera2/interop/g;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/camera/camera2/interop/Camera2CameraControl;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/camera/camera2/interop/g;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->b(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/interop/g;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lc6/x;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/camera/camera2/interop/g;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, La7/b;

    .line 26
    .line 27
    iget-object v2, v0, Lc6/x;->b:La7/b;

    .line 28
    .line 29
    sget-object v3, Lc6/x;->d:Lc6/w;

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v2, v0, Lc6/x;->a:La7/a$a;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    iput-object v3, v0, Lc6/x;->a:La7/a$a;

    .line 38
    .line 39
    iput-object v1, v0, Lc6/x;->b:La7/b;

    .line 40
    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-interface {v2, v1}, La7/a$a;->a(La7/b;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw v1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v1, "provide() can be called only once."

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
