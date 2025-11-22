.class public final synthetic Landroidx/camera/camera2/internal/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/FocusMeteringControl;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/FocusMeteringControl;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/w0;->a:Landroidx/camera/camera2/internal/FocusMeteringControl;

    iput p2, p0, Landroidx/camera/camera2/internal/w0;->b:I

    iput-wide p3, p0, Landroidx/camera/camera2/internal/w0;->c:J

    return-void
.end method


# virtual methods
.method public final onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 4

    iget v0, p0, Landroidx/camera/camera2/internal/w0;->b:I

    iget-wide v1, p0, Landroidx/camera/camera2/internal/w0;->c:J

    iget-object v3, p0, Landroidx/camera/camera2/internal/w0;->a:Landroidx/camera/camera2/internal/FocusMeteringControl;

    invoke-static {v3, v0, v1, v2, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->d(Landroidx/camera/camera2/internal/FocusMeteringControl;IJLandroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method
