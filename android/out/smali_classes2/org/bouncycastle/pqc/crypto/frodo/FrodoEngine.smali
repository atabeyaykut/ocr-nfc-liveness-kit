.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final len_chi:I = 0x10

.field private static final len_chi_bytes:I = 0x2

.field private static final len_seedA:I = 0x80

.field private static final len_seedA_bytes:I = 0x10

.field private static final len_z:I = 0x80

.field private static final len_z_bytes:I = 0x10

.field private static final mbar:I = 0x8

.field static final nbar:I = 0x8


# instance fields
.field private final B:I

.field private final D:I

.field private final T_chi:[S

.field private final digest:Lorg/bouncycastle/crypto/Xof;

.field private final gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

.field private final len_ct_bytes:I

.field private final len_k:I

.field private final len_k_bytes:I

.field private final len_mu:I

.field private final len_mu_bytes:I

.field private final len_pk_bytes:I

.field private final len_pkh:I

.field private final len_pkh_bytes:I

.field private final len_s:I

.field private final len_s_bytes:I

.field private final len_seedSE:I

.field private final len_seedSE_bytes:I

.field private final len_sk_bytes:I

.field private final len_ss:I

.field private final len_ss_bytes:I

.field private final n:I

.field private final q:I


# direct methods
.method public constructor <init>(III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    mul-int/lit8 p3, p3, 0x8

    mul-int/lit8 p3, p3, 0x8

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss:I

    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    div-int/lit8 v1, p3, 0x8

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    div-int/lit8 v1, p3, 0x8

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss_bytes:I

    mul-int p3, p2, p1

    mul-int/lit8 p3, p3, 0x8

    div-int/lit8 p3, p3, 0x8

    mul-int/lit8 p2, p2, 0x8

    mul-int/lit8 p2, p2, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int/2addr p2, p3

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ct_bytes:I

    add-int/lit8 p3, p3, 0x10

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    add-int/2addr v0, p3

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_sk_bytes:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->T_chi:[S

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iput-object p6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    return-void
.end method

.method private ctselect([B[BS)[B
    .locals 4

    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    not-int v2, p3

    aget-byte v3, p1, v1

    and-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p2, v1

    and-int/2addr v3, p3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private ctverify([S[S[S[S)S
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    aget-short v3, p1, v1

    aget-short v4, p3, v1

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_1
    array-length p3, p2

    if-ge p1, p3, :cond_1

    aget-short p3, p2, p1

    aget-short v1, p4, p1

    xor-int/2addr p3, v1

    or-int/2addr p3, v2

    int-to-short v2, p3

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private decode([S)[B
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    int-to-short v3, v3

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    shl-int v4, v2, v4

    sub-int/2addr v4, v2

    int-to-short v4, v4

    const/16 v5, 0x8

    mul-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v5, :cond_0

    aget-short v12, p1, v8

    and-int/2addr v12, v4

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    sub-int v15, v13, v14

    sub-int/2addr v15, v2

    shl-int v15, v2, v15

    add-int/2addr v12, v15

    sub-int/2addr v13, v14

    shr-int/2addr v12, v13

    int-to-short v12, v12

    and-int/2addr v12, v3

    int-to-long v12, v12

    mul-int v14, v14, v11

    shl-long/2addr v12, v14

    or-long/2addr v9, v12

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_2
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    if-ge v11, v12, :cond_1

    mul-int v12, v12, v7

    add-int/2addr v12, v11

    mul-int/lit8 v13, v11, 0x8

    shr-long v13, v9, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    long-to-int v14, v13

    int-to-byte v13, v14

    aput-byte v13, v1, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private encode([B)[S
    .locals 12

    const/16 v0, 0x40

    new-array v0, v0, [S

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    const/16 v6, 0x8

    if-ge v3, v6, :cond_4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    if-ge v8, v10, :cond_2

    aget-byte v10, p1, v4

    and-int/2addr v10, v5

    if-ne v10, v5, :cond_0

    const/4 v10, 0x1

    goto :goto_3

    :cond_0
    const/4 v10, 0x0

    :goto_3
    shl-int v11, v2, v8

    mul-int v11, v11, v10

    add-int/2addr v9, v11

    shl-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    mul-int/lit8 v8, v3, 0x8

    add-int/2addr v8, v7

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    shl-int v10, v2, v10

    div-int/2addr v11, v10

    mul-int v11, v11, v9

    int-to-short v9, v11

    aput-short v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private matrix_add([S[SII)[S
    .locals 8

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    add-int/lit8 v0, v0, -0x1

    mul-int v1, p3, p4

    new-array v1, v1, [S

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p4, :cond_0

    mul-int v5, v3, p4

    add-int/2addr v5, v4

    aget-short v6, p1, v5

    aget-short v7, p2, v5

    add-int/2addr v6, v7

    and-int/2addr v6, v0

    int-to-short v6, v6

    aput-short v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private matrix_mul([SII[SII)[S
    .locals 8

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    add-int/lit8 p5, p5, -0x1

    mul-int v0, p2, p6

    new-array v0, v0, [S

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p6, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, p3, :cond_0

    mul-int v6, v2, p3

    add-int/2addr v6, v4

    aget-short v6, p1, v6

    mul-int v7, v4, p6

    add-int/2addr v7, v3

    aget-short v7, p4, v7

    mul-int v6, v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    mul-int v4, v2, p6

    add-int/2addr v4, v3

    and-int/2addr v5, p5

    int-to-short v5, v5

    aput-short v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private matrix_sub([S[SII)[S
    .locals 8

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    add-int/lit8 v0, v0, -0x1

    mul-int v1, p3, p4

    new-array v1, v1, [S

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p4, :cond_0

    mul-int v5, v3, p4

    add-int/2addr v5, v4

    aget-short v6, p1, v5

    aget-short v7, p2, v5

    sub-int/2addr v6, v7

    and-int/2addr v6, v0

    int-to-short v6, v6

    aput-short v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private matrix_transpose([SII)[S
    .locals 6

    mul-int v0, p2, p3

    new-array v0, v0, [S

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_0

    mul-int v4, v2, p2

    add-int/2addr v4, v3

    mul-int v5, v3, p3

    add-int/2addr v5, v2

    aget-short v5, p1, v5

    aput-short v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private pack([S)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    mul-int v3, v3, v2

    const/16 v4, 0x8

    div-int/2addr v3, v4

    new-array v5, v3, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    if-ge v7, v3, :cond_4

    if-lt v8, v2, :cond_1

    if-ne v8, v2, :cond_4

    if-lez v9, :cond_4

    :cond_1
    const/4 v11, 0x0

    :cond_2
    :goto_1
    if-ge v11, v4, :cond_3

    rsub-int/lit8 v12, v11, 0x8

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x1

    shl-int v15, v14, v13

    sub-int/2addr v15, v14

    int-to-short v14, v15

    sub-int/2addr v9, v13

    shr-int v15, v10, v9

    and-int/2addr v14, v15

    int-to-byte v14, v14

    aget-byte v15, v5, v7

    sub-int/2addr v12, v13

    shl-int v12, v14, v12

    add-int/2addr v15, v12

    int-to-byte v12, v15

    aput-byte v12, v5, v7

    add-int/2addr v11, v13

    int-to-byte v11, v11

    int-to-byte v9, v9

    if-nez v9, :cond_2

    if-ge v8, v2, :cond_3

    aget-short v9, v1, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    int-to-byte v10, v10

    add-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    move/from16 v16, v10

    move v10, v9

    move/from16 v9, v16

    goto :goto_1

    :cond_3
    if-ne v11, v4, :cond_0

    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    goto :goto_0

    :cond_4
    return-object v5
.end method

.method private sample(S)S
    .locals 6

    const v0, 0xffff

    and-int/2addr p1, v0

    ushr-int/lit8 v1, p1, 0x1

    int-to-short v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->T_chi:[S

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-short v4, v4, v2

    if-le v1, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    rem-int/lit8 p1, p1, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    mul-int/lit8 v3, v3, -0x1

    and-int p1, v3, v0

    int-to-short v3, p1

    :cond_2
    return v3
.end method

.method private sample_matrix([SIII)[S
    .locals 6

    mul-int v0, p3, p4

    new-array v0, v0, [S

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p4, :cond_0

    mul-int v4, v2, p4

    add-int/2addr v4, v3

    add-int v5, v4, p2

    aget-short v5, p1, v5

    invoke-direct {p0, v5}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample(S)S

    move-result v5

    aput-short v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private unpack([BII)[S
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    mul-int v2, p2, p3

    new-array v3, v2, [S

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    if-ge v5, v2, :cond_5

    array-length v9, v1

    if-lt v6, v9, :cond_1

    array-length v9, v1

    if-ne v6, v9, :cond_5

    if-lez v7, :cond_5

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    if-ge v9, v10, :cond_4

    sub-int/2addr v10, v9

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x1

    shl-int v12, v11, v10

    sub-int/2addr v12, v11

    const v11, 0xffff

    and-int/2addr v12, v11

    int-to-short v12, v12

    and-int/lit16 v13, v8, 0xff

    and-int/lit16 v14, v7, 0xff

    sub-int/2addr v14, v10

    ushr-int/2addr v13, v14

    and-int v14, v12, v11

    and-int/2addr v13, v14

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aget-short v14, v3, v5

    and-int/2addr v14, v11

    and-int/lit16 v13, v13, 0xff

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    and-int/lit16 v4, v9, 0xff

    sub-int/2addr v15, v4

    sub-int/2addr v15, v10

    shl-int v4, v13, v15

    add-int/2addr v14, v4

    and-int v4, v14, v11

    int-to-short v4, v4

    aput-short v4, v3, v5

    add-int/2addr v9, v10

    int-to-byte v9, v9

    sub-int/2addr v7, v10

    int-to-byte v4, v7

    shl-int v7, v12, v4

    not-int v7, v7

    and-int/2addr v7, v8

    int-to-byte v7, v7

    if-nez v4, :cond_3

    array-length v8, v1

    if-ge v6, v8, :cond_2

    aget-byte v4, v1, v6

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    const/16 v7, 0x8

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v7

    move v7, v4

    goto :goto_2

    :cond_3
    move v8, v7

    move v7, v4

    goto :goto_1

    :cond_4
    :goto_2
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    if-ne v9, v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    goto :goto_0

    :cond_5
    return-object v3
.end method


# virtual methods
.method public getCipherTextSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ct_bytes:I

    return v0
.end method

.method public getPrivateKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_sk_bytes:I

    return v0
.end method

.method public getPublicKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    return v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss_bytes:I

    return v0
.end method

.method public kem_dec([B[B[B)V
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 8
    .line 9
    const/16 v8, 0x8

    .line 10
    .line 11
    mul-int/lit8 v2, v2, 0x8

    .line 12
    .line 13
    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v2, v3, v8, v4}, Landroidx/camera/camera2/internal/c;->a(IIII)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v0, v4, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    .line 25
    .line 26
    mul-int/lit8 v3, v3, 0x40

    .line 27
    .line 28
    div-int/2addr v3, v8

    .line 29
    add-int/2addr v3, v2

    .line 30
    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    .line 35
    .line 36
    add-int/2addr v0, v4

    .line 37
    invoke-static {v1, v4, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 38
    .line 39
    .line 40
    move-result-object v11

    .line 41
    add-int/lit8 v2, v0, 0x10

    .line 42
    .line 43
    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 44
    .line 45
    .line 46
    move-result-object v12

    .line 47
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    .line 48
    .line 49
    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 50
    .line 51
    mul-int v0, v0, v3

    .line 52
    .line 53
    mul-int/lit8 v0, v0, 0x8

    .line 54
    .line 55
    div-int/2addr v0, v8

    .line 56
    add-int/2addr v0, v2

    .line 57
    invoke-static {v1, v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 58
    .line 59
    .line 60
    move-result-object v13

    .line 61
    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 62
    .line 63
    mul-int/lit8 v2, v2, 0x8

    .line 64
    .line 65
    mul-int/lit8 v2, v2, 0x10

    .line 66
    .line 67
    div-int/2addr v2, v8

    .line 68
    add-int/2addr v2, v0

    .line 69
    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 74
    .line 75
    mul-int/lit8 v3, v3, 0x8

    .line 76
    .line 77
    new-array v3, v3, [S

    .line 78
    .line 79
    :goto_0
    if-ge v4, v8, :cond_1

    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    :goto_1
    iget v6, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 83
    .line 84
    if-ge v5, v6, :cond_0

    .line 85
    .line 86
    mul-int v14, v4, v6

    .line 87
    .line 88
    add-int/2addr v14, v5

    .line 89
    mul-int v6, v6, v4

    .line 90
    .line 91
    mul-int/lit8 v6, v6, 0x2

    .line 92
    .line 93
    mul-int/lit8 v15, v5, 0x2

    .line 94
    .line 95
    add-int/2addr v15, v6

    .line 96
    invoke-static {v0, v15}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    aput-short v6, v3, v14

    .line 101
    .line 102
    add-int/lit8 v5, v5, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 109
    .line 110
    invoke-direct {v7, v3, v8, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_transpose([SII)[S

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    .line 115
    .line 116
    add-int/2addr v0, v2

    .line 117
    invoke-static {v1, v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 118
    .line 119
    .line 120
    move-result-object v14

    .line 121
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 122
    .line 123
    invoke-direct {v7, v9, v8, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    invoke-direct {v7, v10, v8, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    const/16 v2, 0x8

    .line 132
    .line 133
    iget v5, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 134
    .line 135
    const/16 v16, 0x8

    .line 136
    .line 137
    move-object/from16 v0, p0

    .line 138
    .line 139
    move-object v1, v15

    .line 140
    move v3, v5

    .line 141
    move-object/from16 p2, v10

    .line 142
    .line 143
    move-object v10, v6

    .line 144
    move/from16 v6, v16

    .line 145
    .line 146
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-direct {v7, v10, v0, v8, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_sub([S[SII)[S

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->decode([S)[B

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    .line 159
    .line 160
    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    .line 161
    .line 162
    add-int/2addr v0, v1

    .line 163
    new-array v0, v0, [B

    .line 164
    .line 165
    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    .line 166
    .line 167
    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    .line 168
    .line 169
    const/4 v3, 0x0

    .line 170
    invoke-interface {v1, v14, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    .line 174
    .line 175
    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    .line 176
    .line 177
    invoke-interface {v1, v6, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    .line 181
    .line 182
    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    .line 183
    .line 184
    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    .line 185
    .line 186
    add-int/2addr v2, v4

    .line 187
    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 188
    .line 189
    .line 190
    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    .line 191
    .line 192
    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    .line 193
    .line 194
    add-int/2addr v2, v1

    .line 195
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 196
    .line 197
    .line 198
    move-result-object v14

    .line 199
    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 200
    .line 201
    mul-int/lit8 v1, v1, 0x10

    .line 202
    .line 203
    add-int/lit8 v1, v1, 0x40

    .line 204
    .line 205
    mul-int/lit8 v1, v1, 0x2

    .line 206
    .line 207
    new-array v2, v1, [B

    .line 208
    .line 209
    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    .line 210
    .line 211
    const/16 v4, -0x6a

    .line 212
    .line 213
    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 214
    .line 215
    .line 216
    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    .line 217
    .line 218
    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    .line 219
    .line 220
    const/4 v5, 0x0

    .line 221
    invoke-interface {v3, v0, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 222
    .line 223
    .line 224
    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    .line 225
    .line 226
    invoke-interface {v0, v2, v5, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 227
    .line 228
    .line 229
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 230
    .line 231
    mul-int/lit8 v0, v0, 0x10

    .line 232
    .line 233
    add-int/lit8 v0, v0, 0x40

    .line 234
    .line 235
    new-array v5, v0, [S

    .line 236
    .line 237
    const/4 v1, 0x0

    .line 238
    :goto_2
    if-ge v1, v0, :cond_2

    .line 239
    .line 240
    mul-int/lit8 v3, v1, 0x2

    .line 241
    .line 242
    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    aput-short v3, v5, v1

    .line 247
    .line 248
    add-int/lit8 v1, v1, 0x1

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_2
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 252
    .line 253
    const/4 v1, 0x0

    .line 254
    invoke-direct {v7, v5, v1, v8, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    .line 255
    .line 256
    .line 257
    move-result-object v16

    .line 258
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 259
    .line 260
    mul-int/lit8 v1, v0, 0x8

    .line 261
    .line 262
    invoke-direct {v7, v5, v1, v8, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    .line 267
    .line 268
    invoke-virtual {v0, v12}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->genMatrix([B)[S

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    const/16 v2, 0x8

    .line 273
    .line 274
    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 275
    .line 276
    move-object/from16 v0, p0

    .line 277
    .line 278
    move-object/from16 v1, v16

    .line 279
    .line 280
    move/from16 v17, v3

    .line 281
    .line 282
    move-object/from16 v18, v4

    .line 283
    .line 284
    move-object v4, v12

    .line 285
    move-object v12, v5

    .line 286
    move/from16 v5, v17

    .line 287
    .line 288
    move-object/from16 v19, v6

    .line 289
    .line 290
    move/from16 v6, v17

    .line 291
    .line 292
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 297
    .line 298
    move-object/from16 v2, v18

    .line 299
    .line 300
    invoke-direct {v7, v0, v2, v8, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 305
    .line 306
    mul-int/lit8 v0, v0, 0x10

    .line 307
    .line 308
    invoke-direct {v7, v12, v0, v8, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    .line 309
    .line 310
    .line 311
    move-result-object v12

    .line 312
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 313
    .line 314
    invoke-direct {v7, v13, v0, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    const/16 v2, 0x8

    .line 319
    .line 320
    iget v5, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 321
    .line 322
    const/16 v13, 0x8

    .line 323
    .line 324
    move-object/from16 v0, p0

    .line 325
    .line 326
    move-object/from16 v1, v16

    .line 327
    .line 328
    move v3, v5

    .line 329
    move-object/from16 v20, v6

    .line 330
    .line 331
    move v6, v13

    .line 332
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-direct {v7, v0, v12, v8, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    move-object/from16 v1, v19

    .line 341
    .line 342
    invoke-direct {v7, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->encode([B)[S

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-direct {v7, v0, v1, v8, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    move-object/from16 v1, v20

    .line 351
    .line 352
    invoke-direct {v7, v15, v10, v1, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->ctverify([S[S[S[S)S

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    invoke-direct {v7, v14, v11, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->ctselect([B[BS)[B

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    .line 361
    .line 362
    array-length v2, v9

    .line 363
    const/4 v3, 0x0

    .line 364
    invoke-interface {v1, v9, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 365
    .line 366
    .line 367
    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    .line 368
    .line 369
    move-object/from16 v2, p2

    .line 370
    .line 371
    array-length v4, v2

    .line 372
    invoke-interface {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 373
    .line 374
    .line 375
    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    .line 376
    .line 377
    array-length v2, v0

    .line 378
    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 379
    .line 380
    .line 381
    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    .line 382
    .line 383
    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss_bytes:I

    .line 384
    .line 385
    move-object/from16 v2, p1

    .line 386
    .line 387
    invoke-interface {v0, v2, v3, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 388
    .line 389
    .line 390
    return-void
.end method

.method public kem_enc([B[B[BLjava/security/SecureRandom;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v0, v8, v9}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    invoke-static {v0, v9, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    new-array v11, v2, [B

    move-object/from16 v2, p4

    invoke-virtual {v2, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    new-array v2, v2, [B

    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    invoke-interface {v3, v0, v8, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    invoke-interface {v0, v2, v8, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE:I

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k:I

    add-int/2addr v0, v3

    new-array v0, v0, [B

    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    invoke-interface {v3, v2, v8, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    invoke-interface {v2, v11, v8, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v3, v4

    invoke-interface {v2, v0, v8, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    invoke-static {v0, v8, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v4, v3

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x40

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    iget-object v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v5, -0x6a

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v5, v2

    invoke-interface {v4, v2, v8, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v2, v3, v8, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    div-int/lit8 v0, v0, 0x2

    new-array v13, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v4, v2, 0x2

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v4

    aput-short v4, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v14, 0x8

    invoke-direct {v7, v13, v8, v14, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v15

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v2, v0, 0x8

    invoke-direct {v7, v13, v2, v14, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v6

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->genMatrix([B)[S

    move-result-object v4

    const/16 v2, 0x8

    iget v5, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v5

    move/from16 v16, v5

    move-object v8, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v0

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v7, v0, v8, v14, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->pack([S)[B

    move-result-object v8

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v7, v13, v0, v14, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v9

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v7, v10, v0, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    move-result-object v4

    iget v5, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v0

    invoke-direct {v7, v0, v9, v14, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v0

    invoke-direct {v7, v11}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->encode([B)[S

    move-result-object v1

    invoke-direct {v7, v0, v1, v14, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->pack([S)[B

    move-result-object v0

    invoke-static {v8, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ct_bytes:I

    move-object/from16 v3, p1

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v8

    invoke-interface {v1, v8, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    invoke-interface {v0, v12, v4, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    move-object/from16 v2, p2

    invoke-interface {v0, v2, v4, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method public kem_keypair([B[BLjava/security/SecureRandom;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int/2addr v0, v1

    const/16 v1, 0x10

    add-int/2addr v0, v1

    new-array v0, v0, [B

    move-object/from16 v2, p3

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    const/4 v10, 0x0

    invoke-static {v0, v10, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int/2addr v3, v2

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int v5, v3, v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-static {v0, v5, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-array v12, v1, [B

    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v4, v0

    invoke-interface {v3, v0, v10, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, v12, v10, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    invoke-virtual {v0, v12}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->genMatrix([B)[S

    move-result-object v1

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/4 v13, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/16 v14, 0x8

    mul-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    iget-object v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v5, 0x5f

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v5, v2

    invoke-interface {v4, v2, v10, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v2, v3, v10, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x8

    new-array v2, v0, [S

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    mul-int/lit8 v5, v4, 0x2

    invoke-static {v3, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v5

    aput-short v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v7, v2, v10, v14, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v15

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v7, v15, v14, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_transpose([SII)[S

    move-result-object v4

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v3, v0, 0x8

    invoke-direct {v7, v2, v3, v0, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v6

    iget v5, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v16, 0x8

    move-object/from16 v0, p0

    move v2, v5

    move v3, v5

    move-object v13, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v0

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v7, v0, v13, v1, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->pack([S)[B

    move-result-object v0

    invoke-static {v12, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    invoke-static {v0, v10, v8, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    new-array v1, v0, [B

    iget-object v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, v8

    invoke-interface {v2, v8, v10, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v2, v1, v10, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {v11, v8}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    add-int/2addr v2, v3

    invoke-static {v0, v10, v9, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v14, :cond_2

    const/4 v2, 0x0

    :goto_2
    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    if-ge v2, v3, :cond_1

    mul-int v3, v3, v0

    add-int/2addr v3, v2

    aget-short v3, v15, v3

    invoke-static {v3}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S)[B

    move-result-object v3

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v5, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    add-int/2addr v4, v5

    iget v5, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int v5, v5, v0

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v5

    invoke-static {v3, v10, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_sk_bytes:I

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    sub-int/2addr v0, v2

    invoke-static {v1, v10, v9, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
