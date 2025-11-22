.class Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$MultiResolutionImageReaderConfig;,
        Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$ImageReaderConfig;,
        Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$SurfaceConfig;,
        Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;
    }
.end annotation


# static fields
.field private static sLastId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;

.field private mPhysicalCameraId:Ljava/lang/String;

.field private mSurfaceGroupId:I

.field private mSurfaceSharingConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;

    return-void
.end method

.method public static fromImpl(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;
    .locals 3
    .param p0    # Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    instance-of v0, p0, Landroidx/camera/extensions/impl/advanced/SurfaceOutputConfigImpl;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/camera/extensions/impl/advanced/SurfaceOutputConfigImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/SurfaceOutputConfigImpl;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$SurfaceConfig;->create(Landroid/view/Surface;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$SurfaceConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getImageFormat()I

    move-result v2

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getMaxImages()I

    move-result v0

    invoke-static {v1, v2, v0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$ImageReaderConfig;->create(Landroid/util/Size;II)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$ImageReaderConfig;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;->getImageFormat()I

    move-result v1

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;->getMaxImages()I

    move-result v0

    invoke-static {v1, v0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$MultiResolutionImageReaderConfig;->create(II)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$MultiResolutionImageReaderConfig;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;->setPhysicalCameraId(Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getSurfaceGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;->setSurfaceGroup(I)V

    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getSurfaceSharingOutputConfigs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getSurfaceSharingOutputConfigs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-static {v2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->fromImpl(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->build()Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;->setSurfaceSharingConfigs(Ljava/util/List;)V

    :cond_4
    new-instance p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;

    invoke-direct {p0, v0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;)V

    return-object p0
.end method

.method private getNextId()I
    .locals 1

    sget-object v0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static newImageReaderConfig(Landroid/util/Size;II)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;
    .locals 1
    .param p0    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;

    invoke-static {p0, p1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$ImageReaderConfig;->create(Landroid/util/Size;II)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$ImageReaderConfig;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;)V

    return-object v0
.end method

.method public static newMultiResolutionImageReaderConfig(II)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;

    invoke-static {p0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$MultiResolutionImageReaderConfig;->create(II)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$MultiResolutionImageReaderConfig;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;)V

    return-object v0
.end method

.method public static newSurfaceConfig(Landroid/view/Surface;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;
    .locals 1
    .param p0    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;

    invoke-static {p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$SurfaceConfig;->create(Landroid/view/Surface;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$SurfaceConfig;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;)V

    return-object v0
.end method


# virtual methods
.method public addSurfaceSharingOutputConfig(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;
    .locals 1
    .param p1    # Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mSurfaceSharingConfigs:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mSurfaceSharingConfigs:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mSurfaceSharingConfigs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;

    invoke-direct {p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->getNextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;->setId(I)V

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;->setPhysicalCameraId(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mSurfaceGroupId:I

    invoke-virtual {v0, v1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;->setSurfaceGroup(I)V

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mSurfaceSharingConfigs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;

    invoke-virtual {v1, v0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;->setSurfaceSharingConfigs(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder$OutputConfig;

    return-object v0
.end method

.method public setPhysicalCameraId(Ljava/lang/String;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mPhysicalCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public setSurfaceGroupId(I)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigBuilder;->mSurfaceGroupId:I

    return-object p0
.end method
