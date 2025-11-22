.class public Lorg/jmrtd/lds/DisplayedImageInfo;
.super Lorg/jmrtd/lds/AbstractImageInfo;
.source "SourceFile"


# static fields
.field public static final DISPLAYED_PORTRAIT_TAG:I = 0x5f40

.field public static final DISPLAYED_SIGNATURE_OR_MARK_TAG:I = 0x5f43

.field private static final serialVersionUID:J = 0x34c100ee9bd8ce01L


# instance fields
.field private displayedImageTag:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 1

    invoke-static {p1}, Lorg/jmrtd/lds/DisplayedImageInfo;->getMimeTypeFromType(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jmrtd/lds/AbstractImageInfo;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lorg/jmrtd/lds/DisplayedImageInfo;->getDisplayedImageTagFromType(I)I

    move-result p1

    iput p1, p0, Lorg/jmrtd/lds/DisplayedImageInfo;->displayedImageTag:I

    invoke-virtual {p0, p2}, Lorg/jmrtd/lds/AbstractImageInfo;->setImageBytes([B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/jmrtd/lds/AbstractImageInfo;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jmrtd/lds/DisplayedImageInfo;->readObject(Ljava/io/InputStream;)V

    return-void
.end method

.method private static getDisplayedImageTagFromType(I)I
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/16 p0, 0x5f43

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Unknown type: "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    const/16 p0, 0x5f40

    .line 27
    .line 28
    return p0
.end method

.method private static getMimeTypeFromType(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "image/jpeg"

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p0, v1, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const-string p0, "image/x-wsq"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Unknown type: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v1}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    return-object v0
.end method

.method private static getTypeFromDisplayedImageTag(I)I
    .locals 3

    .line 1
    const/16 v0, 0x5f40

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x5f43

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Unknown tag: "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return p0
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
    check-cast p1, Lorg/jmrtd/lds/DisplayedImageInfo;

    iget v1, p0, Lorg/jmrtd/lds/DisplayedImageInfo;->displayedImageTag:I

    iget p1, p1, Lorg/jmrtd/lds/DisplayedImageInfo;->displayedImageTag:I

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDisplayedImageTag()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/DisplayedImageInfo;->displayedImageTag:I

    return v0
.end method

.method public getRecordLength()J
    .locals 5

    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->getImageLength()I

    move-result v0

    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/jmrtd/lds/DisplayedImageInfo;->getDisplayedImageTagFromType(I)I

    move-result v1

    invoke-static {v1}, Lnet/sf/scuba/tlv/TLVUtil;->getTagLength(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    add-long/2addr v1, v3

    invoke-static {v0}, Lnet/sf/scuba/tlv/TLVUtil;->getLengthLength(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/jmrtd/lds/DisplayedImageInfo;->displayedImageTag:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readObject(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lnet/sf/scuba/tlv/TLVInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lnet/sf/scuba/tlv/TLVInputStream;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lnet/sf/scuba/tlv/TLVInputStream;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    .line 11
    .line 12
    .line 13
    move-object p1, v0

    .line 14
    :goto_0
    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lorg/jmrtd/lds/DisplayedImageInfo;->displayedImageTag:I

    .line 19
    .line 20
    const/16 v1, 0x5f40

    .line 21
    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    const/16 v1, 0x5f43

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "Expected tag 0x5F40 or 0x5F43, found "

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lorg/jmrtd/lds/DisplayedImageInfo;->displayedImageTag:I

    .line 39
    .line 40
    invoke-static {v1, v0}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    :goto_1
    invoke-static {v0}, Lorg/jmrtd/lds/DisplayedImageInfo;->getTypeFromDisplayedImageTag(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p0, v0}, Lorg/jmrtd/lds/AbstractImageInfo;->setType(I)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lorg/jmrtd/lds/DisplayedImageInfo;->getMimeTypeFromType(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lorg/jmrtd/lds/AbstractImageInfo;->setMimeType(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    int-to-long v0, v0

    .line 67
    invoke-virtual {p0, p1, v0, v1}, Lorg/jmrtd/lds/AbstractImageInfo;->readImage(Ljava/io/InputStream;J)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public writeObject(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/scuba/tlv/TLVOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/scuba/tlv/TLVOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/scuba/tlv/TLVOutputStream;

    invoke-direct {v0, p1}, Lnet/sf/scuba/tlv/TLVOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/jmrtd/lds/DisplayedImageInfo;->getDisplayedImageTagFromType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    invoke-virtual {p0, p1}, Lorg/jmrtd/lds/AbstractImageInfo;->writeImage(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValueEnd()V

    return-void
.end method
