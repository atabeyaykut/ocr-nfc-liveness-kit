.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

.field private kyberK:I

.field private polyVecBytes:I

.field vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Requires Parameter"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->polyVecBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    invoke-direct {v0, p3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->baseMultMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberK()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->baseMultMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->addCoeffs(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->reduce()V

    return-void
.end method


# virtual methods
.method public addPoly(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->addCoeffs(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compressPolyVec()[B
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->conditionalSubQ()V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    mul-int/lit16 v3, v3, 0x140

    const/16 v4, 0x20

    const/16 v5, 0xa

    const/4 v7, 0x6

    const/16 v8, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v2, v3, :cond_2

    new-array v2, v10, [S

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_0
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v3, v14, :cond_5

    const/4 v14, 0x0

    :goto_1
    const/16 v15, 0x40

    if-ge v14, v15, :cond_1

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v10, :cond_0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v6

    mul-int/lit8 v17, v14, 0x4

    add-int v10, v17, v15

    invoke-virtual {v6, v10}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v6

    int-to-long v9, v6

    shl-long/2addr v9, v5

    const-wide/16 v19, 0x681

    add-long v9, v9, v19

    const-wide/32 v19, 0x13afb7

    mul-long v9, v9, v19

    shr-long/2addr v9, v4

    const-wide/16 v19, 0x3ff

    and-long v9, v9, v19

    long-to-int v6, v9

    int-to-short v6, v6

    aput-short v6, v2, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x4

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v13, 0x0

    aget-short v9, v2, v12

    shr-int/lit8 v10, v9, 0x0

    int-to-byte v10, v10

    aput-byte v10, v1, v6

    add-int/lit8 v6, v13, 0x1

    shr-int/2addr v9, v8

    aget-short v10, v2, v11

    shl-int/lit8 v15, v10, 0x2

    or-int/2addr v9, v15

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    add-int/lit8 v6, v13, 0x2

    shr-int/lit8 v9, v10, 0x6

    const/4 v10, 0x2

    aget-short v15, v2, v10

    shl-int/lit8 v10, v15, 0x4

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    add-int/lit8 v6, v13, 0x3

    const/4 v9, 0x4

    shr-int/lit8 v10, v15, 0x4

    const/4 v9, 0x3

    aget-short v15, v2, v9

    shl-int/lit8 v9, v15, 0x6

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    add-int/lit8 v6, v13, 0x4

    const/4 v9, 0x2

    shr-int/lit8 v10, v15, 0x2

    int-to-byte v9, v10

    aput-byte v9, v1, v6

    add-int/lit8 v13, v13, 0x5

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x4

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    mul-int/lit16 v3, v3, 0x160

    if-ne v2, v3, :cond_6

    new-array v2, v8, [S

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_3
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v3, v9, :cond_5

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v4, :cond_4

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v8, :cond_3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v13

    mul-int/lit8 v14, v9, 0x8

    add-int/2addr v14, v10

    invoke-virtual {v13, v14}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v13

    int-to-long v13, v13

    const/16 v15, 0xb

    shl-long/2addr v13, v15

    const-wide/16 v19, 0x680

    add-long v13, v13, v19

    const-wide/32 v19, 0x9d7dc

    mul-long v13, v13, v19

    const/16 v15, 0x1f

    shr-long/2addr v13, v15

    const-wide/16 v19, 0x7ff

    and-long v13, v13, v19

    long-to-int v14, v13

    int-to-short v13, v14

    aput-short v13, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v10, v6, 0x0

    aget-short v13, v2, v12

    shr-int/lit8 v14, v13, 0x0

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    add-int/lit8 v10, v6, 0x1

    shr-int/2addr v13, v8

    aget-short v14, v2, v11

    shl-int/lit8 v15, v14, 0x3

    or-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v1, v10

    add-int/lit8 v10, v6, 0x2

    const/4 v13, 0x5

    shr-int/2addr v14, v13

    const/4 v15, 0x2

    aget-short v17, v2, v15

    shl-int/lit8 v19, v17, 0x6

    or-int v14, v14, v19

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    add-int/lit8 v10, v6, 0x3

    shr-int/lit8 v14, v17, 0x2

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    add-int/lit8 v10, v6, 0x4

    shr-int/lit8 v14, v17, 0xa

    const/16 v16, 0x3

    aget-short v17, v2, v16

    shl-int/lit8 v19, v17, 0x1

    or-int v14, v14, v19

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    add-int/lit8 v10, v6, 0x5

    const/4 v14, 0x7

    shr-int/lit8 v17, v17, 0x7

    const/16 v18, 0x4

    aget-short v19, v2, v18

    shl-int/lit8 v20, v19, 0x4

    or-int v4, v17, v20

    int-to-byte v4, v4

    aput-byte v4, v1, v10

    add-int/lit8 v4, v6, 0x6

    shr-int/lit8 v10, v19, 0x4

    aget-short v13, v2, v13

    shl-int/lit8 v17, v13, 0x7

    or-int v10, v10, v17

    int-to-byte v10, v10

    aput-byte v10, v1, v4

    add-int/lit8 v4, v6, 0x7

    shr-int/lit8 v10, v13, 0x1

    int-to-byte v10, v10

    aput-byte v10, v1, v4

    add-int/lit8 v4, v6, 0x8

    shr-int/lit8 v10, v13, 0x9

    aget-short v13, v2, v7

    shl-int/lit8 v17, v13, 0x2

    or-int v10, v10, v17

    int-to-byte v10, v10

    aput-byte v10, v1, v4

    add-int/lit8 v4, v6, 0x9

    shr-int/lit8 v10, v13, 0x6

    aget-short v13, v2, v14

    shl-int/lit8 v14, v13, 0x5

    or-int/2addr v10, v14

    int-to-byte v10, v10

    aput-byte v10, v1, v4

    add-int/lit8 v4, v6, 0xa

    const/4 v10, 0x3

    shr-int/2addr v13, v10

    int-to-byte v13, v13

    aput-byte v13, v1, v4

    add-int/lit8 v6, v6, 0xb

    add-int/lit8 v9, v9, 0x1

    const/16 v4, 0x20

    goto/16 :goto_4

    :cond_4
    const/4 v10, 0x3

    const/4 v15, 0x2

    const/16 v18, 0x4

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x20

    goto/16 :goto_3

    :cond_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public conditionalSubQ()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->conditionalSubQ()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decompressPolyVec([B)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    mul-int/lit16 v2, v2, 0x140

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v1, v2, :cond_2

    new-array v1, v7, [S

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v2, v11, :cond_5

    const/4 v11, 0x0

    :goto_1
    const/16 v12, 0x40

    if-ge v11, v12, :cond_1

    aget-byte v12, p1, v10

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v9

    add-int/lit8 v13, v10, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    shl-int/2addr v14, v5

    int-to-short v14, v14

    or-int/2addr v12, v14

    int-to-short v12, v12

    aput-short v12, v1, v9

    and-int/lit16 v12, v13, 0xff

    shr-int/2addr v12, v6

    add-int/lit8 v13, v10, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    shl-int/2addr v14, v4

    int-to-short v14, v14

    or-int/2addr v12, v14

    int-to-short v12, v12

    aput-short v12, v1, v8

    and-int/lit16 v12, v13, 0xff

    shr-int/2addr v12, v7

    add-int/lit8 v13, v10, 0x3

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    shl-int/2addr v14, v7

    int-to-short v14, v14

    or-int/2addr v12, v14

    int-to-short v12, v12

    aput-short v12, v1, v6

    and-int/lit16 v12, v13, 0xff

    shr-int/2addr v12, v4

    add-int/lit8 v13, v10, 0x4

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v6

    int-to-short v13, v13

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v1, v3

    add-int/lit8 v10, v10, 0x5

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v7, :cond_0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v13, v13, v2

    mul-int/lit8 v14, v11, 0x4

    add-int/2addr v14, v12

    aget-short v15, v1, v12

    and-int/lit16 v15, v15, 0x3ff

    mul-int/lit16 v15, v15, 0xd01

    add-int/lit16 v15, v15, 0x200

    shr-int/lit8 v15, v15, 0xa

    int-to-short v15, v15

    invoke-virtual {v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    mul-int/lit16 v2, v2, 0x160

    if-ne v1, v2, :cond_6

    new-array v1, v5, [S

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_3
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v2, v11, :cond_5

    const/4 v11, 0x0

    :goto_4
    const/16 v12, 0x20

    if-ge v11, v12, :cond_4

    aget-byte v12, p1, v10

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v9

    add-int/lit8 v13, v10, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    int-to-short v14, v14

    shl-int/2addr v14, v5

    or-int/2addr v12, v14

    int-to-short v12, v12

    aput-short v12, v1, v9

    and-int/lit16 v12, v13, 0xff

    shr-int/2addr v12, v3

    add-int/lit8 v13, v10, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    int-to-short v14, v14

    const/4 v15, 0x5

    shl-int/2addr v14, v15

    or-int/2addr v12, v14

    int-to-short v12, v12

    aput-short v12, v1, v8

    and-int/lit16 v12, v13, 0xff

    shr-int/2addr v12, v4

    add-int/lit8 v13, v10, 0x3

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v13, v13

    shl-int/2addr v13, v6

    or-int/2addr v12, v13

    add-int/lit8 v13, v10, 0x4

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    shl-int/lit8 v14, v14, 0xa

    int-to-short v14, v14

    or-int/2addr v12, v14

    int-to-short v12, v12

    aput-short v12, v1, v6

    and-int/lit16 v12, v13, 0xff

    shr-int/2addr v12, v8

    add-int/lit8 v13, v10, 0x5

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    int-to-short v14, v14

    const/16 v16, 0x7

    shl-int/lit8 v14, v14, 0x7

    or-int/2addr v12, v14

    int-to-short v12, v12

    aput-short v12, v1, v3

    and-int/lit16 v12, v13, 0xff

    shr-int/2addr v12, v7

    add-int/lit8 v13, v10, 0x6

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    int-to-short v14, v14

    shl-int/2addr v14, v7

    or-int/2addr v12, v14

    int-to-short v12, v12

    aput-short v12, v1, v7

    and-int/lit16 v12, v13, 0xff

    shr-int/lit8 v12, v12, 0x7

    add-int/lit8 v13, v10, 0x7

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v13, v13

    shl-int/2addr v13, v8

    or-int/2addr v12, v13

    add-int/lit8 v13, v10, 0x8

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    shl-int/lit8 v14, v14, 0x9

    int-to-short v14, v14

    or-int/2addr v12, v14

    int-to-short v12, v12

    aput-short v12, v1, v15

    and-int/lit16 v12, v13, 0xff

    shr-int/2addr v12, v6

    add-int/lit8 v13, v10, 0x9

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    int-to-short v14, v14

    shl-int/2addr v14, v4

    or-int/2addr v12, v14

    int-to-short v12, v12

    aput-short v12, v1, v4

    and-int/lit16 v12, v13, 0xff

    shr-int/2addr v12, v15

    add-int/lit8 v13, v10, 0xa

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v13, v13

    shl-int/2addr v13, v3

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v1, v16

    add-int/lit8 v10, v10, 0xb

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v5, :cond_3

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v13, v13, v2

    mul-int/lit8 v14, v11, 0x8

    add-int/2addr v14, v12

    aget-short v15, v1, v12

    and-int/lit16 v15, v15, 0x7ff

    mul-int/lit16 v15, v15, 0xd01

    add-int/lit16 v15, v15, 0x400

    shr-int/lit8 v15, v15, 0xb

    int-to-short v15, v15

    invoke-virtual {v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_5
    return-void

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public fromBytes([B)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x180

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v3, v0, 0x180

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->fromBytes([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public polyVecInverseNttToMont()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyInverseNttToMont()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public polyVecNtt()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyNtt()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reducePoly()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->reduce()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toBytes()[B
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->polyVecBytes:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->toBytes()[B

    move-result-object v3

    mul-int/lit16 v4, v2, 0x180

    const/16 v5, 0x180

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
