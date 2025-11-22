.class public final Lnet/sf/scuba/smartcards/CommandAPDU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAX_APDU_SIZE:I = 0x10008

.field private static final serialVersionUID:J = 0x58875fe1cbe621dL


# instance fields
.field private apdu:[B

.field private transient dataOffset:I

.field private transient nc:I

.field private transient ne:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BIII)V

    return-void
.end method

.method public constructor <init>(IIII[B)V
    .locals 9

    const/4 v6, 0x0

    invoke-static {p5}, Lnet/sf/scuba/smartcards/CommandAPDU;->arrayLength([B)I

    move-result v7

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BIII)V

    return-void
.end method

.method public constructor <init>(IIII[BI)V
    .locals 9

    const/4 v6, 0x0

    invoke-static {p5}, Lnet/sf/scuba/smartcards/CommandAPDU;->arrayLength([B)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BIII)V

    return-void
.end method

.method public constructor <init>(IIII[BII)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BIII)V

    return-void
.end method

.method public constructor <init>(IIII[BIII)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v1, v2, v3}, Lnet/sf/scuba/smartcards/CommandAPDU;->checkArrayBounds([BII)V

    const v5, 0xffff

    if-gt v3, v5, :cond_c

    if-ltz v4, :cond_b

    const/high16 v5, 0x10000

    if-gt v4, v5, :cond_a

    iput v4, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    iput v3, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    const/4 v6, 0x6

    const/16 v7, 0x100

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x5

    if-nez v3, :cond_4

    if-nez v4, :cond_0

    new-array v1, v10, [B

    iput-object v1, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    goto/16 :goto_1

    :cond_0
    if-gt v4, v7, :cond_2

    if-eq v4, v7, :cond_1

    int-to-byte v9, v4

    :cond_1
    new-array v1, v11, [B

    iput-object v1, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    iget-object v1, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    aput-byte v9, v1, v10

    goto/16 :goto_1

    :cond_2
    if-ne v4, v5, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    shr-int/lit8 v1, v4, 0x8

    int-to-byte v9, v1

    int-to-byte v1, v4

    :goto_0
    new-array v2, v8, [B

    iput-object v2, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    iget-object v2, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    aput-byte v9, v2, v11

    aput-byte v1, v2, v6

    goto/16 :goto_1

    :cond_4
    const/16 v12, 0xff

    if-nez v4, :cond_6

    if-gt v3, v12, :cond_5

    add-int/lit8 v4, v3, 0x5

    new-array v4, v4, [B

    iput-object v4, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    iget-object v4, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    int-to-byte v5, v3

    aput-byte v5, v4, v10

    iput v11, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    invoke-static {v1, v2, v4, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v3, 0x7

    new-array v4, v4, [B

    iput-object v4, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    iget-object v4, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    aput-byte v9, v4, v10

    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    int-to-byte v5, v3

    aput-byte v5, v4, v6

    iput v8, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    invoke-static {v1, v2, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_6
    if-gt v3, v12, :cond_8

    if-gt v4, v7, :cond_8

    add-int/lit8 v5, v3, 0x6

    new-array v5, v5, [B

    iput-object v5, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    iget-object v5, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    int-to-byte v6, v3

    aput-byte v6, v5, v10

    iput v11, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    invoke-static {v1, v2, v5, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-eq v4, v7, :cond_7

    int-to-byte v9, v4

    :cond_7
    aput-byte v9, v1, v2

    goto :goto_1

    :cond_8
    add-int/lit8 v7, v3, 0x9

    new-array v7, v7, [B

    iput-object v7, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    iget-object v7, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    aput-byte v9, v7, v10

    shr-int/lit8 v9, v3, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v11

    int-to-byte v9, v3

    aput-byte v9, v7, v6

    iput v8, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    invoke-static {v1, v2, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq v4, v5, :cond_9

    iget-object v1, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    shr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    :cond_9
    :goto_1
    return-void

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ne is too large"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ne must not be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dataLength is too large"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lnet/sf/scuba/smartcards/CommandAPDU;->parse()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-direct {p0}, Lnet/sf/scuba/smartcards/CommandAPDU;->parse()V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/scuba/smartcards/CommandAPDU;->checkArrayBounds([BII)V

    new-array v0, p3, [B

    iput-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lnet/sf/scuba/smartcards/CommandAPDU;->parse()V

    return-void
.end method

.method private static arrayLength([B)I
    .locals 0

    if-eqz p0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkArrayBounds([BII)V
    .locals 0

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset and length must be 0 if array is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    array-length p1, p1

    sub-int/2addr p1, p3

    if-gt p2, p1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Offset plus length exceed array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Offset and length must not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parse()V
    .locals 10

    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_e

    array-length v1, v0

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    array-length v2, v0

    const/16 v3, 0x100

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    if-nez v1, :cond_1

    const/16 v1, 0x100

    :cond_1
    iput v1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    return-void

    :cond_2
    const-string v2, ", b1="

    const-string v5, "Invalid APDU: length="

    if-eqz v1, :cond_6

    array-length v6, v0

    add-int/lit8 v7, v1, 0x5

    if-ne v6, v7, :cond_3

    iput v1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    iput v4, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    return-void

    :cond_3
    array-length v6, v0

    add-int/lit8 v7, v1, 0x6

    if-ne v6, v7, :cond_5

    iput v1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    iput v4, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v0

    :goto_0
    iput v3, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    array-length v3, v0

    const/4 v6, 0x7

    if-lt v3, v6, :cond_d

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x6

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    array-length v4, v0

    const/high16 v7, 0x10000

    if-ne v4, v6, :cond_8

    if-nez v3, :cond_7

    const/high16 v3, 0x10000

    :cond_7
    iput v3, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    return-void

    :cond_8
    const-string v4, ", b2||b3="

    if-eqz v3, :cond_c

    array-length v8, v0

    add-int/lit8 v9, v3, 0x7

    if-ne v8, v9, :cond_9

    iput v3, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    iput v6, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    return-void

    :cond_9
    array-length v8, v0

    add-int/lit8 v9, v3, 0x9

    if-ne v8, v9, :cond_b

    iput v3, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    iput v6, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    move v7, v0

    :goto_1
    iput v7, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "apdu must be at least 4 bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-direct {p0}, Lnet/sf/scuba/smartcards/CommandAPDU;->parse()V

    return-void
.end method

.method private setHeader(IIII)V
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    const/4 v1, 0x0

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    const/4 p1, 0x2

    int-to-byte p2, p3

    aput-byte p2, v0, p1

    const/4 p1, 0x3

    int-to-byte p2, p4

    aput-byte p2, v0, p1

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lnet/sf/scuba/smartcards/CommandAPDU;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lnet/sf/scuba/smartcards/CommandAPDU;

    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    iget-object p1, p1, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getCLA()I
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getData()[B
    .locals 5

    iget v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    new-array v1, v0, [B

    iget-object v2, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    iget v3, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getINS()I
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getNc()I
    .locals 1

    iget v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    return v0
.end method

.method public getNe()I
    .locals 1

    iget v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    return v0
.end method

.method public getP1()I
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getP2()I
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommmandAPDU: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes, nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
