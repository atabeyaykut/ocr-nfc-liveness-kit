.class public abstract Lorg/jmrtd/lds/AbstractImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jmrtd/lds/ImageInfo;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final serialVersionUID:J = 0x27d49daa4af05d95L


# instance fields
.field private height:I

.field private imageBytes:[B

.field private imageLength:I

.field private imagePositionInInputStream:I

.field private mimeType:Ljava/lang/String;

.field private transient splittableInputStream:Lorg/jmrtd/io/SplittableInputStream;

.field private type:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jmrtd"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/AbstractImageInfo;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0, v0, v1}, Lorg/jmrtd/lds/AbstractImageInfo;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Lorg/jmrtd/lds/AbstractImageInfo;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIILjava/io/InputStream;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p7}, Lorg/jmrtd/lds/AbstractImageInfo;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, p4, p5, p6}, Lorg/jmrtd/lds/AbstractImageInfo;->readImage(Ljava/io/InputStream;J)V

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jmrtd/lds/AbstractImageInfo;->type:I

    iput-object p4, p0, Lorg/jmrtd/lds/AbstractImageInfo;->mimeType:Ljava/lang/String;

    iput p2, p0, Lorg/jmrtd/lds/AbstractImageInfo;->width:I

    iput p3, p0, Lorg/jmrtd/lds/AbstractImageInfo;->height:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lorg/jmrtd/lds/AbstractImageInfo;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method private getImageBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->getImageLength()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->getImageInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    return-object v0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    if-eqz p0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    const-string p0, "Iris"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Unknown type: "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v1}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    const-string p0, "Finger"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    const-string p0, "Signature or usual mark"

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    const-string p0, "Portrait"

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_4
    const-string p0, "Unknown"

    .line 45
    .line 46
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/jmrtd/lds/AbstractImageInfo;

    invoke-direct {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->getImageBytes()[B

    move-result-object v2

    invoke-direct {p1}, Lorg/jmrtd/lds/AbstractImageInfo;->getImageBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/jmrtd/lds/AbstractImageInfo;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v3, p1, Lorg/jmrtd/lds/AbstractImageInfo;->mimeType:Ljava/lang/String;

    if-eqz v3, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    iget-object v3, p1, Lorg/jmrtd/lds/AbstractImageInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget v2, p0, Lorg/jmrtd/lds/AbstractImageInfo;->type:I

    iget p1, p1, Lorg/jmrtd/lds/AbstractImageInfo;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    :catch_0
    move-exception p1

    sget-object v1, Lorg/jmrtd/lds/AbstractImageInfo;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v0
.end method

.method public getEncoded()[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/jmrtd/lds/AbstractImageInfo;->writeObject(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jmrtd/lds/AbstractImageInfo;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/AbstractImageInfo;->height:I

    return v0
.end method

.method public getImageInputStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/jmrtd/lds/AbstractImageInfo;->splittableInputStream:Lorg/jmrtd/io/SplittableInputStream;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/jmrtd/lds/AbstractImageInfo;->imagePositionInInputStream:I

    invoke-virtual {v0, v1}, Lorg/jmrtd/io/SplittableInputStream;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jmrtd/lds/AbstractImageInfo;->imageBytes:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/jmrtd/lds/AbstractImageInfo;->imageBytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Both the byte buffer and the stream are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImageLength()I
    .locals 2

    iget-object v0, p0, Lorg/jmrtd/lds/AbstractImageInfo;->splittableInputStream:Lorg/jmrtd/io/SplittableInputStream;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jmrtd/lds/AbstractImageInfo;->imageLength:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/jmrtd/lds/AbstractImageInfo;->imageBytes:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get length of null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/AbstractImageInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/AbstractImageInfo;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/AbstractImageInfo;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lorg/jmrtd/lds/AbstractImageInfo;->type:I

    mul-int/lit8 v0, v0, 0x5

    const v1, -0x233df787

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jmrtd/lds/AbstractImageInfo;->mimeType:Ljava/lang/String;

    if-nez v1, :cond_0

    const/16 v1, 0x539

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-static {v1, v2, v3, v0}, Landroidx/camera/core/impl/a;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->getImageLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0xb

    add-int/2addr v1, v0

    return v1
.end method

.method public readImage(Ljava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jmrtd/lds/AbstractImageInfo;->splittableInputStream:Lorg/jmrtd/io/SplittableInputStream;

    long-to-int p3, p2

    new-array p2, p3, [B

    iput-object p2, p0, Lorg/jmrtd/lds/AbstractImageInfo;->imageBytes:[B

    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Lorg/jmrtd/lds/AbstractImageInfo;->imageBytes:[B

    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-void
.end method

.method public abstract readObject(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Lorg/jmrtd/lds/AbstractImageInfo;->height:I

    return-void
.end method

.method public final setImageBytes([B)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/jmrtd/lds/AbstractImageInfo;->readImage(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lorg/jmrtd/lds/AbstractImageInfo;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Exception"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set null image bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jmrtd/lds/AbstractImageInfo;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lorg/jmrtd/lds/AbstractImageInfo;->type:I

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Lorg/jmrtd/lds/AbstractImageInfo;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/jmrtd/lds/AbstractImageInfo;->type:I

    invoke-static {v2}, Lorg/jmrtd/lds/AbstractImageInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->getImageLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeImage(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/jmrtd/lds/AbstractImageInfo;->getImageBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public abstract writeObject(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
