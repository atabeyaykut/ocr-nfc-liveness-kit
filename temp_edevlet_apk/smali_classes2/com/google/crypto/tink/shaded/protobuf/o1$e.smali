.class public final Lcom/google/crypto/tink/shaded/protobuf/o1$e;
.super Lcom/google/crypto/tink/shaded/protobuf/o1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/o1$b;-><init>()V

    return-void
.end method

.method public static d(IIJ[B)I
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const-wide/16 v0, 0x1

    .line 14
    .line 15
    add-long/2addr p2, v0

    .line 16
    invoke-static {p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/o1;->c(III)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    invoke-static {p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/o1;->b(II)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_2
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/o1;->a:Lcom/google/crypto/tink/shaded/protobuf/o1$b;

    .line 41
    .line 42
    const/16 p1, -0xc

    .line 43
    .line 44
    if-le p0, p1, :cond_3

    .line 45
    .line 46
    const/4 p0, -0x1

    .line 47
    :cond_3
    return p0
.end method


# virtual methods
.method public final a([BII)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
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
    if-ltz v0, :cond_11

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
    if-ge p2, v0, :cond_2

    .line 17
    .line 18
    int-to-long v4, p2

    .line 19
    invoke-static {v4, v5, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

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
    if-nez v5, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 32
    .line 33
    add-int/lit8 v5, v3, 0x1

    .line 34
    .line 35
    int-to-char v4, v4

    .line 36
    aput-char v4, p3, v3

    .line 37
    .line 38
    move v3, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_2
    move v8, v3

    .line 41
    :cond_3
    :goto_3
    if-ge p2, v0, :cond_10

    .line 42
    .line 43
    add-int/lit8 v3, p2, 0x1

    .line 44
    .line 45
    int-to-long v4, p2

    .line 46
    invoke-static {v4, v5, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-ltz p2, :cond_4

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    goto :goto_4

    .line 54
    :cond_4
    const/4 v4, 0x0

    .line 55
    :goto_4
    if-eqz v4, :cond_7

    .line 56
    .line 57
    add-int/lit8 v4, v8, 0x1

    .line 58
    .line 59
    int-to-char p2, p2

    .line 60
    aput-char p2, p3, v8

    .line 61
    .line 62
    move p2, v3

    .line 63
    :goto_5
    move v8, v4

    .line 64
    if-ge p2, v0, :cond_3

    .line 65
    .line 66
    int-to-long v3, p2

    .line 67
    invoke-static {v3, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ltz v3, :cond_5

    .line 72
    .line 73
    const/4 v4, 0x1

    .line 74
    goto :goto_6

    .line 75
    :cond_5
    const/4 v4, 0x0

    .line 76
    :goto_6
    if-nez v4, :cond_6

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 80
    .line 81
    add-int/lit8 v4, v8, 0x1

    .line 82
    .line 83
    int-to-char v3, v3

    .line 84
    aput-char v3, p3, v8

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_7
    const/16 v4, -0x20

    .line 88
    .line 89
    if-ge p2, v4, :cond_8

    .line 90
    .line 91
    const/4 v4, 0x1

    .line 92
    goto :goto_7

    .line 93
    :cond_8
    const/4 v4, 0x0

    .line 94
    :goto_7
    if-eqz v4, :cond_b

    .line 95
    .line 96
    if-ge v3, v0, :cond_a

    .line 97
    .line 98
    add-int/lit8 v4, v3, 0x1

    .line 99
    .line 100
    int-to-long v5, v3

    .line 101
    invoke-static {v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    add-int/lit8 v5, v8, 0x1

    .line 106
    .line 107
    const/16 v6, -0x3e

    .line 108
    .line 109
    if-lt p2, v6, :cond_9

    .line 110
    .line 111
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/o1$a;->c(B)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-nez v6, :cond_9

    .line 116
    .line 117
    and-int/lit8 p2, p2, 0x1f

    .line 118
    .line 119
    shl-int/lit8 p2, p2, 0x6

    .line 120
    .line 121
    and-int/lit8 v3, v3, 0x3f

    .line 122
    .line 123
    or-int/2addr p2, v3

    .line 124
    int-to-char p2, p2

    .line 125
    aput-char p2, p3, v8

    .line 126
    .line 127
    move p2, v4

    .line 128
    move v8, v5

    .line 129
    goto :goto_3

    .line 130
    :cond_9
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->a()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    throw p1

    .line 135
    :cond_a
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->a()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    throw p1

    .line 140
    :cond_b
    const/16 v4, -0x10

    .line 141
    .line 142
    if-ge p2, v4, :cond_c

    .line 143
    .line 144
    const/4 v4, 0x1

    .line 145
    goto :goto_8

    .line 146
    :cond_c
    const/4 v4, 0x0

    .line 147
    :goto_8
    if-eqz v4, :cond_e

    .line 148
    .line 149
    add-int/lit8 v4, v0, -0x1

    .line 150
    .line 151
    if-ge v3, v4, :cond_d

    .line 152
    .line 153
    add-int/lit8 v4, v3, 0x1

    .line 154
    .line 155
    int-to-long v5, v3

    .line 156
    invoke-static {v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    add-int/lit8 v5, v4, 0x1

    .line 161
    .line 162
    int-to-long v6, v4

    .line 163
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    add-int/lit8 v6, v8, 0x1

    .line 168
    .line 169
    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/crypto/tink/shaded/protobuf/o1$a;->b(BBB[CI)V

    .line 170
    .line 171
    .line 172
    move p2, v5

    .line 173
    move v8, v6

    .line 174
    goto/16 :goto_3

    .line 175
    .line 176
    :cond_d
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->a()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    throw p1

    .line 181
    :cond_e
    add-int/lit8 v4, v0, -0x2

    .line 182
    .line 183
    if-ge v3, v4, :cond_f

    .line 184
    .line 185
    add-int/lit8 v4, v3, 0x1

    .line 186
    .line 187
    int-to-long v5, v3

    .line 188
    invoke-static {v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    add-int/lit8 v3, v4, 0x1

    .line 193
    .line 194
    int-to-long v6, v4

    .line 195
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    add-int/lit8 v9, v3, 0x1

    .line 200
    .line 201
    int-to-long v3, v3

    .line 202
    invoke-static {v3, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    add-int/lit8 v10, v8, 0x1

    .line 207
    .line 208
    move v3, p2

    .line 209
    move v4, v5

    .line 210
    move v5, v6

    .line 211
    move v6, v7

    .line 212
    move-object v7, p3

    .line 213
    invoke-static/range {v3 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/o1$a;->a(BBBB[CI)V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v8, v10, 0x1

    .line 217
    .line 218
    move p2, v9

    .line 219
    goto/16 :goto_3

    .line 220
    .line 221
    :cond_f
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->a()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    throw p1

    .line 226
    :cond_10
    new-instance p1, Ljava/lang/String;

    .line 227
    .line 228
    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    .line 229
    .line 230
    .line 231
    return-object p1

    .line 232
    :cond_11
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 233
    .line 234
    const/4 v3, 0x3

    .line 235
    new-array v3, v3, [Ljava/lang/Object;

    .line 236
    .line 237
    array-length p1, p1

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    aput-object p1, v3, v1

    .line 243
    .line 244
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    aput-object p1, v3, v2

    .line 249
    .line 250
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    const/4 p2, 0x2

    .line 255
    aput-object p1, v3, p2

    .line 256
    .line 257
    const-string p1, "buffer length=%d, index=%d, size=%d"

    .line 258
    .line 259
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
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

    invoke-static {v1, v4, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/n1;->q([BJB)V

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

    invoke-static {v1, v4, v5, v13}, Lcom/google/crypto/tink/shaded/protobuf/n1;->q([BJB)V

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

    invoke-static {v1, v4, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/n1;->q([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lcom/google/crypto/tink/shaded/protobuf/n1;->q([BJB)V

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

    invoke-static {v1, v4, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/n1;->q([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lcom/google/crypto/tink/shaded/protobuf/n1;->q([BJB)V

    const-wide/16 v14, 0x1

    add-long v18, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v3, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/n1;->q([BJB)V

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

    invoke-static {v1, v4, v5, v15}, Lcom/google/crypto/tink/shaded/protobuf/n1;->q([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    invoke-static {v1, v13, v14, v12}, Lcom/google/crypto/tink/shaded/protobuf/n1;->q([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lcom/google/crypto/tink/shaded/protobuf/n1;->q([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    invoke-static {v1, v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->q([BJB)V

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
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/o1$d;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/google/crypto/tink/shaded/protobuf/o1$d;-><init>(II)V

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
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/o1$d;

    invoke-direct {v0, v2, v8}, Lcom/google/crypto/tink/shaded/protobuf/o1$d;-><init>(II)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c(I[BI)I
    .locals 12

    .line 1
    or-int v0, p1, p3

    .line 2
    .line 3
    array-length v1, p2

    .line 4
    sub-int/2addr v1, p3

    .line 5
    or-int/2addr v0, v1

    .line 6
    const/4 v1, 0x3

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    if-ltz v0, :cond_10

    .line 10
    .line 11
    int-to-long v4, p1

    .line 12
    int-to-long v6, p3

    .line 13
    sub-long/2addr v6, v4

    .line 14
    long-to-int p1, v6

    .line 15
    const/16 p3, 0x10

    .line 16
    .line 17
    const-wide/16 v6, 0x1

    .line 18
    .line 19
    if-ge p1, p3, :cond_0

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move-wide v8, v4

    .line 24
    const/4 p3, 0x0

    .line 25
    :goto_0
    if-ge p3, p1, :cond_2

    .line 26
    .line 27
    add-long v10, v8, v6

    .line 28
    .line 29
    invoke-static {v8, v9, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-gez v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 37
    .line 38
    move-wide v8, v10

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move p3, p1

    .line 41
    :goto_1
    sub-int/2addr p1, p3

    .line 42
    int-to-long v8, p3

    .line 43
    add-long/2addr v4, v8

    .line 44
    :cond_3
    :goto_2
    const/4 p3, 0x0

    .line 45
    :goto_3
    if-lez p1, :cond_5

    .line 46
    .line 47
    add-long v8, v4, v6

    .line 48
    .line 49
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-ltz p3, :cond_4

    .line 54
    .line 55
    add-int/lit8 p1, p1, -0x1

    .line 56
    .line 57
    move-wide v4, v8

    .line 58
    goto :goto_3

    .line 59
    :cond_4
    move-wide v4, v8

    .line 60
    :cond_5
    if-nez p1, :cond_6

    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_6
    add-int/lit8 p1, p1, -0x1

    .line 65
    .line 66
    const/16 v0, -0x20

    .line 67
    .line 68
    const/16 v8, -0x41

    .line 69
    .line 70
    if-ge p3, v0, :cond_9

    .line 71
    .line 72
    if-nez p1, :cond_7

    .line 73
    .line 74
    move v2, p3

    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 78
    .line 79
    const/16 v0, -0x3e

    .line 80
    .line 81
    if-lt p3, v0, :cond_f

    .line 82
    .line 83
    add-long v9, v4, v6

    .line 84
    .line 85
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-le p3, v8, :cond_8

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_8
    move-wide v4, v9

    .line 93
    goto :goto_2

    .line 94
    :cond_9
    const/16 v9, -0x10

    .line 95
    .line 96
    if-ge p3, v9, :cond_d

    .line 97
    .line 98
    if-ge p1, v3, :cond_a

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_a
    add-int/lit8 p1, p1, -0x2

    .line 102
    .line 103
    add-long v9, v4, v6

    .line 104
    .line 105
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-gt v4, v8, :cond_f

    .line 110
    .line 111
    const/16 v5, -0x60

    .line 112
    .line 113
    if-ne p3, v0, :cond_b

    .line 114
    .line 115
    if-lt v4, v5, :cond_f

    .line 116
    .line 117
    :cond_b
    const/16 v0, -0x13

    .line 118
    .line 119
    if-ne p3, v0, :cond_c

    .line 120
    .line 121
    if-ge v4, v5, :cond_f

    .line 122
    .line 123
    :cond_c
    add-long v4, v9, v6

    .line 124
    .line 125
    invoke-static {v9, v10, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    if-le p3, v8, :cond_3

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_d
    if-ge p1, v1, :cond_e

    .line 133
    .line 134
    :goto_4
    invoke-static {p3, p1, v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/o1$e;->d(IIJ[B)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    goto :goto_6

    .line 139
    :cond_e
    add-int/lit8 p1, p1, -0x3

    .line 140
    .line 141
    add-long v9, v4, v6

    .line 142
    .line 143
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-gt v0, v8, :cond_f

    .line 148
    .line 149
    shl-int/lit8 p3, p3, 0x1c

    .line 150
    .line 151
    add-int/lit8 v0, v0, 0x70

    .line 152
    .line 153
    add-int/2addr v0, p3

    .line 154
    shr-int/lit8 p3, v0, 0x1e

    .line 155
    .line 156
    if-nez p3, :cond_f

    .line 157
    .line 158
    add-long v4, v9, v6

    .line 159
    .line 160
    invoke-static {v9, v10, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    if-gt p3, v8, :cond_f

    .line 165
    .line 166
    add-long v9, v4, v6

    .line 167
    .line 168
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->g(J[B)B

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    if-le p3, v8, :cond_8

    .line 173
    .line 174
    :cond_f
    :goto_5
    const/4 v2, -0x1

    .line 175
    :goto_6
    return v2

    .line 176
    :cond_10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 177
    .line 178
    new-array v1, v1, [Ljava/lang/Object;

    .line 179
    .line 180
    array-length p2, p2

    .line 181
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    aput-object p2, v1, v2

    .line 186
    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const/4 p2, 0x1

    .line 192
    aput-object p1, v1, p2

    .line 193
    .line 194
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    aput-object p1, v1, v3

    .line 199
    .line 200
    const-string p1, "Array length=%d, index=%d, limit=%d"

    .line 201
    .line 202
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v0
.end method
