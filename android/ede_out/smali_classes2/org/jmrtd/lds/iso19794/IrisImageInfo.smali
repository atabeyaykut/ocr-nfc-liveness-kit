.class public Lorg/jmrtd/lds/iso19794/IrisImageInfo;
.super Lorg/jmrtd/lds/AbstractImageInfo;
.source "SourceFile"


# static fields
.field public static final IMAGE_QUAL_HIGH_HI:I = 0x64

.field public static final IMAGE_QUAL_HIGH_LO:I = 0x4c

.field public static final IMAGE_QUAL_LOW_HI:I = 0x32

.field public static final IMAGE_QUAL_LOW_LO:I = 0x1a

.field public static final IMAGE_QUAL_MED_HI:I = 0x4b

.field public static final IMAGE_QUAL_MED_LO:I = 0x33

.field public static final IMAGE_QUAL_UNDEF:I = 0xfe

.field private static final ROT_ANGLE_UNDEF:I = 0xffff

.field private static final ROT_UNCERTAIN_UNDEF:I = 0xffff

.field private static final serialVersionUID:J = 0xb915558d85bb898L


# instance fields
.field private imageFormat:I

.field private imageNumber:I

.field private quality:I

.field private rotationAngle:I

.field private rotationAngleUncertainty:I


# direct methods
.method public constructor <init>(IIIIIILjava/io/InputStream;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v8, p0

    const/4 v1, 0x3

    move/from16 v0, p8

    int-to-long v5, v0

    invoke-static/range {p9 .. p9}, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->getMimeTypeFromImageFormat(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v2, p5

    move v3, p6

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lorg/jmrtd/lds/AbstractImageInfo;-><init>(IIILjava/io/InputStream;JLjava/lang/String;)V

    if-eqz p7, :cond_0

    move v0, p1

    iput v0, v8, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageNumber:I

    move v0, p2

    iput v0, v8, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->quality:I

    move v0, p3

    iput v0, v8, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngle:I

    move v0, p4

    iput v0, v8, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngleUncertainty:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null image bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IIILjava/io/InputStream;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0xfe

    const v3, 0xffff

    const v4, 0xffff

    move-object v0, p0

    move v1, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/jmrtd/lds/iso19794/IrisImageInfo;-><init>(IIIIIILjava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/jmrtd/lds/AbstractImageInfo;-><init>(I)V

    iput p2, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageFormat:I

    invoke-static {p2}, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->getMimeTypeFromImageFormat(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/jmrtd/lds/AbstractImageInfo;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->readObject(Ljava/io/InputStream;)V

    return-void
.end method

.method private static getMimeTypeFromImageFormat(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "image/jp2"

    return-object p0

    :cond_1
    const-string p0, "image/jpeg"

    return-object p0

    :cond_2
    const-string p0, "image/x-wsq"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/jmrtd/lds/AbstractImageInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    check-cast p1, Lorg/jmrtd/lds/iso19794/IrisImageInfo;

    iget v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageFormat:I

    iget v3, p1, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageFormat:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageNumber:I

    iget v3, p1, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageNumber:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->quality:I

    iget v3, p1, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->quality:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngle:I

    iget v3, p1, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngle:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngleUncertainty:I

    iget p1, p1, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngleUncertainty:I

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getImageFormat()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageFormat:I

    return v0
.end method

.method public getImageNumber()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageNumber:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->quality:I

    return v0
.end method

.method public getRecordLength()J
    .locals 4

    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->getImageLength()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getRotationAngle()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngle:I

    return v0
.end method

.method public getRotationAngleUncertainty()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngleUncertainty:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageFormat:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageNumber:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->quality:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngle:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngleUncertainty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readObject(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/io/DataInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageNumber:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->quality:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iput v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngle:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngleUncertainty:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/jmrtd/lds/AbstractImageInfo;->readImage(Ljava/io/InputStream;J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "IrisImageInfo [image number: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageNumber:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", quality: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->quality:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", image: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " x "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "mime-type: "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageFormat:I

    .line 53
    .line 54
    invoke-static {v1}, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->getMimeTypeFromImageFormat(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "]"

    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method public writeObject(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_0
    iget v0, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->imageNumber:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->quality:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngle:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/jmrtd/lds/iso19794/IrisImageInfo;->rotationAngleUncertainty:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->getImageLength()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, p1}, Lorg/jmrtd/lds/AbstractImageInfo;->writeImage(Ljava/io/OutputStream;)V

    return-void
.end method
