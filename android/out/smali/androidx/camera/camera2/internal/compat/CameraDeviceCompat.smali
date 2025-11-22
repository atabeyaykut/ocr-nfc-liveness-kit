.class public final Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;,
        Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;
    }
.end annotation


# static fields
.field public static final SESSION_OPERATION_MODE_CONSTRAINED_HIGH_SPEED:I = 0x1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final SESSION_OPERATION_MODE_NORMAL:I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# instance fields
.field private final mImpl:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance p2, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi28Impl;

    invoke-direct {p2, p1}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi28Impl;-><init>(Landroid/hardware/camera2/CameraDevice;)V

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;

    goto :goto_1

    :cond_0
    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi24Impl;->create(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi24Impl;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;

    goto :goto_1

    :cond_1
    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi23Impl;->create(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi23Impl;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl;->create(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static toCameraDeviceCompat(Landroid/hardware/camera2/CameraDevice;)Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;
    .locals 1
    .param p0    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroidx/camera/core/impl/utils/MainThreadAsyncHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;->toCameraDeviceCompat(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;

    move-result-object p0

    return-object p0
.end method

.method public static toCameraDeviceCompat(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;
    .locals 1
    .param p0    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public createCaptureSession(Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;)V
    .locals 1
    .param p1    # Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;->createCaptureSession(Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;)V

    return-void
.end method

.method public toCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;

    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;->unwrap()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    return-object v0
.end method
