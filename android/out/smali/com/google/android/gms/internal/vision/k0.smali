.class public final Lcom/google/android/gms/internal/vision/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I[B)I
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

.method public static b(I[BIILcom/google/android/gms/internal/vision/l0;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/q1;
        }
    .end annotation

    .line 1
    ushr-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    and-int/lit8 v0, p0, 0x7

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_5

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_4

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x5

    .line 21
    if-ne v0, p0, :cond_0

    .line 22
    .line 23
    add-int/lit8 p2, p2, 0x4

    .line 24
    .line 25
    return p2

    .line 26
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/vision/q1;

    .line 27
    .line 28
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/q1;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    and-int/lit8 p0, p0, -0x8

    .line 33
    .line 34
    or-int/lit8 p0, p0, 0x4

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_0
    if-ge p2, p3, :cond_2

    .line 38
    .line 39
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iget v0, p4, Lcom/google/android/gms/internal/vision/l0;->a:I

    .line 44
    .line 45
    if-eq v0, p0, :cond_2

    .line 46
    .line 47
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/vision/k0;->b(I[BIILcom/google/android/gms/internal/vision/l0;)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    if-gt p2, p3, :cond_3

    .line 53
    .line 54
    if-ne v0, p0, :cond_3

    .line 55
    .line 56
    return p2

    .line 57
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->c()Lcom/google/android/gms/internal/vision/q1;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    throw p0

    .line 62
    :cond_4
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    iget p1, p4, Lcom/google/android/gms/internal/vision/l0;->a:I

    .line 67
    .line 68
    add-int/2addr p0, p1

    .line 69
    return p0

    .line 70
    :cond_5
    add-int/lit8 p2, p2, 0x8

    .line 71
    .line 72
    return p2

    .line 73
    :cond_6
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    return p0

    .line 78
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/vision/q1;

    .line 79
    .line 80
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/q1;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public static c(I[BIILcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/l0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/android/gms/internal/vision/r1<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/l0;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/android/gms/internal/vision/k1;

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result p2

    :goto_0
    iget v0, p5, Lcom/google/android/gms/internal/vision/l0;->a:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/vision/k1;->l(I)V

    if-ge p2, p3, :cond_0

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne p0, v1, :cond_0

    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result p2

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static d(I[BIILcom/google/android/gms/internal/vision/q3;Lcom/google/android/gms/internal/vision/l0;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/q1;
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
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/vision/k0;->a(I[B)I

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
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/vision/q3;->a(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p2, p2, 0x4

    .line 35
    .line 36
    return p2

    .line 37
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/vision/q1;

    .line 38
    .line 39
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/q1;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/vision/q3;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/q3;-><init>()V

    .line 46
    .line 47
    .line 48
    and-int/lit8 v1, p0, -0x8

    .line 49
    .line 50
    or-int/lit8 v1, v1, 0x4

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    :goto_0
    if-ge p2, p3, :cond_3

    .line 54
    .line 55
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iget p2, p5, Lcom/google/android/gms/internal/vision/l0;->a:I

    .line 60
    .line 61
    move v2, p2

    .line 62
    if-eq p2, v1, :cond_2

    .line 63
    .line 64
    move-object v3, p1

    .line 65
    move v5, p3

    .line 66
    move-object v6, v0

    .line 67
    move-object v7, p5

    .line 68
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/k0;->d(I[BIILcom/google/android/gms/internal/vision/q3;Lcom/google/android/gms/internal/vision/l0;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    move v8, v2

    .line 73
    move v2, p2

    .line 74
    move p2, v8

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move p2, v4

    .line 77
    :cond_3
    if-gt p2, p3, :cond_4

    .line 78
    .line 79
    if-ne v2, v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p4, p0, v0}, Lcom/google/android/gms/internal/vision/q3;->a(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return p2

    .line 85
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->c()Lcom/google/android/gms/internal/vision/q1;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    throw p0

    .line 90
    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    iget p3, p5, Lcom/google/android/gms/internal/vision/l0;->a:I

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
    sget-object p1, Lcom/google/android/gms/internal/vision/p0;->b:Lcom/google/android/gms/internal/vision/s0;

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/vision/p0;->o([BII)Lcom/google/android/gms/internal/vision/s0;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :goto_1
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/vision/q3;->a(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    add-int/2addr p2, p3

    .line 115
    return p2

    .line 116
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    throw p0

    .line 121
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->b()Lcom/google/android/gms/internal/vision/q1;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    throw p0

    .line 126
    :cond_9
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/vision/k0;->l(I[B)J

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
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/vision/q3;->a(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    add-int/lit8 p2, p2, 0x8

    .line 138
    .line 139
    return p2

    .line 140
    :cond_a
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iget-wide p2, p5, Lcom/google/android/gms/internal/vision/l0;->b:J

    .line 145
    .line 146
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/vision/q3;->a(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    return p1

    .line 154
    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/vision/q1;

    .line 155
    .line 156
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/q1;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0
.end method

.method public static e(I[BILcom/google/android/gms/internal/vision/l0;)I
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    shl-int/lit8 p1, p2, 0x7

    :goto_0
    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/vision/l0;->a:I

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

    iput p0, p3, Lcom/google/android/gms/internal/vision/l0;->a:I

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

    if-ltz p2, :cond_4

    iput p0, p3, Lcom/google/android/gms/internal/vision/l0;->a:I

    return v0

    :cond_4
    move p2, v0

    goto :goto_2
.end method

.method public static f(Lcom/google/android/gms/internal/vision/d3;I[BIILcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/l0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/d3<",
            "*>;I[BII",
            "Lcom/google/android/gms/internal/vision/r1<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/l0;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/vision/k0;->h(Lcom/google/android/gms/internal/vision/d3;[BIILcom/google/android/gms/internal/vision/l0;)I

    move-result p3

    :goto_0
    iget-object v0, p6, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_0

    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    iget v1, p6, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne p1, v1, :cond_0

    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/vision/k0;->h(Lcom/google/android/gms/internal/vision/d3;[BIILcom/google/android/gms/internal/vision/l0;)I

    move-result p3

    goto :goto_0

    :cond_0
    return p3
.end method

.method public static g(Lcom/google/android/gms/internal/vision/d3;[BIIILcom/google/android/gms/internal/vision/l0;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p0, Lcom/google/android/gms/internal/vision/r2;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/r2;->h()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/r2;->k(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/l0;)I

    move-result p1

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/r2;->a(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    return p1
.end method

.method public static h(Lcom/google/android/gms/internal/vision/d3;[BIILcom/google/android/gms/internal/vision/l0;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/vision/k0;->e(I[BILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    iget p2, p4, Lcom/google/android/gms/internal/vision/l0;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/d3;->h()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/d3;->g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/l0;)V

    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/vision/d3;->a(Ljava/lang/Object;)V

    iput-object p3, p4, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    return p2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object p0

    throw p0
.end method

.method public static i([BILcom/google/android/gms/internal/vision/l0;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lcom/google/android/gms/internal/vision/l0;->a:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/vision/k0;->e(I[BILcom/google/android/gms/internal/vision/l0;)I

    move-result p0

    return p0
.end method

.method public static j([BILcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/l0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/vision/r1<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/l0;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/vision/k1;

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result p1

    iget v0, p3, Lcom/google/android/gms/internal/vision/l0;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result p1

    iget v1, p3, Lcom/google/android/gms/internal/vision/l0;->a:I

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/vision/k1;->l(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object p0

    throw p0
.end method

.method public static k([BILcom/google/android/gms/internal/vision/l0;)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    iput-wide v1, p2, Lcom/google/android/gms/internal/vision/l0;->b:J

    return v0

    :cond_0
    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

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
    iput-wide v1, p2, Lcom/google/android/gms/internal/vision/l0;->b:J

    return p1
.end method

.method public static l(I[B)J
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

.method public static m(I[B)D
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/k0;->l(I[B)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static n([BILcom/google/android/gms/internal/vision/l0;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/q1;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/vision/m1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->b()Lcom/google/android/gms/internal/vision/q1;

    move-result-object p0

    throw p0
.end method

.method public static o(I[B)F
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/k0;->a(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static p([BILcom/google/android/gms/internal/vision/l0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/q1;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p2, Lcom/google/android/gms/internal/vision/l0;->a:I

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    iput-object p0, p2, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/vision/w3;->a:Lcom/google/android/gms/internal/vision/m0;

    .line 17
    .line 18
    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gms/internal/vision/m0;->e([BII)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iput-object p0, p2, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    .line 23
    .line 24
    add-int/2addr p1, v0

    .line 25
    return p1

    .line 26
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->b()Lcom/google/android/gms/internal/vision/q1;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    throw p0
.end method

.method public static q([BILcom/google/android/gms/internal/vision/l0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/q1;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/vision/p0;->b:Lcom/google/android/gms/internal/vision/s0;

    iput-object p0, p2, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/vision/p0;->o([BII)Lcom/google/android/gms/internal/vision/s0;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->b()Lcom/google/android/gms/internal/vision/q1;

    move-result-object p0

    throw p0
.end method
