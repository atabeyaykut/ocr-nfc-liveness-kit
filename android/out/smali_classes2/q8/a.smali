.class public final Lq8/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/graphics/Bitmap;

.field public final c:Landroid/graphics/RectF;

.field public final d:Landroid/graphics/RectF;

.field public e:F

.field public final f:F

.field public final g:I

.field public final h:I

.field public final i:Landroid/graphics/Bitmap$CompressFormat;

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Lo8/a;

.field public n:I

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lp8/d;Lp8/b;Ln8/f;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lp8/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lp8/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ln8/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq8/a;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lq8/a;->b:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    iget-object p1, p3, Lp8/d;->a:Landroid/graphics/RectF;

    .line 14
    .line 15
    iput-object p1, p0, Lq8/a;->c:Landroid/graphics/RectF;

    .line 16
    .line 17
    iget-object p1, p3, Lp8/d;->b:Landroid/graphics/RectF;

    .line 18
    .line 19
    iput-object p1, p0, Lq8/a;->d:Landroid/graphics/RectF;

    .line 20
    .line 21
    iget p1, p3, Lp8/d;->c:F

    .line 22
    .line 23
    iput p1, p0, Lq8/a;->e:F

    .line 24
    .line 25
    iget p1, p3, Lp8/d;->d:F

    .line 26
    .line 27
    iput p1, p0, Lq8/a;->f:F

    .line 28
    .line 29
    iget p1, p4, Lp8/b;->a:I

    .line 30
    .line 31
    iput p1, p0, Lq8/a;->g:I

    .line 32
    .line 33
    iget p1, p4, Lp8/b;->b:I

    .line 34
    .line 35
    iput p1, p0, Lq8/a;->h:I

    .line 36
    .line 37
    iget-object p1, p4, Lp8/b;->c:Landroid/graphics/Bitmap$CompressFormat;

    .line 38
    .line 39
    iput-object p1, p0, Lq8/a;->i:Landroid/graphics/Bitmap$CompressFormat;

    .line 40
    .line 41
    iget p1, p4, Lp8/b;->d:I

    .line 42
    .line 43
    iput p1, p0, Lq8/a;->j:I

    .line 44
    .line 45
    iget-object p1, p4, Lp8/b;->e:Ljava/lang/String;

    .line 46
    .line 47
    iput-object p1, p0, Lq8/a;->k:Ljava/lang/String;

    .line 48
    .line 49
    iget-object p1, p4, Lp8/b;->f:Ljava/lang/String;

    .line 50
    .line 51
    iput-object p1, p0, Lq8/a;->l:Ljava/lang/String;

    .line 52
    .line 53
    iput-object p5, p0, Lq8/a;->m:Lo8/a;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lq8/a;->h:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v1, Lq8/a;->c:Landroid/graphics/RectF;

    .line 7
    .line 8
    iget v4, v1, Lq8/a;->g:I

    .line 9
    .line 10
    if-lez v4, :cond_2

    .line 11
    .line 12
    if-lez v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    iget v6, v1, Lq8/a;->e:F

    .line 19
    .line 20
    div-float/2addr v5, v6

    .line 21
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    iget v7, v1, Lq8/a;->e:F

    .line 26
    .line 27
    div-float/2addr v6, v7

    .line 28
    int-to-float v7, v4

    .line 29
    cmpl-float v8, v5, v7

    .line 30
    .line 31
    if-gtz v8, :cond_0

    .line 32
    .line 33
    int-to-float v8, v0

    .line 34
    cmpl-float v8, v6, v8

    .line 35
    .line 36
    if-lez v8, :cond_2

    .line 37
    .line 38
    :cond_0
    div-float/2addr v7, v5

    .line 39
    int-to-float v5, v0

    .line 40
    div-float/2addr v5, v6

    .line 41
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    iget-object v6, v1, Lq8/a;->b:Landroid/graphics/Bitmap;

    .line 46
    .line 47
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    int-to-float v7, v7

    .line 52
    mul-float v7, v7, v5

    .line 53
    .line 54
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    iget-object v8, v1, Lq8/a;->b:Landroid/graphics/Bitmap;

    .line 59
    .line 60
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    int-to-float v8, v8

    .line 65
    mul-float v8, v8, v5

    .line 66
    .line 67
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-static {v6, v7, v8, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    iget-object v7, v1, Lq8/a;->b:Landroid/graphics/Bitmap;

    .line 76
    .line 77
    if-eq v7, v6, :cond_1

    .line 78
    .line 79
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    .line 81
    .line 82
    :cond_1
    iput-object v6, v1, Lq8/a;->b:Landroid/graphics/Bitmap;

    .line 83
    .line 84
    iget v6, v1, Lq8/a;->e:F

    .line 85
    .line 86
    div-float/2addr v6, v5

    .line 87
    iput v6, v1, Lq8/a;->e:F

    .line 88
    .line 89
    :cond_2
    const/4 v5, 0x0

    .line 90
    iget v6, v1, Lq8/a;->f:F

    .line 91
    .line 92
    cmpl-float v5, v6, v5

    .line 93
    .line 94
    if-eqz v5, :cond_4

    .line 95
    .line 96
    new-instance v12, Landroid/graphics/Matrix;

    .line 97
    .line 98
    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v7, v1, Lq8/a;->b:Landroid/graphics/Bitmap;

    .line 102
    .line 103
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    div-int/lit8 v7, v7, 0x2

    .line 108
    .line 109
    int-to-float v7, v7

    .line 110
    iget-object v8, v1, Lq8/a;->b:Landroid/graphics/Bitmap;

    .line 111
    .line 112
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    div-int/lit8 v8, v8, 0x2

    .line 117
    .line 118
    int-to-float v8, v8

    .line 119
    invoke-virtual {v12, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 120
    .line 121
    .line 122
    iget-object v7, v1, Lq8/a;->b:Landroid/graphics/Bitmap;

    .line 123
    .line 124
    const/4 v8, 0x0

    .line 125
    const/4 v9, 0x0

    .line 126
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    iget-object v6, v1, Lq8/a;->b:Landroid/graphics/Bitmap;

    .line 131
    .line 132
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    const/4 v13, 0x1

    .line 137
    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    iget-object v7, v1, Lq8/a;->b:Landroid/graphics/Bitmap;

    .line 142
    .line 143
    if-eq v7, v6, :cond_3

    .line 144
    .line 145
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    .line 147
    .line 148
    :cond_3
    iput-object v6, v1, Lq8/a;->b:Landroid/graphics/Bitmap;

    .line 149
    .line 150
    :cond_4
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 151
    .line 152
    iget-object v7, v1, Lq8/a;->d:Landroid/graphics/RectF;

    .line 153
    .line 154
    iget v8, v7, Landroid/graphics/RectF;->left:F

    .line 155
    .line 156
    sub-float/2addr v6, v8

    .line 157
    iget v8, v1, Lq8/a;->e:F

    .line 158
    .line 159
    div-float/2addr v6, v8

    .line 160
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    iput v6, v1, Lq8/a;->p:I

    .line 165
    .line 166
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 167
    .line 168
    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 169
    .line 170
    sub-float/2addr v6, v8

    .line 171
    iget v8, v1, Lq8/a;->e:F

    .line 172
    .line 173
    div-float/2addr v6, v8

    .line 174
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    iput v6, v1, Lq8/a;->q:I

    .line 179
    .line 180
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    iget v8, v1, Lq8/a;->e:F

    .line 185
    .line 186
    div-float/2addr v6, v8

    .line 187
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    iput v6, v1, Lq8/a;->n:I

    .line 192
    .line 193
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    iget v8, v1, Lq8/a;->e:F

    .line 198
    .line 199
    div-float/2addr v6, v8

    .line 200
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    iput v6, v1, Lq8/a;->o:I

    .line 205
    .line 206
    iget v8, v1, Lq8/a;->n:I

    .line 207
    .line 208
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    int-to-float v6, v6

    .line 213
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 214
    .line 215
    div-float/2addr v6, v8

    .line 216
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    const/4 v8, 0x1

    .line 221
    add-int/2addr v6, v8

    .line 222
    if-lez v4, :cond_5

    .line 223
    .line 224
    if-gtz v0, :cond_7

    .line 225
    .line 226
    :cond_5
    iget v0, v3, Landroid/graphics/RectF;->left:F

    .line 227
    .line 228
    iget v4, v7, Landroid/graphics/RectF;->left:F

    .line 229
    .line 230
    sub-float/2addr v0, v4

    .line 231
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    int-to-float v4, v6

    .line 236
    cmpl-float v0, v0, v4

    .line 237
    .line 238
    if-gtz v0, :cond_7

    .line 239
    .line 240
    iget v0, v3, Landroid/graphics/RectF;->top:F

    .line 241
    .line 242
    iget v6, v7, Landroid/graphics/RectF;->top:F

    .line 243
    .line 244
    sub-float/2addr v0, v6

    .line 245
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    cmpl-float v0, v0, v4

    .line 250
    .line 251
    if-gtz v0, :cond_7

    .line 252
    .line 253
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    .line 254
    .line 255
    iget v6, v7, Landroid/graphics/RectF;->bottom:F

    .line 256
    .line 257
    sub-float/2addr v0, v6

    .line 258
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    cmpl-float v0, v0, v4

    .line 263
    .line 264
    if-gtz v0, :cond_7

    .line 265
    .line 266
    iget v0, v3, Landroid/graphics/RectF;->right:F

    .line 267
    .line 268
    iget v3, v7, Landroid/graphics/RectF;->right:F

    .line 269
    .line 270
    sub-float/2addr v0, v3

    .line 271
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    cmpl-float v0, v0, v4

    .line 276
    .line 277
    if-gtz v0, :cond_7

    .line 278
    .line 279
    if-eqz v5, :cond_6

    .line 280
    .line 281
    goto :goto_0

    .line 282
    :cond_6
    const/4 v8, 0x0

    .line 283
    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const-string v3, "Should crop: "

    .line 286
    .line 287
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    const-string v3, "BitmapCropTask"

    .line 298
    .line 299
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    const/4 v4, 0x0

    .line 303
    iget-object v0, v1, Lq8/a;->k:Ljava/lang/String;

    .line 304
    .line 305
    iget-object v5, v1, Lq8/a;->l:Ljava/lang/String;

    .line 306
    .line 307
    if-eqz v8, :cond_c

    .line 308
    .line 309
    new-instance v6, Landroidx/exifinterface/media/ExifInterface;

    .line 310
    .line 311
    invoke-direct {v6, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget-object v0, v1, Lq8/a;->b:Landroid/graphics/Bitmap;

    .line 315
    .line 316
    iget v7, v1, Lq8/a;->p:I

    .line 317
    .line 318
    iget v8, v1, Lq8/a;->q:I

    .line 319
    .line 320
    iget v9, v1, Lq8/a;->n:I

    .line 321
    .line 322
    iget v10, v1, Lq8/a;->o:I

    .line 323
    .line 324
    invoke-static {v0, v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iget-object v7, v1, Lq8/a;->a:Ljava/lang/ref/WeakReference;

    .line 329
    .line 330
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    check-cast v7, Landroid/content/Context;

    .line 335
    .line 336
    iget-object v8, v1, Lq8/a;->i:Landroid/graphics/Bitmap$CompressFormat;

    .line 337
    .line 338
    if-nez v7, :cond_8

    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_8
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    .line 342
    .line 343
    new-instance v9, Ljava/io/File;

    .line 344
    .line 345
    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-direct {v7, v9, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 349
    .line 350
    .line 351
    :try_start_1
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 352
    .line 353
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 354
    .line 355
    .line 356
    :try_start_2
    iget v4, v1, Lq8/a;->j:I

    .line 357
    .line 358
    invoke-virtual {v0, v8, v4, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 359
    .line 360
    .line 361
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-virtual {v7, v4}, Ljava/io/OutputStream;->write([B)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    .line 370
    .line 371
    invoke-static {v7}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 372
    .line 373
    .line 374
    goto :goto_4

    .line 375
    :catchall_0
    move-exception v0

    .line 376
    move-object v4, v9

    .line 377
    goto :goto_1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    move-object v4, v9

    .line 380
    goto :goto_2

    .line 381
    :catchall_1
    move-exception v0

    .line 382
    :goto_1
    move-object/from16 v29, v7

    .line 383
    .line 384
    move-object v7, v4

    .line 385
    move-object/from16 v4, v29

    .line 386
    .line 387
    goto/16 :goto_8

    .line 388
    .line 389
    :catch_1
    move-exception v0

    .line 390
    :goto_2
    move-object/from16 v29, v7

    .line 391
    .line 392
    move-object v7, v4

    .line 393
    move-object/from16 v4, v29

    .line 394
    .line 395
    goto :goto_3

    .line 396
    :catchall_2
    move-exception v0

    .line 397
    move-object v7, v4

    .line 398
    goto/16 :goto_8

    .line 399
    .line 400
    :catch_2
    move-exception v0

    .line 401
    move-object v7, v4

    .line 402
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 407
    .line 408
    .line 409
    invoke-static {v4}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 410
    .line 411
    .line 412
    move-object v9, v7

    .line 413
    :goto_4
    invoke-static {v9}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 414
    .line 415
    .line 416
    :goto_5
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 417
    .line 418
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-eqz v0, :cond_b

    .line 423
    .line 424
    iget v0, v1, Lq8/a;->n:I

    .line 425
    .line 426
    iget v3, v1, Lq8/a;->o:I

    .line 427
    .line 428
    sget-object v4, Lr8/d;->b:[B

    .line 429
    .line 430
    const-string v7, "FNumber"

    .line 431
    .line 432
    const-string v8, "DateTime"

    .line 433
    .line 434
    const-string v9, "DateTimeDigitized"

    .line 435
    .line 436
    const-string v10, "ExposureTime"

    .line 437
    .line 438
    const-string v11, "Flash"

    .line 439
    .line 440
    const-string v12, "FocalLength"

    .line 441
    .line 442
    const-string v13, "GPSAltitude"

    .line 443
    .line 444
    const-string v14, "GPSAltitudeRef"

    .line 445
    .line 446
    const-string v15, "GPSDateStamp"

    .line 447
    .line 448
    const-string v16, "GPSLatitude"

    .line 449
    .line 450
    const-string v17, "GPSLatitudeRef"

    .line 451
    .line 452
    const-string v18, "GPSLongitude"

    .line 453
    .line 454
    const-string v19, "GPSLongitudeRef"

    .line 455
    .line 456
    const-string v20, "GPSProcessingMethod"

    .line 457
    .line 458
    const-string v21, "GPSTimeStamp"

    .line 459
    .line 460
    const-string v22, "PhotographicSensitivity"

    .line 461
    .line 462
    const-string v23, "Make"

    .line 463
    .line 464
    const-string v24, "Model"

    .line 465
    .line 466
    const-string v25, "SubSecTime"

    .line 467
    .line 468
    const-string v26, "SubSecTimeDigitized"

    .line 469
    .line 470
    const-string v27, "SubSecTimeOriginal"

    .line 471
    .line 472
    const-string v28, "WhiteBalance"

    .line 473
    .line 474
    filled-new-array/range {v7 .. v28}, [Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    :try_start_4
    new-instance v7, Landroidx/exifinterface/media/ExifInterface;

    .line 479
    .line 480
    invoke-direct {v7, v5}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    :goto_6
    const/16 v5, 0x16

    .line 484
    .line 485
    if-ge v2, v5, :cond_a

    .line 486
    .line 487
    aget-object v5, v4, v2

    .line 488
    .line 489
    invoke-virtual {v6, v5}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v8

    .line 493
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 494
    .line 495
    .line 496
    move-result v9

    .line 497
    if-nez v9, :cond_9

    .line 498
    .line 499
    invoke-virtual {v7, v5, v8}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 503
    .line 504
    goto :goto_6

    .line 505
    :cond_a
    const-string v2, "ImageWidth"

    .line 506
    .line 507
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-virtual {v7, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    const-string v0, "ImageLength"

    .line 515
    .line 516
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    invoke-virtual {v7, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    const-string v0, "Orientation"

    .line 524
    .line 525
    const-string v2, "0"

    .line 526
    .line 527
    invoke-virtual {v7, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v7}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 531
    .line 532
    .line 533
    goto :goto_7

    .line 534
    :catch_3
    move-exception v0

    .line 535
    const-string v2, "ImageHeaderParser"

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    :cond_b
    :goto_7
    return-void

    .line 545
    :catchall_3
    move-exception v0

    .line 546
    :goto_8
    invoke-static {v4}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 547
    .line 548
    .line 549
    invoke-static {v7}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 550
    .line 551
    .line 552
    throw v0

    .line 553
    :cond_c
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    if-eqz v2, :cond_d

    .line 558
    .line 559
    goto :goto_9

    .line 560
    :cond_d
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    .line 561
    .line 562
    new-instance v3, Ljava/io/File;

    .line 563
    .line 564
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 571
    .line 572
    .line 573
    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 574
    :try_start_6
    new-instance v0, Ljava/io/FileOutputStream;

    .line 575
    .line 576
    new-instance v3, Ljava/io/File;

    .line 577
    .line 578
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 585
    .line 586
    .line 587
    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 588
    const-wide/16 v7, 0x0

    .line 589
    .line 590
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 591
    .line 592
    .line 593
    move-result-wide v9

    .line 594
    move-object v6, v2

    .line 595
    move-object v11, v3

    .line 596
    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 597
    .line 598
    .line 599
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 600
    .line 601
    .line 602
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 603
    .line 604
    .line 605
    if-eqz v3, :cond_e

    .line 606
    .line 607
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 608
    .line 609
    .line 610
    :cond_e
    :goto_9
    return-void

    .line 611
    :catchall_4
    move-exception v0

    .line 612
    move-object v4, v3

    .line 613
    goto :goto_a

    .line 614
    :catchall_5
    move-exception v0

    .line 615
    :goto_a
    move-object/from16 v29, v4

    .line 616
    .line 617
    move-object v4, v2

    .line 618
    move-object/from16 v2, v29

    .line 619
    .line 620
    goto :goto_b

    .line 621
    :catchall_6
    move-exception v0

    .line 622
    move-object v2, v4

    .line 623
    :goto_b
    if-eqz v4, :cond_f

    .line 624
    .line 625
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 626
    .line 627
    .line 628
    :cond_f
    if-eqz v2, :cond_10

    .line 629
    .line 630
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 631
    .line 632
    .line 633
    :cond_10
    throw v0
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lq8/a;->b:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    .line 9
    const-string v0, "ViewBitmap is null"

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Ljava/lang/NullPointerException;

    .line 22
    .line 23
    const-string v0, "ViewBitmap is recycled"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lq8/a;->d:Landroid/graphics/RectF;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    new-instance p1, Ljava/lang/NullPointerException;

    .line 38
    .line 39
    const-string v0, "CurrentImageRect is empty"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lq8/a;->a()V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lq8/a;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    :goto_0
    return-object p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object v0, p0, Lq8/a;->m:Lo8/a;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/io/File;

    .line 10
    .line 11
    iget-object v1, p0, Lq8/a;->l:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget v1, p0, Lq8/a;->p:I

    .line 21
    .line 22
    iget v2, p0, Lq8/a;->q:I

    .line 23
    .line 24
    iget v3, p0, Lq8/a;->n:I

    .line 25
    .line 26
    iget v4, p0, Lq8/a;->o:I

    .line 27
    .line 28
    check-cast v0, Ln8/f;

    .line 29
    .line 30
    iget-object v0, v0, Ln8/f;->a:Lcom/yalantis/ucrop/UCropActivity;

    .line 31
    .line 32
    iget-object v5, v0, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 33
    .line 34
    invoke-virtual {v5}, Ls8/a;->getTargetAspectRatio()F

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    new-instance v6, Landroid/content/Intent;

    .line 39
    .line 40
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v7, "com.yalantis.ucrop.OutputUri"

    .line 44
    .line 45
    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v6, "com.yalantis.ucrop.CropAspectRatio"

    .line 50
    .line 51
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v5, "com.yalantis.ucrop.ImageWidth"

    .line 56
    .line 57
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v3, "com.yalantis.ucrop.ImageHeight"

    .line 62
    .line 63
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v3, "com.yalantis.ucrop.OffsetX"

    .line 68
    .line 69
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v1, "com.yalantis.ucrop.OffsetY"

    .line 74
    .line 75
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/4 v1, -0x1

    .line 80
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    check-cast v0, Ln8/f;

    .line 88
    .line 89
    iget-object v0, v0, Ln8/f;->a:Lcom/yalantis/ucrop/UCropActivity;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCropActivity;->t(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_0
    return-void
.end method
