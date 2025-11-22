.class public final Lcom/google/android/gms/internal/clearcut/l3;
.super Lcom/google/android/gms/internal/clearcut/w;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/w;-><init>()V

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
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/clearcut/g3;->a(J[B)B

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
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/clearcut/g3;->a(J[B)B

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    sget-object p3, Lcom/google/android/gms/internal/clearcut/i3;->a:Lcom/google/android/gms/internal/clearcut/w;

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
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/clearcut/g3;->a(J[B)B

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    sget-object p2, Lcom/google/android/gms/internal/clearcut/i3;->a:Lcom/google/android/gms/internal/clearcut/w;

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
    sget-object p1, Lcom/google/android/gms/internal/clearcut/i3;->a:Lcom/google/android/gms/internal/clearcut/w;

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
.method public final b(I[BI)I
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

    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/clearcut/g3;->a(J[B)B

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

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/clearcut/g3;->a(J[B)B

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

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/clearcut/g3;->a(J[B)B

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

    invoke-static {p3, p1, v4, v5, p2}, Lcom/google/android/gms/internal/clearcut/l3;->f(IIJ[B)I

    move-result p1

    return p1

    :cond_b
    add-int/lit8 p1, p1, -0x2

    add-long v10, v4, v6

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/clearcut/g3;->a(J[B)B

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

    invoke-static {v10, v11, p2}, Lcom/google/android/gms/internal/clearcut/g3;->a(J[B)B

    move-result p3

    if-le p3, v9, :cond_3

    :cond_e
    return v0

    :cond_f
    if-ge p1, v2, :cond_10

    invoke-static {p3, p1, v4, v5, p2}, Lcom/google/android/gms/internal/clearcut/l3;->f(IIJ[B)I

    move-result p1

    return p1

    :cond_10
    add-int/lit8 p1, p1, -0x3

    add-long v10, v4, v6

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/clearcut/g3;->a(J[B)B

    move-result v4

    if-gt v4, v9, :cond_11

    shl-int/lit8 p3, p3, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr v4, p3

    shr-int/lit8 p3, v4, 0x1e

    if-nez p3, :cond_11

    add-long v4, v10, v6

    invoke-static {v10, v11, p2}, Lcom/google/android/gms/internal/clearcut/g3;->a(J[B)B

    move-result p3

    if-gt p3, v9, :cond_11

    add-long v10, v4, v6

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/clearcut/g3;->a(J[B)B

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

.method public final c(Ljava/lang/CharSequence;[BII)I
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

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/clearcut/g3;->h([BJB)V

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

    invoke-static {v1, v4, v5, v13}, Lcom/google/android/gms/internal/clearcut/g3;->h([BJB)V

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

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/clearcut/g3;->h([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lcom/google/android/gms/internal/clearcut/g3;->h([BJB)V

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

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/clearcut/g3;->h([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lcom/google/android/gms/internal/clearcut/g3;->h([BJB)V

    const-wide/16 v14, 0x1

    add-long v18, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/g3;->h([BJB)V

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

    invoke-static {v1, v4, v5, v15}, Lcom/google/android/gms/internal/clearcut/g3;->h([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    invoke-static {v1, v13, v14, v12}, Lcom/google/android/gms/internal/clearcut/g3;->h([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lcom/google/android/gms/internal/clearcut/g3;->h([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    invoke-static {v1, v14, v15, v2}, Lcom/google/android/gms/internal/clearcut/g3;->h([BJB)V

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
    new-instance v0, Lcom/google/android/gms/internal/clearcut/k3;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/clearcut/k3;-><init>(II)V

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
    new-instance v0, Lcom/google/android/gms/internal/clearcut/k3;

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/clearcut/k3;-><init>(II)V

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

.method public final d(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    .line 6
    .line 7
    sget-wide v3, Lcom/google/android/gms/internal/clearcut/g3;->h:J

    .line 8
    .line 9
    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3$d;->k(JLjava/lang/Object;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->position()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    int-to-long v4, v4

    .line 18
    add-long/2addr v4, v2

    .line 19
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    int-to-long v6, v6

    .line 24
    add-long/2addr v6, v2

    .line 25
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    int-to-long v9, v8

    .line 30
    sub-long v11, v6, v4

    .line 31
    .line 32
    const-string v13, " at index "

    .line 33
    .line 34
    const-string v14, "Failed writing "

    .line 35
    .line 36
    cmp-long v15, v9, v11

    .line 37
    .line 38
    if-gtz v15, :cond_c

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    :goto_0
    const/16 v10, 0x80

    .line 42
    .line 43
    const-wide/16 v11, 0x1

    .line 44
    .line 45
    if-ge v9, v8, :cond_0

    .line 46
    .line 47
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v15

    .line 51
    if-ge v15, v10, :cond_0

    .line 52
    .line 53
    add-long v10, v4, v11

    .line 54
    .line 55
    int-to-byte v12, v15

    .line 56
    invoke-static {v4, v5, v12}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v9, v9, 0x1

    .line 60
    .line 61
    move-wide v4, v10

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    if-ne v9, v8, :cond_1

    .line 64
    .line 65
    sub-long/2addr v4, v2

    .line 66
    long-to-int v0, v4

    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_1
    :goto_1
    if-ge v9, v8, :cond_b

    .line 70
    .line 71
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v15

    .line 75
    if-ge v15, v10, :cond_2

    .line 76
    .line 77
    cmp-long v16, v4, v6

    .line 78
    .line 79
    if-gez v16, :cond_2

    .line 80
    .line 81
    add-long v16, v4, v11

    .line 82
    .line 83
    int-to-byte v15, v15

    .line 84
    invoke-static {v4, v5, v15}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    .line 85
    .line 86
    .line 87
    move-wide/from16 v4, v16

    .line 88
    .line 89
    const/16 v15, 0x80

    .line 90
    .line 91
    move-wide/from16 v17, v2

    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_2
    const/16 v10, 0x800

    .line 96
    .line 97
    if-ge v15, v10, :cond_3

    .line 98
    .line 99
    const-wide/16 v17, 0x2

    .line 100
    .line 101
    sub-long v17, v6, v17

    .line 102
    .line 103
    cmp-long v10, v4, v17

    .line 104
    .line 105
    if-gtz v10, :cond_3

    .line 106
    .line 107
    move-wide/from16 v17, v2

    .line 108
    .line 109
    add-long v1, v4, v11

    .line 110
    .line 111
    ushr-int/lit8 v3, v15, 0x6

    .line 112
    .line 113
    or-int/lit16 v3, v3, 0x3c0

    .line 114
    .line 115
    int-to-byte v3, v3

    .line 116
    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    .line 117
    .line 118
    .line 119
    add-long v3, v1, v11

    .line 120
    .line 121
    and-int/lit8 v5, v15, 0x3f

    .line 122
    .line 123
    const/16 v10, 0x80

    .line 124
    .line 125
    or-int/2addr v5, v10

    .line 126
    int-to-byte v5, v5

    .line 127
    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    move-wide/from16 v17, v2

    .line 132
    .line 133
    const v1, 0xdfff

    .line 134
    .line 135
    .line 136
    const v2, 0xd800

    .line 137
    .line 138
    .line 139
    if-lt v15, v2, :cond_4

    .line 140
    .line 141
    if-ge v1, v15, :cond_5

    .line 142
    .line 143
    :cond_4
    const-wide/16 v19, 0x3

    .line 144
    .line 145
    sub-long v19, v6, v19

    .line 146
    .line 147
    cmp-long v3, v4, v19

    .line 148
    .line 149
    if-gtz v3, :cond_5

    .line 150
    .line 151
    add-long v1, v4, v11

    .line 152
    .line 153
    ushr-int/lit8 v3, v15, 0xc

    .line 154
    .line 155
    or-int/lit16 v3, v3, 0x1e0

    .line 156
    .line 157
    int-to-byte v3, v3

    .line 158
    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    .line 159
    .line 160
    .line 161
    add-long v3, v1, v11

    .line 162
    .line 163
    ushr-int/lit8 v5, v15, 0x6

    .line 164
    .line 165
    and-int/lit8 v5, v5, 0x3f

    .line 166
    .line 167
    const/16 v10, 0x80

    .line 168
    .line 169
    or-int/2addr v5, v10

    .line 170
    int-to-byte v5, v5

    .line 171
    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    .line 172
    .line 173
    .line 174
    add-long v1, v3, v11

    .line 175
    .line 176
    and-int/lit8 v5, v15, 0x3f

    .line 177
    .line 178
    or-int/2addr v5, v10

    .line 179
    int-to-byte v5, v5

    .line 180
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    .line 181
    .line 182
    .line 183
    move-wide v3, v1

    .line 184
    :goto_2
    move-wide v4, v3

    .line 185
    const/16 v15, 0x80

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_5
    const-wide/16 v19, 0x4

    .line 189
    .line 190
    sub-long v19, v6, v19

    .line 191
    .line 192
    cmp-long v3, v4, v19

    .line 193
    .line 194
    if-gtz v3, :cond_8

    .line 195
    .line 196
    add-int/lit8 v1, v9, 0x1

    .line 197
    .line 198
    if-eq v1, v8, :cond_7

    .line 199
    .line 200
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_6

    .line 209
    .line 210
    invoke-static {v15, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    add-long v9, v4, v11

    .line 215
    .line 216
    ushr-int/lit8 v3, v2, 0x12

    .line 217
    .line 218
    or-int/lit16 v3, v3, 0xf0

    .line 219
    .line 220
    int-to-byte v3, v3

    .line 221
    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    .line 222
    .line 223
    .line 224
    add-long v3, v9, v11

    .line 225
    .line 226
    ushr-int/lit8 v5, v2, 0xc

    .line 227
    .line 228
    and-int/lit8 v5, v5, 0x3f

    .line 229
    .line 230
    const/16 v15, 0x80

    .line 231
    .line 232
    or-int/2addr v5, v15

    .line 233
    int-to-byte v5, v5

    .line 234
    invoke-static {v9, v10, v5}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    .line 235
    .line 236
    .line 237
    add-long v9, v3, v11

    .line 238
    .line 239
    ushr-int/lit8 v5, v2, 0x6

    .line 240
    .line 241
    and-int/lit8 v5, v5, 0x3f

    .line 242
    .line 243
    or-int/2addr v5, v15

    .line 244
    int-to-byte v5, v5

    .line 245
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    .line 246
    .line 247
    .line 248
    add-long v3, v9, v11

    .line 249
    .line 250
    and-int/lit8 v2, v2, 0x3f

    .line 251
    .line 252
    or-int/2addr v2, v15

    .line 253
    int-to-byte v2, v2

    .line 254
    invoke-static {v9, v10, v2}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    .line 255
    .line 256
    .line 257
    move v9, v1

    .line 258
    move-wide v4, v3

    .line 259
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 260
    .line 261
    move-object/from16 v1, p2

    .line 262
    .line 263
    move-wide/from16 v2, v17

    .line 264
    .line 265
    const/16 v10, 0x80

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_6
    move v9, v1

    .line 270
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/clearcut/k3;

    .line 271
    .line 272
    add-int/lit8 v9, v9, -0x1

    .line 273
    .line 274
    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/clearcut/k3;-><init>(II)V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    :cond_8
    if-gt v2, v15, :cond_a

    .line 279
    .line 280
    if-gt v15, v1, :cond_a

    .line 281
    .line 282
    add-int/lit8 v1, v9, 0x1

    .line 283
    .line 284
    if-eq v1, v8, :cond_9

    .line 285
    .line 286
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    invoke-static {v15, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-nez v0, :cond_a

    .line 295
    .line 296
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/clearcut/k3;

    .line 297
    .line 298
    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/clearcut/k3;-><init>(II)V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 303
    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const/16 v2, 0x2e

    .line 307
    .line 308
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v0

    .line 331
    :cond_b
    move-wide/from16 v17, v2

    .line 332
    .line 333
    sub-long v4, v4, v17

    .line 334
    .line 335
    long-to-int v0, v4

    .line 336
    move-object/from16 v1, p2

    .line 337
    .line 338
    :goto_4
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :cond_c
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 343
    .line 344
    add-int/lit8 v8, v8, -0x1

    .line 345
    .line 346
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const/16 v4, 0x25

    .line 357
    .line 358
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v2
.end method
