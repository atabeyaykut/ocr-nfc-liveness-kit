.class public final Led/g0;
.super Led/h;
.source "SourceFile"


# instance fields
.field public final transient e:[[B

.field public final transient f:[I


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    .line 1
    sget-object v0, Led/h;->d:Led/h;

    .line 2
    .line 3
    iget-object v0, v0, Led/h;->a:[B

    .line 4
    .line 5
    invoke-direct {p0, v0}, Led/h;-><init>([B)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Led/g0;->e:[[B

    .line 9
    .line 10
    iput-object p2, p0, Led/g0;->f:[I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final A(II[BI)Z
    .locals 7

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-ltz p1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Led/g0;->r()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v1, p4

    .line 14
    if-gt p1, v1, :cond_4

    .line 15
    .line 16
    if-ltz p2, :cond_4

    .line 17
    .line 18
    array-length v1, p3

    .line 19
    sub-int/2addr v1, p4

    .line 20
    if-le p2, v1, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    add-int/2addr p4, p1

    .line 24
    invoke-static {p0, p1}, La6/a;->y(Led/g0;I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    if-ge p1, p4, :cond_3

    .line 29
    .line 30
    iget-object v2, p0, Led/g0;->f:[I

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    add-int/lit8 v3, v1, -0x1

    .line 37
    .line 38
    aget v3, v2, v3

    .line 39
    .line 40
    :goto_1
    aget v4, v2, v1

    .line 41
    .line 42
    sub-int/2addr v4, v3

    .line 43
    iget-object v5, p0, Led/g0;->e:[[B

    .line 44
    .line 45
    array-length v6, v5

    .line 46
    add-int/2addr v6, v1

    .line 47
    aget v2, v2, v6

    .line 48
    .line 49
    add-int/2addr v4, v3

    .line 50
    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    sub-int/2addr v4, p1

    .line 55
    sub-int v3, p1, v3

    .line 56
    .line 57
    add-int/2addr v3, v2

    .line 58
    aget-object v2, v5, v1

    .line 59
    .line 60
    invoke-static {v3, v2, p2, p3, v4}, La6/a;->e(I[BI[BI)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    add-int/2addr p2, v4

    .line 68
    add-int/2addr p1, v4

    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 v0, 0x1

    .line 73
    :cond_4
    :goto_2
    return v0
.end method

.method public final B(ILed/h;I)Z
    .locals 8

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-ltz p1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Led/g0;->r()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v1, p3

    .line 14
    if-le p1, v1, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    add-int/2addr p3, p1

    .line 18
    invoke-static {p0, p1}, La6/a;->y(Led/g0;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge p1, p3, :cond_3

    .line 24
    .line 25
    iget-object v3, p0, Led/g0;->f:[I

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v4, v1, -0x1

    .line 32
    .line 33
    aget v4, v3, v4

    .line 34
    .line 35
    :goto_1
    aget v5, v3, v1

    .line 36
    .line 37
    sub-int/2addr v5, v4

    .line 38
    iget-object v6, p0, Led/g0;->e:[[B

    .line 39
    .line 40
    array-length v7, v6

    .line 41
    add-int/2addr v7, v1

    .line 42
    aget v3, v3, v7

    .line 43
    .line 44
    add-int/2addr v5, v4

    .line 45
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    sub-int/2addr v5, p1

    .line 50
    sub-int v4, p1, v4

    .line 51
    .line 52
    add-int/2addr v4, v3

    .line 53
    aget-object v3, v6, v1

    .line 54
    .line 55
    invoke-virtual {p2, v2, v4, v3, v5}, Led/h;->A(II[BI)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    add-int/2addr v2, v5

    .line 63
    add-int/2addr p1, v5

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 v0, 0x1

    .line 68
    :cond_4
    :goto_2
    return v0
.end method

.method public final C(II)Led/h;
    .locals 12

    .line 1
    invoke-static {p0, p2}, La6/a;->x(Led/h;I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_a

    .line 12
    .line 13
    invoke-virtual {p0}, Led/g0;->r()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-gt p2, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    :goto_1
    const-string v2, "endIndex="

    .line 23
    .line 24
    if-eqz v1, :cond_9

    .line 25
    .line 26
    sub-int v1, p2, p1

    .line 27
    .line 28
    if-ltz v1, :cond_2

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    const/4 v3, 0x0

    .line 33
    :goto_2
    if-eqz v3, :cond_8

    .line 34
    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Led/g0;->r()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ne p2, v2, :cond_3

    .line 42
    .line 43
    move-object p1, p0

    .line 44
    goto :goto_6

    .line 45
    :cond_3
    if-ne p1, p2, :cond_4

    .line 46
    .line 47
    sget-object p1, Led/h;->d:Led/h;

    .line 48
    .line 49
    goto :goto_6

    .line 50
    :cond_4
    invoke-static {p0, p1}, La6/a;->y(Led/g0;I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    add-int/lit8 p2, p2, -0x1

    .line 55
    .line 56
    invoke-static {p0, p2}, La6/a;->y(Led/g0;I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    add-int/lit8 v3, p2, 0x1

    .line 61
    .line 62
    iget-object v4, p0, Led/g0;->e:[[B

    .line 63
    .line 64
    invoke-static {v4, v2, v3}, Lm9/i;->l0([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, [[B

    .line 69
    .line 70
    array-length v5, v3

    .line 71
    mul-int/lit8 v5, v5, 0x2

    .line 72
    .line 73
    new-array v5, v5, [I

    .line 74
    .line 75
    iget-object v6, p0, Led/g0;->f:[I

    .line 76
    .line 77
    if-gt v2, p2, :cond_6

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    move v8, v2

    .line 81
    :goto_3
    add-int/lit8 v9, v8, 0x1

    .line 82
    .line 83
    aget v10, v6, v8

    .line 84
    .line 85
    sub-int/2addr v10, p1

    .line 86
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    aput v10, v5, v7

    .line 91
    .line 92
    add-int/lit8 v10, v7, 0x1

    .line 93
    .line 94
    array-length v11, v3

    .line 95
    add-int/2addr v7, v11

    .line 96
    array-length v11, v4

    .line 97
    add-int/2addr v11, v8

    .line 98
    aget v11, v6, v11

    .line 99
    .line 100
    aput v11, v5, v7

    .line 101
    .line 102
    if-ne v8, p2, :cond_5

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    move v8, v9

    .line 106
    move v7, v10

    .line 107
    goto :goto_3

    .line 108
    :cond_6
    :goto_4
    if-nez v2, :cond_7

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 112
    .line 113
    aget v0, v6, v2

    .line 114
    .line 115
    :goto_5
    array-length p2, v3

    .line 116
    aget v1, v5, p2

    .line 117
    .line 118
    sub-int/2addr p1, v0

    .line 119
    add-int/2addr p1, v1

    .line 120
    aput p1, v5, p2

    .line 121
    .line 122
    new-instance p1, Led/g0;

    .line 123
    .line 124
    invoke-direct {p1, v3, v5}, Led/g0;-><init>([[B[I)V

    .line 125
    .line 126
    .line 127
    :goto_6
    return-object p1

    .line 128
    :cond_8
    const-string v0, " < beginIndex="

    .line 129
    .line 130
    invoke-static {v2, p2, v0, p1}, Landroidx/constraintlayout/core/a;->c(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p2

    .line 144
    :cond_9
    const-string p1, " > length("

    .line 145
    .line 146
    invoke-static {v2, p2, p1}, Landroidx/appcompat/widget/v;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p0}, Led/g0;->r()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const/16 p2, 0x29

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p2

    .line 176
    :cond_a
    const-string p2, "beginIndex="

    .line 177
    .line 178
    const-string v0, " < 0"

    .line 179
    .line 180
    invoke-static {p2, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p2
.end method

.method public final F()Led/h;
    .locals 1

    invoke-virtual {p0}, Led/g0;->K()Led/h;

    move-result-object v0

    invoke-virtual {v0}, Led/h;->F()Led/h;

    move-result-object v0

    return-object v0
.end method

.method public final H(Led/e;I)V
    .locals 10

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    add-int v1, v0, p2

    .line 8
    .line 9
    invoke-static {p0, v0}, La6/a;->y(Led/g0;I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v1, :cond_2

    .line 15
    .line 16
    iget-object v4, p0, Led/g0;->f:[I

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v5, v2, -0x1

    .line 23
    .line 24
    aget v5, v4, v5

    .line 25
    .line 26
    :goto_1
    aget v6, v4, v2

    .line 27
    .line 28
    sub-int/2addr v6, v5

    .line 29
    iget-object v7, p0, Led/g0;->e:[[B

    .line 30
    .line 31
    array-length v8, v7

    .line 32
    add-int/2addr v8, v2

    .line 33
    aget v4, v4, v8

    .line 34
    .line 35
    add-int/2addr v6, v5

    .line 36
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    sub-int/2addr v6, v3

    .line 41
    sub-int v5, v3, v5

    .line 42
    .line 43
    add-int/2addr v5, v4

    .line 44
    aget-object v4, v7, v2

    .line 45
    .line 46
    new-instance v7, Led/e0;

    .line 47
    .line 48
    add-int v8, v5, v6

    .line 49
    .line 50
    const/4 v9, 0x1

    .line 51
    invoke-direct {v7, v4, v5, v8, v9}, Led/e0;-><init>([BIIZ)V

    .line 52
    .line 53
    .line 54
    iget-object v4, p1, Led/e;->a:Led/e0;

    .line 55
    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    iput-object v7, v7, Led/e0;->g:Led/e0;

    .line 59
    .line 60
    iput-object v7, v7, Led/e0;->f:Led/e0;

    .line 61
    .line 62
    iput-object v7, p1, Led/e;->a:Led/e0;

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    iget-object v4, v4, Led/e0;->g:Led/e0;

    .line 66
    .line 67
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v7}, Led/e0;->b(Led/e0;)V

    .line 71
    .line 72
    .line 73
    :goto_2
    add-int/2addr v3, v6

    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-wide v0, p1, Led/e;->b:J

    .line 78
    .line 79
    int-to-long v2, p2

    .line 80
    add-long/2addr v0, v2

    .line 81
    iput-wide v0, p1, Led/e;->b:J

    .line 82
    .line 83
    return-void
.end method

.method public final J()[B
    .locals 10

    .line 1
    invoke-virtual {p0}, Led/g0;->r()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iget-object v1, p0, Led/g0;->e:[[B

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    add-int v6, v2, v3

    .line 16
    .line 17
    iget-object v7, p0, Led/g0;->f:[I

    .line 18
    .line 19
    aget v6, v7, v6

    .line 20
    .line 21
    aget v7, v7, v3

    .line 22
    .line 23
    aget-object v8, v1, v3

    .line 24
    .line 25
    sub-int v4, v7, v4

    .line 26
    .line 27
    add-int v9, v6, v4

    .line 28
    .line 29
    invoke-static {v5, v8, v6, v0, v9}, Lm9/i;->h0(I[BI[BI)V

    .line 30
    .line 31
    .line 32
    add-int/2addr v5, v4

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    move v4, v7

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object v0
.end method

.method public final K()Led/h;
    .locals 2

    new-instance v0, Led/h;

    invoke-virtual {p0}, Led/g0;->J()[B

    move-result-object v1

    invoke-direct {v0, v1}, Led/h;-><init>([B)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Led/h;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Led/h;

    .line 10
    .line 11
    invoke-virtual {p1}, Led/h;->r()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0}, Led/g0;->r()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Led/g0;->r()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, v1, p1, v0}, Led/g0;->B(ILed/h;I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    :goto_0
    const/4 v1, 0x1

    .line 32
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget v0, p0, Led/h;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Led/g0;->e:[[B

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    add-int v5, v1, v2

    .line 15
    .line 16
    iget-object v6, p0, Led/g0;->f:[I

    .line 17
    .line 18
    aget v5, v6, v5

    .line 19
    .line 20
    aget v6, v6, v2

    .line 21
    .line 22
    aget-object v7, v0, v2

    .line 23
    .line 24
    sub-int v4, v6, v4

    .line 25
    .line 26
    add-int/2addr v4, v5

    .line 27
    :goto_1
    if-ge v5, v4, :cond_1

    .line 28
    .line 29
    mul-int/lit8 v3, v3, 0x1f

    .line 30
    .line 31
    aget-byte v8, v7, v5

    .line 32
    .line 33
    add-int/2addr v3, v8

    .line 34
    add-int/lit8 v5, v5, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    move v4, v6

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iput v3, p0, Led/h;->b:I

    .line 42
    .line 43
    move v0, v3

    .line 44
    :goto_2
    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Led/g0;->K()Led/h;

    move-result-object v0

    invoke-virtual {v0}, Led/h;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q(Ljava/lang/String;)Led/h;
    .locals 7

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, p0, Led/g0;->e:[[B

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int v4, v1, v2

    iget-object v5, p0, Led/g0;->f:[I

    aget v4, v5, v4

    aget v5, v5, v2

    aget-object v6, v0, v2

    sub-int v3, v5, v3

    invoke-virtual {p1, v6, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    new-instance v0, Led/h;

    const-string v1, "digestBytes"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Led/h;-><init>([B)V

    return-object v0
.end method

.method public final r()I
    .locals 2

    iget-object v0, p0, Led/g0;->e:[[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Led/g0;->f:[I

    aget v0, v1, v0

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Led/g0;->K()Led/h;

    move-result-object v0

    invoke-virtual {v0}, Led/h;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Led/g0;->K()Led/h;

    move-result-object v0

    invoke-virtual {v0}, Led/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(I[B)I
    .locals 1

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Led/g0;->K()Led/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Led/h;->u(I[B)I

    move-result p1

    return p1
.end method

.method public final w()[B
    .locals 1

    invoke-virtual {p0}, Led/g0;->J()[B

    move-result-object v0

    return-object v0
.end method

.method public final x(I)B
    .locals 9

    iget-object v0, p0, Led/g0;->e:[[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Led/g0;->f:[I

    aget v1, v2, v1

    int-to-long v3, v1

    int-to-long v5, p1

    const-wide/16 v7, 0x1

    invoke-static/range {v3 .. v8}, La6/a;->g(JJJ)V

    invoke-static {p0, p1}, La6/a;->y(Led/g0;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, -0x1

    aget v3, v2, v3

    :goto_0
    array-length v4, v0

    add-int/2addr v4, v1

    aget v2, v2, v4

    aget-object v0, v0, v1

    sub-int/2addr p1, v3

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public final y(I[B)I
    .locals 1

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Led/g0;->K()Led/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Led/h;->y(I[B)I

    move-result p1

    return p1
.end method
