.class public final Lg/b$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/b;->a(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lg/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lg/b;


# direct methods
.method public constructor <init>(Lg/b;)V
    .locals 0

    iput-object p1, p0, Lg/b$d;->a:Lg/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 21

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lg/b$a;

    .line 7
    .line 8
    move-object/from16 v2, p0

    .line 9
    .line 10
    iget-object v3, v2, Lg/b$d;->a:Lg/b;

    .line 11
    .line 12
    iget-object v4, v3, Lg/b;->a:Lg/l;

    .line 13
    .line 14
    invoke-virtual {v4}, Lg/l;->b()Led/g;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-direct {v1, v5}, Lg/b$a;-><init>(Led/g;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Led/v;->b(Led/j0;)Led/d0;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const/4 v6, 0x1

    .line 26
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 27
    .line 28
    invoke-virtual {v5}, Led/d0;->peek()Led/d0;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    new-instance v8, Led/c0;

    .line 33
    .line 34
    invoke-direct {v8, v7}, Led/c0;-><init>(Led/d0;)V

    .line 35
    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    invoke-static {v8, v7, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    iget-object v8, v1, Lg/b$a;->b:Ljava/lang/Exception;

    .line 42
    .line 43
    if-nez v8, :cond_30

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 47
    .line 48
    sget-object v9, Lg/j;->a:[Ljava/lang/String;

    .line 49
    .line 50
    iget-object v9, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v9, :cond_1

    .line 53
    .line 54
    sget-object v10, Lg/j;->a:[Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v10, v9}, Lm9/k;->o0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-nez v9, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance v9, Landroidx/exifinterface/media/ExifInterface;

    .line 64
    .line 65
    new-instance v10, Lg/i;

    .line 66
    .line 67
    invoke-virtual {v5}, Led/d0;->peek()Led/d0;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    new-instance v12, Led/c0;

    .line 72
    .line 73
    invoke-direct {v12, v11}, Led/c0;-><init>(Led/d0;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v10, v12}, Lg/i;-><init>(Ljava/io/InputStream;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v9, v10}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 80
    .line 81
    .line 82
    new-instance v10, Lg/h;

    .line 83
    .line 84
    invoke-virtual {v9}, Landroidx/exifinterface/media/ExifInterface;->isFlipped()Z

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    invoke-virtual {v9}, Landroidx/exifinterface/media/ExifInterface;->getRotationDegrees()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    invoke-direct {v10, v11, v9}, Lg/h;-><init>(ZI)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    :goto_0
    sget-object v10, Lg/h;->c:Lg/h;

    .line 97
    .line 98
    :goto_1
    iget-object v9, v1, Lg/b$a;->b:Ljava/lang/Exception;

    .line 99
    .line 100
    if-nez v9, :cond_2f

    .line 101
    .line 102
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 103
    .line 104
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 105
    .line 106
    const/16 v11, 0x1a

    .line 107
    .line 108
    iget-object v3, v3, Lg/b;->b:Lp/k;

    .line 109
    .line 110
    if-lt v9, v11, :cond_2

    .line 111
    .line 112
    iget-object v12, v3, Lp/k;->c:Landroid/graphics/ColorSpace;

    .line 113
    .line 114
    if-eqz v12, :cond_2

    .line 115
    .line 116
    invoke-static {v0, v12}, Landroidx/camera/camera2/internal/compat/workaround/a;->o(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    iget-boolean v12, v3, Lp/k;->h:Z

    .line 120
    .line 121
    iput-boolean v12, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 122
    .line 123
    iget-object v12, v3, Lp/k;->b:Landroid/graphics/Bitmap$Config;

    .line 124
    .line 125
    iget v13, v10, Lg/h;->b:I

    .line 126
    .line 127
    iget-boolean v14, v10, Lg/h;->a:Z

    .line 128
    .line 129
    if-nez v14, :cond_4

    .line 130
    .line 131
    if-lez v13, :cond_3

    .line 132
    .line 133
    const/4 v15, 0x1

    .line 134
    goto :goto_2

    .line 135
    :cond_3
    const/4 v15, 0x0

    .line 136
    :goto_2
    if-eqz v15, :cond_7

    .line 137
    .line 138
    :cond_4
    if-eqz v12, :cond_6

    .line 139
    .line 140
    if-lt v9, v11, :cond_5

    .line 141
    .line 142
    invoke-static {}, Landroidx/camera/camera2/internal/compat/workaround/a;->e()Landroid/graphics/Bitmap$Config;

    .line 143
    .line 144
    .line 145
    move-result-object v15

    .line 146
    if-ne v12, v15, :cond_5

    .line 147
    .line 148
    const/4 v15, 0x1

    .line 149
    goto :goto_3

    .line 150
    :cond_5
    const/4 v15, 0x0

    .line 151
    :goto_3
    if-eqz v15, :cond_7

    .line 152
    .line 153
    :cond_6
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 154
    .line 155
    :cond_7
    iget-boolean v15, v3, Lp/k;->g:Z

    .line 156
    .line 157
    if-eqz v15, :cond_8

    .line 158
    .line 159
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 160
    .line 161
    if-ne v12, v15, :cond_8

    .line 162
    .line 163
    iget-object v15, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 164
    .line 165
    const-string v7, "image/jpeg"

    .line 166
    .line 167
    invoke-static {v15, v7}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_8

    .line 172
    .line 173
    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 174
    .line 175
    :cond_8
    if-lt v9, v11, :cond_9

    .line 176
    .line 177
    invoke-static {v0}, Landroidx/appcompat/widget/k;->h(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$Config;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-static {}, Landroidx/appcompat/app/e;->h()Landroid/graphics/Bitmap$Config;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    if-ne v7, v9, :cond_9

    .line 186
    .line 187
    invoke-static {}, Landroidx/camera/camera2/internal/compat/workaround/a;->e()Landroid/graphics/Bitmap$Config;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    if-eq v12, v7, :cond_9

    .line 192
    .line 193
    invoke-static {}, Landroidx/appcompat/app/e;->h()Landroid/graphics/Bitmap$Config;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    :cond_9
    iput-object v12, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 198
    .line 199
    invoke-virtual {v4}, Lg/l;->a()Lg/l$a;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    instance-of v7, v4, Lg/m;

    .line 204
    .line 205
    const/16 v9, 0x10e

    .line 206
    .line 207
    const/16 v11, 0x5a

    .line 208
    .line 209
    iget v10, v10, Lg/h;->b:I

    .line 210
    .line 211
    iget-object v12, v3, Lp/k;->a:Landroid/content/Context;

    .line 212
    .line 213
    iget-object v15, v3, Lp/k;->d:Lq/e;

    .line 214
    .line 215
    if-eqz v7, :cond_b

    .line 216
    .line 217
    invoke-static {v15}, Lx5/a;->m(Lq/e;)Z

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-eqz v7, :cond_b

    .line 222
    .line 223
    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 224
    .line 225
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 226
    .line 227
    check-cast v4, Lg/m;

    .line 228
    .line 229
    iget v3, v4, Lg/m;->a:I

    .line 230
    .line 231
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 232
    .line 233
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 242
    .line 243
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 244
    .line 245
    move-object/from16 v20, v1

    .line 246
    .line 247
    move/from16 v18, v10

    .line 248
    .line 249
    move v4, v13

    .line 250
    move v8, v14

    .line 251
    :cond_a
    :goto_4
    const/4 v10, 0x0

    .line 252
    goto/16 :goto_11

    .line 253
    .line 254
    :cond_b
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 255
    .line 256
    if-lez v4, :cond_1d

    .line 257
    .line 258
    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 259
    .line 260
    if-gtz v7, :cond_c

    .line 261
    .line 262
    goto/16 :goto_10

    .line 263
    .line 264
    :cond_c
    if-eq v10, v11, :cond_e

    .line 265
    .line 266
    if-ne v10, v9, :cond_d

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_d
    const/16 v16, 0x0

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_e
    :goto_5
    const/16 v16, 0x1

    .line 273
    .line 274
    :goto_6
    if-eqz v16, :cond_f

    .line 275
    .line 276
    move v8, v7

    .line 277
    goto :goto_7

    .line 278
    :cond_f
    move v8, v4

    .line 279
    :goto_7
    if-eq v10, v11, :cond_11

    .line 280
    .line 281
    if-ne v10, v9, :cond_10

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_10
    const/16 v17, 0x0

    .line 285
    .line 286
    goto :goto_9

    .line 287
    :cond_11
    :goto_8
    const/16 v17, 0x1

    .line 288
    .line 289
    :goto_9
    if-eqz v17, :cond_12

    .line 290
    .line 291
    goto :goto_a

    .line 292
    :cond_12
    move v4, v7

    .line 293
    :goto_a
    invoke-static {v15}, Lx5/a;->m(Lq/e;)Z

    .line 294
    .line 295
    .line 296
    move-result v7

    .line 297
    iget v9, v3, Lp/k;->e:I

    .line 298
    .line 299
    if-eqz v7, :cond_13

    .line 300
    .line 301
    move v7, v8

    .line 302
    goto :goto_b

    .line 303
    :cond_13
    iget-object v7, v15, Lq/e;->a:Lq/a;

    .line 304
    .line 305
    invoke-static {v7, v9}, Lu/c;->d(Lq/a;I)I

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    :goto_b
    invoke-static {v15}, Lx5/a;->m(Lq/e;)Z

    .line 310
    .line 311
    .line 312
    move-result v18

    .line 313
    if-eqz v18, :cond_14

    .line 314
    .line 315
    move v15, v4

    .line 316
    goto :goto_c

    .line 317
    :cond_14
    iget-object v15, v15, Lq/e;->b:Lq/a;

    .line 318
    .line 319
    invoke-static {v15, v9}, Lu/c;->d(Lq/a;I)I

    .line 320
    .line 321
    .line 322
    move-result v15

    .line 323
    :goto_c
    div-int v18, v8, v7

    .line 324
    .line 325
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 326
    .line 327
    .line 328
    move-result v11

    .line 329
    div-int v18, v4, v15

    .line 330
    .line 331
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    invoke-static {v9}, Lg/d;->c(I)I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    move/from16 v18, v10

    .line 340
    .line 341
    const/4 v10, 0x1

    .line 342
    if-eqz v2, :cond_16

    .line 343
    .line 344
    if-ne v2, v10, :cond_15

    .line 345
    .line 346
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    goto :goto_d

    .line 351
    :cond_15
    new-instance v0, Lj7/p;

    .line 352
    .line 353
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 354
    .line 355
    .line 356
    throw v0

    .line 357
    :cond_16
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    :goto_d
    if-ge v2, v10, :cond_17

    .line 362
    .line 363
    const/4 v2, 0x1

    .line 364
    :cond_17
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 365
    .line 366
    int-to-double v10, v8

    .line 367
    move v6, v13

    .line 368
    move v8, v14

    .line 369
    int-to-double v13, v2

    .line 370
    div-double/2addr v10, v13

    .line 371
    move-object/from16 v20, v1

    .line 372
    .line 373
    int-to-double v1, v4

    .line 374
    div-double/2addr v1, v13

    .line 375
    int-to-double v13, v7

    .line 376
    move v4, v6

    .line 377
    int-to-double v6, v15

    .line 378
    div-double/2addr v13, v10

    .line 379
    div-double/2addr v6, v1

    .line 380
    invoke-static {v9}, Lg/d;->c(I)I

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-eqz v1, :cond_19

    .line 385
    .line 386
    const/4 v2, 0x1

    .line 387
    if-ne v1, v2, :cond_18

    .line 388
    .line 389
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->min(DD)D

    .line 390
    .line 391
    .line 392
    move-result-wide v1

    .line 393
    goto :goto_e

    .line 394
    :cond_18
    new-instance v0, Lj7/p;

    .line 395
    .line 396
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 397
    .line 398
    .line 399
    throw v0

    .line 400
    :cond_19
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(DD)D

    .line 401
    .line 402
    .line 403
    move-result-wide v1

    .line 404
    :goto_e
    iget-boolean v3, v3, Lp/k;->f:Z

    .line 405
    .line 406
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 407
    .line 408
    if-eqz v3, :cond_1a

    .line 409
    .line 410
    cmpl-double v3, v1, v6

    .line 411
    .line 412
    if-lez v3, :cond_1a

    .line 413
    .line 414
    move-wide v1, v6

    .line 415
    :cond_1a
    cmpg-double v3, v1, v6

    .line 416
    .line 417
    if-nez v3, :cond_1b

    .line 418
    .line 419
    const/4 v3, 0x1

    .line 420
    const/16 v19, 0x1

    .line 421
    .line 422
    goto :goto_f

    .line 423
    :cond_1b
    const/4 v3, 0x1

    .line 424
    const/16 v19, 0x0

    .line 425
    .line 426
    :goto_f
    xor-int/lit8 v9, v19, 0x1

    .line 427
    .line 428
    iput-boolean v9, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 429
    .line 430
    if-eqz v9, :cond_a

    .line 431
    .line 432
    const v3, 0x7fffffff

    .line 433
    .line 434
    .line 435
    cmpl-double v9, v1, v6

    .line 436
    .line 437
    if-lez v9, :cond_1c

    .line 438
    .line 439
    int-to-double v6, v3

    .line 440
    div-double/2addr v6, v1

    .line 441
    invoke-static {v6, v7}, Lc5/w;->D(D)I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 446
    .line 447
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 448
    .line 449
    goto/16 :goto_4

    .line 450
    .line 451
    :cond_1c
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 452
    .line 453
    int-to-double v6, v3

    .line 454
    mul-double v6, v6, v1

    .line 455
    .line 456
    invoke-static {v6, v7}, Lc5/w;->D(D)I

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 461
    .line 462
    goto/16 :goto_4

    .line 463
    .line 464
    :cond_1d
    :goto_10
    move-object/from16 v20, v1

    .line 465
    .line 466
    move/from16 v18, v10

    .line 467
    .line 468
    move v4, v13

    .line 469
    move v8, v14

    .line 470
    const/4 v1, 0x1

    .line 471
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 472
    .line 473
    const/4 v10, 0x0

    .line 474
    iput-boolean v10, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 475
    .line 476
    :goto_11
    :try_start_0
    new-instance v1, Led/c0;

    .line 477
    .line 478
    invoke-direct {v1, v5}, Led/c0;-><init>(Led/d0;)V

    .line 479
    .line 480
    .line 481
    const/4 v2, 0x0

    .line 482
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 483
    .line 484
    .line 485
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    invoke-static {v5, v2}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 487
    .line 488
    .line 489
    move-object/from16 v2, v20

    .line 490
    .line 491
    iget-object v2, v2, Lg/b$a;->b:Ljava/lang/Exception;

    .line 492
    .line 493
    if-nez v2, :cond_2e

    .line 494
    .line 495
    if-eqz v1, :cond_2d

    .line 496
    .line 497
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 506
    .line 507
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 508
    .line 509
    .line 510
    if-nez v8, :cond_1f

    .line 511
    .line 512
    if-lez v4, :cond_1e

    .line 513
    .line 514
    const/4 v2, 0x1

    .line 515
    goto :goto_12

    .line 516
    :cond_1e
    const/4 v2, 0x0

    .line 517
    :goto_12
    if-nez v2, :cond_1f

    .line 518
    .line 519
    goto/16 :goto_19

    .line 520
    .line 521
    :cond_1f
    new-instance v2, Landroid/graphics/Matrix;

    .line 522
    .line 523
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    int-to-float v3, v3

    .line 531
    const/high16 v5, 0x40000000    # 2.0f

    .line 532
    .line 533
    div-float/2addr v3, v5

    .line 534
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 535
    .line 536
    .line 537
    move-result v6

    .line 538
    int-to-float v6, v6

    .line 539
    div-float/2addr v6, v5

    .line 540
    if-eqz v8, :cond_20

    .line 541
    .line 542
    const/high16 v5, -0x40800000    # -1.0f

    .line 543
    .line 544
    const/high16 v7, 0x3f800000    # 1.0f

    .line 545
    .line 546
    invoke-virtual {v2, v5, v7, v3, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 547
    .line 548
    .line 549
    :cond_20
    if-lez v4, :cond_21

    .line 550
    .line 551
    const/4 v5, 0x1

    .line 552
    goto :goto_13

    .line 553
    :cond_21
    const/4 v5, 0x0

    .line 554
    :goto_13
    if-eqz v5, :cond_22

    .line 555
    .line 556
    int-to-float v4, v4

    .line 557
    invoke-virtual {v2, v4, v3, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 558
    .line 559
    .line 560
    :cond_22
    new-instance v3, Landroid/graphics/RectF;

    .line 561
    .line 562
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 563
    .line 564
    .line 565
    move-result v4

    .line 566
    int-to-float v4, v4

    .line 567
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 568
    .line 569
    .line 570
    move-result v5

    .line 571
    int-to-float v5, v5

    .line 572
    const/4 v6, 0x0

    .line 573
    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 577
    .line 578
    .line 579
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 580
    .line 581
    cmpg-float v5, v4, v6

    .line 582
    .line 583
    if-nez v5, :cond_23

    .line 584
    .line 585
    const/4 v5, 0x1

    .line 586
    goto :goto_14

    .line 587
    :cond_23
    const/4 v5, 0x0

    .line 588
    :goto_14
    if-eqz v5, :cond_25

    .line 589
    .line 590
    iget v5, v3, Landroid/graphics/RectF;->top:F

    .line 591
    .line 592
    cmpg-float v5, v5, v6

    .line 593
    .line 594
    if-nez v5, :cond_24

    .line 595
    .line 596
    const/4 v5, 0x1

    .line 597
    goto :goto_15

    .line 598
    :cond_24
    const/4 v5, 0x0

    .line 599
    :goto_15
    if-nez v5, :cond_26

    .line 600
    .line 601
    :cond_25
    neg-float v4, v4

    .line 602
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 603
    .line 604
    neg-float v3, v3

    .line 605
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 606
    .line 607
    .line 608
    :cond_26
    move/from16 v4, v18

    .line 609
    .line 610
    const/16 v3, 0x5a

    .line 611
    .line 612
    if-eq v4, v3, :cond_28

    .line 613
    .line 614
    const/16 v3, 0x10e

    .line 615
    .line 616
    if-ne v4, v3, :cond_27

    .line 617
    .line 618
    goto :goto_16

    .line 619
    :cond_27
    const/4 v3, 0x0

    .line 620
    goto :goto_17

    .line 621
    :cond_28
    :goto_16
    const/4 v3, 0x1

    .line 622
    :goto_17
    if-eqz v3, :cond_29

    .line 623
    .line 624
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 625
    .line 626
    .line 627
    move-result v3

    .line 628
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 629
    .line 630
    .line 631
    move-result v4

    .line 632
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 633
    .line 634
    .line 635
    move-result-object v5

    .line 636
    if-nez v5, :cond_2a

    .line 637
    .line 638
    goto :goto_18

    .line 639
    :cond_29
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 640
    .line 641
    .line 642
    move-result v3

    .line 643
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 644
    .line 645
    .line 646
    move-result v4

    .line 647
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    if-nez v5, :cond_2a

    .line 652
    .line 653
    :goto_18
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 654
    .line 655
    :cond_2a
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    const-string v4, "createBitmap(width, height, config)"

    .line 660
    .line 661
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    new-instance v4, Landroid/graphics/Canvas;

    .line 665
    .line 666
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 667
    .line 668
    .line 669
    sget-object v5, Lg/j;->b:Landroid/graphics/Paint;

    .line 670
    .line 671
    invoke-virtual {v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 675
    .line 676
    .line 677
    move-object v1, v3

    .line 678
    :goto_19
    new-instance v2, Lg/e;

    .line 679
    .line 680
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 685
    .line 686
    invoke-direct {v4, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 687
    .line 688
    .line 689
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 690
    .line 691
    const/4 v3, 0x1

    .line 692
    if-gt v1, v3, :cond_2c

    .line 693
    .line 694
    iget-boolean v0, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 695
    .line 696
    if-eqz v0, :cond_2b

    .line 697
    .line 698
    goto :goto_1a

    .line 699
    :cond_2b
    const/4 v6, 0x0

    .line 700
    goto :goto_1b

    .line 701
    :cond_2c
    :goto_1a
    const/4 v6, 0x1

    .line 702
    :goto_1b
    invoke-direct {v2, v4, v6}, Lg/e;-><init>(Landroid/graphics/drawable/BitmapDrawable;Z)V

    .line 703
    .line 704
    .line 705
    return-object v2

    .line 706
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 707
    .line 708
    const-string v1, "BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the input source (e.g. network, disk, or memory) as it\'s not encoded as a valid image format."

    .line 709
    .line 710
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    throw v0

    .line 718
    :cond_2e
    throw v2

    .line 719
    :catchall_0
    move-exception v0

    .line 720
    move-object v1, v0

    .line 721
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 722
    :catchall_1
    move-exception v0

    .line 723
    move-object v2, v0

    .line 724
    invoke-static {v5, v1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 725
    .line 726
    .line 727
    throw v2

    .line 728
    :cond_2f
    throw v9

    .line 729
    :cond_30
    throw v8
.end method
