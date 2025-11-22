.class public final synthetic Landroidx/camera/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Landroidx/camera/view/CameraController;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/CameraController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/a;->a:Landroidx/camera/view/CameraController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/a;->a:Landroidx/camera/view/CameraController;

    check-cast p1, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-static {v0, p1}, Landroidx/camera/view/CameraController;->b(Landroidx/camera/view/CameraController;Landroidx/camera/lifecycle/ProcessCameraProvider;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
