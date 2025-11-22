.class public Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jmrtd/lds/iso19794/FaceImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeaturePoint"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3a6bc921da19733fL


# instance fields
.field private majorCode:I

.field private minorCode:I

.field private type:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(IBII)V
    .locals 7

    and-int/lit16 v0, p2, 0xf0

    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v4, p2, 0xf

    move-object v1, p0

    move v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->type:I

    iput p2, p0, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->majorCode:I

    iput p3, p0, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->minorCode:I

    iput p4, p0, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->x:I

    iput p5, p0, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->y:I

    return-void
.end method


# virtual methods
.method public getMajorCode()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->majorCode:I

    return v0
.end method

.method public getMinorCode()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->minorCode:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->type:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->y:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "( point: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->getMajorCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "."

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->getMinorCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", type: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->type:I

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", ("

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->x:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", "

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;->y:I

    .line 57
    .line 58
    const-string v2, "))"

    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method
