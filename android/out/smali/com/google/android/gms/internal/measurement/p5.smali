.class public final Lcom/google/android/gms/internal/measurement/p5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BILcom/google/android/gms/internal/measurement/o5;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/z6;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/measurement/v5;->b:Lcom/google/android/gms/internal/measurement/u5;

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/v5;->A([BII)Lcom/google/android/gms/internal/measurement/u5;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->b()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object p0

    throw p0
.end method

.method public static b(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/s3;Lcom/google/android/gms/internal/measurement/o;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/f;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f;->C()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/f;->H(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/android/gms/internal/measurement/i;

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/internal/measurement/o;->a(Lcom/google/android/gms/internal/measurement/s3;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/p;->l()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/p;->l()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static c(I[B)I
    .locals 2

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p0, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static d(Lcom/google/android/gms/internal/measurement/d8;[BIIILcom/google/android/gms/internal/measurement/o5;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p0, Lcom/google/android/gms/internal/measurement/v7;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/v7;->e()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/v7;->x(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/o5;)I

    move-result p1

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/measurement/v7;->d(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    return p1
.end method

.method public static e(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/s3;Ljava/util/ArrayList;Z)Lcom/google/android/gms/internal/measurement/p;
    .locals 9

    const-string v0, "reduce"

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lc5/w;->c0(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x2

    invoke-static {v0, v2, p2}, Lc5/w;->d0(Ljava/lang/String;ILjava/util/ArrayList;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/j;

    if-eqz v4, :cond_a

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object p2

    instance-of v4, p2, Lcom/google/android/gms/internal/measurement/h;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to parse initial value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result p2

    if-eqz p2, :cond_9

    const/4 p2, 0x0

    :goto_0
    check-cast v3, Lcom/google/android/gms/internal/measurement/j;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v4

    if-eqz p3, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v4, -0x1

    :goto_1
    const/4 v6, -0x1

    if-eqz p3, :cond_3

    add-int/2addr v4, v6

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eq v1, p3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x1

    :goto_3
    if-nez p2, :cond_5

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object p2

    goto :goto_5

    :cond_5
    :goto_4
    sub-int p3, v4, v5

    mul-int p3, p3, v6

    if-ltz p3, :cond_8

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/f;->H(I)Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 p3, 0x4

    new-array p3, p3, [Lcom/google/android/gms/internal/measurement/p;

    aput-object p2, p3, v0

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object p2

    aput-object p2, p3, v1

    new-instance p2, Lcom/google/android/gms/internal/measurement/i;

    int-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {p2, v7}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    aput-object p2, p3, v2

    const/4 p2, 0x3

    aput-object p0, p3, p2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/measurement/j;->a(Lcom/google/android/gms/internal/measurement/s3;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object p2

    instance-of p3, p2, Lcom/google/android/gms/internal/measurement/h;

    if-nez p3, :cond_6

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Reduce operation failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_5
    add-int/2addr v5, v6

    goto :goto_4

    :cond_8
    return-object p2

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Empty array with no initial value error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback should be a method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lcom/google/android/gms/internal/measurement/d8;[BIILcom/google/android/gms/internal/measurement/o5;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/measurement/p5;->n(I[BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    iget p2, p4, Lcom/google/android/gms/internal/measurement/o5;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/d8;->e()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d8;->f(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/o5;)V

    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/measurement/d8;->d(Ljava/lang/Object;)V

    iput-object p3, p4, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    return p2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object p0

    throw p0
.end method

.method public static g(Lcom/google/android/gms/internal/measurement/d8;I[BIILcom/google/android/gms/internal/measurement/w6;Lcom/google/android/gms/internal/measurement/o5;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/measurement/p5;->f(Lcom/google/android/gms/internal/measurement/d8;[BIILcom/google/android/gms/internal/measurement/o5;)I

    move-result p3

    :goto_0
    iget-object v0, p6, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    iget v1, p6, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/measurement/p5;->f(Lcom/google/android/gms/internal/measurement/d8;[BIILcom/google/android/gms/internal/measurement/o5;)I

    move-result p3

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static h(B)Z
    .locals 1

    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i([BILcom/google/android/gms/internal/measurement/w6;Lcom/google/android/gms/internal/measurement/o5;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/measurement/r6;

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result p1

    iget v0, p3, Lcom/google/android/gms/internal/measurement/o5;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result p1

    iget v1, p3, Lcom/google/android/gms/internal/measurement/o5;->a:I

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/r6;->l(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object p0

    throw p0
.end method

.method public static j([BILcom/google/android/gms/internal/measurement/o5;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/z6;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/measurement/x6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->b()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object p0

    throw p0
.end method

.method public static k([BILcom/google/android/gms/internal/measurement/o5;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/z6;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p2, Lcom/google/android/gms/internal/measurement/o5;->a:I

    .line 6
    .line 7
    if-ltz v0, :cond_14

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/a9;->a:Lvd/d;

    .line 17
    .line 18
    array-length v1, p0

    .line 19
    or-int v2, p1, v0

    .line 20
    .line 21
    sub-int v3, v1, p1

    .line 22
    .line 23
    sub-int/2addr v3, v0

    .line 24
    or-int/2addr v2, v3

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    if-ltz v2, :cond_13

    .line 28
    .line 29
    add-int v1, p1, v0

    .line 30
    .line 31
    new-array v0, v0, [C

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge p1, v1, :cond_3

    .line 35
    .line 36
    aget-byte v5, p0, p1

    .line 37
    .line 38
    if-ltz v5, :cond_1

    .line 39
    .line 40
    const/4 v6, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v6, 0x0

    .line 43
    :goto_1
    if-nez v6, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    add-int/lit8 v6, v2, 0x1

    .line 49
    .line 50
    int-to-char v5, v5

    .line 51
    aput-char v5, v0, v2

    .line 52
    .line 53
    move v2, v6

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    :goto_2
    if-ge p1, v1, :cond_12

    .line 56
    .line 57
    add-int/lit8 v5, p1, 0x1

    .line 58
    .line 59
    aget-byte p1, p0, p1

    .line 60
    .line 61
    if-ltz p1, :cond_4

    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    const/4 v6, 0x0

    .line 66
    :goto_3
    if-eqz v6, :cond_7

    .line 67
    .line 68
    add-int/lit8 v6, v2, 0x1

    .line 69
    .line 70
    int-to-char p1, p1

    .line 71
    aput-char p1, v0, v2

    .line 72
    .line 73
    move p1, v5

    .line 74
    :goto_4
    move v2, v6

    .line 75
    if-ge p1, v1, :cond_3

    .line 76
    .line 77
    aget-byte v5, p0, p1

    .line 78
    .line 79
    if-ltz v5, :cond_5

    .line 80
    .line 81
    const/4 v6, 0x1

    .line 82
    goto :goto_5

    .line 83
    :cond_5
    const/4 v6, 0x0

    .line 84
    :goto_5
    if-nez v6, :cond_6

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 88
    .line 89
    add-int/lit8 v6, v2, 0x1

    .line 90
    .line 91
    int-to-char v5, v5

    .line 92
    aput-char v5, v0, v2

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_7
    const/16 v6, -0x20

    .line 96
    .line 97
    if-ge p1, v6, :cond_a

    .line 98
    .line 99
    if-ge v5, v1, :cond_9

    .line 100
    .line 101
    add-int/lit8 v6, v5, 0x1

    .line 102
    .line 103
    add-int/lit8 v7, v2, 0x1

    .line 104
    .line 105
    aget-byte v5, p0, v5

    .line 106
    .line 107
    const/16 v8, -0x3e

    .line 108
    .line 109
    if-lt p1, v8, :cond_8

    .line 110
    .line 111
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/p5;->h(B)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-nez v8, :cond_8

    .line 116
    .line 117
    and-int/lit8 p1, p1, 0x1f

    .line 118
    .line 119
    shl-int/lit8 p1, p1, 0x6

    .line 120
    .line 121
    and-int/lit8 v5, v5, 0x3f

    .line 122
    .line 123
    or-int/2addr p1, v5

    .line 124
    int-to-char p1, p1

    .line 125
    aput-char p1, v0, v2

    .line 126
    .line 127
    move p1, v6

    .line 128
    move v2, v7

    .line 129
    goto :goto_2

    .line 130
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->a()Lcom/google/android/gms/internal/measurement/z6;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    throw p0

    .line 135
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->a()Lcom/google/android/gms/internal/measurement/z6;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    throw p0

    .line 140
    :cond_a
    const/16 v7, -0x10

    .line 141
    .line 142
    if-ge p1, v7, :cond_f

    .line 143
    .line 144
    add-int/lit8 v7, v1, -0x1

    .line 145
    .line 146
    if-ge v5, v7, :cond_e

    .line 147
    .line 148
    add-int/lit8 v7, v5, 0x1

    .line 149
    .line 150
    add-int/lit8 v8, v7, 0x1

    .line 151
    .line 152
    add-int/lit8 v9, v2, 0x1

    .line 153
    .line 154
    aget-byte v5, p0, v5

    .line 155
    .line 156
    aget-byte v7, p0, v7

    .line 157
    .line 158
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/p5;->h(B)Z

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-nez v10, :cond_d

    .line 163
    .line 164
    const/16 v10, -0x60

    .line 165
    .line 166
    if-ne p1, v6, :cond_b

    .line 167
    .line 168
    if-lt v5, v10, :cond_d

    .line 169
    .line 170
    const/16 p1, -0x20

    .line 171
    .line 172
    :cond_b
    const/16 v6, -0x13

    .line 173
    .line 174
    if-ne p1, v6, :cond_c

    .line 175
    .line 176
    if-ge v5, v10, :cond_d

    .line 177
    .line 178
    const/16 p1, -0x13

    .line 179
    .line 180
    :cond_c
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/p5;->h(B)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-nez v6, :cond_d

    .line 185
    .line 186
    and-int/lit8 p1, p1, 0xf

    .line 187
    .line 188
    shl-int/lit8 p1, p1, 0xc

    .line 189
    .line 190
    and-int/lit8 v5, v5, 0x3f

    .line 191
    .line 192
    shl-int/lit8 v5, v5, 0x6

    .line 193
    .line 194
    or-int/2addr p1, v5

    .line 195
    and-int/lit8 v5, v7, 0x3f

    .line 196
    .line 197
    or-int/2addr p1, v5

    .line 198
    int-to-char p1, p1

    .line 199
    aput-char p1, v0, v2

    .line 200
    .line 201
    move p1, v8

    .line 202
    move v2, v9

    .line 203
    goto/16 :goto_2

    .line 204
    .line 205
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->a()Lcom/google/android/gms/internal/measurement/z6;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    throw p0

    .line 210
    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->a()Lcom/google/android/gms/internal/measurement/z6;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    throw p0

    .line 215
    :cond_f
    add-int/lit8 v6, v1, -0x2

    .line 216
    .line 217
    if-ge v5, v6, :cond_11

    .line 218
    .line 219
    add-int/lit8 v6, v5, 0x1

    .line 220
    .line 221
    add-int/lit8 v7, v6, 0x1

    .line 222
    .line 223
    add-int/lit8 v8, v7, 0x1

    .line 224
    .line 225
    aget-byte v5, p0, v5

    .line 226
    .line 227
    aget-byte v6, p0, v6

    .line 228
    .line 229
    aget-byte v7, p0, v7

    .line 230
    .line 231
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/p5;->h(B)Z

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    if-nez v9, :cond_10

    .line 236
    .line 237
    shl-int/lit8 v9, p1, 0x1c

    .line 238
    .line 239
    add-int/lit8 v10, v5, 0x70

    .line 240
    .line 241
    add-int/2addr v10, v9

    .line 242
    shr-int/lit8 v9, v10, 0x1e

    .line 243
    .line 244
    if-nez v9, :cond_10

    .line 245
    .line 246
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/p5;->h(B)Z

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    if-nez v9, :cond_10

    .line 251
    .line 252
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/p5;->h(B)Z

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    if-nez v9, :cond_10

    .line 257
    .line 258
    and-int/lit8 p1, p1, 0x7

    .line 259
    .line 260
    shl-int/lit8 p1, p1, 0x12

    .line 261
    .line 262
    and-int/lit8 v5, v5, 0x3f

    .line 263
    .line 264
    shl-int/lit8 v5, v5, 0xc

    .line 265
    .line 266
    or-int/2addr p1, v5

    .line 267
    and-int/lit8 v5, v6, 0x3f

    .line 268
    .line 269
    shl-int/lit8 v5, v5, 0x6

    .line 270
    .line 271
    or-int/2addr p1, v5

    .line 272
    and-int/lit8 v5, v7, 0x3f

    .line 273
    .line 274
    or-int/2addr p1, v5

    .line 275
    ushr-int/lit8 v5, p1, 0xa

    .line 276
    .line 277
    const v6, 0xd7c0

    .line 278
    .line 279
    .line 280
    add-int/2addr v5, v6

    .line 281
    int-to-char v5, v5

    .line 282
    aput-char v5, v0, v2

    .line 283
    .line 284
    add-int/lit8 v5, v2, 0x1

    .line 285
    .line 286
    and-int/lit16 p1, p1, 0x3ff

    .line 287
    .line 288
    const v6, 0xdc00

    .line 289
    .line 290
    .line 291
    add-int/2addr p1, v6

    .line 292
    int-to-char p1, p1

    .line 293
    aput-char p1, v0, v5

    .line 294
    .line 295
    add-int/lit8 v2, v2, 0x2

    .line 296
    .line 297
    move p1, v8

    .line 298
    goto/16 :goto_2

    .line 299
    .line 300
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->a()Lcom/google/android/gms/internal/measurement/z6;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    throw p0

    .line 305
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->a()Lcom/google/android/gms/internal/measurement/z6;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    throw p0

    .line 310
    :cond_12
    new-instance p0, Ljava/lang/String;

    .line 311
    .line 312
    invoke-direct {p0, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 313
    .line 314
    .line 315
    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    .line 316
    .line 317
    return v1

    .line 318
    :cond_13
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 319
    .line 320
    const/4 p2, 0x3

    .line 321
    new-array p2, p2, [Ljava/lang/Object;

    .line 322
    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    aput-object v1, p2, v3

    .line 328
    .line 329
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    aput-object p1, p2, v4

    .line 334
    .line 335
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    const/4 v0, 0x2

    .line 340
    aput-object p1, p2, v0

    .line 341
    .line 342
    const-string p1, "buffer length=%d, index=%d, size=%d"

    .line 343
    .line 344
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw p0

    .line 352
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->b()Lcom/google/android/gms/internal/measurement/z6;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    throw p0
.end method

.method public static l(I[BIILcom/google/android/gms/internal/measurement/p8;Lcom/google/android/gms/internal/measurement/o5;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/z6;
        }
    .end annotation

    .line 1
    ushr-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    and-int/lit8 v0, p0, 0x7

    .line 8
    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_9

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_5

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    const/4 p3, 0x5

    .line 21
    if-ne v0, p3, :cond_0

    .line 22
    .line 23
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/p5;->c(I[B)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/p8;->c(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p2, p2, 0x4

    .line 35
    .line 36
    return p2

    .line 37
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/measurement/z6;

    .line 38
    .line 39
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/z6;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    and-int/lit8 v0, p0, -0x8

    .line 44
    .line 45
    or-int/lit8 v0, v0, 0x4

    .line 46
    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/measurement/p8;->b()Lcom/google/android/gms/internal/measurement/p8;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const/4 v1, 0x0

    .line 52
    :goto_0
    if-ge p2, p3, :cond_3

    .line 53
    .line 54
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget p2, p5, Lcom/google/android/gms/internal/measurement/o5;->a:I

    .line 59
    .line 60
    move v1, p2

    .line 61
    if-ne p2, v0, :cond_2

    .line 62
    .line 63
    move p2, v3

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v2, p1

    .line 66
    move v4, p3

    .line 67
    move-object v5, v7

    .line 68
    move-object v6, p5

    .line 69
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/p5;->l(I[BIILcom/google/android/gms/internal/measurement/p8;Lcom/google/android/gms/internal/measurement/o5;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    move v8, v1

    .line 74
    move v1, p2

    .line 75
    move p2, v8

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    .line 78
    .line 79
    if-ne v1, v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p4, p0, v7}, Lcom/google/android/gms/internal/measurement/p8;->c(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return p2

    .line 85
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->c()Lcom/google/android/gms/internal/measurement/z6;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    throw p0

    .line 90
    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    iget p3, p5, Lcom/google/android/gms/internal/measurement/o5;->a:I

    .line 95
    .line 96
    if-ltz p3, :cond_8

    .line 97
    .line 98
    array-length p5, p1

    .line 99
    sub-int/2addr p5, p2

    .line 100
    if-gt p3, p5, :cond_7

    .line 101
    .line 102
    if-nez p3, :cond_6

    .line 103
    .line 104
    sget-object p1, Lcom/google/android/gms/internal/measurement/v5;->b:Lcom/google/android/gms/internal/measurement/u5;

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/v5;->A([BII)Lcom/google/android/gms/internal/measurement/u5;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :goto_2
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/p8;->c(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    add-int/2addr p2, p3

    .line 115
    return p2

    .line 116
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    throw p0

    .line 121
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->b()Lcom/google/android/gms/internal/measurement/z6;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    throw p0

    .line 126
    :cond_9
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/p5;->q(I[B)J

    .line 127
    .line 128
    .line 129
    move-result-wide v0

    .line 130
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/p8;->c(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    add-int/lit8 p2, p2, 0x8

    .line 138
    .line 139
    return p2

    .line 140
    :cond_a
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iget-wide p2, p5, Lcom/google/android/gms/internal/measurement/o5;->b:J

    .line 145
    .line 146
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/measurement/p8;->c(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    return p1

    .line 154
    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/measurement/z6;

    .line 155
    .line 156
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/z6;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0
.end method

.method public static m([BILcom/google/android/gms/internal/measurement/o5;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lcom/google/android/gms/internal/measurement/o5;->a:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/measurement/p5;->n(I[BILcom/google/android/gms/internal/measurement/o5;)I

    move-result p0

    return p0
.end method

.method public static n(I[BILcom/google/android/gms/internal/measurement/o5;)I
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    shl-int/lit8 p1, p2, 0x7

    :goto_0
    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/o5;->a:I

    return v0

    :cond_0
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    :goto_1
    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/o5;->a:I

    return p2

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    shl-int/lit8 p1, p2, 0x15

    goto :goto_0

    :cond_2
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    goto :goto_1

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_2
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_2

    :cond_4
    iput p0, p3, Lcom/google/android/gms/internal/measurement/o5;->a:I

    return v0
.end method

.method public static o(I[BIILcom/google/android/gms/internal/measurement/w6;Lcom/google/android/gms/internal/measurement/o5;)I
    .locals 2

    check-cast p4, Lcom/google/android/gms/internal/measurement/r6;

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result p2

    :goto_0
    iget v0, p5, Lcom/google/android/gms/internal/measurement/o5;->a:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/measurement/r6;->l(I)V

    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result p2

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static p([BILcom/google/android/gms/internal/measurement/o5;)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    iput-wide v1, p2, Lcom/google/android/gms/internal/measurement/o5;->b:J

    return v0

    :cond_0
    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x7

    :goto_0
    if-gez v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    :cond_1
    iput-wide v1, p2, Lcom/google/android/gms/internal/measurement/o5;->b:J

    return p1
.end method

.method public static q(I[B)J
    .locals 7

    aget-byte v0, p1, p0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p0, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x5

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x6

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p0, p0, 0x7

    aget-byte p0, p1, p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method
