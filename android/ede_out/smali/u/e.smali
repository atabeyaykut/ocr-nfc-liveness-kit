.class public final Lu/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lq/e;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    if-lt v5, v1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Landroidx/camera/camera2/internal/compat/workaround/a;->e()Landroid/graphics/Bitmap$Config;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-ne p1, v5, :cond_0

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v5, 0x0

    .line 35
    :goto_0
    if-eqz v5, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v5, p1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 41
    .line 42
    :goto_2
    if-ne v4, v5, :cond_3

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    const/4 v4, 0x0

    .line 47
    :goto_3
    if-eqz v4, :cond_8

    .line 48
    .line 49
    if-eqz p4, :cond_4

    .line 50
    .line 51
    goto :goto_6

    .line 52
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result p4

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {p2}, Lx5/a;->m(Lq/e;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    goto :goto_4

    .line 71
    :cond_5
    iget-object v5, p2, Lq/e;->a:Lq/a;

    .line 72
    .line 73
    invoke-static {v5, p3}, Lu/c;->d(Lq/a;I)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    :goto_4
    invoke-static {p2}, Lx5/a;->m(Lq/e;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_6

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    goto :goto_5

    .line 88
    :cond_6
    iget-object v6, p2, Lq/e;->b:Lq/a;

    .line 89
    .line 90
    invoke-static {v6, p3}, Lu/c;->d(Lq/a;I)I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    :goto_5
    invoke-static {p4, v4, v5, v6, p3}, Lg/f;->a(IIIII)D

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 99
    .line 100
    cmpg-double p4, v4, v6

    .line 101
    .line 102
    if-nez p4, :cond_7

    .line 103
    .line 104
    :goto_6
    const/4 p4, 0x1

    .line 105
    goto :goto_7

    .line 106
    :cond_7
    const/4 p4, 0x0

    .line 107
    :goto_7
    if-eqz p4, :cond_8

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    sget-object p4, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 115
    .line 116
    instance-of p4, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    if-eqz p4, :cond_9

    .line 120
    .line 121
    move-object v4, p0

    .line 122
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 123
    .line 124
    goto :goto_8

    .line 125
    :cond_9
    move-object v4, v0

    .line 126
    :goto_8
    if-nez v4, :cond_a

    .line 127
    .line 128
    goto :goto_9

    .line 129
    :cond_a
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-nez v4, :cond_b

    .line 134
    .line 135
    :goto_9
    move-object v4, v0

    .line 136
    goto :goto_a

    .line 137
    :cond_b
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    :goto_a
    if-nez v4, :cond_c

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    goto :goto_b

    .line 152
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    :goto_b
    const/16 v5, 0x200

    .line 157
    .line 158
    if-lez v4, :cond_d

    .line 159
    .line 160
    goto :goto_c

    .line 161
    :cond_d
    const/16 v4, 0x200

    .line 162
    .line 163
    :goto_c
    if-eqz p4, :cond_e

    .line 164
    .line 165
    move-object p4, p0

    .line 166
    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    .line 167
    .line 168
    goto :goto_d

    .line 169
    :cond_e
    move-object p4, v0

    .line 170
    :goto_d
    if-nez p4, :cond_f

    .line 171
    .line 172
    goto :goto_e

    .line 173
    :cond_f
    invoke-virtual {p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 174
    .line 175
    .line 176
    move-result-object p4

    .line 177
    if-nez p4, :cond_10

    .line 178
    .line 179
    goto :goto_e

    .line 180
    :cond_10
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 181
    .line 182
    .line 183
    move-result p4

    .line 184
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    :goto_e
    if-nez v0, :cond_11

    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 191
    .line 192
    .line 193
    move-result p4

    .line 194
    goto :goto_f

    .line 195
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result p4

    .line 199
    :goto_f
    if-lez p4, :cond_12

    .line 200
    .line 201
    move v5, p4

    .line 202
    :cond_12
    invoke-static {p2}, Lx5/a;->m(Lq/e;)Z

    .line 203
    .line 204
    .line 205
    move-result p4

    .line 206
    if-eqz p4, :cond_13

    .line 207
    .line 208
    move p4, v4

    .line 209
    goto :goto_10

    .line 210
    :cond_13
    iget-object p4, p2, Lq/e;->a:Lq/a;

    .line 211
    .line 212
    invoke-static {p4, p3}, Lu/c;->d(Lq/a;I)I

    .line 213
    .line 214
    .line 215
    move-result p4

    .line 216
    :goto_10
    invoke-static {p2}, Lx5/a;->m(Lq/e;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_14

    .line 221
    .line 222
    move p2, v5

    .line 223
    goto :goto_11

    .line 224
    :cond_14
    iget-object p2, p2, Lq/e;->b:Lq/a;

    .line 225
    .line 226
    invoke-static {p2, p3}, Lu/c;->d(Lq/a;I)I

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    :goto_11
    invoke-static {v4, v5, p4, p2, p3}, Lg/f;->a(IIIII)D

    .line 231
    .line 232
    .line 233
    move-result-wide p2

    .line 234
    int-to-double v6, v4

    .line 235
    mul-double v6, v6, p2

    .line 236
    .line 237
    invoke-static {v6, v7}, Lc5/w;->D(D)I

    .line 238
    .line 239
    .line 240
    move-result p4

    .line 241
    int-to-double v4, v5

    .line 242
    mul-double p2, p2, v4

    .line 243
    .line 244
    invoke-static {p2, p3}, Lc5/w;->D(D)I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-eqz p1, :cond_16

    .line 249
    .line 250
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 251
    .line 252
    if-lt p3, v1, :cond_15

    .line 253
    .line 254
    invoke-static {}, Landroidx/camera/camera2/internal/compat/workaround/a;->e()Landroid/graphics/Bitmap$Config;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    if-ne p1, p3, :cond_15

    .line 259
    .line 260
    goto :goto_12

    .line 261
    :cond_15
    const/4 v2, 0x0

    .line 262
    :goto_12
    if-eqz v2, :cond_17

    .line 263
    .line 264
    :cond_16
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 265
    .line 266
    :cond_17
    invoke-static {p4, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    const-string p3, "createBitmap(width, height, config)"

    .line 271
    .line 272
    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 276
    .line 277
    .line 278
    move-result-object p3

    .line 279
    iget v0, p3, Landroid/graphics/Rect;->left:I

    .line 280
    .line 281
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 282
    .line 283
    iget v2, p3, Landroid/graphics/Rect;->right:I

    .line 284
    .line 285
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 286
    .line 287
    invoke-virtual {p0, v3, v3, p4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    .line 289
    .line 290
    new-instance p2, Landroid/graphics/Canvas;

    .line 291
    .line 292
    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, v0, v1, v2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 299
    .line 300
    .line 301
    return-object p1
.end method
