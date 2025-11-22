.class public final synthetic Landroidx/camera/view/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic c:Landroidx/camera/view/PreviewViewImplementation;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewViewImplementation;Landroidx/camera/core/SurfaceRequest;I)V
    .locals 0

    iput p3, p0, Landroidx/camera/view/m;->a:I

    iput-object p1, p0, Landroidx/camera/view/m;->c:Landroidx/camera/view/PreviewViewImplementation;

    iput-object p2, p0, Landroidx/camera/view/m;->b:Landroidx/camera/core/SurfaceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/camera/view/m;->a:I

    iget-object v1, p0, Landroidx/camera/view/m;->b:Landroidx/camera/core/SurfaceRequest;

    iget-object v2, p0, Landroidx/camera/view/m;->c:Landroidx/camera/view/PreviewViewImplementation;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/camera/view/SurfaceViewImplementation;

    invoke-static {v2, v1}, Landroidx/camera/view/SurfaceViewImplementation;->a(Landroidx/camera/view/SurfaceViewImplementation;Landroidx/camera/core/SurfaceRequest;)V

    return-void

    :goto_0
    check-cast v2, Landroidx/camera/view/TextureViewImplementation;

    invoke-static {v2, v1}, Landroidx/camera/view/TextureViewImplementation;->b(Landroidx/camera/view/TextureViewImplementation;Landroidx/camera/core/SurfaceRequest;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
