.class public final synthetic Landroidx/camera/core/impl/o;
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

    iput p1, p0, Landroidx/camera/core/impl/o;->a:I

    iput-object p2, p0, Landroidx/camera/core/impl/o;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/core/impl/o;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/camera/core/impl/o;->a:I

    iget-object v1, p0, Landroidx/camera/core/impl/o;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/camera/core/impl/o;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/constraintlayout/motion/widget/ViewTransition;

    check-cast v1, [Landroid/view/View;

    invoke-static {v2, v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->a(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast v2, Landroidx/camera/view/CameraController;

    check-cast v1, Landroidx/camera/core/CameraSelector;

    invoke-static {v2, v1}, Landroidx/camera/view/CameraController;->d(Landroidx/camera/view/CameraController;Landroidx/camera/core/CameraSelector;)V

    return-void

    :pswitch_2
    check-cast v2, Landroidx/camera/core/impl/LiveDataObservable;

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v2, v1}, Landroidx/camera/core/impl/LiveDataObservable;->c(Landroidx/camera/core/impl/LiveDataObservable;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void

    :pswitch_3
    check-cast v2, Landroidx/camera/core/impl/ConstantObservable;

    check-cast v1, Landroidx/camera/core/impl/Observable$Observer;

    invoke-static {v2, v1}, Landroidx/camera/core/impl/ConstantObservable;->a(Landroidx/camera/core/impl/ConstantObservable;Landroidx/camera/core/impl/Observable$Observer;)V

    return-void

    :goto_0
    check-cast v2, Ljava/lang/String;

    check-cast v1, Landroidx/fragment/app/strictmode/Violation;

    invoke-static {v2, v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->b(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
