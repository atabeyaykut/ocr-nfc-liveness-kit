.class public final synthetic Landroidx/camera/core/l0;
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

    iput p1, p0, Landroidx/camera/core/l0;->a:I

    iput-object p2, p0, Landroidx/camera/core/l0;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/core/l0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/camera/core/l0;->a:I

    iget-object v1, p0, Landroidx/camera/core/l0;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/camera/core/l0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/camera/core/ImageSaver;

    check-cast v1, Landroid/net/Uri;

    invoke-static {v2, v1}, Landroidx/camera/core/ImageSaver;->a(Landroidx/camera/core/ImageSaver;Landroid/net/Uri;)V

    return-void

    :goto_0
    check-cast v2, Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

    check-cast v1, Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    invoke-static {v2, v1}, Landroidx/camera/core/SurfaceRequest;->d(Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
