.class public final synthetic Landroidx/camera/core/a1;
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

    iput p1, p0, Landroidx/camera/core/a1;->a:I

    iput-object p2, p0, Landroidx/camera/core/a1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/camera/core/a1;->a:I

    iget-object v1, p0, Landroidx/camera/core/a1;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/constraintlayout/helper/widget/Carousel;

    invoke-static {v1}, Landroidx/constraintlayout/helper/widget/Carousel;->a(Landroidx/constraintlayout/helper/widget/Carousel;)V

    return-void

    :pswitch_1
    check-cast v1, Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;->onOpenAvailable()V

    return-void

    :pswitch_2
    check-cast v1, Landroidx/camera/core/VideoCapture;

    invoke-static {v1}, Landroidx/camera/core/VideoCapture;->d(Landroidx/camera/core/VideoCapture;)V

    return-void

    :goto_0
    check-cast v1, Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {v1}, Landroidx/core/widget/ContentLoadingProgressBar;->d(Landroidx/core/widget/ContentLoadingProgressBar;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
