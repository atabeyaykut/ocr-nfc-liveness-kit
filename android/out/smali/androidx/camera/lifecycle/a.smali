.class public final synthetic Landroidx/camera/lifecycle/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic a:Landroidx/camera/core/CameraX;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CameraX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/lifecycle/a;->a:Landroidx/camera/core/CameraX;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lm5/a;
    .locals 1

    iget-object v0, p0, Landroidx/camera/lifecycle/a;->a:Landroidx/camera/core/CameraX;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->a(Landroidx/camera/core/CameraX;Ljava/lang/Void;)Lm5/a;

    move-result-object p1

    return-object p1
.end method
