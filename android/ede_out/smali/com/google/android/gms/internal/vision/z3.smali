.class public final Lcom/google/android/gms/internal/vision/z3;
.super Lcom/google/android/gms/internal/vision/m0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/m0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[BI)I
    .locals 7

    :goto_0
    if-ge p1, p3, :cond_0

    aget-byte v0, p2, p1

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-lt p1, p3, :cond_1

    return v0

    :cond_1
    :goto_1
    if-lt p1, p3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p2, p1

    if-gez p1, :cond_d

    const/4 v2, -0x1

    const/16 v3, -0x20

    const/16 v4, -0x41

    if-ge p1, v3, :cond_5

    if-lt v1, p3, :cond_3

    return p1

    :cond_3
    const/16 v3, -0x3e

    if-lt p1, v3, :cond_4

    add-int/lit8 p1, v1, 0x1

    aget-byte v1, p2, v1

    if-le v1, v4, :cond_1

    :cond_4
    return v2

    :cond_5
    const/16 v5, -0x10

    if-ge p1, v5, :cond_a

    add-int/lit8 v5, p3, -0x1

    if-lt v1, v5, :cond_6

    invoke-static {p2, v1, p3}, Lcom/google/android/gms/internal/vision/w3;->c([BII)I

    move-result p1

    return p1

    :cond_6
    add-int/lit8 v5, v1, 0x1

    aget-byte v1, p2, v1

    if-gt v1, v4, :cond_9

    const/16 v6, -0x60

    if-ne p1, v3, :cond_7

    if-lt v1, v6, :cond_9

    :cond_7
    const/16 v3, -0x13

    if-ne p1, v3, :cond_8

    if-ge v1, v6, :cond_9

    :cond_8
    add-int/lit8 p1, v5, 0x1

    aget-byte v1, p2, v5

    if-le v1, v4, :cond_1

    :cond_9
    return v2

    :cond_a
    add-int/lit8 v3, p3, -0x2

    if-lt v1, v3, :cond_b

    invoke-static {p2, v1, p3}, Lcom/google/android/gms/internal/vision/w3;->c([BII)I

    move-result p1

    return p1

    :cond_b
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p2, v1

    if-gt v1, v4, :cond_c

    shl-int/lit8 p1, p1, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v1, p1

    shr-int/lit8 p1, v1, 0x1e

    if-nez p1, :cond_c

    add-int/lit8 p1, v3, 0x1

    aget-byte v1, p2, v3

    if-gt v1, v4, :cond_c

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p2, p1

    if-le p1, v4, :cond_d

    :cond_c
    return v2

    :cond_d
    move p1, v1

    goto :goto_1
.end method

.method public final b(Ljava/lang/CharSequence;[BII)I
    .locals 7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p4, p3

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v0, :cond_0

    add-int v3, v1, p3

    if-ge v3, p4, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_0

    int-to-byte v2, v4

    aput-byte v2, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    add-int/2addr p3, v0

    return p3

    :cond_1
    add-int/2addr p3, v1

    :goto_1
    if-ge v1, v0, :cond_b

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_2

    if-ge p3, p4, :cond_2

    add-int/lit8 v4, p3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    goto :goto_2

    :cond_2
    const/16 v4, 0x800

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, p4, -0x2

    if-gt p3, v4, :cond_3

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p2, v4

    goto :goto_3

    :cond_3
    const v4, 0xdfff

    const v5, 0xd800

    if-lt v3, v5, :cond_4

    if-ge v4, v3, :cond_5

    :cond_4
    add-int/lit8 v6, p4, -0x3

    if-gt p3, v6, :cond_5

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    add-int/lit8 v4, p3, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    :goto_2
    move p3, v4

    goto :goto_3

    :cond_5
    add-int/lit8 v6, p4, -0x4

    if-gt p3, v6, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p2, v3

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    move v1, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    move v1, v4

    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/vision/y3;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/vision/y3;-><init>(II)V

    throw p1

    :cond_8
    if-gt v5, v3, :cond_a

    if-gt v3, v4, :cond_a

    add-int/lit8 p2, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_9

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/vision/y3;

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/vision/y3;-><init>(II)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p4, 0x25

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Failed writing "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p4, " at index "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return p3
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
    aget-byte v4, p1, p2

    .line 19
    .line 20
    if-ltz v4, :cond_0

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v5, 0x0

    .line 25
    :goto_1
    if-eqz v5, :cond_1

    .line 26
    .line 27
    add-int/lit8 p2, p2, 0x1

    .line 28
    .line 29
    add-int/lit8 v5, v3, 0x1

    .line 30
    .line 31
    int-to-char v4, v4

    .line 32
    aput-char v4, p3, v3

    .line 33
    .line 34
    move v3, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v8, v3

    .line 37
    :cond_2
    :goto_2
    if-ge p2, v0, :cond_e

    .line 38
    .line 39
    add-int/lit8 v3, p2, 0x1

    .line 40
    .line 41
    aget-byte p2, p1, p2

    .line 42
    .line 43
    if-ltz p2, :cond_3

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    const/4 v4, 0x0

    .line 48
    :goto_3
    if-eqz v4, :cond_5

    .line 49
    .line 50
    add-int/lit8 v4, v8, 0x1

    .line 51
    .line 52
    int-to-char p2, p2

    .line 53
    aput-char p2, p3, v8

    .line 54
    .line 55
    move p2, v3

    .line 56
    :goto_4
    move v8, v4

    .line 57
    if-ge p2, v0, :cond_2

    .line 58
    .line 59
    aget-byte v3, p1, p2

    .line 60
    .line 61
    if-ltz v3, :cond_4

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    goto :goto_5

    .line 65
    :cond_4
    const/4 v4, 0x0

    .line 66
    :goto_5
    if-eqz v4, :cond_2

    .line 67
    .line 68
    add-int/lit8 p2, p2, 0x1

    .line 69
    .line 70
    add-int/lit8 v4, v8, 0x1

    .line 71
    .line 72
    int-to-char v3, v3

    .line 73
    aput-char v3, p3, v8

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_5
    const/16 v4, -0x20

    .line 77
    .line 78
    if-ge p2, v4, :cond_6

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    goto :goto_6

    .line 82
    :cond_6
    const/4 v4, 0x0

    .line 83
    :goto_6
    if-eqz v4, :cond_9

    .line 84
    .line 85
    if-ge v3, v0, :cond_8

    .line 86
    .line 87
    add-int/lit8 v4, v3, 0x1

    .line 88
    .line 89
    aget-byte v3, p1, v3

    .line 90
    .line 91
    add-int/lit8 v5, v8, 0x1

    .line 92
    .line 93
    const/16 v6, -0x3e

    .line 94
    .line 95
    if-lt p2, v6, :cond_7

    .line 96
    .line 97
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/x3;->c(B)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_7

    .line 102
    .line 103
    and-int/lit8 p2, p2, 0x1f

    .line 104
    .line 105
    shl-int/lit8 p2, p2, 0x6

    .line 106
    .line 107
    and-int/lit8 v3, v3, 0x3f

    .line 108
    .line 109
    or-int/2addr p2, v3

    .line 110
    int-to-char p2, p2

    .line 111
    aput-char p2, p3, v8

    .line 112
    .line 113
    move p2, v4

    .line 114
    move v8, v5

    .line 115
    goto :goto_2

    .line 116
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->d()Lcom/google/android/gms/internal/vision/q1;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    throw p1

    .line 121
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->d()Lcom/google/android/gms/internal/vision/q1;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    throw p1

    .line 126
    :cond_9
    const/16 v4, -0x10

    .line 127
    .line 128
    if-ge p2, v4, :cond_a

    .line 129
    .line 130
    const/4 v4, 0x1

    .line 131
    goto :goto_7

    .line 132
    :cond_a
    const/4 v4, 0x0

    .line 133
    :goto_7
    if-eqz v4, :cond_c

    .line 134
    .line 135
    add-int/lit8 v4, v0, -0x1

    .line 136
    .line 137
    if-ge v3, v4, :cond_b

    .line 138
    .line 139
    add-int/lit8 v4, v3, 0x1

    .line 140
    .line 141
    aget-byte v3, p1, v3

    .line 142
    .line 143
    add-int/lit8 v5, v4, 0x1

    .line 144
    .line 145
    aget-byte v4, p1, v4

    .line 146
    .line 147
    add-int/lit8 v6, v8, 0x1

    .line 148
    .line 149
    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/android/gms/internal/vision/x3;->b(BBB[CI)V

    .line 150
    .line 151
    .line 152
    move p2, v5

    .line 153
    move v8, v6

    .line 154
    goto :goto_2

    .line 155
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->d()Lcom/google/android/gms/internal/vision/q1;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    throw p1

    .line 160
    :cond_c
    add-int/lit8 v4, v0, -0x2

    .line 161
    .line 162
    if-ge v3, v4, :cond_d

    .line 163
    .line 164
    add-int/lit8 v4, v3, 0x1

    .line 165
    .line 166
    aget-byte v5, p1, v3

    .line 167
    .line 168
    add-int/lit8 v3, v4, 0x1

    .line 169
    .line 170
    aget-byte v6, p1, v4

    .line 171
    .line 172
    add-int/lit8 v9, v3, 0x1

    .line 173
    .line 174
    aget-byte v7, p1, v3

    .line 175
    .line 176
    add-int/lit8 v10, v8, 0x1

    .line 177
    .line 178
    move v3, p2

    .line 179
    move v4, v5

    .line 180
    move v5, v6

    .line 181
    move v6, v7

    .line 182
    move-object v7, p3

    .line 183
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/vision/x3;->a(BBBB[CI)V

    .line 184
    .line 185
    .line 186
    add-int/lit8 v8, v10, 0x1

    .line 187
    .line 188
    move p2, v9

    .line 189
    goto/16 :goto_2

    .line 190
    .line 191
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->d()Lcom/google/android/gms/internal/vision/q1;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    throw p1

    .line 196
    :cond_e
    new-instance p1, Ljava/lang/String;

    .line 197
    .line 198
    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    .line 199
    .line 200
    .line 201
    return-object p1

    .line 202
    :cond_f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 203
    .line 204
    const/4 v3, 0x3

    .line 205
    new-array v3, v3, [Ljava/lang/Object;

    .line 206
    .line 207
    array-length p1, p1

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    aput-object p1, v3, v1

    .line 213
    .line 214
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    aput-object p1, v3, v2

    .line 219
    .line 220
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    const/4 p2, 0x2

    .line 225
    aput-object p1, v3, p2

    .line 226
    .line 227
    const-string p1, "buffer length=%d, index=%d, size=%d"

    .line 228
    .line 229
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v0
.end method
