.class public final Lb8/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(La8/a;)Ljava/nio/ByteBuffer;
    .locals 16
    .param p0    # La8/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La8/a;->g:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v1, v2, :cond_3

    .line 8
    .line 9
    const/16 v2, 0x11

    .line 10
    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    .line 13
    const/16 v2, 0x23

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    const v2, 0x32315659

    .line 18
    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, La8/a;->b:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v3}, Lb8/c;->d(Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lr7/a;

    .line 33
    .line 34
    const-string v1, "Unsupported image format"

    .line 35
    .line 36
    const/16 v2, 0xd

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lr7/a;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    invoke-virtual/range {p0 .. p0}, La8/a;->b()[Landroid/media/Image$Plane;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget v2, v0, La8/a;->d:I

    .line 50
    .line 51
    iget v0, v0, La8/a;->e:I

    .line 52
    .line 53
    invoke-static {v1, v2, v0}, Lb8/c;->c([Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    :cond_2
    iget-object v0, v0, La8/a;->b:Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3
    iget-object v1, v0, La8/a;->a:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    invoke-static {v1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    mul-int v10, v0, v9

    .line 78
    .line 79
    new-array v11, v10, [I

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    const/4 v5, 0x0

    .line 83
    const/4 v6, 0x0

    .line 84
    move-object v2, v11

    .line 85
    move v4, v0

    .line 86
    move v7, v0

    .line 87
    move v8, v9

    .line 88
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 89
    .line 90
    .line 91
    int-to-double v1, v9

    .line 92
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 93
    .line 94
    div-double/2addr v1, v3

    .line 95
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    double-to-int v1, v1

    .line 100
    add-int/2addr v1, v1

    .line 101
    int-to-double v5, v0

    .line 102
    div-double/2addr v5, v3

    .line 103
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    double-to-int v2, v2

    .line 108
    mul-int v1, v1, v2

    .line 109
    .line 110
    add-int/2addr v1, v10

    .line 111
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const/4 v2, 0x0

    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v4, 0x0

    .line 118
    :goto_0
    if-ge v2, v9, :cond_6

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    :goto_1
    if-ge v5, v0, :cond_5

    .line 122
    .line 123
    aget v6, v11, v3

    .line 124
    .line 125
    shr-int/lit8 v7, v6, 0x10

    .line 126
    .line 127
    const/16 v8, 0xff

    .line 128
    .line 129
    and-int/2addr v7, v8

    .line 130
    shr-int/lit8 v12, v6, 0x8

    .line 131
    .line 132
    and-int/2addr v12, v8

    .line 133
    and-int/2addr v6, v8

    .line 134
    mul-int/lit8 v13, v7, -0x26

    .line 135
    .line 136
    mul-int/lit8 v14, v12, 0x4a

    .line 137
    .line 138
    sub-int/2addr v13, v14

    .line 139
    const/16 v14, 0x70

    .line 140
    .line 141
    const/16 v15, 0x80

    .line 142
    .line 143
    invoke-static {v6, v14, v13, v15}, Landroidx/camera/core/impl/a;->d(IIII)I

    .line 144
    .line 145
    .line 146
    move-result v13

    .line 147
    shr-int/lit8 v13, v13, 0x8

    .line 148
    .line 149
    add-int/lit16 v13, v13, 0x80

    .line 150
    .line 151
    mul-int/lit8 v14, v7, 0x70

    .line 152
    .line 153
    mul-int/lit8 v15, v12, 0x5e

    .line 154
    .line 155
    sub-int/2addr v14, v15

    .line 156
    mul-int/lit8 v15, v6, 0x12

    .line 157
    .line 158
    sub-int/2addr v14, v15

    .line 159
    add-int/lit16 v14, v14, 0x80

    .line 160
    .line 161
    shr-int/lit8 v14, v14, 0x8

    .line 162
    .line 163
    add-int/lit16 v14, v14, 0x80

    .line 164
    .line 165
    add-int/lit8 v15, v4, 0x1

    .line 166
    .line 167
    mul-int/lit8 v7, v7, 0x42

    .line 168
    .line 169
    mul-int/lit16 v12, v12, 0x81

    .line 170
    .line 171
    add-int/2addr v12, v7

    .line 172
    const/16 v7, 0x19

    .line 173
    .line 174
    const/16 v8, 0x80

    .line 175
    .line 176
    invoke-static {v6, v7, v12, v8}, Landroidx/camera/core/impl/a;->d(IIII)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    shr-int/lit8 v6, v6, 0x8

    .line 181
    .line 182
    add-int/lit8 v6, v6, 0x10

    .line 183
    .line 184
    const/16 v7, 0xff

    .line 185
    .line 186
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    int-to-byte v6, v6

    .line 191
    invoke-virtual {v1, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 192
    .line 193
    .line 194
    rem-int/lit8 v4, v2, 0x2

    .line 195
    .line 196
    if-nez v4, :cond_4

    .line 197
    .line 198
    rem-int/lit8 v4, v3, 0x2

    .line 199
    .line 200
    if-nez v4, :cond_4

    .line 201
    .line 202
    add-int/lit8 v4, v10, 0x1

    .line 203
    .line 204
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    int-to-byte v6, v6

    .line 209
    invoke-virtual {v1, v10, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 210
    .line 211
    .line 212
    add-int/lit8 v10, v4, 0x1

    .line 213
    .line 214
    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    int-to-byte v6, v6

    .line 219
    invoke-virtual {v1, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 220
    .line 221
    .line 222
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 223
    .line 224
    add-int/lit8 v5, v5, 0x1

    .line 225
    .line 226
    move v4, v15

    .line 227
    goto :goto_1

    .line 228
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_6
    return-object v1
.end method

.method public static b(Ljava/nio/ByteBuffer;III)Landroid/graphics/Bitmap;
    .locals 3
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    new-array v2, v0, [B

    .line 27
    .line 28
    invoke-virtual {p0, v2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    move-object p0, v2

    .line 32
    :goto_0
    invoke-static {p0, p1, p2}, Lb8/c;->f([BII)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    array-length p1, p0

    .line 37
    invoke-static {p0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-static {p0, p3, p1, p2}, Lb8/c;->e(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public static c([Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;
    .locals 12
    .param p0    # [Landroid/media/Image$Plane;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    mul-int v4, p1, p2

    div-int/lit8 v0, v4, 0x4

    add-int/2addr v0, v0

    add-int/2addr v0, v4

    new-array v11, v0, [B

    const/4 v0, 0x1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int v7, v4, v4

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v9, v7, -0x2

    const/4 v10, 0x0

    if-ne v8, v9, :cond_0

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-eqz v8, :cond_1

    aget-object p1, p0, v10

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v11, v10, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    aget-object p1, p0, v0

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v11, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v4, v0

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v11, v4, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    aget-object v5, p0, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v6, p1

    move v7, p2

    move-object v8, v11

    invoke-static/range {v5 .. v10}, Lb8/c;->g(Landroid/media/Image$Plane;II[BII)V

    aget-object v5, p0, v0

    add-int/lit8 v9, v4, 0x1

    const/4 v10, 0x2

    invoke-static/range {v5 .. v10}, Lb8/c;->g(Landroid/media/Image$Plane;II[BII)V

    aget-object v0, p0, v2

    const/4 v5, 0x2

    move v1, p1

    move v2, p2

    move-object v3, v11

    invoke-static/range {v0 .. v5}, Lb8/c;->g(Landroid/media/Image$Plane;II[BII)V

    :goto_1
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    div-int/lit8 v1, v0, 0x6

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    mul-int/lit8 v3, v1, 0x4

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int v2, v1, v1

    if-ge v0, v2, :cond_2

    add-int v2, v3, v0

    rem-int/lit8 v4, v0, 0x2

    mul-int v4, v4, v1

    add-int/2addr v4, v3

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object p1
.end method

.method public static e(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static f([BII)[B
    .locals 7
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p1, 0x64

    invoke-virtual {v6, v0, p1, p0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string p0, "ImageConvertUtils"

    const-string p1, "Error closing ByteArrayOutputStream"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lr7/a;

    const-string p1, "Image conversion error from NV21 format"

    const/16 p2, 0xd

    invoke-direct {p0, p1, p2}, Lr7/a;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static final g(Landroid/media/Image$Plane;II[BII)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    div-int/2addr v2, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    div-int/2addr p2, v2

    div-int/2addr p1, p2

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    move v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    aput-byte v6, p3, p4

    add-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
