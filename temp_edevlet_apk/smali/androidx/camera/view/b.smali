.class public final synthetic Landroidx/camera/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Landroidx/camera/view/b;->a:I

    iput-object p3, p0, Landroidx/camera/view/b;->c:Ljava/lang/Object;

    iput p1, p0, Landroidx/camera/view/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/camera/view/b;->a:I

    iget v1, p0, Landroidx/camera/view/b;->b:I

    iget-object v2, p0, Landroidx/camera/view/b;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/camera/view/CameraController;

    invoke-static {v2, v1}, Landroidx/camera/view/CameraController;->c(Landroidx/camera/view/CameraController;I)V

    return-void

    :goto_0
    check-cast v2, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-static {v2, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->a(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
