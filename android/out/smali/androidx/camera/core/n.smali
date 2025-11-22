.class public final synthetic Landroidx/camera/core/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/camera/core/ImageProxy;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/camera/core/ImageProxy;I)V
    .locals 0

    iput p3, p0, Landroidx/camera/core/n;->a:I

    iput-object p1, p0, Landroidx/camera/core/n;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/core/n;->b:Landroidx/camera/core/ImageProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/camera/core/n;->a:I

    iget-object v1, p0, Landroidx/camera/core/n;->b:Landroidx/camera/core/ImageProxy;

    iget-object v2, p0, Landroidx/camera/core/n;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/camera/core/CaptureProcessorPipeline;

    invoke-static {v2, v1}, Landroidx/camera/core/CaptureProcessorPipeline;->c(Landroidx/camera/core/CaptureProcessorPipeline;Landroidx/camera/core/ImageProxy;)V

    return-void

    :goto_0
    check-cast v2, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    invoke-static {v2, v1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->b(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/camera/core/ImageProxy;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
