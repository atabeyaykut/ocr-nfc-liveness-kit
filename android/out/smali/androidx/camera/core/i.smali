.class public final synthetic Landroidx/camera/core/i;
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

    iput p1, p0, Landroidx/camera/core/i;->a:I

    iput-object p2, p0, Landroidx/camera/core/i;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/core/i;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/camera/core/i;->a:I

    iget-object v1, p0, Landroidx/camera/core/i;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/camera/core/i;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/camera/core/Preview$SurfaceProvider;

    check-cast v1, Landroidx/camera/core/SurfaceRequest;

    invoke-static {v2, v1}, Landroidx/camera/core/Preview;->b(Landroidx/camera/core/Preview$SurfaceProvider;Landroidx/camera/core/SurfaceRequest;)V

    return-void

    :pswitch_1
    check-cast v2, Landroidx/camera/core/SafeCloseImageReaderProxy;

    check-cast v1, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-static {v2, v1}, Landroidx/camera/core/ImageAnalysis;->c(Landroidx/camera/core/SafeCloseImageReaderProxy;Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    return-void

    :pswitch_2
    check-cast v2, Landroidx/camera/core/CameraX;

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v2, v1}, Landroidx/camera/core/CameraX;->d(Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void

    :goto_0
    check-cast v2, Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

    check-cast v1, Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    invoke-static {v2, v1}, Landroidx/camera/core/SurfaceRequest;->c(Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
