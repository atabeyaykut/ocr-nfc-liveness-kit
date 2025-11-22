.class final Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;
.super Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;
.source "SourceFile"


# instance fields
.field private final imageAnalysisFormat:I

.field private final imageCaptureFormat:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;-><init>()V

    iput p1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    iput p2, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;

    iget v1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    invoke-virtual {p1}, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;->imageCaptureFormat()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    invoke-virtual {p1}, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;->imageAnalysisFormat()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public imageAnalysisFormat()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    return v0
.end method

.method public imageCaptureFormat()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FormatCombo{imageCaptureFormat="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", imageAnalysisFormat="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    .line 19
    .line 20
    const-string v2, "}"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
