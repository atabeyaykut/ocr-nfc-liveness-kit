.class public final Lcom/google/crypto/tink/shaded/protobuf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/e$a;
    }
.end annotation


# direct methods
.method public static A(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    :goto_0
    iget-wide v0, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->c(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/h0;->l(J)V

    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static B([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget v0, p2, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/z;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->d()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0
.end method

.method public static C(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
        }
    .end annotation

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-ltz v0, :cond_5

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/z;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_0
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v0

    :goto_1
    if-ge p2, p3, :cond_4

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v0

    iget v2, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-eq p0, v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-ltz v0, :cond_3

    if-nez v0, :cond_2

    :goto_2
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/z;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->d()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0

    :cond_4
    :goto_3
    return p2

    :cond_5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->d()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0
.end method

.method public static D(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
        }
    .end annotation

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-ltz v0, :cond_7

    const-string v1, ""

    if-nez v0, :cond_0

    :goto_0
    move v2, p2

    goto :goto_3

    :cond_0
    add-int v2, p2, v0

    invoke-static {p1, p2, v2}, Lcom/google/crypto/tink/shaded/protobuf/o1;->d([BII)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/z;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_1
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    if-ge v2, p3, :cond_5

    invoke-static {p1, v2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-eq p0, v0, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-ltz v0, :cond_4

    if-nez v0, :cond_2

    goto :goto_0

    :goto_3
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int v2, p2, v0

    invoke-static {p1, p2, v2}, Lcom/google/crypto/tink/shaded/protobuf/o1;->d([BII)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/z;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->a()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->d()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0

    :cond_5
    :goto_4
    return v2

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->a()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->d()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0
.end method

.method public static E([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p2, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

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
    iput-object p0, p2, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/o1;->a:Lcom/google/crypto/tink/shaded/protobuf/o1$b;

    .line 17
    .line 18
    invoke-virtual {v1, p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/o1$b;->a([BII)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iput-object p0, p2, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    .line 23
    .line 24
    add-int/2addr p1, v0

    .line 25
    return p1

    .line 26
    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->d()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    throw p0
.end method

.method public static F(I[BIILcom/google/crypto/tink/shaded/protobuf/k1;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
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
    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/e;->g(I[B)I

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
    invoke-virtual {p4, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/k1;->b(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p2, p2, 0x4

    .line 35
    .line 36
    return p2

    .line 37
    :cond_0
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 38
    .line 39
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/a0;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/k1;-><init>()V

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
    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iget p2, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 60
    .line 61
    move v2, p2

    .line 62
    if-ne p2, v1, :cond_2

    .line 63
    .line 64
    move p2, v4

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v3, p1

    .line 67
    move v5, p3

    .line 68
    move-object v6, v0

    .line 69
    move-object v7, p5

    .line 70
    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/e;->F(I[BIILcom/google/crypto/tink/shaded/protobuf/k1;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    move v8, v2

    .line 75
    move v2, p2

    .line 76
    move p2, v8

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    .line 79
    .line 80
    if-ne v2, v1, :cond_4

    .line 81
    .line 82
    invoke-virtual {p4, p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/k1;->b(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return p2

    .line 86
    :cond_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->e()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    throw p0

    .line 91
    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    iget p3, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 96
    .line 97
    if-ltz p3, :cond_8

    .line 98
    .line 99
    array-length p5, p1

    .line 100
    sub-int/2addr p5, p2

    .line 101
    if-gt p3, p5, :cond_7

    .line 102
    .line 103
    if-nez p3, :cond_6

    .line 104
    .line 105
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/i;->b:Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    invoke-static {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/i;->m([BII)Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    :goto_2
    invoke-virtual {p4, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/k1;->b(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    add-int/2addr p2, p3

    .line 116
    return p2

    .line 117
    :cond_7
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    throw p0

    .line 122
    :cond_8
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->d()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    throw p0

    .line 127
    :cond_9
    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/e;->i(I[B)J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p4, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/k1;->b(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    add-int/lit8 p2, p2, 0x8

    .line 139
    .line 140
    return p2

    .line 141
    :cond_a
    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iget-wide p2, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    .line 146
    .line 147
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p4, p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/k1;->b(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    return p1

    .line 155
    :cond_b
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 156
    .line 157
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/a0;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p0
.end method

.method public static G(I[BILcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    shl-int/lit8 p1, p2, 0x7

    :goto_0
    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

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

    iput p0, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

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
    iput p0, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    return v0
.end method

.method public static H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/e;->G(I[BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p0

    return p0
.end method

.method public static I(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/y;

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    :goto_0
    iget v0, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/shaded/protobuf/y;->l(I)V

    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 9

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    aget-byte p1, p0, p1

    .line 4
    .line 5
    int-to-long v1, p1

    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long p1, v1, v3

    .line 9
    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    iput-wide v1, p2, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const-wide/16 v3, 0x7f

    .line 16
    .line 17
    and-long/2addr v1, v3

    .line 18
    add-int/lit8 p1, v0, 0x1

    .line 19
    .line 20
    aget-byte v0, p0, v0

    .line 21
    .line 22
    and-int/lit8 v3, v0, 0x7f

    .line 23
    .line 24
    int-to-long v3, v3

    .line 25
    const/4 v5, 0x7

    .line 26
    shl-long/2addr v3, v5

    .line 27
    or-long/2addr v1, v3

    .line 28
    const/4 v3, 0x7

    .line 29
    :goto_0
    if-gez v0, :cond_1

    .line 30
    .line 31
    add-int/lit8 v0, p1, 0x1

    .line 32
    .line 33
    aget-byte p1, p0, p1

    .line 34
    .line 35
    add-int/2addr v3, v5

    .line 36
    and-int/lit8 v4, p1, 0x7f

    .line 37
    .line 38
    int-to-long v6, v4

    .line 39
    shl-long/2addr v6, v3

    .line 40
    or-long/2addr v1, v6

    .line 41
    move v8, v0

    .line 42
    move v0, p1

    .line 43
    move p1, v8

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput-wide v1, p2, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    .line 46
    .line 47
    return p1
.end method

.method public static K(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    :goto_0
    iget-wide v0, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    invoke-virtual {p4, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/h0;->l(J)V

    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static L(I[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
        }
    .end annotation

    .line 1
    ushr-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    and-int/lit8 v0, p0, 0x7

    .line 8
    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_6

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
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 27
    .line 28
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/a0;-><init>(Ljava/lang/String;)V

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
    if-ge p2, p3, :cond_3

    .line 38
    .line 39
    invoke-static {p1, p2, p4}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iget v0, p4, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 44
    .line 45
    if-ne v0, p0, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/e;->L(I[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    .line 54
    .line 55
    if-ne v0, p0, :cond_4

    .line 56
    .line 57
    return p2

    .line 58
    :cond_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->e()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    throw p0

    .line 63
    :cond_5
    invoke-static {p1, p2, p4}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    iget p1, p4, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 68
    .line 69
    add-int/2addr p0, p1

    .line 70
    return p0

    .line 71
    :cond_6
    add-int/lit8 p2, p2, 0x8

    .line 72
    .line 73
    return p2

    .line 74
    :cond_7
    invoke-static {p1, p2, p4}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    return p0

    .line 79
    :cond_8
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 80
    .line 81
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/a0;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public static a(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/f;

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/shaded/protobuf/f;->l(Z)V

    if-ge p2, p3, :cond_2

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return p2
.end method

.method public static b([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget v0, p2, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/i;->b:Lcom/google/crypto/tink/shaded/protobuf/i$f;

    iput-object p0, p2, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->m([BII)Lcom/google/crypto/tink/shaded/protobuf/i$f;

    move-result-object p0

    iput-object p0, p2, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->d()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0
.end method

.method public static c(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
        }
    .end annotation

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-ltz v0, :cond_6

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->m([BII)Lcom/google/crypto/tink/shaded/protobuf/i$f;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v0

    :goto_0
    if-ge p2, p3, :cond_4

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-ltz v0, :cond_3

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_2

    if-nez v0, :cond_0

    :goto_1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/i;->b:Lcom/google/crypto/tink/shaded/protobuf/i$f;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->d()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0

    :cond_4
    :goto_2
    return p2

    :cond_5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->d()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0
.end method

.method public static d(I[B)D
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/e;->i(I[B)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static e(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .line 1
    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/n;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/e;->i(I[B)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p4, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/n;->l(D)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 p2, p2, 0x8

    .line 15
    .line 16
    :goto_0
    if-ge p2, p3, :cond_1

    .line 17
    .line 18
    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v1, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 23
    .line 24
    if-eq p0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/e;->i(I[B)J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {p4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/n;->l(D)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 p2, v0, 0x8

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    return p2
.end method

.method public static f(I[BIILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/q0;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    ushr-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    iget-object v1, p6, Lcom/google/crypto/tink/shaded/protobuf/e$a;->d:Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/p$a;

    .line 9
    .line 10
    invoke-direct {v2, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/p$a;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p5, v1, Lcom/google/crypto/tink/shaded/protobuf/p;->a:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p5

    .line 19
    check-cast p5, Lcom/google/crypto/tink/shaded/protobuf/x$e;

    .line 20
    .line 21
    if-nez p5, :cond_0

    .line 22
    .line 23
    invoke-static {p4}, Lcom/google/crypto/tink/shaded/protobuf/t0;->p(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    move v0, p0

    .line 28
    move-object v1, p1

    .line 29
    move v2, p2

    .line 30
    move v3, p3

    .line 31
    move-object v5, p6

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/e;->F(I[BIILcom/google/crypto/tink/shaded/protobuf/k1;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_0
    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/x$c;

    .line 38
    .line 39
    iget-object p0, p4, Lcom/google/crypto/tink/shaded/protobuf/x$c;->extensions:Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 40
    .line 41
    iget-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->b:Z

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/t;->a()Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iput-object p0, p4, Lcom/google/crypto/tink/shaded/protobuf/x$c;->extensions:Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 50
    .line 51
    :cond_1
    const/4 p0, 0x0

    .line 52
    throw p0
.end method

.method public static g(I[B)I
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

.method public static h(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/y;

    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/e;->g(I[B)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/shaded/protobuf/y;->l(I)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/e;->g(I[B)I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/google/crypto/tink/shaded/protobuf/y;->l(I)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static i(I[B)J
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

.method public static j(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/e;->i(I[B)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/h0;->l(J)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/e;->i(I[B)J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/h0;->l(J)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static k(I[B)F
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/e;->g(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static l(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .line 1
    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/v;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/e;->g(I[B)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/shaded/protobuf/v;->l(F)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 p2, p2, 0x4

    .line 15
    .line 16
    :goto_0
    if-ge p2, p3, :cond_1

    .line 17
    .line 18
    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v1, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 23
    .line 24
    if-eq p0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/e;->g(I[B)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p4, p2}, Lcom/google/crypto/tink/shaded/protobuf/v;->l(F)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 p2, v0, 0x4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    return p2
.end method

.method public static m(Lcom/google/crypto/tink/shaded/protobuf/e1;[BIIILcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/t0;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/t0;->c()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/t0;->B(Ljava/lang/Object;[BIIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    invoke-virtual {p0, v7}, Lcom/google/crypto/tink/shaded/protobuf/t0;->e(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    return p1
.end method

.method public static n(Lcom/google/crypto/tink/shaded/protobuf/e1;I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/e1;",
            "I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, -0x8

    or-int/lit8 v0, v0, 0x4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/e;->m(Lcom/google/crypto/tink/shaded/protobuf/e1;[BIIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p3

    :goto_0
    iget-object v1, p6, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v3

    iget v1, p6, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, p2

    move v4, p4

    move v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/e;->m(Lcom/google/crypto/tink/shaded/protobuf/e1;[BIIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p3

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static o(Lcom/google/crypto/tink/shaded/protobuf/e1;[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    invoke-static {p2, p1, v0, p4}, Lcom/google/crypto/tink/shaded/protobuf/e;->G(I[BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v0

    iget p2, p4, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/e1;->c()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/e1;->h(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)V

    invoke-interface {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/e1;->e(Ljava/lang/Object;)V

    iput-object p3, p4, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    return p2

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0
.end method

.method public static p(Lcom/google/crypto/tink/shaded/protobuf/e1;I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/e1<",
            "*>;I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/crypto/tink/shaded/protobuf/e;->o(Lcom/google/crypto/tink/shaded/protobuf/e1;[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p3

    :goto_0
    iget-object v0, p6, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v0

    iget v1, p6, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/crypto/tink/shaded/protobuf/e;->o(Lcom/google/crypto/tink/shaded/protobuf/e1;[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p3

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static q([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/f;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget v0, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget-wide v1, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/f;->l(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    return p1

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0
.end method

.method public static r([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/n;

    .line 2
    .line 3
    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget p3, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 8
    .line 9
    add-int/2addr p3, p1

    .line 10
    :goto_0
    if-ge p1, p3, :cond_0

    .line 11
    .line 12
    invoke-static {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/e;->i(I[B)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/n;->l(D)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x8

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-ne p1, p3, :cond_1

    .line 27
    .line 28
    return p1

    .line 29
    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    throw p0
.end method

.method public static s([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/y;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget p3, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/e;->g(I[B)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/y;->l(I)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0
.end method

.method public static t([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget p3, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/e;->i(I[B)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/h0;->l(J)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0
.end method

.method public static u([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/v;

    .line 2
    .line 3
    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget p3, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 8
    .line 9
    add-int/2addr p3, p1

    .line 10
    :goto_0
    if-ge p1, p3, :cond_0

    .line 11
    .line 12
    invoke-static {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/e;->g(I[B)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/v;->l(F)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x4

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-ne p1, p3, :cond_1

    .line 27
    .line 28
    return p1

    .line 29
    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    throw p0
.end method

.method public static v([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/y;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget v0, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget v1, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->b(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/y;->l(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0
.end method

.method public static w([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget v0, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget-wide v1, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->c(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/h0;->l(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0
.end method

.method public static x([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/y;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget v0, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget v1, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/y;->l(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0
.end method

.method public static y([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget v0, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p1

    iget-wide v1, p3, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    invoke-virtual {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/h0;->l(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object p0

    throw p0
.end method

.method public static z(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/z$c<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/y;

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    :goto_0
    iget v0, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->b(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/shaded/protobuf/y;->l(I)V

    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result p2

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method
