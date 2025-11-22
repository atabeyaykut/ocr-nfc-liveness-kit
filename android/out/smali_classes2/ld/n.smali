.class public final Lld/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lld/n$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 24

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_18

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lgd/l;

    .line 30
    .line 31
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Lgd/g;

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    move-object v6, v1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    .line 52
    .line 53
    iget-object v7, v3, Lgd/l;->a:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v8, v5, Lgd/g;->b:Ljava/lang/Long;

    .line 64
    .line 65
    const-wide/16 v9, -0x1

    .line 66
    .line 67
    if-nez v8, :cond_2

    .line 68
    .line 69
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide v11

    .line 77
    iget-object v8, v5, Lgd/g;->k:Ljava/lang/Integer;

    .line 78
    .line 79
    if-nez v8, :cond_3

    .line 80
    .line 81
    const/4 v8, -0x1

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    :goto_2
    iget-object v14, v5, Lgd/g;->l:Ljava/lang/Integer;

    .line 88
    .line 89
    if-nez v14, :cond_4

    .line 90
    .line 91
    const/4 v14, -0x1

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    :goto_3
    sub-int v15, v14, v8

    .line 98
    .line 99
    const/4 v1, 0x1

    .line 100
    add-int/2addr v15, v1

    .line 101
    invoke-static {v11, v12, v15, v1}, Lgd/g;->g(JIZ)[B

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    const/4 v12, 0x2

    .line 106
    const/4 v15, 0x0

    .line 107
    if-eqz v6, :cond_c

    .line 108
    .line 109
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v16

    .line 113
    if-lez v16, :cond_c

    .line 114
    .line 115
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v16

    .line 119
    if-eqz v16, :cond_c

    .line 120
    .line 121
    iget-object v13, v5, Lgd/g;->b:Ljava/lang/Long;

    .line 122
    .line 123
    if-nez v13, :cond_5

    .line 124
    .line 125
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v13

    .line 129
    :cond_5
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 130
    .line 131
    .line 132
    move-result-wide v9

    .line 133
    const-wide/16 v17, 0x215

    .line 134
    .line 135
    cmp-long v13, v9, v17

    .line 136
    .line 137
    if-nez v13, :cond_c

    .line 138
    .line 139
    iget-object v9, v5, Lgd/g;->z:[I

    .line 140
    .line 141
    array-length v10, v9

    .line 142
    if-lez v10, :cond_c

    .line 143
    .line 144
    aget v5, v9, v15

    .line 145
    .line 146
    new-instance v8, Lld/n$a;

    .line 147
    .line 148
    invoke-direct {v8}, Lld/n$a;-><init>()V

    .line 149
    .line 150
    .line 151
    iput v5, v8, Lld/n$a;->c:I

    .line 152
    .line 153
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-ne v5, v12, :cond_6

    .line 158
    .line 159
    const/16 v5, 0x14

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_6
    const/16 v5, 0x12

    .line 163
    .line 164
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    const/4 v10, 0x3

    .line 169
    if-ne v9, v10, :cond_7

    .line 170
    .line 171
    const/16 v5, 0x16

    .line 172
    .line 173
    :cond_7
    new-array v9, v5, [B

    .line 174
    .line 175
    iput-object v9, v8, Lld/n$a;->d:[B

    .line 176
    .line 177
    aget-byte v10, v11, v15

    .line 178
    .line 179
    aput-byte v10, v9, v15

    .line 180
    .line 181
    aget-byte v10, v11, v1

    .line 182
    .line 183
    aput-byte v10, v9, v1

    .line 184
    .line 185
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    check-cast v9, Lgd/h;

    .line 190
    .line 191
    iget-object v9, v9, Lgd/h;->a:[B

    .line 192
    .line 193
    invoke-virtual {v9}, [B->clone()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    check-cast v9, [B

    .line 198
    .line 199
    const/4 v10, 0x0

    .line 200
    :goto_5
    array-length v11, v9

    .line 201
    if-ge v10, v11, :cond_8

    .line 202
    .line 203
    iget-object v11, v8, Lld/n$a;->d:[B

    .line 204
    .line 205
    add-int/lit8 v13, v10, 0x2

    .line 206
    .line 207
    aget-byte v14, v9, v10

    .line 208
    .line 209
    aput-byte v14, v11, v13

    .line 210
    .line 211
    add-int/lit8 v10, v10, 0x1

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    if-le v9, v1, :cond_9

    .line 219
    .line 220
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    if-eqz v9, :cond_9

    .line 225
    .line 226
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    check-cast v9, Lgd/h;

    .line 231
    .line 232
    iget-object v9, v9, Lgd/h;->a:[B

    .line 233
    .line 234
    invoke-virtual {v9}, [B->clone()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    check-cast v9, [B

    .line 239
    .line 240
    const/4 v10, 0x0

    .line 241
    :goto_6
    array-length v11, v9

    .line 242
    if-ge v10, v11, :cond_9

    .line 243
    .line 244
    iget-object v11, v8, Lld/n$a;->d:[B

    .line 245
    .line 246
    add-int/lit8 v13, v10, 0x12

    .line 247
    .line 248
    aget-byte v14, v9, v10

    .line 249
    .line 250
    aput-byte v14, v11, v13

    .line 251
    .line 252
    add-int/lit8 v10, v10, 0x1

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    if-le v9, v12, :cond_a

    .line 260
    .line 261
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    if-eqz v9, :cond_a

    .line 266
    .line 267
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    check-cast v6, Lgd/h;

    .line 272
    .line 273
    iget-object v6, v6, Lgd/h;->a:[B

    .line 274
    .line 275
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    check-cast v6, [B

    .line 280
    .line 281
    const/4 v9, 0x0

    .line 282
    :goto_7
    array-length v10, v6

    .line 283
    if-ge v9, v10, :cond_a

    .line 284
    .line 285
    iget-object v10, v8, Lld/n$a;->d:[B

    .line 286
    .line 287
    add-int/lit8 v11, v9, 0x14

    .line 288
    .line 289
    aget-byte v12, v6, v9

    .line 290
    .line 291
    aput-byte v12, v10, v11

    .line 292
    .line 293
    add-int/lit8 v9, v9, 0x1

    .line 294
    .line 295
    goto :goto_7

    .line 296
    :cond_a
    new-array v6, v5, [B

    .line 297
    .line 298
    iput-object v6, v8, Lld/n$a;->e:[B

    .line 299
    .line 300
    const/4 v6, 0x0

    .line 301
    :goto_8
    if-ge v6, v5, :cond_b

    .line 302
    .line 303
    iget-object v9, v8, Lld/n$a;->e:[B

    .line 304
    .line 305
    const/4 v10, -0x1

    .line 306
    aput-byte v10, v9, v6

    .line 307
    .line 308
    add-int/lit8 v6, v6, 0x1

    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_b
    const/4 v6, 0x0

    .line 312
    iput-object v6, v8, Lld/n$a;->a:Ljava/lang/Long;

    .line 313
    .line 314
    new-array v5, v15, [B

    .line 315
    .line 316
    iput-object v5, v8, Lld/n$a;->b:[B

    .line 317
    .line 318
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    goto :goto_d

    .line 322
    :cond_c
    iget-object v6, v5, Lgd/g;->z:[I

    .line 323
    .line 324
    array-length v9, v6

    .line 325
    const/4 v10, 0x0

    .line 326
    :goto_9
    if-ge v10, v9, :cond_10

    .line 327
    .line 328
    aget v13, v6, v10

    .line 329
    .line 330
    new-instance v12, Lld/n$a;

    .line 331
    .line 332
    invoke-direct {v12}, Lld/n$a;-><init>()V

    .line 333
    .line 334
    .line 335
    iget-object v1, v5, Lgd/g;->p:Ljava/lang/Long;

    .line 336
    .line 337
    add-int/lit8 v19, v14, 0x1

    .line 338
    .line 339
    move-object/from16 v20, v0

    .line 340
    .line 341
    add-int/lit8 v0, v19, -0x2

    .line 342
    .line 343
    move-object/from16 v19, v3

    .line 344
    .line 345
    new-array v3, v15, [B

    .line 346
    .line 347
    move-object/from16 v21, v3

    .line 348
    .line 349
    new-array v3, v15, [B

    .line 350
    .line 351
    if-lez v0, :cond_f

    .line 352
    .line 353
    new-array v3, v0, [B

    .line 354
    .line 355
    new-array v0, v0, [B

    .line 356
    .line 357
    const/4 v15, 0x2

    .line 358
    :goto_a
    if-gt v15, v14, :cond_e

    .line 359
    .line 360
    add-int/lit8 v21, v15, -0x2

    .line 361
    .line 362
    if-ge v15, v8, :cond_d

    .line 363
    .line 364
    const/16 v22, 0x0

    .line 365
    .line 366
    aput-byte v22, v3, v21

    .line 367
    .line 368
    aput-byte v22, v0, v21

    .line 369
    .line 370
    const/16 v16, -0x1

    .line 371
    .line 372
    goto :goto_b

    .line 373
    :cond_d
    sub-int v23, v15, v8

    .line 374
    .line 375
    aget-byte v23, v11, v23

    .line 376
    .line 377
    aput-byte v23, v3, v21

    .line 378
    .line 379
    const/16 v16, -0x1

    .line 380
    .line 381
    aput-byte v16, v0, v21

    .line 382
    .line 383
    :goto_b
    add-int/lit8 v15, v15, 0x1

    .line 384
    .line 385
    goto :goto_a

    .line 386
    :cond_e
    const/16 v16, -0x1

    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_f
    const/16 v16, -0x1

    .line 390
    .line 391
    move-object v0, v3

    .line 392
    move-object/from16 v3, v21

    .line 393
    .line 394
    :goto_c
    iput v13, v12, Lld/n$a;->c:I

    .line 395
    .line 396
    iput-object v3, v12, Lld/n$a;->d:[B

    .line 397
    .line 398
    iput-object v0, v12, Lld/n$a;->e:[B

    .line 399
    .line 400
    iput-object v1, v12, Lld/n$a;->a:Ljava/lang/Long;

    .line 401
    .line 402
    iget-object v0, v5, Lgd/g;->q:[B

    .line 403
    .line 404
    iput-object v0, v12, Lld/n$a;->b:[B

    .line 405
    .line 406
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    add-int/lit8 v10, v10, 0x1

    .line 410
    .line 411
    move-object/from16 v3, v19

    .line 412
    .line 413
    move-object/from16 v0, v20

    .line 414
    .line 415
    const/4 v1, 0x1

    .line 416
    const/4 v12, 0x2

    .line 417
    const/4 v15, 0x0

    .line 418
    goto :goto_9

    .line 419
    :cond_10
    :goto_d
    move-object/from16 v20, v0

    .line 420
    .line 421
    move-object/from16 v19, v3

    .line 422
    .line 423
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-eqz v1, :cond_17

    .line 432
    .line 433
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    check-cast v1, Lld/n$a;

    .line 438
    .line 439
    new-instance v3, Landroid/bluetooth/le/ScanFilter$Builder;

    .line 440
    .line 441
    invoke-direct {v3}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 442
    .line 443
    .line 444
    iget-object v5, v1, Lld/n$a;->a:Ljava/lang/Long;

    .line 445
    .line 446
    const-string v6, "making scan filter with service mask: FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF "

    .line 447
    .line 448
    const-string v7, "making scan filter for service: "

    .line 449
    .line 450
    const-string v8, "FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"

    .line 451
    .line 452
    const-string v9, " "

    .line 453
    .line 454
    const-string v10, "ScanFilterUtils"

    .line 455
    .line 456
    if-eqz v5, :cond_12

    .line 457
    .line 458
    const/4 v11, 0x1

    .line 459
    new-array v1, v11, [Ljava/lang/Object;

    .line 460
    .line 461
    const/4 v11, 0x0

    .line 462
    aput-object v5, v1, v11

    .line 463
    .line 464
    const-string v5, "0000%04X-0000-1000-8000-00805f9b34fb"

    .line 465
    .line 466
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-static {v8}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 475
    .line 476
    .line 477
    move-result-object v8

    .line 478
    sget-boolean v11, Lid/b;->b:Z

    .line 479
    .line 480
    if-eqz v11, :cond_11

    .line 481
    .line 482
    new-instance v11, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    const/4 v11, 0x0

    .line 501
    new-array v7, v11, [Ljava/lang/Object;

    .line 502
    .line 503
    invoke-static {v10, v1, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    .line 507
    .line 508
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    new-array v6, v11, [Ljava/lang/Object;

    .line 519
    .line 520
    invoke-static {v10, v1, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    .line 522
    .line 523
    goto :goto_f

    .line 524
    :cond_11
    const/4 v11, 0x0

    .line 525
    :goto_f
    invoke-virtual {v3, v5, v8}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 526
    .line 527
    .line 528
    const/4 v5, 0x0

    .line 529
    const/4 v12, 0x1

    .line 530
    goto/16 :goto_10

    .line 531
    .line 532
    :cond_12
    const/4 v11, 0x0

    .line 533
    iget-object v5, v1, Lld/n$a;->b:[B

    .line 534
    .line 535
    array-length v12, v5

    .line 536
    if-eqz v12, :cond_14

    .line 537
    .line 538
    const/16 v1, 0x10

    .line 539
    .line 540
    const/4 v12, 0x1

    .line 541
    invoke-static {v5, v11, v1, v12}, Lgd/h;->n([BIIZ)Lgd/h;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    invoke-virtual {v1}, Lgd/h;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    invoke-static {v8}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 554
    .line 555
    .line 556
    move-result-object v8

    .line 557
    sget-boolean v11, Lid/b;->b:Z

    .line 558
    .line 559
    if-eqz v11, :cond_13

    .line 560
    .line 561
    new-instance v11, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    const/4 v7, 0x0

    .line 580
    new-array v9, v7, [Ljava/lang/Object;

    .line 581
    .line 582
    invoke-static {v10, v1, v9}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    new-array v6, v7, [Ljava/lang/Object;

    .line 598
    .line 599
    invoke-static {v10, v1, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    :cond_13
    invoke-virtual {v3, v5, v8}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 603
    .line 604
    .line 605
    const/4 v5, 0x0

    .line 606
    goto :goto_10

    .line 607
    :cond_14
    const/4 v5, 0x0

    .line 608
    const/4 v12, 0x1

    .line 609
    invoke-virtual {v3, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 610
    .line 611
    .line 612
    iget v6, v1, Lld/n$a;->c:I

    .line 613
    .line 614
    iget-object v7, v1, Lld/n$a;->d:[B

    .line 615
    .line 616
    iget-object v8, v1, Lld/n$a;->e:[B

    .line 617
    .line 618
    invoke-virtual {v3, v6, v7, v8}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 619
    .line 620
    .line 621
    sget-boolean v6, Lid/b;->b:Z

    .line 622
    .line 623
    if-eqz v6, :cond_15

    .line 624
    .line 625
    new-instance v6, Ljava/lang/StringBuilder;

    .line 626
    .line 627
    const-string v7, "making scan filter for manufacturer: "

    .line 628
    .line 629
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    iget v7, v1, Lld/n$a;->c:I

    .line 633
    .line 634
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    iget-object v1, v1, Lld/n$a;->d:[B

    .line 641
    .line 642
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v1

    .line 649
    const/4 v6, 0x0

    .line 650
    new-array v7, v6, [Ljava/lang/Object;

    .line 651
    .line 652
    invoke-static {v10, v1, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    .line 654
    .line 655
    :cond_15
    :goto_10
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    sget-boolean v3, Lid/b;->b:Z

    .line 660
    .line 661
    if-eqz v3, :cond_16

    .line 662
    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    const-string v6, "Set up a scan filter: "

    .line 666
    .line 667
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    const/4 v6, 0x0

    .line 678
    new-array v7, v6, [Ljava/lang/Object;

    .line 679
    .line 680
    invoke-static {v10, v3, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    goto :goto_11

    .line 684
    :cond_16
    const/4 v6, 0x0

    .line 685
    :goto_11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    goto/16 :goto_e

    .line 689
    .line 690
    :cond_17
    move-object/from16 v3, v19

    .line 691
    .line 692
    move-object/from16 v0, v20

    .line 693
    .line 694
    const/4 v1, 0x0

    .line 695
    goto/16 :goto_0

    .line 696
    .line 697
    :cond_18
    return-object v2
.end method
