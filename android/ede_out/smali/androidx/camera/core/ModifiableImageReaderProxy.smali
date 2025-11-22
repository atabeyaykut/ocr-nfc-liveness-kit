.class Landroidx/camera/core/ModifiableImageReaderProxy;
.super Landroidx/camera/core/AndroidImageReaderProxy;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private volatile mRotationDegrees:Ljava/lang/Integer;

.field private volatile mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;

.field private volatile mTagBundle:Landroidx/camera/core/impl/TagBundle;

.field private volatile mTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;)V
    .locals 0
    .param p1    # Landroid/media/ImageReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/camera/core/AndroidImageReaderProxy;-><init>(Landroid/media/ImageReader;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mTagBundle:Landroidx/camera/core/impl/TagBundle;

    iput-object p1, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mTimestamp:Ljava/lang/Long;

    iput-object p1, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mRotationDegrees:Ljava/lang/Integer;

    iput-object p1, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private modifyImage(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;
    .locals 6

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mTagBundle:Landroidx/camera/core/impl/TagBundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mTagBundle:Landroidx/camera/core/impl/TagBundle;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mTimestamp:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v2

    :goto_1
    iget-object v4, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mRotationDegrees:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mRotationDegrees:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    move-result v4

    :goto_2
    iget-object v5, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    if-eqz v5, :cond_3

    iget-object v0, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->getSensorToBufferTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    :goto_3
    invoke-static {v1, v2, v3, v4, v0}, Landroidx/camera/core/ImmutableImageInfo;->create(Landroidx/camera/core/impl/TagBundle;JILandroid/graphics/Matrix;)Landroidx/camera/core/ImageInfo;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/SettableImageProxy;

    invoke-direct {v1, p1, v0}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageInfo;)V

    return-object v1
.end method


# virtual methods
.method public acquireLatestImage()Landroidx/camera/core/ImageProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Landroidx/camera/core/AndroidImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/ModifiableImageReaderProxy;->modifyImage(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method public acquireNextImage()Landroidx/camera/core/ImageProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Landroidx/camera/core/AndroidImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/ModifiableImageReaderProxy;->modifyImage(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method public setImageRotationDegrees(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mRotationDegrees:Ljava/lang/Integer;

    return-void
.end method

.method public setImageSensorToBufferTransformaMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public setImageTagBundle(Landroidx/camera/core/impl/TagBundle;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/TagBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mTagBundle:Landroidx/camera/core/impl/TagBundle;

    return-void
.end method

.method public setImageTimeStamp(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ModifiableImageReaderProxy;->mTimestamp:Ljava/lang/Long;

    return-void
.end method
