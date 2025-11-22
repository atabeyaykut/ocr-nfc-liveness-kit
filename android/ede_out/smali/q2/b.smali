.class public final Lq2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;FF)Landroid/graphics/Bitmap;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 18
    .line 19
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 20
    .line 21
    int-to-float v5, v4

    .line 22
    int-to-float v6, v3

    .line 23
    div-float v7, v5, v6

    .line 24
    .line 25
    div-float v8, p1, p2

    .line 26
    .line 27
    cmpl-float v9, v6, p2

    .line 28
    .line 29
    if-gtz v9, :cond_1

    .line 30
    .line 31
    cmpl-float v9, v5, p1

    .line 32
    .line 33
    if-lez v9, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move p2, v3

    .line 37
    move p1, v4

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    cmpg-float v9, v7, v8

    .line 40
    .line 41
    if-gez v9, :cond_2

    .line 42
    .line 43
    div-float p1, p2, v6

    .line 44
    .line 45
    mul-float p1, p1, v5

    .line 46
    .line 47
    float-to-int p1, p1

    .line 48
    float-to-int p2, p2

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    cmpl-float v7, v7, v8

    .line 51
    .line 52
    if-lez v7, :cond_3

    .line 53
    .line 54
    div-float p2, p1, v5

    .line 55
    .line 56
    mul-float p2, p2, v6

    .line 57
    .line 58
    :cond_3
    float-to-int p2, p2

    .line 59
    float-to-int p1, p1

    .line 60
    :goto_1
    const/4 v5, 0x2

    .line 61
    if-gt v3, p2, :cond_5

    .line 62
    .line 63
    if-le v4, p1, :cond_4

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const/4 v6, 0x1

    .line 67
    goto :goto_4

    .line 68
    :cond_5
    :goto_2
    div-int/2addr v3, v5

    .line 69
    div-int/2addr v4, v5

    .line 70
    const/4 v6, 0x1

    .line 71
    :goto_3
    div-int v7, v3, v6

    .line 72
    .line 73
    if-lt v7, p2, :cond_6

    .line 74
    .line 75
    div-int v7, v4, v6

    .line 76
    .line 77
    if-lt v7, p1, :cond_6

    .line 78
    .line 79
    mul-int/lit8 v6, v6, 0x2

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_6
    :goto_4
    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 86
    .line 87
    if-eqz v2, :cond_a

    .line 88
    .line 89
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 90
    .line 91
    div-int/2addr v4, v6

    .line 92
    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 93
    .line 94
    div-int/2addr v7, v6

    .line 95
    mul-int v7, v7, v4

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const-string v6, "candidate.config"

    .line 102
    .line 103
    invoke-static {v4, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget-object v6, Lq2/a;->a:[I

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    aget v4, v6, v4

    .line 113
    .line 114
    if-eq v4, v1, :cond_8

    .line 115
    .line 116
    if-eq v4, v5, :cond_7

    .line 117
    .line 118
    const/4 v6, 0x3

    .line 119
    if-eq v4, v6, :cond_7

    .line 120
    .line 121
    const/4 v4, 0x1

    .line 122
    goto :goto_5

    .line 123
    :cond_7
    const/4 v4, 0x2

    .line 124
    goto :goto_5

    .line 125
    :cond_8
    const/4 v4, 0x4

    .line 126
    :goto_5
    mul-int v7, v7, v4

    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-gt v7, v4, :cond_9

    .line 133
    .line 134
    const/4 v3, 0x1

    .line 135
    :cond_9
    if-eqz v3, :cond_a

    .line 136
    .line 137
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 138
    .line 139
    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 140
    .line 141
    :cond_a
    const/16 v1, 0x4000

    .line 142
    .line 143
    new-array v1, v1, [B

    .line 144
    .line 145
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 146
    .line 147
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 152
    .line 153
    .line 154
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_6

    .line 156
    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    :goto_6
    :try_start_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 161
    .line 162
    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 163
    .line 164
    .line 165
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    goto :goto_7

    .line 167
    :catch_1
    move-exception p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    .line 170
    .line 171
    const/4 p0, 0x0

    .line 172
    :goto_7
    move-object v6, p0

    .line 173
    int-to-float p0, p1

    .line 174
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 175
    .line 176
    int-to-float p1, p1

    .line 177
    div-float p1, p0, p1

    .line 178
    .line 179
    int-to-float p2, p2

    .line 180
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 181
    .line 182
    int-to-float v0, v0

    .line 183
    div-float v0, p2, v0

    .line 184
    .line 185
    const/high16 v1, 0x40000000    # 2.0f

    .line 186
    .line 187
    div-float/2addr p0, v1

    .line 188
    div-float/2addr p2, v1

    .line 189
    new-instance v1, Landroid/graphics/Matrix;

    .line 190
    .line 191
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, p1, v0, p0, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 195
    .line 196
    .line 197
    new-instance p1, Landroid/graphics/Canvas;

    .line 198
    .line 199
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {p1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    div-int/2addr v0, v5

    .line 216
    int-to-float v0, v0

    .line 217
    sub-float/2addr p0, v0

    .line 218
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    div-int/2addr v0, v5

    .line 223
    int-to-float v0, v0

    .line 224
    sub-float/2addr p2, v0

    .line 225
    new-instance v0, Landroid/graphics/Paint;

    .line 226
    .line 227
    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v2, p0, p2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 234
    .line 235
    .line 236
    new-instance v11, Landroid/graphics/Matrix;

    .line 237
    .line 238
    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 239
    .line 240
    .line 241
    const/4 v7, 0x0

    .line 242
    const/4 v8, 0x0

    .line 243
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    const/4 v12, 0x1

    .line 252
    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    return-object p0
.end method
