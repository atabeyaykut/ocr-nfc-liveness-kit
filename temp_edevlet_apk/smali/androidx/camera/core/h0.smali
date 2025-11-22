.class public final synthetic Landroidx/camera/core/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Throwable;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    iput p5, p0, Landroidx/camera/core/h0;->a:I

    iput-object p1, p0, Landroidx/camera/core/h0;->e:Ljava/lang/Object;

    iput p2, p0, Landroidx/camera/core/h0;->b:I

    iput-object p3, p0, Landroidx/camera/core/h0;->c:Ljava/lang/String;

    iput-object p4, p0, Landroidx/camera/core/h0;->d:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/camera/core/h0;->a:I

    iget v1, p0, Landroidx/camera/core/h0;->b:I

    iget-object v2, p0, Landroidx/camera/core/h0;->d:Ljava/lang/Throwable;

    iget-object v3, p0, Landroidx/camera/core/h0;->c:Ljava/lang/String;

    iget-object v4, p0, Landroidx/camera/core/h0;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v4, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    invoke-static {v4, v1, v3, v2}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->a(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :goto_0
    check-cast v4, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;

    invoke-static {v4, v1, v3, v2}, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->a(Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
