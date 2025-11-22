.class public final synthetic Landroidx/camera/core/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/core/d0;->a:I

    iput-object p2, p0, Landroidx/camera/core/d0;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/core/d0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/camera/core/d0;->a:I

    iget-object v1, p0, Landroidx/camera/core/d0;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/camera/core/d0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/camera/core/ImageCapture;

    check-cast v1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    invoke-static {v2, v1, p1}, Landroidx/camera/core/ImageCapture;->f(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, p1}, Landroidx/camera/core/SurfaceRequest;->g(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
