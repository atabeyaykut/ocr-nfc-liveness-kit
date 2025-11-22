.class public final synthetic Landroidx/camera/core/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Landroidx/camera/core/m0;->a:I

    iput-object p1, p0, Landroidx/camera/core/m0;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/core/m0;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/core/m0;->d:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/camera/core/m0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/camera/core/m0;->a:I

    iget-object v1, p0, Landroidx/camera/core/m0;->e:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/camera/core/m0;->d:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/camera/core/m0;->c:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/camera/core/m0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v4, Landroidx/camera/core/ImageSaver;

    check-cast v3, Landroidx/camera/core/ImageSaver$SaveError;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v4, v3, v2, v1}, Landroidx/camera/core/ImageSaver;->c(Landroidx/camera/core/ImageSaver;Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :goto_0
    check-cast v4, Landroidx/camera/core/VideoCapture;

    check-cast v3, Landroidx/camera/core/VideoCapture$OutputFileOptions;

    check-cast v2, Ljava/util/concurrent/Executor;

    check-cast v1, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    invoke-static {v4, v3, v2, v1}, Landroidx/camera/core/VideoCapture;->a(Landroidx/camera/core/VideoCapture;Landroidx/camera/core/VideoCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
