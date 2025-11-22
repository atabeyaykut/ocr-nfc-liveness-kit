.class public final Landroidx/camera/core/impl/CameraCaptureCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;,
        Landroidx/camera/core/impl/CameraCaptureCallbacks$NoOpCameraCaptureCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createComboCallback(Ljava/util/List;)Landroidx/camera/core/impl/CameraCaptureCallback;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            ">;)",
            "Landroidx/camera/core/impl/CameraCaptureCallback;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/core/impl/CameraCaptureCallbacks;->createNoOpCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/CameraCaptureCallback;

    return-object p0

    :cond_1
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs createComboCallback([Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/CameraCaptureCallback;
    .locals 0
    .param p0    # [Landroidx/camera/core/impl/CameraCaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/CameraCaptureCallbacks;->createComboCallback(Ljava/util/List;)Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object p0

    return-object p0
.end method

.method public static createNoOpCallback()Landroidx/camera/core/impl/CameraCaptureCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/camera/core/impl/CameraCaptureCallbacks$NoOpCameraCaptureCallback;

    invoke-direct {v0}, Landroidx/camera/core/impl/CameraCaptureCallbacks$NoOpCameraCaptureCallback;-><init>()V

    return-object v0
.end method
