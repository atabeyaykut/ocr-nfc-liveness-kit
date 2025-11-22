.class public final Landroidx/camera/camera2/internal/compat/workaround/FlashAvailabilityChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlashAvailability"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFlashAvailabilityNormally(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z
    .locals 2
    .param p0    # Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const-string v0, "FlashAvailability"

    const-string v1, "Characteristics did not contain key FLASH_INFO_AVAILABLE. Flash is not available."

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static checkFlashAvailabilityWithPossibleBufferUnderflow(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z
    .locals 0
    .param p0    # Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {p0}, Landroidx/camera/camera2/internal/compat/workaround/FlashAvailabilityChecker;->checkFlashAvailabilityNormally(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z

    move-result p0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFlashAvailable(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z
    .locals 2
    .param p0    # Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Landroidx/camera/camera2/internal/compat/quirk/FlashAvailabilityBufferUnderflowQuirk;

    invoke-static {v0}, Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "FlashAvailability"

    const-string v1, "Device has quirk FlashAvailabilityBufferUnderflowQuirk. Checking for flash availability safely..."

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/internal/compat/workaround/FlashAvailabilityChecker;->checkFlashAvailabilityWithPossibleBufferUnderflow(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Landroidx/camera/camera2/internal/compat/workaround/FlashAvailabilityChecker;->checkFlashAvailabilityNormally(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z

    move-result p0

    return p0
.end method
