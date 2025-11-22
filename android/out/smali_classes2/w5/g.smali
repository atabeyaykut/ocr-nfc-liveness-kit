.class public final Lw5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw5/g$c;,
        Lw5/g$b;,
        Lw5/g$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lw5/g;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 15

    .line 1
    sget-object v0, Lw5/g;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    mul-int/lit8 v1, v0, 0x3

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    div-int/2addr v1, v2

    .line 12
    new-array v3, v1, [B

    .line 13
    .line 14
    sget-object v4, Lw5/g$b;->a:[I

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    add-int/2addr v0, v5

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    :goto_0
    const/4 v10, 0x2

    .line 23
    const/4 v11, 0x1

    .line 24
    const/4 v12, 0x3

    .line 25
    if-ge v6, v0, :cond_10

    .line 26
    .line 27
    if-nez v7, :cond_1

    .line 28
    .line 29
    :goto_1
    add-int/lit8 v13, v6, 0x4

    .line 30
    .line 31
    if-gt v13, v0, :cond_0

    .line 32
    .line 33
    aget-byte v8, p0, v6

    .line 34
    .line 35
    and-int/lit16 v8, v8, 0xff

    .line 36
    .line 37
    aget v8, v4, v8

    .line 38
    .line 39
    shl-int/lit8 v8, v8, 0x12

    .line 40
    .line 41
    add-int/lit8 v14, v6, 0x1

    .line 42
    .line 43
    aget-byte v14, p0, v14

    .line 44
    .line 45
    and-int/lit16 v14, v14, 0xff

    .line 46
    .line 47
    aget v14, v4, v14

    .line 48
    .line 49
    shl-int/lit8 v14, v14, 0xc

    .line 50
    .line 51
    or-int/2addr v8, v14

    .line 52
    add-int/lit8 v14, v6, 0x2

    .line 53
    .line 54
    aget-byte v14, p0, v14

    .line 55
    .line 56
    and-int/lit16 v14, v14, 0xff

    .line 57
    .line 58
    aget v14, v4, v14

    .line 59
    .line 60
    shl-int/lit8 v14, v14, 0x6

    .line 61
    .line 62
    or-int/2addr v8, v14

    .line 63
    add-int/lit8 v14, v6, 0x3

    .line 64
    .line 65
    aget-byte v14, p0, v14

    .line 66
    .line 67
    and-int/lit16 v14, v14, 0xff

    .line 68
    .line 69
    aget v14, v4, v14

    .line 70
    .line 71
    or-int/2addr v8, v14

    .line 72
    if-ltz v8, :cond_0

    .line 73
    .line 74
    add-int/lit8 v6, v9, 0x2

    .line 75
    .line 76
    int-to-byte v14, v8

    .line 77
    aput-byte v14, v3, v6

    .line 78
    .line 79
    add-int/lit8 v6, v9, 0x1

    .line 80
    .line 81
    shr-int/lit8 v14, v8, 0x8

    .line 82
    .line 83
    int-to-byte v14, v14

    .line 84
    aput-byte v14, v3, v6

    .line 85
    .line 86
    shr-int/lit8 v6, v8, 0x10

    .line 87
    .line 88
    int-to-byte v6, v6

    .line 89
    aput-byte v6, v3, v9

    .line 90
    .line 91
    add-int/lit8 v9, v9, 0x3

    .line 92
    .line 93
    move v6, v13

    .line 94
    goto :goto_1

    .line 95
    :cond_0
    if-lt v6, v0, :cond_1

    .line 96
    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :cond_1
    add-int/lit8 v13, v6, 0x1

    .line 100
    .line 101
    aget-byte v6, p0, v6

    .line 102
    .line 103
    and-int/lit16 v6, v6, 0xff

    .line 104
    .line 105
    aget v6, v4, v6

    .line 106
    .line 107
    const/4 v14, -0x1

    .line 108
    if-eqz v7, :cond_d

    .line 109
    .line 110
    if-eq v7, v11, :cond_b

    .line 111
    .line 112
    const/4 v11, -0x2

    .line 113
    if-eq v7, v10, :cond_8

    .line 114
    .line 115
    const/4 v10, 0x5

    .line 116
    if-eq v7, v12, :cond_5

    .line 117
    .line 118
    if-eq v7, v2, :cond_3

    .line 119
    .line 120
    if-eq v7, v10, :cond_2

    .line 121
    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :cond_2
    if-eq v6, v14, :cond_f

    .line 125
    .line 126
    goto/16 :goto_6

    .line 127
    .line 128
    :cond_3
    if-ne v6, v11, :cond_4

    .line 129
    .line 130
    add-int/lit8 v7, v7, 0x1

    .line 131
    .line 132
    goto/16 :goto_4

    .line 133
    .line 134
    :cond_4
    if-eq v6, v14, :cond_f

    .line 135
    .line 136
    goto/16 :goto_6

    .line 137
    .line 138
    :cond_5
    if-ltz v6, :cond_6

    .line 139
    .line 140
    shl-int/lit8 v7, v8, 0x6

    .line 141
    .line 142
    or-int/2addr v6, v7

    .line 143
    add-int/lit8 v7, v9, 0x2

    .line 144
    .line 145
    int-to-byte v8, v6

    .line 146
    aput-byte v8, v3, v7

    .line 147
    .line 148
    add-int/lit8 v7, v9, 0x1

    .line 149
    .line 150
    shr-int/lit8 v8, v6, 0x8

    .line 151
    .line 152
    int-to-byte v8, v8

    .line 153
    aput-byte v8, v3, v7

    .line 154
    .line 155
    shr-int/lit8 v7, v6, 0x10

    .line 156
    .line 157
    int-to-byte v7, v7

    .line 158
    aput-byte v7, v3, v9

    .line 159
    .line 160
    add-int/lit8 v9, v9, 0x3

    .line 161
    .line 162
    move v8, v6

    .line 163
    const/4 v7, 0x0

    .line 164
    goto :goto_4

    .line 165
    :cond_6
    if-ne v6, v11, :cond_7

    .line 166
    .line 167
    add-int/lit8 v6, v9, 0x1

    .line 168
    .line 169
    shr-int/lit8 v7, v8, 0x2

    .line 170
    .line 171
    int-to-byte v7, v7

    .line 172
    aput-byte v7, v3, v6

    .line 173
    .line 174
    shr-int/lit8 v6, v8, 0xa

    .line 175
    .line 176
    int-to-byte v6, v6

    .line 177
    aput-byte v6, v3, v9

    .line 178
    .line 179
    add-int/lit8 v9, v9, 0x2

    .line 180
    .line 181
    const/4 v7, 0x5

    .line 182
    goto :goto_4

    .line 183
    :cond_7
    if-eq v6, v14, :cond_f

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_8
    if-ltz v6, :cond_9

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_9
    if-ne v6, v11, :cond_a

    .line 190
    .line 191
    add-int/lit8 v6, v9, 0x1

    .line 192
    .line 193
    shr-int/lit8 v7, v8, 0x4

    .line 194
    .line 195
    int-to-byte v7, v7

    .line 196
    aput-byte v7, v3, v9

    .line 197
    .line 198
    move v9, v6

    .line 199
    const/4 v7, 0x4

    .line 200
    goto :goto_4

    .line 201
    :cond_a
    if-eq v6, v14, :cond_f

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_b
    if-ltz v6, :cond_c

    .line 205
    .line 206
    :goto_2
    shl-int/lit8 v8, v8, 0x6

    .line 207
    .line 208
    or-int/2addr v6, v8

    .line 209
    goto :goto_3

    .line 210
    :cond_c
    if-eq v6, v14, :cond_f

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_d
    if-ltz v6, :cond_e

    .line 214
    .line 215
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 216
    .line 217
    move v8, v6

    .line 218
    goto :goto_4

    .line 219
    :cond_e
    if-eq v6, v14, :cond_f

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_f
    :goto_4
    move v6, v13

    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_10
    :goto_5
    if-eq v7, v11, :cond_13

    .line 226
    .line 227
    if-eq v7, v10, :cond_12

    .line 228
    .line 229
    if-eq v7, v12, :cond_11

    .line 230
    .line 231
    if-eq v7, v2, :cond_13

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_11
    add-int/lit8 p0, v9, 0x1

    .line 235
    .line 236
    shr-int/lit8 v0, v8, 0xa

    .line 237
    .line 238
    int-to-byte v0, v0

    .line 239
    aput-byte v0, v3, v9

    .line 240
    .line 241
    add-int/lit8 v9, p0, 0x1

    .line 242
    .line 243
    shr-int/lit8 v0, v8, 0x2

    .line 244
    .line 245
    int-to-byte v0, v0

    .line 246
    aput-byte v0, v3, p0

    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_12
    add-int/lit8 p0, v9, 0x1

    .line 250
    .line 251
    shr-int/lit8 v0, v8, 0x4

    .line 252
    .line 253
    int-to-byte v0, v0

    .line 254
    aput-byte v0, v3, v9

    .line 255
    .line 256
    move v9, p0

    .line 257
    goto :goto_7

    .line 258
    :cond_13
    :goto_6
    const/4 v9, 0x0

    .line 259
    const/4 v11, 0x0

    .line 260
    :goto_7
    if-eqz v11, :cond_15

    .line 261
    .line 262
    if-ne v9, v1, :cond_14

    .line 263
    .line 264
    goto :goto_8

    .line 265
    :cond_14
    new-array p0, v9, [B

    .line 266
    .line 267
    invoke-static {v3, v5, p0, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    .line 269
    .line 270
    move-object v3, p0

    .line 271
    :goto_8
    return-object v3

    .line 272
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 273
    .line 274
    const-string v0, "bad base-64"

    .line 275
    .line 276
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw p0
.end method

.method public static b([B)[B
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    sget-object v1, Lw5/g$c;->a:[B

    .line 3
    .line 4
    div-int/lit8 v2, v0, 0x3

    .line 5
    .line 6
    mul-int/lit8 v2, v2, 0x4

    .line 7
    .line 8
    rem-int/lit8 v3, v0, 0x3

    .line 9
    .line 10
    if-lez v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x4

    .line 13
    .line 14
    :cond_0
    new-array v2, v2, [B

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    add-int/2addr v0, v3

    .line 18
    const/4 v4, -0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, -0x1

    .line 21
    :goto_0
    add-int/lit8 v7, v3, 0x3

    .line 22
    .line 23
    const/16 v8, 0xa

    .line 24
    .line 25
    if-gt v7, v0, :cond_2

    .line 26
    .line 27
    aget-byte v9, p0, v3

    .line 28
    .line 29
    and-int/lit16 v9, v9, 0xff

    .line 30
    .line 31
    shl-int/lit8 v9, v9, 0x10

    .line 32
    .line 33
    add-int/lit8 v10, v3, 0x1

    .line 34
    .line 35
    aget-byte v10, p0, v10

    .line 36
    .line 37
    and-int/lit16 v10, v10, 0xff

    .line 38
    .line 39
    shl-int/lit8 v10, v10, 0x8

    .line 40
    .line 41
    or-int/2addr v9, v10

    .line 42
    add-int/lit8 v3, v3, 0x2

    .line 43
    .line 44
    aget-byte v3, p0, v3

    .line 45
    .line 46
    and-int/lit16 v3, v3, 0xff

    .line 47
    .line 48
    or-int/2addr v3, v9

    .line 49
    shr-int/lit8 v9, v3, 0x12

    .line 50
    .line 51
    and-int/lit8 v9, v9, 0x3f

    .line 52
    .line 53
    aget-byte v9, v1, v9

    .line 54
    .line 55
    aput-byte v9, v2, v5

    .line 56
    .line 57
    add-int/lit8 v9, v5, 0x1

    .line 58
    .line 59
    shr-int/lit8 v10, v3, 0xc

    .line 60
    .line 61
    and-int/lit8 v10, v10, 0x3f

    .line 62
    .line 63
    aget-byte v10, v1, v10

    .line 64
    .line 65
    aput-byte v10, v2, v9

    .line 66
    .line 67
    add-int/lit8 v9, v5, 0x2

    .line 68
    .line 69
    shr-int/lit8 v10, v3, 0x6

    .line 70
    .line 71
    and-int/lit8 v10, v10, 0x3f

    .line 72
    .line 73
    aget-byte v10, v1, v10

    .line 74
    .line 75
    aput-byte v10, v2, v9

    .line 76
    .line 77
    add-int/lit8 v9, v5, 0x3

    .line 78
    .line 79
    and-int/lit8 v3, v3, 0x3f

    .line 80
    .line 81
    aget-byte v3, v1, v3

    .line 82
    .line 83
    aput-byte v3, v2, v9

    .line 84
    .line 85
    add-int/lit8 v5, v5, 0x4

    .line 86
    .line 87
    add-int/2addr v6, v4

    .line 88
    if-nez v6, :cond_1

    .line 89
    .line 90
    add-int/lit8 v3, v5, 0x1

    .line 91
    .line 92
    aput-byte v8, v2, v5

    .line 93
    .line 94
    const/16 v5, 0x13

    .line 95
    .line 96
    move v5, v3

    .line 97
    const/16 v6, 0x13

    .line 98
    .line 99
    :cond_1
    move v3, v7

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    add-int/lit8 v4, v3, 0x0

    .line 102
    .line 103
    add-int/lit8 v6, v0, -0x1

    .line 104
    .line 105
    const/16 v7, 0x3d

    .line 106
    .line 107
    if-ne v4, v6, :cond_3

    .line 108
    .line 109
    aget-byte p0, p0, v3

    .line 110
    .line 111
    and-int/lit16 p0, p0, 0xff

    .line 112
    .line 113
    shl-int/lit8 p0, p0, 0x4

    .line 114
    .line 115
    add-int/lit8 v0, v5, 0x1

    .line 116
    .line 117
    shr-int/lit8 v3, p0, 0x6

    .line 118
    .line 119
    and-int/lit8 v3, v3, 0x3f

    .line 120
    .line 121
    aget-byte v3, v1, v3

    .line 122
    .line 123
    aput-byte v3, v2, v5

    .line 124
    .line 125
    add-int/lit8 v3, v0, 0x1

    .line 126
    .line 127
    and-int/lit8 p0, p0, 0x3f

    .line 128
    .line 129
    aget-byte p0, v1, p0

    .line 130
    .line 131
    aput-byte p0, v2, v0

    .line 132
    .line 133
    add-int/lit8 p0, v3, 0x1

    .line 134
    .line 135
    aput-byte v7, v2, v3

    .line 136
    .line 137
    aput-byte v7, v2, p0

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    add-int/lit8 v0, v0, -0x2

    .line 141
    .line 142
    if-ne v4, v0, :cond_4

    .line 143
    .line 144
    add-int/lit8 v0, v3, 0x1

    .line 145
    .line 146
    aget-byte v3, p0, v3

    .line 147
    .line 148
    and-int/lit16 v3, v3, 0xff

    .line 149
    .line 150
    shl-int/2addr v3, v8

    .line 151
    aget-byte p0, p0, v0

    .line 152
    .line 153
    and-int/lit16 p0, p0, 0xff

    .line 154
    .line 155
    shl-int/lit8 p0, p0, 0x2

    .line 156
    .line 157
    or-int/2addr p0, v3

    .line 158
    add-int/lit8 v0, v5, 0x1

    .line 159
    .line 160
    shr-int/lit8 v3, p0, 0xc

    .line 161
    .line 162
    and-int/lit8 v3, v3, 0x3f

    .line 163
    .line 164
    aget-byte v3, v1, v3

    .line 165
    .line 166
    aput-byte v3, v2, v5

    .line 167
    .line 168
    add-int/lit8 v3, v0, 0x1

    .line 169
    .line 170
    shr-int/lit8 v4, p0, 0x6

    .line 171
    .line 172
    and-int/lit8 v4, v4, 0x3f

    .line 173
    .line 174
    aget-byte v4, v1, v4

    .line 175
    .line 176
    aput-byte v4, v2, v0

    .line 177
    .line 178
    add-int/lit8 v0, v3, 0x1

    .line 179
    .line 180
    and-int/lit8 p0, p0, 0x3f

    .line 181
    .line 182
    aget-byte p0, v1, p0

    .line 183
    .line 184
    aput-byte p0, v2, v3

    .line 185
    .line 186
    aput-byte v7, v2, v0

    .line 187
    .line 188
    :cond_4
    :goto_1
    return-object v2
.end method
