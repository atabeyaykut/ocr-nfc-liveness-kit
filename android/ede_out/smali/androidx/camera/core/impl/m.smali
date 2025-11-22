.class public final synthetic Landroidx/camera/core/impl/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/camera/core/impl/CaptureProcessor;)V
    .locals 0

    return-void
.end method

.method public static b(Landroidx/camera/core/impl/CaptureProcessor;)Lm5/a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lm5/a;

    move-result-object p0

    return-object p0
.end method
