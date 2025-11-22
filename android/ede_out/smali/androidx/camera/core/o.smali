.class public final synthetic Landroidx/camera/core/o;
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

    iput p1, p0, Landroidx/camera/core/o;->a:I

    iput-object p2, p0, Landroidx/camera/core/o;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/camera/core/o;->a:I

    iget-object v1, p0, Landroidx/camera/core/o;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/camera/core/SurfaceRequest;

    invoke-static {v1}, Landroidx/camera/core/SurfaceRequest;->e(Landroidx/camera/core/SurfaceRequest;)V

    return-void

    :pswitch_1
    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Landroidx/camera/core/ImageCapture;->c(Ljava/util/concurrent/ExecutorService;)V

    return-void

    :pswitch_2
    check-cast v1, Landroidx/camera/core/ProcessingSurface;

    invoke-static {v1}, Landroidx/camera/core/ProcessingSurface;->c(Landroidx/camera/core/ProcessingSurface;)V

    return-void

    :pswitch_3
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v1}, Landroidx/camera/core/CaptureProcessorPipeline;->d(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void

    :goto_0
    check-cast v1, Landroidx/camera/core/VideoCapture;

    invoke-static {v1}, Landroidx/camera/core/VideoCapture;->g(Landroidx/camera/core/VideoCapture;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
