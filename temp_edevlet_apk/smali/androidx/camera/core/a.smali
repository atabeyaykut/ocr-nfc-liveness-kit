.class public final synthetic Landroidx/camera/core/a;
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

    iput p1, p0, Landroidx/camera/core/a;->a:I

    iput-object p2, p0, Landroidx/camera/core/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/core/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/camera/core/a;->a:I

    iget-object v1, p0, Landroidx/camera/core/a;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/camera/core/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/camera/core/ProcessingImageReader;

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v2, v1}, Landroidx/camera/core/ProcessingImageReader;->b(Landroidx/camera/core/ProcessingImageReader;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void

    :pswitch_1
    check-cast v2, Landroidx/camera/core/ImageSaver;

    check-cast v1, Ljava/io/File;

    invoke-static {v2, v1}, Landroidx/camera/core/ImageSaver;->b(Landroidx/camera/core/ImageSaver;Ljava/io/File;)V

    return-void

    :pswitch_2
    check-cast v2, Landroidx/camera/core/AndroidImageReaderProxy;

    check-cast v1, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    invoke-static {v2, v1}, Landroidx/camera/core/AndroidImageReaderProxy;->b(Landroidx/camera/core/AndroidImageReaderProxy;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V

    return-void

    :goto_0
    check-cast v2, Landroidx/core/util/Consumer;

    check-cast v1, Landroid/view/Surface;

    invoke-static {v2, v1}, Landroidx/camera/core/SurfaceRequest;->b(Landroidx/core/util/Consumer;Landroid/view/Surface;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
