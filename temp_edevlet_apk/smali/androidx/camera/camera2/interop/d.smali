.class public final synthetic Landroidx/camera/camera2/interop/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lc3/b$a;
.implements Lb3/r$a;
.implements Lf6/a;
.implements Lh5/b;
.implements Lio/realm/g0$a;
.implements Lh5/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/camera2/interop/d;->a:I

    iput-object p2, p0, Landroidx/camera/camera2/interop/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld6/a;

    .line 4
    .line 5
    iget-object v0, v0, Ld6/a;->a:Lf6/a;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lf6/a;->a(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb3/r;

    .line 4
    .line 5
    check-cast p1, Landroid/database/Cursor;

    .line 6
    .line 7
    sget-object v1, Lb3/r;->f:Lr2/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    int-to-long v3, v1

    .line 29
    sget-object v1, Ly2/c$a;->f:Ly2/c$a;

    .line 30
    .line 31
    invoke-virtual {v0, v3, v4, v1, v2}, Lb3/r;->c(JLy2/c$a;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/camera/camera2/interop/d;->a:I

    iget-object v1, p0, Landroidx/camera/camera2/interop/d;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/camera/camera2/interop/Camera2CameraControl;

    invoke-static {v1, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->h(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast v1, Landroidx/camera/core/internal/YuvToJpegProcessor;

    invoke-static {v1, p1}, Landroidx/camera/core/internal/YuvToJpegProcessor;->a(Landroidx/camera/core/internal/YuvToJpegProcessor;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lh5/k;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh5/l;

    .line 4
    .line 5
    sget-object v1, Lh6/p0;->a:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    invoke-virtual {p1}, Lh5/k;->m()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lh5/k;->i()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lh5/k;->h()Ljava/lang/Exception;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lh5/l;->c(Ljava/lang/Exception;)Z

    .line 29
    .line 30
    .line 31
    :goto_0
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public final d(Lio/realm/g0;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/camera/camera2/interop/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lio/realm/g0;

    .line 4
    .line 5
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->k:[Lda/m;

    .line 6
    .line 7
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lio/realm/g0;->r(Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/interop/d;->b:Ljava/lang/Object;

    check-cast v0, Lb3/c;

    invoke-interface {v0}, Lb3/c;->b()Ly2/a;

    move-result-object v0

    return-object v0
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lx9/l;

    .line 4
    .line 5
    const-string v1, "$tmp0"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
