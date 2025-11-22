.class public final synthetic Landroidx/camera/camera2/internal/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/g0;->a:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    iput p2, p0, Landroidx/camera/camera2/internal/g0;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lm5/a;
    .locals 2

    iget v0, p0, Landroidx/camera/camera2/internal/g0;->b:I

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v1, p0, Landroidx/camera/camera2/internal/g0;->a:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    invoke-static {v1, v0, p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->f(Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;ILandroid/hardware/camera2/TotalCaptureResult;)Lm5/a;

    move-result-object p1

    return-object p1
.end method
