.class public final Ld8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld8/e;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ls4/y9;

.field public c:Z

.field public d:Ls4/l5;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls4/y9;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls4/y9;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ld8/b;->b:Ls4/y9;

    iput-object p1, p0, Ld8/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(La8/a;)Lc8/a;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Ld8/b;->d:Ls4/l5;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Ld8/b;->b()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v2, v1, Ld8/b;->d:Ls4/l5;

    .line 13
    .line 14
    if-eqz v2, :cond_1b

    .line 15
    .line 16
    iget v2, v0, La8/a;->g:I

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    iget-object v2, v0, La8/a;->a:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    iget v3, v0, La8/a;->f:I

    .line 26
    .line 27
    invoke-static {v3}, Lb8/b;->a(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    move v10, v3

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    if-eq v2, v3, :cond_5

    .line 34
    .line 35
    const/16 v3, 0x11

    .line 36
    .line 37
    if-eq v2, v3, :cond_4

    .line 38
    .line 39
    const/16 v3, 0x23

    .line 40
    .line 41
    if-eq v2, v3, :cond_3

    .line 42
    .line 43
    const v3, 0x32315659

    .line 44
    .line 45
    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    iget-object v2, v0, La8/a;->b:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget v3, v0, La8/a;->d:I

    .line 54
    .line 55
    iget v6, v0, La8/a;->e:I

    .line 56
    .line 57
    iget v7, v0, La8/a;->f:I

    .line 58
    .line 59
    invoke-static {v2, v5}, Lb8/c;->d(Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2, v3, v6}, Lb8/c;->f([BII)[B

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    array-length v3, v2

    .line 72
    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-static {v2, v7, v3, v6}, Lb8/c;->e(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    new-instance v0, Lr7/a;

    .line 90
    .line 91
    const-string v2, "Unsupported image format"

    .line 92
    .line 93
    const/16 v3, 0xd

    .line 94
    .line 95
    invoke-direct {v0, v2, v3}, Lr7/a;-><init>(Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :cond_3
    invoke-virtual/range {p1 .. p1}, La8/a;->b()[Landroid/media/Image$Plane;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget v3, v0, La8/a;->d:I

    .line 107
    .line 108
    iget v6, v0, La8/a;->e:I

    .line 109
    .line 110
    invoke-static {v2, v3, v6}, Lb8/c;->c([Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    iget-object v2, v0, La8/a;->b:Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :goto_0
    iget v3, v0, La8/a;->d:I

    .line 121
    .line 122
    iget v6, v0, La8/a;->e:I

    .line 123
    .line 124
    iget v7, v0, La8/a;->f:I

    .line 125
    .line 126
    invoke-static {v2, v3, v6, v7}, Lb8/c;->b(Ljava/nio/ByteBuffer;III)Landroid/graphics/Bitmap;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    goto :goto_1

    .line 131
    :cond_5
    iget-object v2, v0, La8/a;->a:Landroid/graphics/Bitmap;

    .line 132
    .line 133
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iget v3, v0, La8/a;->f:I

    .line 137
    .line 138
    iget v6, v0, La8/a;->d:I

    .line 139
    .line 140
    iget v7, v0, La8/a;->e:I

    .line 141
    .line 142
    invoke-static {v2, v3, v6, v7}, Lb8/c;->e(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    :goto_1
    const/4 v10, 0x0

    .line 147
    :goto_2
    new-instance v3, Lz3/d;

    .line 148
    .line 149
    invoke-direct {v3, v2}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    new-instance v2, Ls4/i1;

    .line 153
    .line 154
    iget v7, v0, La8/a;->d:I

    .line 155
    .line 156
    iget v8, v0, La8/a;->e:I

    .line 157
    .line 158
    const/4 v9, 0x0

    .line 159
    const-wide/16 v11, 0x0

    .line 160
    .line 161
    move-object v6, v2

    .line 162
    invoke-direct/range {v6 .. v12}, Ls4/i1;-><init>(IIIIJ)V

    .line 163
    .line 164
    .line 165
    :try_start_0
    iget-object v0, v1, Ld8/b;->d:Ls4/l5;

    .line 166
    .line 167
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ls4/a;->w0()Landroid/os/Parcel;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    sget v7, Ls4/o0;->a:I

    .line 175
    .line 176
    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v6, v4}, Ls4/i1;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v6, v5}, Ls4/a;->x0(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    sget-object v2, Ls4/b9;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, [Ls4/b9;

    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    .line 200
    sget-object v0, Ld8/d;->a:Ls4/da;

    .line 201
    .line 202
    new-instance v0, Landroid/util/SparseArray;

    .line 203
    .line 204
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 205
    .line 206
    .line 207
    array-length v3, v2

    .line 208
    const/4 v6, 0x0

    .line 209
    :goto_3
    if-ge v6, v3, :cond_7

    .line 210
    .line 211
    aget-object v7, v2, v6

    .line 212
    .line 213
    iget v8, v7, Ls4/b9;->k:I

    .line 214
    .line 215
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    check-cast v8, Landroid/util/SparseArray;

    .line 220
    .line 221
    if-nez v8, :cond_6

    .line 222
    .line 223
    new-instance v8, Landroid/util/SparseArray;

    .line 224
    .line 225
    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 226
    .line 227
    .line 228
    iget v9, v7, Ls4/b9;->k:I

    .line 229
    .line 230
    invoke-virtual {v0, v9, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_6
    iget v9, v7, Ls4/b9;->l:I

    .line 234
    .line 235
    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    add-int/lit8 v6, v6, 0x1

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_7
    sget-object v2, Ls4/d0;->b:Ls4/b0;

    .line 242
    .line 243
    const/4 v2, 0x4

    .line 244
    new-array v3, v2, [Ljava/lang/Object;

    .line 245
    .line 246
    const/4 v6, 0x0

    .line 247
    const/4 v7, 0x0

    .line 248
    const/4 v8, 0x0

    .line 249
    :goto_4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    sget-object v10, Ld8/d;->a:Ls4/da;

    .line 254
    .line 255
    if-ge v6, v9, :cond_19

    .line 256
    .line 257
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    check-cast v9, Landroid/util/SparseArray;

    .line 262
    .line 263
    new-array v11, v2, [Ljava/lang/Object;

    .line 264
    .line 265
    const/4 v12, 0x0

    .line 266
    const/4 v13, 0x0

    .line 267
    const/4 v14, 0x0

    .line 268
    :goto_5
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 269
    .line 270
    .line 271
    move-result v15

    .line 272
    const v16, 0x7fffffff

    .line 273
    .line 274
    .line 275
    if-ge v12, v15, :cond_c

    .line 276
    .line 277
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v15

    .line 281
    check-cast v15, Ls4/b9;

    .line 282
    .line 283
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    add-int/lit8 v2, v13, 0x1

    .line 287
    .line 288
    array-length v4, v11

    .line 289
    if-ge v4, v2, :cond_a

    .line 290
    .line 291
    shr-int/lit8 v14, v4, 0x1

    .line 292
    .line 293
    add-int/2addr v4, v14

    .line 294
    add-int/2addr v4, v5

    .line 295
    if-ge v4, v2, :cond_8

    .line 296
    .line 297
    add-int/lit8 v2, v2, -0x1

    .line 298
    .line 299
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    add-int v4, v2, v2

    .line 304
    .line 305
    :cond_8
    if-gez v4, :cond_9

    .line 306
    .line 307
    const v4, 0x7fffffff

    .line 308
    .line 309
    .line 310
    :cond_9
    invoke-static {v11, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    goto :goto_6

    .line 315
    :cond_a
    if-eqz v14, :cond_b

    .line 316
    .line 317
    invoke-virtual {v11}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    check-cast v2, [Ljava/lang/Object;

    .line 322
    .line 323
    :goto_6
    move-object v11, v2

    .line 324
    const/4 v14, 0x0

    .line 325
    :cond_b
    add-int/lit8 v2, v13, 0x1

    .line 326
    .line 327
    aput-object v15, v11, v13

    .line 328
    .line 329
    add-int/lit8 v12, v12, 0x1

    .line 330
    .line 331
    move v13, v2

    .line 332
    const/4 v2, 0x4

    .line 333
    const/4 v4, 0x0

    .line 334
    goto :goto_5

    .line 335
    :cond_c
    sget-object v2, Ls4/d0;->b:Ls4/b0;

    .line 336
    .line 337
    if-nez v13, :cond_d

    .line 338
    .line 339
    sget-object v2, Ls4/r0;->e:Ls4/r0;

    .line 340
    .line 341
    goto :goto_7

    .line 342
    :cond_d
    new-instance v2, Ls4/r0;

    .line 343
    .line 344
    invoke-direct {v2, v11, v13}, Ls4/r0;-><init>([Ljava/lang/Object;I)V

    .line 345
    .line 346
    .line 347
    :goto_7
    sget-object v4, La6/a;->h:La6/a;

    .line 348
    .line 349
    invoke-static {v2, v4}, Ls4/b;->a(Ljava/util/List;Ls4/ca;)Ljava/util/AbstractList;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    const/4 v9, 0x0

    .line 354
    invoke-virtual {v2, v9}, Ls4/r0;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v11

    .line 358
    check-cast v11, Ls4/b9;

    .line 359
    .line 360
    iget-object v11, v11, Ls4/b9;->b:Ls4/j3;

    .line 361
    .line 362
    invoke-virtual {v2, v9}, Ls4/d0;->w(I)Ls4/b0;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    const/high16 v9, -0x80000000

    .line 367
    .line 368
    const/high16 v12, -0x80000000

    .line 369
    .line 370
    const v13, 0x7fffffff

    .line 371
    .line 372
    .line 373
    const v14, 0x7fffffff

    .line 374
    .line 375
    .line 376
    :goto_8
    invoke-virtual {v2}, Ls4/b0;->b()Z

    .line 377
    .line 378
    .line 379
    move-result v15

    .line 380
    const/16 v18, 0x3

    .line 381
    .line 382
    const/16 v19, 0x2

    .line 383
    .line 384
    if-eqz v15, :cond_f

    .line 385
    .line 386
    invoke-virtual {v2}, Ls4/b0;->d()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v15

    .line 390
    check-cast v15, Ls4/b9;

    .line 391
    .line 392
    iget-object v15, v15, Ls4/b9;->b:Ls4/j3;

    .line 393
    .line 394
    iget v5, v11, Ls4/j3;->a:I

    .line 395
    .line 396
    move-object/from16 v20, v0

    .line 397
    .line 398
    iget v0, v11, Ls4/j3;->e:F

    .line 399
    .line 400
    float-to-double v0, v0

    .line 401
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 402
    .line 403
    .line 404
    move-result-wide v21

    .line 405
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    .line 406
    .line 407
    .line 408
    move-result-wide v21

    .line 409
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 410
    .line 411
    .line 412
    move-result-wide v0

    .line 413
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 414
    .line 415
    .line 416
    move-result-wide v0

    .line 417
    move-object/from16 v23, v2

    .line 418
    .line 419
    move/from16 v24, v6

    .line 420
    .line 421
    const/4 v2, 0x4

    .line 422
    new-array v6, v2, [Landroid/graphics/Point;

    .line 423
    .line 424
    new-instance v2, Landroid/graphics/Point;

    .line 425
    .line 426
    move/from16 v25, v8

    .line 427
    .line 428
    iget v8, v15, Ls4/j3;->a:I

    .line 429
    .line 430
    move-object/from16 v26, v3

    .line 431
    .line 432
    iget v3, v15, Ls4/j3;->b:I

    .line 433
    .line 434
    invoke-direct {v2, v8, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 435
    .line 436
    .line 437
    const/4 v3, 0x0

    .line 438
    aput-object v2, v6, v3

    .line 439
    .line 440
    neg-int v5, v5

    .line 441
    iget v8, v11, Ls4/j3;->b:I

    .line 442
    .line 443
    neg-int v8, v8

    .line 444
    invoke-virtual {v2, v5, v8}, Landroid/graphics/Point;->offset(II)V

    .line 445
    .line 446
    .line 447
    aget-object v2, v6, v3

    .line 448
    .line 449
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 450
    .line 451
    move v5, v7

    .line 452
    int-to-double v7, v3

    .line 453
    mul-double v7, v7, v0

    .line 454
    .line 455
    move/from16 v27, v5

    .line 456
    .line 457
    iget v5, v2, Landroid/graphics/Point;->y:I

    .line 458
    .line 459
    move-object/from16 v28, v4

    .line 460
    .line 461
    int-to-double v4, v5

    .line 462
    mul-double v29, v4, v21

    .line 463
    .line 464
    add-double v7, v29, v7

    .line 465
    .line 466
    double-to-int v7, v7

    .line 467
    neg-int v3, v3

    .line 468
    move/from16 v29, v9

    .line 469
    .line 470
    int-to-double v8, v3

    .line 471
    mul-double v8, v8, v21

    .line 472
    .line 473
    mul-double v4, v4, v0

    .line 474
    .line 475
    add-double/2addr v4, v8

    .line 476
    double-to-int v0, v4

    .line 477
    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 478
    .line 479
    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 480
    .line 481
    new-instance v1, Landroid/graphics/Point;

    .line 482
    .line 483
    iget v2, v15, Ls4/j3;->c:I

    .line 484
    .line 485
    add-int/2addr v2, v7

    .line 486
    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 487
    .line 488
    .line 489
    const/4 v3, 0x1

    .line 490
    aput-object v1, v6, v3

    .line 491
    .line 492
    new-instance v1, Landroid/graphics/Point;

    .line 493
    .line 494
    iget v3, v15, Ls4/j3;->d:I

    .line 495
    .line 496
    add-int/2addr v0, v3

    .line 497
    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 498
    .line 499
    .line 500
    aput-object v1, v6, v19

    .line 501
    .line 502
    new-instance v1, Landroid/graphics/Point;

    .line 503
    .line 504
    invoke-direct {v1, v7, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 505
    .line 506
    .line 507
    aput-object v1, v6, v18

    .line 508
    .line 509
    move/from16 v0, v29

    .line 510
    .line 511
    const/4 v1, 0x4

    .line 512
    const/4 v9, 0x0

    .line 513
    :goto_9
    if-ge v9, v1, :cond_e

    .line 514
    .line 515
    aget-object v1, v6, v9

    .line 516
    .line 517
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 518
    .line 519
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    .line 520
    .line 521
    .line 522
    move-result v13

    .line 523
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 524
    .line 525
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 530
    .line 531
    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    .line 532
    .line 533
    .line 534
    move-result v14

    .line 535
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 536
    .line 537
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 538
    .line 539
    .line 540
    move-result v12

    .line 541
    add-int/lit8 v9, v9, 0x1

    .line 542
    .line 543
    const/4 v1, 0x4

    .line 544
    goto :goto_9

    .line 545
    :cond_e
    move-object/from16 v1, p0

    .line 546
    .line 547
    move v9, v0

    .line 548
    move-object/from16 v0, v20

    .line 549
    .line 550
    move-object/from16 v2, v23

    .line 551
    .line 552
    move/from16 v6, v24

    .line 553
    .line 554
    move/from16 v8, v25

    .line 555
    .line 556
    move-object/from16 v3, v26

    .line 557
    .line 558
    move/from16 v7, v27

    .line 559
    .line 560
    move-object/from16 v4, v28

    .line 561
    .line 562
    const/4 v5, 0x1

    .line 563
    goto/16 :goto_8

    .line 564
    .line 565
    :cond_f
    move-object/from16 v20, v0

    .line 566
    .line 567
    move-object/from16 v26, v3

    .line 568
    .line 569
    move-object/from16 v28, v4

    .line 570
    .line 571
    move/from16 v24, v6

    .line 572
    .line 573
    move/from16 v27, v7

    .line 574
    .line 575
    move/from16 v25, v8

    .line 576
    .line 577
    move/from16 v29, v9

    .line 578
    .line 579
    iget v0, v11, Ls4/j3;->a:I

    .line 580
    .line 581
    iget v1, v11, Ls4/j3;->e:F

    .line 582
    .line 583
    float-to-double v1, v1

    .line 584
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 585
    .line 586
    .line 587
    move-result-wide v3

    .line 588
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 589
    .line 590
    .line 591
    move-result-wide v3

    .line 592
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 593
    .line 594
    .line 595
    move-result-wide v1

    .line 596
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 597
    .line 598
    .line 599
    move-result-wide v1

    .line 600
    const/4 v5, 0x4

    .line 601
    new-array v6, v5, [Landroid/graphics/Point;

    .line 602
    .line 603
    new-instance v5, Landroid/graphics/Point;

    .line 604
    .line 605
    invoke-direct {v5, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 606
    .line 607
    .line 608
    const/4 v9, 0x0

    .line 609
    aput-object v5, v6, v9

    .line 610
    .line 611
    new-instance v5, Landroid/graphics/Point;

    .line 612
    .line 613
    move/from16 v7, v29

    .line 614
    .line 615
    invoke-direct {v5, v7, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 616
    .line 617
    .line 618
    const/4 v8, 0x1

    .line 619
    aput-object v5, v6, v8

    .line 620
    .line 621
    new-instance v5, Landroid/graphics/Point;

    .line 622
    .line 623
    invoke-direct {v5, v7, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 624
    .line 625
    .line 626
    aput-object v5, v6, v19

    .line 627
    .line 628
    new-instance v5, Landroid/graphics/Point;

    .line 629
    .line 630
    invoke-direct {v5, v13, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 631
    .line 632
    .line 633
    aput-object v5, v6, v18

    .line 634
    .line 635
    const/4 v5, 0x0

    .line 636
    const/4 v7, 0x4

    .line 637
    :goto_a
    if-ge v5, v7, :cond_10

    .line 638
    .line 639
    aget-object v8, v6, v5

    .line 640
    .line 641
    iget v12, v8, Landroid/graphics/Point;->x:I

    .line 642
    .line 643
    iget v13, v8, Landroid/graphics/Point;->y:I

    .line 644
    .line 645
    int-to-double v14, v12

    .line 646
    mul-double v17, v14, v1

    .line 647
    .line 648
    int-to-double v12, v13

    .line 649
    mul-double v21, v12, v3

    .line 650
    .line 651
    move-object/from16 p1, v10

    .line 652
    .line 653
    sub-double v9, v17, v21

    .line 654
    .line 655
    double-to-int v9, v9

    .line 656
    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 657
    .line 658
    mul-double v14, v14, v3

    .line 659
    .line 660
    mul-double v12, v12, v1

    .line 661
    .line 662
    add-double/2addr v12, v14

    .line 663
    double-to-int v9, v12

    .line 664
    iput v9, v8, Landroid/graphics/Point;->y:I

    .line 665
    .line 666
    iget v9, v11, Ls4/j3;->b:I

    .line 667
    .line 668
    invoke-virtual {v8, v0, v9}, Landroid/graphics/Point;->offset(II)V

    .line 669
    .line 670
    .line 671
    add-int/lit8 v5, v5, 0x1

    .line 672
    .line 673
    move-object/from16 v10, p1

    .line 674
    .line 675
    const/4 v9, 0x0

    .line 676
    goto :goto_a

    .line 677
    :cond_10
    move-object/from16 p1, v10

    .line 678
    .line 679
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    new-instance v1, Lc8/a$d;

    .line 684
    .line 685
    sget-object v2, Lc5/u;->f:Lc5/u;

    .line 686
    .line 687
    move-object/from16 v3, v28

    .line 688
    .line 689
    invoke-static {v3, v2}, Ls4/b;->a(Ljava/util/List;Ls4/ca;)Ljava/util/AbstractList;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    move-object/from16 v4, p1

    .line 694
    .line 695
    invoke-virtual {v4, v2}, Ls4/da;->a(Ljava/util/AbstractList;)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    invoke-static {v0}, Lb8/f;->w0(Ljava/util/List;)Landroid/graphics/Rect;

    .line 700
    .line 701
    .line 702
    new-instance v4, Ljava/util/HashMap;

    .line 703
    .line 704
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 705
    .line 706
    .line 707
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 708
    .line 709
    .line 710
    move-result-object v5

    .line 711
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 712
    .line 713
    .line 714
    move-result v6

    .line 715
    if-eqz v6, :cond_12

    .line 716
    .line 717
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v6

    .line 721
    check-cast v6, Lc8/a$b;

    .line 722
    .line 723
    iget-object v6, v6, Lc8/a$c;->b:Ljava/lang/String;

    .line 724
    .line 725
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-result v8

    .line 729
    if-eqz v8, :cond_11

    .line 730
    .line 731
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v8

    .line 735
    check-cast v8, Ljava/lang/Integer;

    .line 736
    .line 737
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 738
    .line 739
    .line 740
    move-result v9

    .line 741
    const/4 v8, 0x1

    .line 742
    goto :goto_c

    .line 743
    :cond_11
    const/4 v8, 0x1

    .line 744
    const/4 v9, 0x0

    .line 745
    :goto_c
    add-int/2addr v9, v8

    .line 746
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 747
    .line 748
    .line 749
    move-result-object v8

    .line 750
    invoke-virtual {v4, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    goto :goto_b

    .line 754
    :cond_12
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 755
    .line 756
    .line 757
    move-result-object v4

    .line 758
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 759
    .line 760
    .line 761
    move-result v5

    .line 762
    if-eqz v5, :cond_13

    .line 763
    .line 764
    goto :goto_d

    .line 765
    :cond_13
    sget-object v5, Ld8/d;->b:Ld8/c;

    .line 766
    .line 767
    invoke-static {v4, v5}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v4

    .line 771
    check-cast v4, Ljava/util/Map$Entry;

    .line 772
    .line 773
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v4

    .line 777
    check-cast v4, Ljava/lang/String;

    .line 778
    .line 779
    invoke-static {v4}, Lx5/a;->D(Ljava/lang/String;)Z

    .line 780
    .line 781
    .line 782
    move-result v5

    .line 783
    if-eqz v5, :cond_14

    .line 784
    .line 785
    :goto_d
    const-string v4, "und"

    .line 786
    .line 787
    :cond_14
    invoke-direct {v1, v2, v0, v4, v3}, Lc8/a$d;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/AbstractList;)V

    .line 788
    .line 789
    .line 790
    add-int/lit8 v0, v27, 0x1

    .line 791
    .line 792
    move-object/from16 v3, v26

    .line 793
    .line 794
    array-length v2, v3

    .line 795
    if-ge v2, v0, :cond_17

    .line 796
    .line 797
    shr-int/lit8 v4, v2, 0x1

    .line 798
    .line 799
    add-int/2addr v2, v4

    .line 800
    const/4 v5, 0x1

    .line 801
    add-int/2addr v2, v5

    .line 802
    if-ge v2, v0, :cond_15

    .line 803
    .line 804
    add-int/lit8 v0, v0, -0x1

    .line 805
    .line 806
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 807
    .line 808
    .line 809
    move-result v0

    .line 810
    add-int v2, v0, v0

    .line 811
    .line 812
    :cond_15
    if-gez v2, :cond_16

    .line 813
    .line 814
    const v2, 0x7fffffff

    .line 815
    .line 816
    .line 817
    :cond_16
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    goto :goto_e

    .line 822
    :cond_17
    const/4 v5, 0x1

    .line 823
    if-eqz v25, :cond_18

    .line 824
    .line 825
    invoke-virtual {v3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    check-cast v0, [Ljava/lang/Object;

    .line 830
    .line 831
    :goto_e
    move-object v3, v0

    .line 832
    const/4 v8, 0x0

    .line 833
    goto :goto_f

    .line 834
    :cond_18
    move/from16 v8, v25

    .line 835
    .line 836
    :goto_f
    add-int/lit8 v9, v27, 0x1

    .line 837
    .line 838
    aput-object v1, v3, v27

    .line 839
    .line 840
    add-int/lit8 v6, v24, 0x1

    .line 841
    .line 842
    move-object/from16 v1, p0

    .line 843
    .line 844
    move v7, v9

    .line 845
    move-object/from16 v0, v20

    .line 846
    .line 847
    const/4 v2, 0x4

    .line 848
    const/4 v4, 0x0

    .line 849
    goto/16 :goto_4

    .line 850
    .line 851
    :cond_19
    move/from16 v27, v7

    .line 852
    .line 853
    move-object v4, v10

    .line 854
    sget-object v0, Ls4/d0;->b:Ls4/b0;

    .line 855
    .line 856
    if-nez v27, :cond_1a

    .line 857
    .line 858
    sget-object v0, Ls4/r0;->e:Ls4/r0;

    .line 859
    .line 860
    goto :goto_10

    .line 861
    :cond_1a
    new-instance v0, Ls4/r0;

    .line 862
    .line 863
    move/from16 v9, v27

    .line 864
    .line 865
    invoke-direct {v0, v3, v9}, Ls4/r0;-><init>([Ljava/lang/Object;I)V

    .line 866
    .line 867
    .line 868
    :goto_10
    new-instance v1, Lc8/a;

    .line 869
    .line 870
    sget-object v2, Lc5/v;->b:Lc5/v;

    .line 871
    .line 872
    invoke-static {v0, v2}, Ls4/b;->a(Ljava/util/List;Ls4/ca;)Ljava/util/AbstractList;

    .line 873
    .line 874
    .line 875
    move-result-object v2

    .line 876
    invoke-virtual {v4, v2}, Ls4/da;->a(Ljava/util/AbstractList;)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    invoke-direct {v1, v0}, Lc8/a;-><init>(Ls4/r0;)V

    .line 880
    .line 881
    .line 882
    return-object v1

    .line 883
    :catch_0
    move-exception v0

    .line 884
    new-instance v1, Lr7/a;

    .line 885
    .line 886
    const-string v2, "Failed to run legacy text recognizer."

    .line 887
    .line 888
    invoke-direct {v1, v2, v0}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 889
    .line 890
    .line 891
    throw v1

    .line 892
    :cond_1b
    new-instance v0, Lr7/a;

    .line 893
    .line 894
    const-string v1, "Waiting for the text recognition module to be downloaded. Please wait."

    .line 895
    .line 896
    const/16 v2, 0xe

    .line 897
    .line 898
    invoke-direct {v0, v1, v2}, Lr7/a;-><init>(Ljava/lang/String;I)V

    .line 899
    .line 900
    .line 901
    throw v0
.end method

.method public final b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld8/b;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Ld8/b;->d:Ls4/l5;

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    :try_start_0
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->b:Lcom/google/android/gms/dynamite/b;

    .line 8
    .line 9
    const-string v2, "com.google.android.gms.vision.dynamite"

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget v2, Ls4/g7;->a:I

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v2, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator"

    .line 28
    .line 29
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    instance-of v3, v2, Ls4/g8;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    move-object v1, v2

    .line 38
    check-cast v1, Ls4/g8;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance v2, Ls4/k6;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Ls4/k6;-><init>(Landroid/os/IBinder;)V

    .line 44
    .line 45
    .line 46
    move-object v1, v2

    .line 47
    :goto_0
    new-instance v2, Lz3/d;

    .line 48
    .line 49
    invoke-direct {v2, v0}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Ld8/b;->b:Ls4/y9;

    .line 53
    .line 54
    invoke-interface {v1, v2, v3}, Ls4/g8;->e0(Lz3/d;Ls4/y9;)Ls4/l5;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Ld8/b;->d:Ls4/l5;

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    iget-boolean v1, p0, Ld8/b;->c:Z

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    const-string v1, "LegacyTextDelegate"

    .line 67
    .line 68
    const-string v2, "Request OCR optional module download."

    .line 69
    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    const-string v1, "ocr"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lv7/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Ld8/b;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    :cond_2
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Lr7/a;

    .line 84
    .line 85
    const-string v2, "Failed to load deprecated vision dynamite module."

    .line 86
    .line 87
    invoke-direct {v1, v2, v0}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 88
    .line 89
    .line 90
    throw v1

    .line 91
    :catch_1
    move-exception v0

    .line 92
    new-instance v1, Lr7/a;

    .line 93
    .line 94
    const-string v2, "Failed to create legacy text recognizer."

    .line 95
    .line 96
    invoke-direct {v1, v2, v0}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 97
    .line 98
    .line 99
    throw v1

    .line 100
    :cond_3
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld8/b;->d:Ls4/l5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ls4/a;->w0()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {v0, v1, v2}, Ls4/a;->y0(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string v1, "LegacyTextDelegate"

    .line 16
    .line 17
    const-string v2, "Failed to release legacy text recognizer."

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Ld8/b;->d:Ls4/l5;

    .line 24
    .line 25
    :cond_0
    return-void
.end method
