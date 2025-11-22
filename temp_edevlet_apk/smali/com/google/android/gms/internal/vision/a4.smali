.class public final Lcom/google/android/gms/internal/vision/a4;
.super Lcom/google/android/gms/internal/vision/m0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/m0;-><init>()V

    return-void
.end method

.method public static f(IIJ[B)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/16 v1, -0xc

    .line 3
    .line 4
    if-eqz p1, :cond_6

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/16 v3, -0x41

    .line 8
    .line 9
    if-eq p1, v2, :cond_3

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne p1, v2, :cond_2

    .line 13
    .line 14
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const-wide/16 v4, 0x1

    .line 19
    .line 20
    add-long/2addr p2, v4

    .line 21
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    sget-object p3, Lcom/google/android/gms/internal/vision/w3;->a:Lcom/google/android/gms/internal/vision/m0;

    .line 26
    .line 27
    if-gt p0, v1, :cond_1

    .line 28
    .line 29
    if-gt p1, v3, :cond_1

    .line 30
    .line 31
    if-le p2, v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    shl-int/lit8 p1, p1, 0x8

    .line 35
    .line 36
    xor-int/2addr p0, p1

    .line 37
    shl-int/lit8 p1, p2, 0x10

    .line 38
    .line 39
    xor-int v0, p0, p1

    .line 40
    .line 41
    :cond_1
    :goto_0
    return v0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 43
    .line 44
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_3
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    sget-object p2, Lcom/google/android/gms/internal/vision/w3;->a:Lcom/google/android/gms/internal/vision/m0;

    .line 53
    .line 54
    if-gt p0, v1, :cond_5

    .line 55
    .line 56
    if-le p1, v3, :cond_4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    shl-int/lit8 p1, p1, 0x8

    .line 60
    .line 61
    xor-int v0, p0, p1

    .line 62
    .line 63
    :cond_5
    :goto_1
    return v0

    .line 64
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/vision/w3;->a:Lcom/google/android/gms/internal/vision/m0;

    .line 65
    .line 66
    if-le p0, v1, :cond_7

    .line 67
    .line 68
    const/4 p0, -0x1

    .line 69
    :cond_7
    return p0
.end method


# virtual methods
.method public final a(I[BI)I
    .locals 12

    or-int v0, p1, p3

    array-length v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ltz v0, :cond_12

    int-to-long v4, p1

    int-to-long v6, p3

    sub-long/2addr v6, v4

    long-to-int p1, v6

    const/16 p3, 0x10

    const-wide/16 v6, 0x1

    if-ge p1, p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    :cond_0
    move-wide v8, v4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_2

    add-long v10, v8, v6

    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    move-result v0

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    move-wide v8, v10

    goto :goto_0

    :cond_2
    move p3, p1

    :goto_1
    sub-int/2addr p1, p3

    int-to-long v8, p3

    add-long/2addr v4, v8

    :cond_3
    :goto_2
    const/4 p3, 0x0

    :goto_3
    if-lez p1, :cond_5

    add-long v8, v4, v6

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    move-result p3

    if-ltz p3, :cond_4

    add-int/lit8 p1, p1, -0x1

    move-wide v4, v8

    goto :goto_3

    :cond_4
    move-wide v4, v8

    :cond_5
    if-nez p1, :cond_6

    return v3

    :cond_6
    add-int/lit8 p1, p1, -0x1

    const/4 v0, -0x1

    const/16 v8, -0x20

    const/16 v9, -0x41

    if-ge p3, v8, :cond_a

    if-nez p1, :cond_7

    return p3

    :cond_7
    add-int/lit8 p1, p1, -0x1

    const/16 v8, -0x3e

    if-lt p3, v8, :cond_9

    add-long v10, v4, v6

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    move-result p3

    if-le p3, v9, :cond_8

    goto :goto_4

    :cond_8
    move-wide v4, v10

    goto :goto_2

    :cond_9
    :goto_4
    return v0

    :cond_a
    const/16 v10, -0x10

    if-ge p3, v10, :cond_f

    if-ge p1, v1, :cond_b

    invoke-static {p3, p1, v4, v5, p2}, Lcom/google/android/gms/internal/vision/a4;->f(IIJ[B)I

    move-result p1

    return p1

    :cond_b
    add-int/lit8 p1, p1, -0x2

    add-long v10, v4, v6

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    move-result v4

    if-gt v4, v9, :cond_e

    const/16 v5, -0x60

    if-ne p3, v8, :cond_c

    if-lt v4, v5, :cond_e

    :cond_c
    const/16 v8, -0x13

    if-ne p3, v8, :cond_d

    if-ge v4, v5, :cond_e

    :cond_d
    add-long v4, v10, v6

    invoke-static {v10, v11, p2}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    move-result p3

    if-le p3, v9, :cond_3

    :cond_e
    return v0

    :cond_f
    if-ge p1, v2, :cond_10

    invoke-static {p3, p1, v4, v5, p2}, Lcom/google/android/gms/internal/vision/a4;->f(IIJ[B)I

    move-result p1

    return p1

    :cond_10
    add-int/lit8 p1, p1, -0x3

    add-long v10, v4, v6

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    move-result v4

    if-gt v4, v9, :cond_11

    shl-int/lit8 p3, p3, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr v4, p3

    shr-int/lit8 p3, v4, 0x1e

    if-nez p3, :cond_11

    add-long v4, v10, v6

    invoke-static {v10, v11, p2}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    move-result p3

    if-gt p3, v9, :cond_11

    add-long v10, v4, v6

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    move-result p3

    if-le p3, v9, :cond_8

    :cond_11
    return v0

    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v2, v2, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Array length=%d, index=%d, limit=%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/CharSequence;[BII)I
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v11, 0x1

    const/16 v3, 0x80

    if-ge v2, v8, :cond_0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    long-to-int v0, v4

    return v0

    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    add-long v14, v4, v11

    int-to-byte v13, v13

    invoke-static {v1, v4, v5, v13}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    goto :goto_2

    :cond_2
    const/16 v14, 0x800

    if-ge v13, v14, :cond_3

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v16, v4, v14

    if-gtz v16, :cond_3

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    move-wide/from16 v20, v11

    const/16 v11, 0x80

    move-wide v12, v3

    move-wide/from16 v4, v20

    goto/16 :goto_3

    :cond_3
    const v3, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_4

    if-ge v3, v13, :cond_5

    :cond_4
    const-wide/16 v15, 0x3

    sub-long v15, v6, v15

    cmp-long v17, v4, v15

    if-gtz v17, :cond_5

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    const-wide/16 v14, 0x1

    add-long v18, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    move-wide/from16 v14, v18

    :goto_2
    move-wide v12, v14

    const-wide/16 v4, 0x1

    const/16 v11, 0x80

    goto :goto_3

    :cond_5
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v15, v4, v11

    if-gtz v15, :cond_8

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_7

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    invoke-static {v1, v4, v5, v15}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    invoke-static {v1, v13, v14, v12}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    invoke-static {v1, v14, v15, v2}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    move v2, v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x80

    move-wide/from16 v20, v4

    move-wide v4, v12

    move-wide/from16 v11, v20

    goto/16 :goto_1

    :cond_6
    move v2, v3

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/vision/y3;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/vision/y3;-><init>(II)V

    throw v0

    :cond_8
    if-gt v14, v13, :cond_a

    if-gt v13, v3, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/vision/y3;

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/vision/y3;-><init>(II)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    long-to-int v0, v4

    return v0

    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final e([BII)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/q1;
        }
    .end annotation

    .line 1
    or-int v0, p2, p3

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    sub-int/2addr v1, p2

    .line 5
    sub-int/2addr v1, p3

    .line 6
    or-int/2addr v0, v1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ltz v0, :cond_f

    .line 10
    .line 11
    add-int v0, p2, p3

    .line 12
    .line 13
    new-array p3, p3, [C

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge p2, v0, :cond_1

    .line 17
    .line 18
    int-to-long v4, p2

    .line 19
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ltz v4, :cond_0

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v5, 0x0

    .line 28
    :goto_1
    if-eqz v5, :cond_1

    .line 29
    .line 30
    add-int/lit8 p2, p2, 0x1

    .line 31
    .line 32
    add-int/lit8 v5, v3, 0x1

    .line 33
    .line 34
    int-to-char v4, v4

    .line 35
    aput-char v4, p3, v3

    .line 36
    .line 37
    move v3, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v8, v3

    .line 40
    :cond_2
    :goto_2
    if-ge p2, v0, :cond_e

    .line 41
    .line 42
    add-int/lit8 v3, p2, 0x1

    .line 43
    .line 44
    int-to-long v4, p2

    .line 45
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-ltz p2, :cond_3

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    const/4 v4, 0x0

    .line 54
    :goto_3
    if-eqz v4, :cond_5

    .line 55
    .line 56
    add-int/lit8 v4, v8, 0x1

    .line 57
    .line 58
    int-to-char p2, p2

    .line 59
    aput-char p2, p3, v8

    .line 60
    .line 61
    move p2, v3

    .line 62
    :goto_4
    move v8, v4

    .line 63
    if-ge p2, v0, :cond_2

    .line 64
    .line 65
    int-to-long v3, p2

    .line 66
    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-ltz v3, :cond_4

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    goto :goto_5

    .line 74
    :cond_4
    const/4 v4, 0x0

    .line 75
    :goto_5
    if-eqz v4, :cond_2

    .line 76
    .line 77
    add-int/lit8 p2, p2, 0x1

    .line 78
    .line 79
    add-int/lit8 v4, v8, 0x1

    .line 80
    .line 81
    int-to-char v3, v3

    .line 82
    aput-char v3, p3, v8

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_5
    const/16 v4, -0x20

    .line 86
    .line 87
    if-ge p2, v4, :cond_6

    .line 88
    .line 89
    const/4 v4, 0x1

    .line 90
    goto :goto_6

    .line 91
    :cond_6
    const/4 v4, 0x0

    .line 92
    :goto_6
    if-eqz v4, :cond_9

    .line 93
    .line 94
    if-ge v3, v0, :cond_8

    .line 95
    .line 96
    add-int/lit8 v4, v3, 0x1

    .line 97
    .line 98
    int-to-long v5, v3

    .line 99
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    add-int/lit8 v5, v8, 0x1

    .line 104
    .line 105
    const/16 v6, -0x3e

    .line 106
    .line 107
    if-lt p2, v6, :cond_7

    .line 108
    .line 109
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/x3;->c(B)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_7

    .line 114
    .line 115
    and-int/lit8 p2, p2, 0x1f

    .line 116
    .line 117
    shl-int/lit8 p2, p2, 0x6

    .line 118
    .line 119
    and-int/lit8 v3, v3, 0x3f

    .line 120
    .line 121
    or-int/2addr p2, v3

    .line 122
    int-to-char p2, p2

    .line 123
    aput-char p2, p3, v8

    .line 124
    .line 125
    move p2, v4

    .line 126
    move v8, v5

    .line 127
    goto :goto_2

    .line 128
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->d()Lcom/google/android/gms/internal/vision/q1;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    throw p1

    .line 133
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->d()Lcom/google/android/gms/internal/vision/q1;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    throw p1

    .line 138
    :cond_9
    const/16 v4, -0x10

    .line 139
    .line 140
    if-ge p2, v4, :cond_a

    .line 141
    .line 142
    const/4 v4, 0x1

    .line 143
    goto :goto_7

    .line 144
    :cond_a
    const/4 v4, 0x0

    .line 145
    :goto_7
    if-eqz v4, :cond_c

    .line 146
    .line 147
    add-int/lit8 v4, v0, -0x1

    .line 148
    .line 149
    if-ge v3, v4, :cond_b

    .line 150
    .line 151
    add-int/lit8 v4, v3, 0x1

    .line 152
    .line 153
    int-to-long v5, v3

    .line 154
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    add-int/lit8 v5, v4, 0x1

    .line 159
    .line 160
    int-to-long v6, v4

    .line 161
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    add-int/lit8 v6, v8, 0x1

    .line 166
    .line 167
    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/android/gms/internal/vision/x3;->b(BBB[CI)V

    .line 168
    .line 169
    .line 170
    move p2, v5

    .line 171
    move v8, v6

    .line 172
    goto/16 :goto_2

    .line 173
    .line 174
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->d()Lcom/google/android/gms/internal/vision/q1;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    throw p1

    .line 179
    :cond_c
    add-int/lit8 v4, v0, -0x2

    .line 180
    .line 181
    if-ge v3, v4, :cond_d

    .line 182
    .line 183
    add-int/lit8 v4, v3, 0x1

    .line 184
    .line 185
    int-to-long v5, v3

    .line 186
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    add-int/lit8 v3, v4, 0x1

    .line 191
    .line 192
    int-to-long v6, v4

    .line 193
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    add-int/lit8 v9, v3, 0x1

    .line 198
    .line 199
    int-to-long v3, v3

    .line 200
    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/vision/t3;->a(J[B)B

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    add-int/lit8 v10, v8, 0x1

    .line 205
    .line 206
    move v3, p2

    .line 207
    move v4, v5

    .line 208
    move v5, v6

    .line 209
    move v6, v7

    .line 210
    move-object v7, p3

    .line 211
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/vision/x3;->a(BBBB[CI)V

    .line 212
    .line 213
    .line 214
    add-int/lit8 v8, v10, 0x1

    .line 215
    .line 216
    move p2, v9

    .line 217
    goto/16 :goto_2

    .line 218
    .line 219
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->d()Lcom/google/android/gms/internal/vision/q1;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    throw p1

    .line 224
    :cond_e
    new-instance p1, Ljava/lang/String;

    .line 225
    .line 226
    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    .line 227
    .line 228
    .line 229
    return-object p1

    .line 230
    :cond_f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 231
    .line 232
    const/4 v3, 0x3

    .line 233
    new-array v3, v3, [Ljava/lang/Object;

    .line 234
    .line 235
    array-length p1, p1

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    aput-object p1, v3, v1

    .line 241
    .line 242
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    aput-object p1, v3, v2

    .line 247
    .line 248
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    const/4 p2, 0x2

    .line 253
    aput-object p1, v3, p2

    .line 254
    .line 255
    const-string p1, "buffer length=%d, index=%d, size=%d"

    .line 256
    .line 257
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v0
.end method
