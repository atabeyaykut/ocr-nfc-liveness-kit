.class public final Ldb/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldb/g;


# direct methods
.method public constructor <init>(Ldb/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb/t;->a:Ldb/g;

    return-void
.end method


# virtual methods
.method public final a(Ldb/v;Lcc/e0;Ljava/util/List;Ldb/w;Z)Lcc/e0;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldb/v;",
            "Lcc/e0;",
            "Ljava/util/List<",
            "+",
            "Lcc/e0;",
            ">;",
            "Ldb/w;",
            "Z)",
            "Lcc/e0;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    check-cast v2, Ljava/lang/Iterable;

    .line 8
    .line 9
    const-string v3, "<this>"

    .line 10
    .line 11
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p1 .. p2}, Ldb/a;->d(Lfc/h;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Lfc/h;

    .line 42
    .line 43
    invoke-virtual {v0, v6}, Ldb/a;->d(Lfc/h;)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v5, 0x1

    .line 52
    iget-object v6, v0, Ldb/v;->c:Lp4/g7;

    .line 53
    .line 54
    iget-boolean v8, v0, Ldb/v;->b:Z

    .line 55
    .line 56
    if-eqz v8, :cond_4

    .line 57
    .line 58
    instance-of v9, v2, Ljava/util/Collection;

    .line 59
    .line 60
    if-eqz v9, :cond_1

    .line 61
    .line 62
    move-object v9, v2

    .line 63
    check-cast v9, Ljava/util/Collection;

    .line 64
    .line 65
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eqz v9, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_3

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    check-cast v9, Lfc/h;

    .line 87
    .line 88
    const-string v10, "other"

    .line 89
    .line 90
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v10, v6, Lp4/g7;->a:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v10, Lya/c;

    .line 96
    .line 97
    iget-object v10, v10, Lya/c;->u:Ldc/l;

    .line 98
    .line 99
    check-cast v9, Lcc/e0;

    .line 100
    .line 101
    invoke-interface {v10, v1, v9}, Ldc/d;->c(Lcc/e0;Lcc/e0;)Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    xor-int/2addr v9, v5

    .line 106
    if-eqz v9, :cond_2

    .line 107
    .line 108
    const/4 v2, 0x1

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 111
    :goto_2
    if-eqz v2, :cond_4

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    const/4 v2, 0x0

    .line 116
    :goto_3
    if-eqz v2, :cond_5

    .line 117
    .line 118
    const/4 v2, 0x1

    .line 119
    goto :goto_4

    .line 120
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    :goto_4
    new-array v9, v2, [Ldb/h;

    .line 125
    .line 126
    const/4 v10, 0x0

    .line 127
    :goto_5
    if-ge v10, v2, :cond_53

    .line 128
    .line 129
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    check-cast v11, Ldb/a$a;

    .line 134
    .line 135
    iget-object v12, v11, Ldb/a$a;->a:Lfc/h;

    .line 136
    .line 137
    sget-object v13, Ldb/k;->b:Ldb/k;

    .line 138
    .line 139
    sget-object v14, Ldb/k;->c:Ldb/k;

    .line 140
    .line 141
    sget-object v15, Ldc/p;->a:Ldc/p;

    .line 142
    .line 143
    sget-object v7, Ldb/i;->b:Ldb/i;

    .line 144
    .line 145
    sget-object v5, Ldb/i;->a:Ldb/i;

    .line 146
    .line 147
    sget-object v1, Ldb/k;->a:Ldb/k;

    .line 148
    .line 149
    const/16 v16, 0x0

    .line 150
    .line 151
    move/from16 v17, v2

    .line 152
    .line 153
    iget-object v2, v0, Ldb/v;->a:Lna/a;

    .line 154
    .line 155
    move-object/from16 v18, v3

    .line 156
    .line 157
    iget-object v3, v11, Ldb/a$a;->c:Lfc/m;

    .line 158
    .line 159
    if-nez v12, :cond_8

    .line 160
    .line 161
    if-eqz v3, :cond_7

    .line 162
    .line 163
    instance-of v12, v3, Lma/w0;

    .line 164
    .line 165
    if-eqz v12, :cond_6

    .line 166
    .line 167
    move-object v12, v3

    .line 168
    check-cast v12, Lma/w0;

    .line 169
    .line 170
    invoke-interface {v12}, Lma/w0;->I()Lcc/t1;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    move-object/from16 v19, v9

    .line 175
    .line 176
    const-string v9, "this.variance"

    .line 177
    .line 178
    invoke-static {v12, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v12}, Lb8/f;->r(Lcc/t1;)I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    goto :goto_6

    .line 186
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v1, "ClassicTypeSystemContext couldn\'t handle: "

    .line 189
    .line 190
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", "

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v1}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v1

    .line 226
    :cond_7
    move-object/from16 v19, v9

    .line 227
    .line 228
    const/4 v9, 0x0

    .line 229
    :goto_6
    const/4 v12, 0x1

    .line 230
    if-ne v9, v12, :cond_9

    .line 231
    .line 232
    sget-object v3, Ldb/h;->e:Ldb/h;

    .line 233
    .line 234
    move-object/from16 v25, v2

    .line 235
    .line 236
    move-object/from16 v21, v5

    .line 237
    .line 238
    move-object/from16 v20, v6

    .line 239
    .line 240
    move-object/from16 v22, v7

    .line 241
    .line 242
    move/from16 v23, v8

    .line 243
    .line 244
    move/from16 v27, v10

    .line 245
    .line 246
    move-object/from16 v26, v15

    .line 247
    .line 248
    goto/16 :goto_17

    .line 249
    .line 250
    :cond_8
    move-object/from16 v19, v9

    .line 251
    .line 252
    :cond_9
    if-nez v3, :cond_a

    .line 253
    .line 254
    const/4 v9, 0x1

    .line 255
    goto :goto_7

    .line 256
    :cond_a
    const/4 v9, 0x0

    .line 257
    :goto_7
    sget-object v12, Lm9/v;->a:Lm9/v;

    .line 258
    .line 259
    move-object/from16 v20, v12

    .line 260
    .line 261
    iget-object v12, v11, Ldb/a$a;->a:Lfc/h;

    .line 262
    .line 263
    if-eqz v12, :cond_b

    .line 264
    .line 265
    move-object/from16 v21, v12

    .line 266
    .line 267
    check-cast v21, Lcc/e0;

    .line 268
    .line 269
    invoke-virtual/range {v21 .. v21}, Lcc/e0;->getAnnotations()Lna/h;

    .line 270
    .line 271
    .line 272
    move-result-object v21

    .line 273
    move-object/from16 v30, v21

    .line 274
    .line 275
    move-object/from16 v21, v5

    .line 276
    .line 277
    move-object/from16 v5, v30

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_b
    move-object/from16 v21, v5

    .line 281
    .line 282
    move-object/from16 v5, v20

    .line 283
    .line 284
    :goto_8
    if-eqz v12, :cond_c

    .line 285
    .line 286
    invoke-virtual {v15, v12}, Ldc/p;->V(Lfc/h;)Lcc/c1;

    .line 287
    .line 288
    .line 289
    move-result-object v12

    .line 290
    if-eqz v12, :cond_c

    .line 291
    .line 292
    invoke-static {v12}, Ldc/b$a;->x(Lfc/l;)Lma/w0;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    move-object/from16 v22, v7

    .line 297
    .line 298
    goto :goto_9

    .line 299
    :cond_c
    move-object/from16 v22, v7

    .line 300
    .line 301
    move-object/from16 v12, v16

    .line 302
    .line 303
    :goto_9
    sget-object v7, Lva/c;->f:Lva/c;

    .line 304
    .line 305
    move/from16 v23, v8

    .line 306
    .line 307
    iget-object v8, v0, Ldb/v;->d:Lva/c;

    .line 308
    .line 309
    if-ne v8, v7, :cond_d

    .line 310
    .line 311
    const/4 v7, 0x1

    .line 312
    goto :goto_a

    .line 313
    :cond_d
    const/4 v7, 0x0

    .line 314
    :goto_a
    move-object/from16 v24, v8

    .line 315
    .line 316
    if-nez v9, :cond_e

    .line 317
    .line 318
    goto :goto_c

    .line 319
    :cond_e
    if-nez v7, :cond_f

    .line 320
    .line 321
    iget-object v8, v6, Lp4/g7;->a:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v8, Lya/c;

    .line 324
    .line 325
    iget-object v8, v8, Lya/c;->t:Lya/d;

    .line 326
    .line 327
    invoke-interface {v8}, Lya/d;->c()V

    .line 328
    .line 329
    .line 330
    :cond_f
    if-eqz v2, :cond_10

    .line 331
    .line 332
    invoke-interface {v2}, Lna/a;->getAnnotations()Lna/h;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    if-eqz v8, :cond_10

    .line 337
    .line 338
    goto :goto_b

    .line 339
    :cond_10
    move-object/from16 v8, v20

    .line 340
    .line 341
    :goto_b
    invoke-static {v8, v5}, Lm9/t;->k1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    :goto_c
    iget-object v8, v6, Lp4/g7;->a:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v8, Lya/c;

    .line 348
    .line 349
    iget-object v8, v8, Lya/c;->q:Lva/e;

    .line 350
    .line 351
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object v20

    .line 358
    move-object/from16 v25, v2

    .line 359
    .line 360
    move-object/from16 v2, v16

    .line 361
    .line 362
    :goto_d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    .line 364
    .line 365
    move-result v26

    .line 366
    if-eqz v26, :cond_14

    .line 367
    .line 368
    move-object/from16 v26, v15

    .line 369
    .line 370
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v15

    .line 374
    invoke-virtual {v8, v15}, Lva/e;->e(Ljava/lang/Object;)Llb/c;

    .line 375
    .line 376
    .line 377
    move-result-object v15

    .line 378
    move-object/from16 v27, v8

    .line 379
    .line 380
    sget-object v8, Lva/y;->l:Ljava/util/Set;

    .line 381
    .line 382
    invoke-interface {v8, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v8

    .line 386
    if-eqz v8, :cond_11

    .line 387
    .line 388
    move-object/from16 v8, v21

    .line 389
    .line 390
    goto :goto_e

    .line 391
    :cond_11
    sget-object v8, Lva/y;->m:Ljava/util/Set;

    .line 392
    .line 393
    invoke-interface {v8, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v8

    .line 397
    if-eqz v8, :cond_13

    .line 398
    .line 399
    move-object/from16 v8, v22

    .line 400
    .line 401
    :goto_e
    if-eqz v2, :cond_12

    .line 402
    .line 403
    if-eq v2, v8, :cond_12

    .line 404
    .line 405
    move-object/from16 v2, v16

    .line 406
    .line 407
    goto :goto_f

    .line 408
    :cond_12
    move-object v2, v8

    .line 409
    :cond_13
    move-object/from16 v15, v26

    .line 410
    .line 411
    move-object/from16 v8, v27

    .line 412
    .line 413
    goto :goto_d

    .line 414
    :cond_14
    move-object/from16 v26, v15

    .line 415
    .line 416
    :goto_f
    iget-object v8, v6, Lp4/g7;->a:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast v8, Lya/c;

    .line 419
    .line 420
    iget-object v8, v8, Lya/c;->q:Lva/e;

    .line 421
    .line 422
    new-instance v15, Ldb/c;

    .line 423
    .line 424
    invoke-direct {v15, v0}, Ldb/c;-><init>(Ldb/a;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    move-object/from16 v20, v6

    .line 435
    .line 436
    move-object/from16 v6, v16

    .line 437
    .line 438
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 439
    .line 440
    .line 441
    move-result v27

    .line 442
    if-eqz v27, :cond_1a

    .line 443
    .line 444
    move/from16 v27, v10

    .line 445
    .line 446
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v10

    .line 450
    invoke-virtual {v8, v15, v10}, Lva/b;->c(Lx9/l;Ljava/lang/Object;)Ldb/l;

    .line 451
    .line 452
    .line 453
    move-result-object v10

    .line 454
    if-nez v6, :cond_15

    .line 455
    .line 456
    move-object/from16 v28, v5

    .line 457
    .line 458
    goto :goto_11

    .line 459
    :cond_15
    if-eqz v10, :cond_19

    .line 460
    .line 461
    invoke-static {v10, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v28

    .line 465
    if-eqz v28, :cond_16

    .line 466
    .line 467
    goto :goto_12

    .line 468
    :cond_16
    move-object/from16 v28, v5

    .line 469
    .line 470
    iget-boolean v5, v6, Ldb/l;->b:Z

    .line 471
    .line 472
    move-object/from16 v29, v6

    .line 473
    .line 474
    iget-boolean v6, v10, Ldb/l;->b:Z

    .line 475
    .line 476
    if-eqz v6, :cond_17

    .line 477
    .line 478
    if-nez v5, :cond_17

    .line 479
    .line 480
    goto :goto_13

    .line 481
    :cond_17
    if-nez v6, :cond_18

    .line 482
    .line 483
    if-eqz v5, :cond_18

    .line 484
    .line 485
    :goto_11
    move-object v6, v10

    .line 486
    goto :goto_14

    .line 487
    :cond_18
    move-object/from16 v6, v16

    .line 488
    .line 489
    goto :goto_15

    .line 490
    :cond_19
    :goto_12
    move-object/from16 v28, v5

    .line 491
    .line 492
    move-object/from16 v29, v6

    .line 493
    .line 494
    :goto_13
    move-object/from16 v6, v29

    .line 495
    .line 496
    :goto_14
    move/from16 v10, v27

    .line 497
    .line 498
    move-object/from16 v5, v28

    .line 499
    .line 500
    goto :goto_10

    .line 501
    :cond_1a
    move-object/from16 v29, v6

    .line 502
    .line 503
    move/from16 v27, v10

    .line 504
    .line 505
    :goto_15
    if-eqz v6, :cond_1c

    .line 506
    .line 507
    new-instance v3, Ldb/h;

    .line 508
    .line 509
    iget-object v5, v6, Ldb/l;->a:Ldb/k;

    .line 510
    .line 511
    if-ne v5, v14, :cond_1b

    .line 512
    .line 513
    if-eqz v12, :cond_1b

    .line 514
    .line 515
    const/4 v7, 0x1

    .line 516
    goto :goto_16

    .line 517
    :cond_1b
    const/4 v7, 0x0

    .line 518
    :goto_16
    iget-boolean v6, v6, Ldb/l;->b:Z

    .line 519
    .line 520
    invoke-direct {v3, v5, v2, v7, v6}, Ldb/h;-><init>(Ldb/k;Ldb/i;ZZ)V

    .line 521
    .line 522
    .line 523
    :goto_17
    const/4 v7, 0x1

    .line 524
    goto/16 :goto_26

    .line 525
    .line 526
    :cond_1c
    if-nez v9, :cond_1e

    .line 527
    .line 528
    if-eqz v7, :cond_1d

    .line 529
    .line 530
    goto :goto_18

    .line 531
    :cond_1d
    sget-object v8, Lva/c;->e:Lva/c;

    .line 532
    .line 533
    goto :goto_19

    .line 534
    :cond_1e
    :goto_18
    move-object/from16 v8, v24

    .line 535
    .line 536
    :goto_19
    iget-object v5, v11, Ldb/a$a;->b:Lva/t;

    .line 537
    .line 538
    if-eqz v5, :cond_1f

    .line 539
    .line 540
    iget-object v5, v5, Lva/t;->a:Ljava/util/EnumMap;

    .line 541
    .line 542
    invoke-virtual {v5, v8}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v5

    .line 546
    check-cast v5, Lva/n;

    .line 547
    .line 548
    goto :goto_1a

    .line 549
    :cond_1f
    move-object/from16 v5, v16

    .line 550
    .line 551
    :goto_1a
    if-eqz v12, :cond_20

    .line 552
    .line 553
    invoke-virtual {v0, v12}, Ldb/a;->b(Lfc/m;)Ldb/l;

    .line 554
    .line 555
    .line 556
    move-result-object v6

    .line 557
    goto :goto_1b

    .line 558
    :cond_20
    move-object/from16 v6, v16

    .line 559
    .line 560
    :goto_1b
    const/4 v7, 0x2

    .line 561
    if-eqz v6, :cond_21

    .line 562
    .line 563
    const/4 v8, 0x0

    .line 564
    invoke-static {v6, v14, v8, v7}, Ldb/l;->a(Ldb/l;Ldb/k;ZI)Ldb/l;

    .line 565
    .line 566
    .line 567
    move-result-object v9

    .line 568
    goto :goto_1c

    .line 569
    :cond_21
    if-eqz v5, :cond_22

    .line 570
    .line 571
    iget-object v9, v5, Lva/n;->a:Ldb/l;

    .line 572
    .line 573
    goto :goto_1c

    .line 574
    :cond_22
    move-object/from16 v9, v16

    .line 575
    .line 576
    :goto_1c
    if-eqz v6, :cond_23

    .line 577
    .line 578
    iget-object v6, v6, Ldb/l;->a:Ldb/k;

    .line 579
    .line 580
    goto :goto_1d

    .line 581
    :cond_23
    move-object/from16 v6, v16

    .line 582
    .line 583
    :goto_1d
    if-eq v6, v14, :cond_26

    .line 584
    .line 585
    if-eqz v12, :cond_25

    .line 586
    .line 587
    if-eqz v5, :cond_24

    .line 588
    .line 589
    iget-boolean v5, v5, Lva/n;->c:Z

    .line 590
    .line 591
    const/4 v6, 0x1

    .line 592
    if-ne v5, v6, :cond_24

    .line 593
    .line 594
    const/4 v5, 0x1

    .line 595
    goto :goto_1e

    .line 596
    :cond_24
    const/4 v5, 0x0

    .line 597
    :goto_1e
    if-eqz v5, :cond_25

    .line 598
    .line 599
    goto :goto_1f

    .line 600
    :cond_25
    const/4 v12, 0x0

    .line 601
    goto :goto_20

    .line 602
    :cond_26
    :goto_1f
    const/4 v12, 0x1

    .line 603
    :goto_20
    if-eqz v3, :cond_27

    .line 604
    .line 605
    invoke-virtual {v0, v3}, Ldb/a;->b(Lfc/m;)Ldb/l;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    if-eqz v3, :cond_27

    .line 610
    .line 611
    iget-object v5, v3, Ldb/l;->a:Ldb/k;

    .line 612
    .line 613
    if-ne v5, v13, :cond_28

    .line 614
    .line 615
    const/4 v5, 0x0

    .line 616
    invoke-static {v3, v1, v5, v7}, Ldb/l;->a(Ldb/l;Ldb/k;ZI)Ldb/l;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    goto :goto_21

    .line 621
    :cond_27
    move-object/from16 v3, v16

    .line 622
    .line 623
    :cond_28
    :goto_21
    if-nez v3, :cond_29

    .line 624
    .line 625
    goto :goto_23

    .line 626
    :cond_29
    if-nez v9, :cond_2a

    .line 627
    .line 628
    goto :goto_22

    .line 629
    :cond_2a
    iget-boolean v5, v9, Ldb/l;->b:Z

    .line 630
    .line 631
    iget-boolean v6, v3, Ldb/l;->b:Z

    .line 632
    .line 633
    if-eqz v6, :cond_2b

    .line 634
    .line 635
    if-nez v5, :cond_2b

    .line 636
    .line 637
    goto :goto_23

    .line 638
    :cond_2b
    if-nez v6, :cond_2c

    .line 639
    .line 640
    if-eqz v5, :cond_2c

    .line 641
    .line 642
    goto :goto_22

    .line 643
    :cond_2c
    iget-object v5, v3, Ldb/l;->a:Ldb/k;

    .line 644
    .line 645
    iget-object v6, v9, Ldb/l;->a:Ldb/k;

    .line 646
    .line 647
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 648
    .line 649
    .line 650
    move-result v7

    .line 651
    if-gez v7, :cond_2d

    .line 652
    .line 653
    goto :goto_23

    .line 654
    :cond_2d
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 655
    .line 656
    .line 657
    move-result v5

    .line 658
    if-lez v5, :cond_2e

    .line 659
    .line 660
    :goto_22
    move-object v9, v3

    .line 661
    :cond_2e
    :goto_23
    new-instance v3, Ldb/h;

    .line 662
    .line 663
    if-eqz v9, :cond_2f

    .line 664
    .line 665
    iget-object v5, v9, Ldb/l;->a:Ldb/k;

    .line 666
    .line 667
    goto :goto_24

    .line 668
    :cond_2f
    move-object/from16 v5, v16

    .line 669
    .line 670
    :goto_24
    if-eqz v9, :cond_30

    .line 671
    .line 672
    iget-boolean v6, v9, Ldb/l;->b:Z

    .line 673
    .line 674
    const/4 v7, 0x1

    .line 675
    if-ne v6, v7, :cond_31

    .line 676
    .line 677
    const/4 v6, 0x1

    .line 678
    goto :goto_25

    .line 679
    :cond_30
    const/4 v7, 0x1

    .line 680
    :cond_31
    const/4 v6, 0x0

    .line 681
    :goto_25
    invoke-direct {v3, v5, v2, v12, v6}, Ldb/h;-><init>(Ldb/k;Ldb/i;ZZ)V

    .line 682
    .line 683
    .line 684
    :goto_26
    new-instance v2, Ljava/util/ArrayList;

    .line 685
    .line 686
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 690
    .line 691
    .line 692
    move-result-object v5

    .line 693
    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 694
    .line 695
    .line 696
    move-result v6

    .line 697
    if-eqz v6, :cond_3b

    .line 698
    .line 699
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v6

    .line 703
    check-cast v6, Ljava/util/List;

    .line 704
    .line 705
    move/from16 v8, v27

    .line 706
    .line 707
    invoke-static {v8, v6}, Lm9/t;->d1(ILjava/util/List;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v6

    .line 711
    check-cast v6, Ldb/a$a;

    .line 712
    .line 713
    if-eqz v6, :cond_39

    .line 714
    .line 715
    iget-object v6, v6, Ldb/a$a;->a:Lfc/h;

    .line 716
    .line 717
    if-eqz v6, :cond_39

    .line 718
    .line 719
    invoke-static {v6}, Ldb/a;->c(Lfc/h;)Ldb/k;

    .line 720
    .line 721
    .line 722
    move-result-object v9

    .line 723
    if-nez v9, :cond_33

    .line 724
    .line 725
    move-object v10, v6

    .line 726
    check-cast v10, Lcc/e0;

    .line 727
    .line 728
    invoke-static {v10}, Lc5/v;->s(Lcc/e0;)Lcc/e0;

    .line 729
    .line 730
    .line 731
    move-result-object v10

    .line 732
    if-eqz v10, :cond_32

    .line 733
    .line 734
    invoke-static {v10}, Ldb/a;->c(Lfc/h;)Ldb/k;

    .line 735
    .line 736
    .line 737
    move-result-object v10

    .line 738
    goto :goto_28

    .line 739
    :cond_32
    move-object/from16 v10, v16

    .line 740
    .line 741
    goto :goto_28

    .line 742
    :cond_33
    move-object v10, v9

    .line 743
    :goto_28
    sget-object v11, Lla/c;->a:Ljava/lang/String;

    .line 744
    .line 745
    move-object/from16 v11, v26

    .line 746
    .line 747
    invoke-virtual {v11, v6}, Ldc/p;->Z(Lfc/h;)Lcc/m0;

    .line 748
    .line 749
    .line 750
    move-result-object v12

    .line 751
    invoke-virtual {v0, v12}, Ldb/v;->e(Lcc/m0;)Llb/d;

    .line 752
    .line 753
    .line 754
    move-result-object v12

    .line 755
    sget-object v15, Lla/c;->k:Ljava/util/HashMap;

    .line 756
    .line 757
    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 758
    .line 759
    .line 760
    move-result v12

    .line 761
    if-eqz v12, :cond_34

    .line 762
    .line 763
    move-object/from16 v12, v21

    .line 764
    .line 765
    goto :goto_29

    .line 766
    :cond_34
    invoke-virtual {v11, v6}, Ldc/p;->g(Lfc/h;)Lcc/m0;

    .line 767
    .line 768
    .line 769
    move-result-object v12

    .line 770
    invoke-virtual {v0, v12}, Ldb/v;->e(Lcc/m0;)Llb/d;

    .line 771
    .line 772
    .line 773
    move-result-object v12

    .line 774
    sget-object v15, Lla/c;->j:Ljava/util/HashMap;

    .line 775
    .line 776
    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v12

    .line 780
    if-eqz v12, :cond_35

    .line 781
    .line 782
    move-object/from16 v12, v22

    .line 783
    .line 784
    goto :goto_29

    .line 785
    :cond_35
    move-object/from16 v12, v16

    .line 786
    .line 787
    :goto_29
    invoke-virtual {v11, v6}, Ldc/p;->k0(Lfc/h;)Z

    .line 788
    .line 789
    .line 790
    move-result v15

    .line 791
    if-nez v15, :cond_37

    .line 792
    .line 793
    check-cast v6, Lcc/e0;

    .line 794
    .line 795
    invoke-virtual {v6}, Lcc/e0;->P0()Lcc/s1;

    .line 796
    .line 797
    .line 798
    move-result-object v6

    .line 799
    instance-of v6, v6, Ldb/j;

    .line 800
    .line 801
    if-eqz v6, :cond_36

    .line 802
    .line 803
    goto :goto_2a

    .line 804
    :cond_36
    const/4 v6, 0x0

    .line 805
    goto :goto_2b

    .line 806
    :cond_37
    :goto_2a
    const/4 v6, 0x1

    .line 807
    :goto_2b
    new-instance v15, Ldb/h;

    .line 808
    .line 809
    if-eq v10, v9, :cond_38

    .line 810
    .line 811
    const/4 v9, 0x1

    .line 812
    goto :goto_2c

    .line 813
    :cond_38
    const/4 v9, 0x0

    .line 814
    :goto_2c
    invoke-direct {v15, v10, v12, v6, v9}, Ldb/h;-><init>(Ldb/k;Ldb/i;ZZ)V

    .line 815
    .line 816
    .line 817
    goto :goto_2d

    .line 818
    :cond_39
    move-object/from16 v11, v26

    .line 819
    .line 820
    move-object/from16 v15, v16

    .line 821
    .line 822
    :goto_2d
    if-eqz v15, :cond_3a

    .line 823
    .line 824
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    :cond_3a
    move/from16 v27, v8

    .line 828
    .line 829
    move-object/from16 v26, v11

    .line 830
    .line 831
    goto/16 :goto_27

    .line 832
    .line 833
    :cond_3b
    move/from16 v8, v27

    .line 834
    .line 835
    if-nez v8, :cond_3c

    .line 836
    .line 837
    if-eqz v23, :cond_3c

    .line 838
    .line 839
    const/4 v12, 0x1

    .line 840
    goto :goto_2e

    .line 841
    :cond_3c
    const/4 v12, 0x0

    .line 842
    :goto_2e
    if-nez v8, :cond_3e

    .line 843
    .line 844
    move-object/from16 v5, v25

    .line 845
    .line 846
    instance-of v6, v5, Lma/a1;

    .line 847
    .line 848
    if-eqz v6, :cond_3d

    .line 849
    .line 850
    check-cast v5, Lma/a1;

    .line 851
    .line 852
    invoke-interface {v5}, Lma/a1;->g0()Lcc/e0;

    .line 853
    .line 854
    .line 855
    move-result-object v5

    .line 856
    if-eqz v5, :cond_3d

    .line 857
    .line 858
    const/4 v5, 0x1

    .line 859
    goto :goto_2f

    .line 860
    :cond_3d
    const/4 v5, 0x0

    .line 861
    :goto_2f
    if-eqz v5, :cond_3e

    .line 862
    .line 863
    const/4 v5, 0x1

    .line 864
    goto :goto_30

    .line 865
    :cond_3e
    const/4 v5, 0x0

    .line 866
    :goto_30
    new-instance v6, Ljava/util/ArrayList;

    .line 867
    .line 868
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 872
    .line 873
    .line 874
    move-result-object v9

    .line 875
    :cond_3f
    :goto_31
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 876
    .line 877
    .line 878
    move-result v10

    .line 879
    if-eqz v10, :cond_41

    .line 880
    .line 881
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object v10

    .line 885
    check-cast v10, Ldb/h;

    .line 886
    .line 887
    iget-boolean v11, v10, Ldb/h;->d:Z

    .line 888
    .line 889
    if-eqz v11, :cond_40

    .line 890
    .line 891
    move-object/from16 v10, v16

    .line 892
    .line 893
    goto :goto_32

    .line 894
    :cond_40
    iget-object v10, v10, Ldb/h;->a:Ldb/k;

    .line 895
    .line 896
    :goto_32
    if-eqz v10, :cond_3f

    .line 897
    .line 898
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    .line 900
    .line 901
    goto :goto_31

    .line 902
    :cond_41
    invoke-static {v6}, Lm9/t;->y1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 903
    .line 904
    .line 905
    move-result-object v6

    .line 906
    iget-boolean v9, v3, Ldb/h;->d:Z

    .line 907
    .line 908
    iget-object v10, v3, Ldb/h;->a:Ldb/k;

    .line 909
    .line 910
    if-eqz v9, :cond_42

    .line 911
    .line 912
    move-object/from16 v9, v16

    .line 913
    .line 914
    goto :goto_33

    .line 915
    :cond_42
    move-object v9, v10

    .line 916
    :goto_33
    if-ne v9, v1, :cond_43

    .line 917
    .line 918
    move-object v6, v1

    .line 919
    goto :goto_34

    .line 920
    :cond_43
    invoke-static {v6, v14, v13, v9, v12}, Lc5/w;->E(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v6

    .line 924
    check-cast v6, Ldb/k;

    .line 925
    .line 926
    :goto_34
    if-nez v6, :cond_47

    .line 927
    .line 928
    new-instance v9, Ljava/util/ArrayList;

    .line 929
    .line 930
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .line 932
    .line 933
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 934
    .line 935
    .line 936
    move-result-object v11

    .line 937
    :cond_44
    :goto_35
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 938
    .line 939
    .line 940
    move-result v15

    .line 941
    if-eqz v15, :cond_45

    .line 942
    .line 943
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v15

    .line 947
    check-cast v15, Ldb/h;

    .line 948
    .line 949
    iget-object v15, v15, Ldb/h;->a:Ldb/k;

    .line 950
    .line 951
    if-eqz v15, :cond_44

    .line 952
    .line 953
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    .line 955
    .line 956
    goto :goto_35

    .line 957
    :cond_45
    invoke-static {v9}, Lm9/t;->y1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 958
    .line 959
    .line 960
    move-result-object v9

    .line 961
    if-ne v10, v1, :cond_46

    .line 962
    .line 963
    goto :goto_36

    .line 964
    :cond_46
    invoke-static {v9, v14, v13, v10, v12}, Lc5/w;->E(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v1

    .line 968
    check-cast v1, Ldb/k;

    .line 969
    .line 970
    goto :goto_36

    .line 971
    :cond_47
    move-object v1, v6

    .line 972
    :goto_36
    new-instance v9, Ljava/util/ArrayList;

    .line 973
    .line 974
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 978
    .line 979
    .line 980
    move-result-object v10

    .line 981
    :cond_48
    :goto_37
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 982
    .line 983
    .line 984
    move-result v11

    .line 985
    if-eqz v11, :cond_49

    .line 986
    .line 987
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-result-object v11

    .line 991
    check-cast v11, Ldb/h;

    .line 992
    .line 993
    iget-object v11, v11, Ldb/h;->b:Ldb/i;

    .line 994
    .line 995
    if-eqz v11, :cond_48

    .line 996
    .line 997
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    goto :goto_37

    .line 1001
    :cond_49
    invoke-static {v9}, Lm9/t;->y1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v9

    .line 1005
    iget-object v10, v3, Ldb/h;->b:Ldb/i;

    .line 1006
    .line 1007
    move-object/from16 v15, v21

    .line 1008
    .line 1009
    move-object/from16 v11, v22

    .line 1010
    .line 1011
    invoke-static {v9, v11, v15, v10, v12}, Lc5/w;->E(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v9

    .line 1015
    check-cast v9, Ldb/i;

    .line 1016
    .line 1017
    if-eqz v1, :cond_4c

    .line 1018
    .line 1019
    if-nez p5, :cond_4b

    .line 1020
    .line 1021
    if-eqz v5, :cond_4a

    .line 1022
    .line 1023
    if-ne v1, v13, :cond_4a

    .line 1024
    .line 1025
    goto :goto_38

    .line 1026
    :cond_4a
    const/4 v12, 0x0

    .line 1027
    goto :goto_39

    .line 1028
    :cond_4b
    :goto_38
    const/4 v12, 0x1

    .line 1029
    :goto_39
    if-nez v12, :cond_4c

    .line 1030
    .line 1031
    move-object v5, v1

    .line 1032
    goto :goto_3a

    .line 1033
    :cond_4c
    move-object/from16 v5, v16

    .line 1034
    .line 1035
    :goto_3a
    if-ne v5, v14, :cond_51

    .line 1036
    .line 1037
    iget-boolean v3, v3, Ldb/h;->c:Z

    .line 1038
    .line 1039
    if-nez v3, :cond_50

    .line 1040
    .line 1041
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1042
    .line 1043
    .line 1044
    move-result v3

    .line 1045
    if-eqz v3, :cond_4d

    .line 1046
    .line 1047
    goto :goto_3b

    .line 1048
    :cond_4d
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v2

    .line 1052
    :cond_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1053
    .line 1054
    .line 1055
    move-result v3

    .line 1056
    if-eqz v3, :cond_4f

    .line 1057
    .line 1058
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v3

    .line 1062
    check-cast v3, Ldb/h;

    .line 1063
    .line 1064
    iget-boolean v3, v3, Ldb/h;->c:Z

    .line 1065
    .line 1066
    if-eqz v3, :cond_4e

    .line 1067
    .line 1068
    const/4 v12, 0x1

    .line 1069
    goto :goto_3c

    .line 1070
    :cond_4f
    :goto_3b
    const/4 v12, 0x0

    .line 1071
    :goto_3c
    if-eqz v12, :cond_51

    .line 1072
    .line 1073
    :cond_50
    const/4 v12, 0x1

    .line 1074
    goto :goto_3d

    .line 1075
    :cond_51
    const/4 v12, 0x0

    .line 1076
    :goto_3d
    if-eqz v5, :cond_52

    .line 1077
    .line 1078
    if-eq v6, v1, :cond_52

    .line 1079
    .line 1080
    const/4 v1, 0x1

    .line 1081
    goto :goto_3e

    .line 1082
    :cond_52
    const/4 v1, 0x0

    .line 1083
    :goto_3e
    new-instance v2, Ldb/h;

    .line 1084
    .line 1085
    invoke-direct {v2, v5, v9, v12, v1}, Ldb/h;-><init>(Ldb/k;Ldb/i;ZZ)V

    .line 1086
    .line 1087
    .line 1088
    aput-object v2, v19, v8

    .line 1089
    .line 1090
    add-int/lit8 v10, v8, 0x1

    .line 1091
    .line 1092
    move-object/from16 v1, p2

    .line 1093
    .line 1094
    move/from16 v2, v17

    .line 1095
    .line 1096
    move-object/from16 v3, v18

    .line 1097
    .line 1098
    move-object/from16 v9, v19

    .line 1099
    .line 1100
    move-object/from16 v6, v20

    .line 1101
    .line 1102
    move/from16 v8, v23

    .line 1103
    .line 1104
    const/4 v5, 0x1

    .line 1105
    goto/16 :goto_5

    .line 1106
    .line 1107
    :cond_53
    move-object/from16 v19, v9

    .line 1108
    .line 1109
    new-instance v1, Ldb/b;

    .line 1110
    .line 1111
    move-object/from16 v2, p4

    .line 1112
    .line 1113
    move-object/from16 v3, v19

    .line 1114
    .line 1115
    invoke-direct {v1, v2, v3}, Ldb/b;-><init>(Ldb/w;[Ldb/h;)V

    .line 1116
    .line 1117
    .line 1118
    move-object/from16 v2, p0

    .line 1119
    .line 1120
    iget-object v3, v2, Ldb/t;->a:Ldb/g;

    .line 1121
    .line 1122
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual/range {p2 .. p2}, Lcc/e0;->P0()Lcc/s1;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v4

    .line 1129
    iget-boolean v0, v0, Ldb/v;->e:Z

    .line 1130
    .line 1131
    const/4 v5, 0x0

    .line 1132
    invoke-virtual {v3, v4, v1, v5, v0}, Ldb/g;->b(Lcc/s1;Ldb/b;IZ)Ldb/g$a;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v0

    .line 1136
    iget-object v0, v0, Ldb/g$a;->a:Lcc/e0;

    .line 1137
    .line 1138
    return-object v0
.end method

.method public final b(Lma/b;Lna/a;ZLp4/g7;Lva/c;Ldb/w;ZLx9/l;)Lcc/e0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/b;",
            "Lna/a;",
            "Z",
            "Lp4/g7;",
            "Lva/c;",
            "Ldb/w;",
            "Z",
            "Lx9/l<",
            "-",
            "Lma/b;",
            "+",
            "Lcc/e0;",
            ">;)",
            "Lcc/e0;"
        }
    .end annotation

    new-instance v1, Ldb/v;

    invoke-direct {v1, p2, p3, p4, p5}, Ldb/v;-><init>(Lna/a;ZLp4/g7;Lva/c;)V

    invoke-interface {p8, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcc/e0;

    invoke-interface {p1}, Lma/b;->e()Ljava/util/Collection;

    move-result-object p1

    const-string p2, "overriddenDescriptors"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result p2

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lma/b;

    const-string p3, "it"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p8, p2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcc/e0;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Ldb/t;->a(Ldb/v;Lcc/e0;Ljava/util/List;Ldb/w;Z)Lcc/e0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lp4/g7;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "c"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p2

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Iterable;

    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_30

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lma/b;

    .line 36
    .line 37
    instance-of v4, v3, Lxa/a;

    .line 38
    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    goto/16 :goto_27

    .line 42
    .line 43
    :cond_0
    move-object v4, v3

    .line 44
    check-cast v4, Lxa/a;

    .line 45
    .line 46
    invoke-interface {v4}, Lma/b;->k0()Lma/b$a;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    sget-object v6, Lma/b$a;->b:Lma/b$a;

    .line 51
    .line 52
    const/4 v13, 0x1

    .line 53
    if-ne v5, v6, :cond_1

    .line 54
    .line 55
    invoke-interface {v4}, Lma/b;->a()Lma/b;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v4}, Lma/b;->e()Ljava/util/Collection;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-ne v4, v13, :cond_1

    .line 68
    .line 69
    goto/16 :goto_27

    .line 70
    .line 71
    :cond_1
    invoke-static {v3}, La6/a;->p(Lma/j;)Lma/g;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-nez v4, :cond_2

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_2
    instance-of v5, v4, Lza/e;

    .line 79
    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    check-cast v4, Lza/e;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const/4 v4, 0x0

    .line 86
    :goto_1
    if-eqz v4, :cond_4

    .line 87
    .line 88
    iget-object v4, v4, Lza/e;->m:Ll9/j;

    .line 89
    .line 90
    invoke-virtual {v4}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/util/List;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    const/4 v4, 0x0

    .line 98
    :goto_2
    move-object v5, v4

    .line 99
    check-cast v5, Ljava/util/Collection;

    .line 100
    .line 101
    if-eqz v5, :cond_6

    .line 102
    .line 103
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_5
    const/4 v5, 0x0

    .line 111
    goto :goto_4

    .line 112
    :cond_6
    :goto_3
    const/4 v5, 0x1

    .line 113
    :goto_4
    if-eqz v5, :cond_7

    .line 114
    .line 115
    :goto_5
    invoke-interface {v3}, Lna/a;->getAnnotations()Lna/h;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    goto :goto_7

    .line 120
    :cond_7
    check-cast v4, Ljava/lang/Iterable;

    .line 121
    .line 122
    new-instance v5, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-static {v4}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_8

    .line 140
    .line 141
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    check-cast v6, Lcb/a;

    .line 146
    .line 147
    new-instance v7, Lza/d;

    .line 148
    .line 149
    invoke-direct {v7, v0, v6, v13}, Lza/d;-><init>(Lp4/g7;Lcb/a;Z)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_8
    invoke-interface {v3}, Lna/a;->getAnnotations()Lna/h;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v4, v5}, Lm9/t;->k1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-static {v4}, Lna/h$a;->a(Ljava/util/List;)Lna/h;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    :goto_7
    invoke-static {v0, v4}, Lya/b;->b(Lp4/g7;Lna/h;)Lp4/g7;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    instance-of v4, v3, Lxa/f;

    .line 173
    .line 174
    if-eqz v4, :cond_a

    .line 175
    .line 176
    move-object v4, v3

    .line 177
    check-cast v4, Lxa/f;

    .line 178
    .line 179
    iget-object v4, v4, Lpa/l0;->A:Lpa/m0;

    .line 180
    .line 181
    if-eqz v4, :cond_9

    .line 182
    .line 183
    iget-boolean v5, v4, Lpa/k0;->e:Z

    .line 184
    .line 185
    if-nez v5, :cond_9

    .line 186
    .line 187
    const/4 v5, 0x1

    .line 188
    goto :goto_8

    .line 189
    :cond_9
    const/4 v5, 0x0

    .line 190
    :goto_8
    if-eqz v5, :cond_a

    .line 191
    .line 192
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    move-object v11, v4

    .line 196
    goto :goto_9

    .line 197
    :cond_a
    move-object v11, v3

    .line 198
    :goto_9
    move-object v10, v3

    .line 199
    check-cast v10, Lxa/a;

    .line 200
    .line 201
    invoke-interface {v10}, Lma/a;->h0()Lma/o0;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    sget-object v16, Lva/c;->c:Lva/c;

    .line 206
    .line 207
    if-eqz v4, :cond_e

    .line 208
    .line 209
    instance-of v4, v11, Lma/u;

    .line 210
    .line 211
    if-nez v4, :cond_b

    .line 212
    .line 213
    const/4 v4, 0x0

    .line 214
    goto :goto_a

    .line 215
    :cond_b
    move-object v4, v11

    .line 216
    :goto_a
    check-cast v4, Lma/u;

    .line 217
    .line 218
    if-eqz v4, :cond_c

    .line 219
    .line 220
    sget-object v5, Lxa/e;->K:Lxa/e$a;

    .line 221
    .line 222
    invoke-interface {v4, v5}, Lma/a;->Z(Lma/a$a;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    check-cast v4, Lma/a1;

    .line 227
    .line 228
    move-object v6, v4

    .line 229
    goto :goto_b

    .line 230
    :cond_c
    const/4 v6, 0x0

    .line 231
    :goto_b
    const/16 v17, 0x0

    .line 232
    .line 233
    const/16 v18, 0x0

    .line 234
    .line 235
    sget-object v19, Ldb/p;->a:Ldb/p;

    .line 236
    .line 237
    const/4 v7, 0x0

    .line 238
    if-eqz v6, :cond_d

    .line 239
    .line 240
    invoke-interface {v6}, Lna/a;->getAnnotations()Lna/h;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-static {v12, v4}, Lya/b;->b(Lp4/g7;Lna/h;)Lp4/g7;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    move-object v8, v4

    .line 249
    goto :goto_c

    .line 250
    :cond_d
    move-object v8, v12

    .line 251
    :goto_c
    move-object/from16 v4, p0

    .line 252
    .line 253
    move-object v5, v3

    .line 254
    move-object/from16 v9, v16

    .line 255
    .line 256
    move-object/from16 p2, v10

    .line 257
    .line 258
    move-object/from16 v10, v17

    .line 259
    .line 260
    move-object/from16 v17, v11

    .line 261
    .line 262
    move/from16 v11, v18

    .line 263
    .line 264
    move-object v15, v12

    .line 265
    move-object/from16 v12, v19

    .line 266
    .line 267
    invoke-virtual/range {v4 .. v12}, Ldb/t;->b(Lma/b;Lna/a;ZLp4/g7;Lva/c;Ldb/w;ZLx9/l;)Lcc/e0;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    move-object/from16 v19, v4

    .line 272
    .line 273
    goto :goto_d

    .line 274
    :cond_e
    move-object/from16 p2, v10

    .line 275
    .line 276
    move-object/from16 v17, v11

    .line 277
    .line 278
    move-object v15, v12

    .line 279
    const/16 v19, 0x0

    .line 280
    .line 281
    :goto_d
    instance-of v4, v3, Lxa/e;

    .line 282
    .line 283
    if-eqz v4, :cond_f

    .line 284
    .line 285
    move-object v4, v3

    .line 286
    check-cast v4, Lxa/e;

    .line 287
    .line 288
    goto :goto_e

    .line 289
    :cond_f
    const/4 v4, 0x0

    .line 290
    :goto_e
    if-eqz v4, :cond_10

    .line 291
    .line 292
    invoke-virtual {v4}, Lpa/q;->b()Lma/j;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    const-string v6, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 297
    .line 298
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    check-cast v5, Lma/e;

    .line 302
    .line 303
    const/4 v6, 0x3

    .line 304
    invoke-static {v4, v6}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-static {v5, v4}, Lb8/f;->i0(Lma/e;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    if-eqz v4, :cond_10

    .line 313
    .line 314
    sget-object v5, Ldb/m;->d:Ljava/util/LinkedHashMap;

    .line 315
    .line 316
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    check-cast v4, Ldb/n;

    .line 321
    .line 322
    move-object v12, v4

    .line 323
    goto :goto_f

    .line 324
    :cond_10
    const/4 v12, 0x0

    .line 325
    :goto_f
    if-eqz v12, :cond_11

    .line 326
    .line 327
    iget-object v4, v12, Ldb/n;->b:Ljava/util/List;

    .line 328
    .line 329
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 330
    .line 331
    .line 332
    invoke-interface/range {p2 .. p2}, Lma/a;->g()Ljava/util/List;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 337
    .line 338
    .line 339
    :cond_11
    iget-object v4, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v4, Lya/c;

    .line 342
    .line 343
    iget-object v4, v4, Lya/c;->v:Lva/s;

    .line 344
    .line 345
    const-string v5, "javaTypeEnhancementState"

    .line 346
    .line 347
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    sget-object v5, Lva/q;->a:Llb/c;

    .line 351
    .line 352
    iget-object v4, v4, Lva/s;->b:Lx9/l;

    .line 353
    .line 354
    invoke-interface {v4, v5}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    sget-object v5, Lva/b0;->d:Lva/b0;

    .line 359
    .line 360
    if-ne v4, v5, :cond_12

    .line 361
    .line 362
    const/4 v4, 0x1

    .line 363
    goto :goto_10

    .line 364
    :cond_12
    const/4 v4, 0x0

    .line 365
    :goto_10
    if-nez v4, :cond_13

    .line 366
    .line 367
    iget-object v4, v15, Lp4/g7;->a:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v4, Lya/c;

    .line 370
    .line 371
    iget-object v4, v4, Lya/c;->t:Lya/d;

    .line 372
    .line 373
    invoke-interface {v4}, Lya/d;->b()V

    .line 374
    .line 375
    .line 376
    goto :goto_12

    .line 377
    :cond_13
    instance-of v4, v3, Lma/u;

    .line 378
    .line 379
    if-eqz v4, :cond_14

    .line 380
    .line 381
    sget-object v4, Lxa/e;->L:Lxa/e$b;

    .line 382
    .line 383
    invoke-interface {v3, v4}, Lma/a;->Z(Lma/a$a;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 388
    .line 389
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    if-eqz v4, :cond_14

    .line 394
    .line 395
    const/4 v4, 0x1

    .line 396
    goto :goto_11

    .line 397
    :cond_14
    const/4 v4, 0x0

    .line 398
    :goto_11
    if-eqz v4, :cond_15

    .line 399
    .line 400
    const/16 v20, 0x1

    .line 401
    .line 402
    goto :goto_13

    .line 403
    :cond_15
    :goto_12
    const/16 v20, 0x0

    .line 404
    .line 405
    :goto_13
    invoke-interface/range {v17 .. v17}, Lma/a;->g()Ljava/util/List;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    const-string v5, "annotationOwnerForMember.valueParameters"

    .line 410
    .line 411
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    check-cast v4, Ljava/lang/Iterable;

    .line 415
    .line 416
    new-instance v11, Ljava/util/ArrayList;

    .line 417
    .line 418
    invoke-static {v4}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 423
    .line 424
    .line 425
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 426
    .line 427
    .line 428
    move-result-object v21

    .line 429
    :goto_14
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    if-eqz v4, :cond_18

    .line 434
    .line 435
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    move-object v6, v4

    .line 440
    check-cast v6, Lma/a1;

    .line 441
    .line 442
    if-eqz v12, :cond_16

    .line 443
    .line 444
    iget-object v4, v12, Ldb/n;->b:Ljava/util/List;

    .line 445
    .line 446
    if-eqz v4, :cond_16

    .line 447
    .line 448
    invoke-interface {v6}, Lma/a1;->getIndex()I

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    invoke-static {v5, v4}, Lm9/t;->d1(ILjava/util/List;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    check-cast v4, Ldb/w;

    .line 457
    .line 458
    move-object v10, v4

    .line 459
    goto :goto_15

    .line 460
    :cond_16
    const/4 v10, 0x0

    .line 461
    :goto_15
    new-instance v9, Ldb/r;

    .line 462
    .line 463
    invoke-direct {v9, v6}, Ldb/r;-><init>(Lma/a1;)V

    .line 464
    .line 465
    .line 466
    const/4 v7, 0x0

    .line 467
    if-eqz v6, :cond_17

    .line 468
    .line 469
    invoke-interface {v6}, Lna/a;->getAnnotations()Lna/h;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    invoke-static {v15, v4}, Lya/b;->b(Lp4/g7;Lna/h;)Lp4/g7;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    move-object v8, v4

    .line 478
    goto :goto_16

    .line 479
    :cond_17
    move-object v8, v15

    .line 480
    :goto_16
    move-object/from16 v4, p0

    .line 481
    .line 482
    move-object v5, v3

    .line 483
    move-object/from16 v22, v9

    .line 484
    .line 485
    move-object/from16 v9, v16

    .line 486
    .line 487
    move-object v14, v11

    .line 488
    move/from16 v11, v20

    .line 489
    .line 490
    move-object/from16 v23, v12

    .line 491
    .line 492
    move-object/from16 v12, v22

    .line 493
    .line 494
    invoke-virtual/range {v4 .. v12}, Ldb/t;->b(Lma/b;Lna/a;ZLp4/g7;Lva/c;Ldb/w;ZLx9/l;)Lcc/e0;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-object v11, v14

    .line 502
    move-object/from16 v12, v23

    .line 503
    .line 504
    goto :goto_14

    .line 505
    :cond_18
    move-object v14, v11

    .line 506
    move-object/from16 v23, v12

    .line 507
    .line 508
    const/4 v7, 0x1

    .line 509
    instance-of v4, v3, Lma/l0;

    .line 510
    .line 511
    if-nez v4, :cond_19

    .line 512
    .line 513
    const/4 v4, 0x0

    .line 514
    goto :goto_17

    .line 515
    :cond_19
    move-object v4, v3

    .line 516
    :goto_17
    check-cast v4, Lma/l0;

    .line 517
    .line 518
    if-eqz v4, :cond_1a

    .line 519
    .line 520
    invoke-static {v4}, Lb8/f;->Q(Lma/l0;)Z

    .line 521
    .line 522
    .line 523
    move-result v4

    .line 524
    if-ne v4, v13, :cond_1a

    .line 525
    .line 526
    const/4 v4, 0x1

    .line 527
    goto :goto_18

    .line 528
    :cond_1a
    const/4 v4, 0x0

    .line 529
    :goto_18
    if-eqz v4, :cond_1b

    .line 530
    .line 531
    sget-object v4, Lva/c;->d:Lva/c;

    .line 532
    .line 533
    goto :goto_19

    .line 534
    :cond_1b
    sget-object v4, Lva/c;->b:Lva/c;

    .line 535
    .line 536
    :goto_19
    move-object v9, v4

    .line 537
    move-object/from16 v4, v23

    .line 538
    .line 539
    if-eqz v4, :cond_1c

    .line 540
    .line 541
    iget-object v4, v4, Ldb/n;->a:Ldb/w;

    .line 542
    .line 543
    move-object v10, v4

    .line 544
    goto :goto_1a

    .line 545
    :cond_1c
    const/4 v10, 0x0

    .line 546
    :goto_1a
    sget-object v12, Ldb/q;->a:Ldb/q;

    .line 547
    .line 548
    const/4 v11, 0x0

    .line 549
    move-object/from16 v4, p0

    .line 550
    .line 551
    move-object v5, v3

    .line 552
    move-object/from16 v6, v17

    .line 553
    .line 554
    move-object v8, v15

    .line 555
    invoke-virtual/range {v4 .. v12}, Ldb/t;->b(Lma/b;Lna/a;ZLp4/g7;Lva/c;Ldb/w;ZLx9/l;)Lcc/e0;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    invoke-interface/range {p2 .. p2}, Lma/a;->getReturnType()Lcc/e0;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    sget-object v6, Ldb/o;->a:Ldb/o;

    .line 567
    .line 568
    invoke-static {v5, v6}, Lcc/q1;->c(Lcc/e0;Lx9/l;)Z

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    if-nez v5, :cond_22

    .line 573
    .line 574
    invoke-interface/range {p2 .. p2}, Lma/a;->h0()Lma/o0;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    if-eqz v5, :cond_1d

    .line 579
    .line 580
    invoke-interface {v5}, Lma/z0;->getType()Lcc/e0;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    if-eqz v5, :cond_1d

    .line 585
    .line 586
    invoke-static {v5, v6}, Lcc/q1;->c(Lcc/e0;Lx9/l;)Z

    .line 587
    .line 588
    .line 589
    move-result v5

    .line 590
    goto :goto_1b

    .line 591
    :cond_1d
    const/4 v5, 0x0

    .line 592
    :goto_1b
    if-nez v5, :cond_22

    .line 593
    .line 594
    invoke-interface/range {p2 .. p2}, Lma/a;->g()Ljava/util/List;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    const-string v6, "valueParameters"

    .line 599
    .line 600
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    check-cast v5, Ljava/lang/Iterable;

    .line 604
    .line 605
    instance-of v6, v5, Ljava/util/Collection;

    .line 606
    .line 607
    if-eqz v6, :cond_1e

    .line 608
    .line 609
    move-object v6, v5

    .line 610
    check-cast v6, Ljava/util/Collection;

    .line 611
    .line 612
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 613
    .line 614
    .line 615
    move-result v6

    .line 616
    if-eqz v6, :cond_1e

    .line 617
    .line 618
    goto :goto_1c

    .line 619
    :cond_1e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 620
    .line 621
    .line 622
    move-result-object v5

    .line 623
    :cond_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 624
    .line 625
    .line 626
    move-result v6

    .line 627
    if-eqz v6, :cond_20

    .line 628
    .line 629
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v6

    .line 633
    check-cast v6, Lma/a1;

    .line 634
    .line 635
    invoke-interface {v6}, Lma/z0;->getType()Lcc/e0;

    .line 636
    .line 637
    .line 638
    move-result-object v6

    .line 639
    const-string v7, "it.type"

    .line 640
    .line 641
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    sget-object v7, Ldb/o;->a:Ldb/o;

    .line 645
    .line 646
    invoke-static {v6, v7}, Lcc/q1;->c(Lcc/e0;Lx9/l;)Z

    .line 647
    .line 648
    .line 649
    move-result v6

    .line 650
    if-eqz v6, :cond_1f

    .line 651
    .line 652
    const/4 v5, 0x1

    .line 653
    goto :goto_1d

    .line 654
    :cond_20
    :goto_1c
    const/4 v5, 0x0

    .line 655
    :goto_1d
    if-eqz v5, :cond_21

    .line 656
    .line 657
    goto :goto_1e

    .line 658
    :cond_21
    const/4 v5, 0x0

    .line 659
    goto :goto_1f

    .line 660
    :cond_22
    :goto_1e
    const/4 v5, 0x1

    .line 661
    :goto_1f
    if-eqz v5, :cond_23

    .line 662
    .line 663
    sget-object v5, Lrb/b;->a:Lrb/b$a;

    .line 664
    .line 665
    new-instance v6, Lva/i;

    .line 666
    .line 667
    invoke-direct {v6, v3}, Lva/i;-><init>(Lma/b;)V

    .line 668
    .line 669
    .line 670
    new-instance v7, Ll9/g;

    .line 671
    .line 672
    invoke-direct {v7, v5, v6}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 673
    .line 674
    .line 675
    goto :goto_20

    .line 676
    :cond_23
    const/4 v7, 0x0

    .line 677
    :goto_20
    if-nez v19, :cond_28

    .line 678
    .line 679
    if-nez v4, :cond_28

    .line 680
    .line 681
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 682
    .line 683
    .line 684
    move-result v5

    .line 685
    if-eqz v5, :cond_24

    .line 686
    .line 687
    goto :goto_22

    .line 688
    :cond_24
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 689
    .line 690
    .line 691
    move-result-object v5

    .line 692
    :cond_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 693
    .line 694
    .line 695
    move-result v6

    .line 696
    if-eqz v6, :cond_27

    .line 697
    .line 698
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v6

    .line 702
    check-cast v6, Lcc/e0;

    .line 703
    .line 704
    if-eqz v6, :cond_26

    .line 705
    .line 706
    const/4 v6, 0x1

    .line 707
    goto :goto_21

    .line 708
    :cond_26
    const/4 v6, 0x0

    .line 709
    :goto_21
    if-eqz v6, :cond_25

    .line 710
    .line 711
    goto :goto_23

    .line 712
    :cond_27
    :goto_22
    const/4 v13, 0x0

    .line 713
    :goto_23
    if-nez v13, :cond_28

    .line 714
    .line 715
    if-eqz v7, :cond_2f

    .line 716
    .line 717
    :cond_28
    if-nez v19, :cond_2a

    .line 718
    .line 719
    invoke-interface/range {p2 .. p2}, Lma/a;->h0()Lma/o0;

    .line 720
    .line 721
    .line 722
    move-result-object v3

    .line 723
    if-eqz v3, :cond_29

    .line 724
    .line 725
    invoke-interface {v3}, Lma/z0;->getType()Lcc/e0;

    .line 726
    .line 727
    .line 728
    move-result-object v19

    .line 729
    goto :goto_24

    .line 730
    :cond_29
    const/4 v3, 0x0

    .line 731
    goto :goto_25

    .line 732
    :cond_2a
    :goto_24
    move-object/from16 v3, v19

    .line 733
    .line 734
    :goto_25
    new-instance v5, Ljava/util/ArrayList;

    .line 735
    .line 736
    invoke-static {v14}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 737
    .line 738
    .line 739
    move-result v6

    .line 740
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 744
    .line 745
    .line 746
    move-result-object v6

    .line 747
    const/4 v15, 0x0

    .line 748
    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 749
    .line 750
    .line 751
    move-result v8

    .line 752
    if-eqz v8, :cond_2d

    .line 753
    .line 754
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v8

    .line 758
    add-int/lit8 v9, v15, 0x1

    .line 759
    .line 760
    if-ltz v15, :cond_2c

    .line 761
    .line 762
    check-cast v8, Lcc/e0;

    .line 763
    .line 764
    if-nez v8, :cond_2b

    .line 765
    .line 766
    invoke-interface/range {p2 .. p2}, Lma/a;->g()Ljava/util/List;

    .line 767
    .line 768
    .line 769
    move-result-object v8

    .line 770
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v8

    .line 774
    check-cast v8, Lma/a1;

    .line 775
    .line 776
    invoke-interface {v8}, Lma/z0;->getType()Lcc/e0;

    .line 777
    .line 778
    .line 779
    move-result-object v8

    .line 780
    const-string v10, "valueParameters[index].type"

    .line 781
    .line 782
    invoke-static {v8, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    :cond_2b
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    move v15, v9

    .line 789
    goto :goto_26

    .line 790
    :cond_2c
    invoke-static {}, Lb8/f;->k0()V

    .line 791
    .line 792
    .line 793
    const/4 v0, 0x0

    .line 794
    throw v0

    .line 795
    :cond_2d
    if-nez v4, :cond_2e

    .line 796
    .line 797
    invoke-interface/range {p2 .. p2}, Lma/a;->getReturnType()Lcc/e0;

    .line 798
    .line 799
    .line 800
    move-result-object v4

    .line 801
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 802
    .line 803
    .line 804
    :cond_2e
    move-object/from16 v6, p2

    .line 805
    .line 806
    invoke-interface {v6, v3, v5, v4, v7}, Lxa/a;->i0(Lcc/e0;Ljava/util/ArrayList;Lcc/e0;Ll9/g;)Lxa/a;

    .line 807
    .line 808
    .line 809
    move-result-object v3

    .line 810
    const-string v4, "null cannot be cast to non-null type D of org.jetbrains.kotlin.load.java.typeEnhancement.SignatureEnhancement.enhanceSignature"

    .line 811
    .line 812
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    :cond_2f
    :goto_27
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    .line 817
    .line 818
    goto/16 :goto_0

    .line 819
    .line 820
    :cond_30
    return-object v2
.end method
