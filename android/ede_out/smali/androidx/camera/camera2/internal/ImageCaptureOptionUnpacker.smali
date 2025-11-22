.class final Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;
.super Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field static final INSTANCE:Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;


# instance fields
.field private final mImageCapturePixelHDRPlus:Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;

    new-instance v1, Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;-><init>()V

    invoke-direct {v0, v1}, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;-><init>(Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;)V

    sput-object v0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->INSTANCE:Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;)V
    .locals 0
    .param p1    # Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->mImageCapturePixelHDRPlus:Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;

    return-void
.end method


# virtual methods
.method public unpack(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$Builder;)V
    .locals 2
    .param p1    # Landroidx/camera/core/impl/UseCaseConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CaptureConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/CaptureConfig$Builder;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;->unpack(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$Builder;)V

    instance-of v0, p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    new-instance v0, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->hasCaptureMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->mImageCapturePixelHDRPlus:Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;

    invoke-virtual {p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureMode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;->toggleHDRPlus(ILandroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "config is not ImageCaptureConfig"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
