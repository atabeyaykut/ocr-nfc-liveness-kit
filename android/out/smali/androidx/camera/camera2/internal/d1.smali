.class public final synthetic Landroidx/camera/camera2/internal/d1;
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

    iput p1, p0, Landroidx/camera/camera2/internal/d1;->a:I

    iput-object p2, p0, Landroidx/camera/camera2/internal/d1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/camera/camera2/internal/d1;->a:I

    iget-object v1, p0, Landroidx/camera/camera2/internal/d1;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/camera/camera2/internal/ProcessingCaptureSession$SessionProcessorCaptureCallback;

    invoke-static {v1}, Landroidx/camera/camera2/internal/ProcessingCaptureSession$SessionProcessorCaptureCallback;->b(Landroidx/camera/camera2/internal/ProcessingCaptureSession$SessionProcessorCaptureCallback;)V

    return-void

    :goto_0
    check-cast v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    invoke-static {v1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;->f(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
