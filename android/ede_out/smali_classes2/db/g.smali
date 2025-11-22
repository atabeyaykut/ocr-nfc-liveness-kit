.class public final Ldb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldb/g$a;,
        Ldb/g$b;
    }
.end annotation


# instance fields
.field public final a:Lya/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lya/d$a;->a:Lya/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldb/g;->a:Lya/d;

    return-void
.end method


# virtual methods
.method public final a(Lcc/m0;Ldb/b;IIZZ)Ldb/g$b;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p6

    .line 8
    .line 9
    const-string v4, "<this>"

    .line 10
    .line 11
    invoke-static {v2, v4}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x3

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x1

    .line 17
    if-eq v2, v5, :cond_0

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v8, 0x0

    .line 22
    :goto_0
    if-eqz v3, :cond_2

    .line 23
    .line 24
    if-nez p5, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v9, 0x0

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :goto_1
    const/4 v9, 0x1

    .line 30
    :goto_2
    const/4 v10, 0x0

    .line 31
    if-nez v8, :cond_3

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Lcc/e0;->K0()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_3

    .line 42
    .line 43
    new-instance v1, Ldb/g$b;

    .line 44
    .line 45
    invoke-direct {v1, v10, v7, v6}, Ldb/g$b;-><init>(Lcc/m0;IZ)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcc/e0;->M0()Lcc/c1;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-interface {v8}, Lcc/c1;->n()Lma/g;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    if-nez v8, :cond_4

    .line 58
    .line 59
    new-instance v1, Ldb/g$b;

    .line 60
    .line 61
    invoke-direct {v1, v10, v7, v6}, Ldb/g$b;-><init>(Lcc/m0;IZ)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    invoke-virtual {v1, v11}, Ldb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    check-cast v11, Ldb/h;

    .line 74
    .line 75
    sget-object v12, Ldb/x;->a:Ldb/f;

    .line 76
    .line 77
    invoke-static {v2, v4}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    if-eq v2, v5, :cond_5

    .line 81
    .line 82
    const/4 v12, 0x1

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    const/4 v12, 0x0

    .line 85
    :goto_3
    const/4 v13, 0x2

    .line 86
    if-nez v12, :cond_6

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_6
    instance-of v12, v8, Lma/e;

    .line 90
    .line 91
    if-nez v12, :cond_7

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_7
    iget-object v12, v11, Ldb/h;->b:Ldb/i;

    .line 95
    .line 96
    sget-object v14, Ldb/i;->a:Ldb/i;

    .line 97
    .line 98
    if-ne v12, v14, :cond_9

    .line 99
    .line 100
    if-ne v2, v7, :cond_9

    .line 101
    .line 102
    move-object v12, v8

    .line 103
    check-cast v12, Lma/e;

    .line 104
    .line 105
    sget-object v14, Lla/c;->a:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v12}, Lob/i;->g(Lma/j;)Llb/d;

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    sget-object v15, Lla/c;->j:Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    if-eqz v14, :cond_9

    .line 118
    .line 119
    invoke-static {v12}, Lob/i;->g(Lma/j;)Llb/d;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    check-cast v8, Llb/c;

    .line 128
    .line 129
    if-eqz v8, :cond_8

    .line 130
    .line 131
    invoke-static {v12}, Lsb/b;->e(Lma/j;)Lja/k;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    invoke-virtual {v12, v8}, Lja/k;->j(Llb/c;)Lma/e;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    goto :goto_5

    .line 140
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v3, "Given class "

    .line 145
    .line 146
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v3, " is not a mutable collection"

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v1

    .line 165
    :cond_9
    sget-object v12, Ldb/i;->b:Ldb/i;

    .line 166
    .line 167
    iget-object v14, v11, Ldb/h;->b:Ldb/i;

    .line 168
    .line 169
    if-ne v14, v12, :cond_a

    .line 170
    .line 171
    if-ne v2, v13, :cond_a

    .line 172
    .line 173
    check-cast v8, Lma/e;

    .line 174
    .line 175
    sget-object v12, Lla/c;->a:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v8}, Lob/i;->g(Lma/j;)Llb/d;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    sget-object v14, Lla/c;->k:Ljava/util/HashMap;

    .line 182
    .line 183
    invoke-virtual {v14, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    if-eqz v12, :cond_a

    .line 188
    .line 189
    invoke-static {v8}, La0/b;->j(Lma/e;)Lma/e;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    goto :goto_5

    .line 194
    :cond_a
    :goto_4
    move-object v8, v10

    .line 195
    :goto_5
    invoke-static {v2, v4}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    if-eq v2, v5, :cond_b

    .line 199
    .line 200
    const/4 v2, 0x1

    .line 201
    goto :goto_6

    .line 202
    :cond_b
    const/4 v2, 0x0

    .line 203
    :goto_6
    if-nez v2, :cond_c

    .line 204
    .line 205
    goto :goto_8

    .line 206
    :cond_c
    iget-object v2, v11, Ldb/h;->a:Ldb/k;

    .line 207
    .line 208
    if-nez v2, :cond_d

    .line 209
    .line 210
    const/4 v2, -0x1

    .line 211
    goto :goto_7

    .line 212
    :cond_d
    sget-object v4, Ldb/x$a;->a:[I

    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    aget v2, v4, v2

    .line 219
    .line 220
    :goto_7
    if-eq v2, v7, :cond_f

    .line 221
    .line 222
    if-eq v2, v13, :cond_e

    .line 223
    .line 224
    :goto_8
    move-object v2, v10

    .line 225
    goto :goto_9

    .line 226
    :cond_e
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_f
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 230
    .line 231
    :goto_9
    if-eqz v8, :cond_10

    .line 232
    .line 233
    invoke-interface {v8}, Lma/g;->i()Lcc/c1;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    if-nez v4, :cond_11

    .line 238
    .line 239
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcc/e0;->M0()Lcc/c1;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    :cond_11
    const-string v12, "enhancedClassifier?.typeConstructor ?: constructor"

    .line 244
    .line 245
    invoke-static {v4, v12}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    add-int/lit8 v12, p3, 0x1

    .line 249
    .line 250
    invoke-virtual/range {p1 .. p1}, Lcc/e0;->K0()Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v14

    .line 254
    check-cast v14, Ljava/lang/Iterable;

    .line 255
    .line 256
    invoke-interface {v4}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v15

    .line 260
    const-string v13, "typeConstructor.parameters"

    .line 261
    .line 262
    invoke-static {v15, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    check-cast v15, Ljava/lang/Iterable;

    .line 266
    .line 267
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 268
    .line 269
    .line 270
    move-result-object v13

    .line 271
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object v16

    .line 275
    new-instance v5, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-static {v14}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 278
    .line 279
    .line 280
    move-result v14

    .line 281
    invoke-static {v15}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 282
    .line 283
    .line 284
    move-result v15

    .line 285
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 286
    .line 287
    .line 288
    move-result v14

    .line 289
    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 290
    .line 291
    .line 292
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v14

    .line 296
    if-eqz v14, :cond_18

    .line 297
    .line 298
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v14

    .line 302
    if-eqz v14, :cond_18

    .line 303
    .line 304
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v14

    .line 308
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v15

    .line 312
    check-cast v15, Lma/w0;

    .line 313
    .line 314
    check-cast v14, Lcc/i1;

    .line 315
    .line 316
    if-nez v9, :cond_12

    .line 317
    .line 318
    new-instance v7, Ldb/g$a;

    .line 319
    .line 320
    invoke-direct {v7, v10, v6}, Ldb/g$a;-><init>(Lcc/s1;I)V

    .line 321
    .line 322
    .line 323
    goto :goto_b

    .line 324
    :cond_12
    invoke-interface {v14}, Lcc/i1;->c()Z

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    if-nez v7, :cond_13

    .line 329
    .line 330
    invoke-interface {v14}, Lcc/i1;->getType()Lcc/e0;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    invoke-virtual {v7}, Lcc/e0;->P0()Lcc/s1;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    invoke-virtual {v0, v7, v1, v12, v3}, Ldb/g;->b(Lcc/s1;Ldb/b;IZ)Ldb/g$a;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    goto :goto_b

    .line 343
    :cond_13
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-virtual {v1, v7}, Ldb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    check-cast v7, Ldb/h;

    .line 352
    .line 353
    iget-object v7, v7, Ldb/h;->a:Ldb/k;

    .line 354
    .line 355
    sget-object v10, Ldb/k;->a:Ldb/k;

    .line 356
    .line 357
    if-ne v7, v10, :cond_14

    .line 358
    .line 359
    invoke-interface {v14}, Lcc/i1;->getType()Lcc/e0;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    invoke-virtual {v7}, Lcc/e0;->P0()Lcc/s1;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    new-instance v10, Ldb/g$a;

    .line 368
    .line 369
    invoke-static {v7}, Lc5/v;->E(Lcc/e0;)Lcc/m0;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v1, v6}, Lcc/m0;->T0(Z)Lcc/m0;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-static {v7}, Lc5/v;->M(Lcc/e0;)Lcc/m0;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    const/4 v6, 0x1

    .line 382
    invoke-virtual {v7, v6}, Lcc/m0;->T0(Z)Lcc/m0;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    invoke-static {v1, v7}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-direct {v10, v1, v6}, Ldb/g$a;-><init>(Lcc/s1;I)V

    .line 391
    .line 392
    .line 393
    move-object v7, v10

    .line 394
    goto :goto_b

    .line 395
    :cond_14
    const/4 v6, 0x1

    .line 396
    new-instance v7, Ldb/g$a;

    .line 397
    .line 398
    const/4 v1, 0x0

    .line 399
    invoke-direct {v7, v1, v6}, Ldb/g$a;-><init>(Lcc/s1;I)V

    .line 400
    .line 401
    .line 402
    :goto_b
    iget v1, v7, Ldb/g$a;->b:I

    .line 403
    .line 404
    add-int/2addr v12, v1

    .line 405
    iget-object v1, v7, Ldb/g$a;->a:Lcc/e0;

    .line 406
    .line 407
    if-eqz v1, :cond_15

    .line 408
    .line 409
    goto :goto_c

    .line 410
    :cond_15
    if-eqz v8, :cond_16

    .line 411
    .line 412
    invoke-interface {v14}, Lcc/i1;->c()Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-nez v1, :cond_16

    .line 417
    .line 418
    invoke-interface {v14}, Lcc/i1;->getType()Lcc/e0;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    const-string v6, "arg.type"

    .line 423
    .line 424
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    :goto_c
    invoke-interface {v14}, Lcc/i1;->b()Lcc/t1;

    .line 428
    .line 429
    .line 430
    move-result-object v6

    .line 431
    const-string v7, "arg.projectionKind"

    .line 432
    .line 433
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-static {v1, v6, v15}, Lc5/y;->k(Lcc/e0;Lcc/t1;Lma/w0;)Lcc/k1;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    goto :goto_d

    .line 441
    :cond_16
    if-eqz v8, :cond_17

    .line 442
    .line 443
    invoke-static {v15}, Lcc/q1;->m(Lma/w0;)Lcc/s0;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    goto :goto_d

    .line 448
    :cond_17
    const/4 v1, 0x0

    .line 449
    :goto_d
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-object/from16 v1, p2

    .line 453
    .line 454
    const/4 v6, 0x0

    .line 455
    const/4 v7, 0x1

    .line 456
    const/4 v10, 0x0

    .line 457
    goto/16 :goto_a

    .line 458
    .line 459
    :cond_18
    sub-int v12, v12, p3

    .line 460
    .line 461
    if-nez v8, :cond_1d

    .line 462
    .line 463
    if-nez v2, :cond_1d

    .line 464
    .line 465
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-eqz v1, :cond_19

    .line 470
    .line 471
    goto :goto_f

    .line 472
    :cond_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    if-eqz v3, :cond_1c

    .line 481
    .line 482
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    check-cast v3, Lcc/i1;

    .line 487
    .line 488
    if-nez v3, :cond_1b

    .line 489
    .line 490
    const/4 v3, 0x1

    .line 491
    goto :goto_e

    .line 492
    :cond_1b
    const/4 v3, 0x0

    .line 493
    :goto_e
    if-nez v3, :cond_1a

    .line 494
    .line 495
    const/4 v1, 0x0

    .line 496
    goto :goto_10

    .line 497
    :cond_1c
    :goto_f
    const/4 v1, 0x1

    .line 498
    :goto_10
    if-eqz v1, :cond_1d

    .line 499
    .line 500
    new-instance v1, Ldb/g$b;

    .line 501
    .line 502
    const/4 v2, 0x0

    .line 503
    const/4 v6, 0x0

    .line 504
    invoke-direct {v1, v2, v12, v6}, Ldb/g$b;-><init>(Lcc/m0;IZ)V

    .line 505
    .line 506
    .line 507
    return-object v1

    .line 508
    :cond_1d
    const/4 v6, 0x0

    .line 509
    const/4 v1, 0x3

    .line 510
    new-array v1, v1, [Lna/h;

    .line 511
    .line 512
    invoke-virtual/range {p1 .. p1}, Lcc/e0;->getAnnotations()Lna/h;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    aput-object v3, v1, v6

    .line 517
    .line 518
    sget-object v3, Ldb/x;->b:Ldb/f;

    .line 519
    .line 520
    if-eqz v8, :cond_1e

    .line 521
    .line 522
    const/4 v7, 0x1

    .line 523
    goto :goto_11

    .line 524
    :cond_1e
    const/4 v7, 0x0

    .line 525
    :goto_11
    if-eqz v7, :cond_1f

    .line 526
    .line 527
    goto :goto_12

    .line 528
    :cond_1f
    const/4 v3, 0x0

    .line 529
    :goto_12
    const/4 v7, 0x1

    .line 530
    aput-object v3, v1, v7

    .line 531
    .line 532
    sget-object v3, Ldb/x;->a:Ldb/f;

    .line 533
    .line 534
    if-eqz v2, :cond_20

    .line 535
    .line 536
    const/4 v7, 0x1

    .line 537
    goto :goto_13

    .line 538
    :cond_20
    const/4 v7, 0x0

    .line 539
    :goto_13
    if-eqz v7, :cond_21

    .line 540
    .line 541
    goto :goto_14

    .line 542
    :cond_21
    const/4 v3, 0x0

    .line 543
    :goto_14
    const/4 v7, 0x2

    .line 544
    aput-object v3, v1, v7

    .line 545
    .line 546
    invoke-static {v1}, Lm9/k;->p0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    if-eqz v3, :cond_28

    .line 555
    .line 556
    const/4 v7, 0x1

    .line 557
    if-eq v3, v7, :cond_22

    .line 558
    .line 559
    new-instance v3, Lna/k;

    .line 560
    .line 561
    invoke-static {v1}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-direct {v3, v1}, Lna/k;-><init>(Ljava/util/List;)V

    .line 566
    .line 567
    .line 568
    goto :goto_15

    .line 569
    :cond_22
    invoke-static {v1}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    move-object v3, v1

    .line 574
    check-cast v3, Lna/h;

    .line 575
    .line 576
    :goto_15
    invoke-static {v3}, Lc5/v;->L(Lna/h;)Lcc/a1;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    invoke-virtual/range {p1 .. p1}, Lcc/e0;->K0()Ljava/util/List;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    check-cast v3, Ljava/lang/Iterable;

    .line 585
    .line 586
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 587
    .line 588
    .line 589
    move-result-object v8

    .line 590
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 591
    .line 592
    .line 593
    move-result-object v9

    .line 594
    new-instance v10, Ljava/util/ArrayList;

    .line 595
    .line 596
    invoke-static {v5}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 597
    .line 598
    .line 599
    move-result v5

    .line 600
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 605
    .line 606
    .line 607
    move-result v3

    .line 608
    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 609
    .line 610
    .line 611
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 612
    .line 613
    .line 614
    move-result v3

    .line 615
    if-eqz v3, :cond_24

    .line 616
    .line 617
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    if-eqz v3, :cond_24

    .line 622
    .line 623
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    check-cast v5, Lcc/i1;

    .line 632
    .line 633
    check-cast v3, Lcc/i1;

    .line 634
    .line 635
    if-nez v3, :cond_23

    .line 636
    .line 637
    goto :goto_17

    .line 638
    :cond_23
    move-object v5, v3

    .line 639
    :goto_17
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    goto :goto_16

    .line 643
    :cond_24
    if-eqz v2, :cond_25

    .line 644
    .line 645
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 646
    .line 647
    .line 648
    move-result v3

    .line 649
    goto :goto_18

    .line 650
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcc/e0;->N0()Z

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    :goto_18
    const/4 v5, 0x0

    .line 655
    invoke-static {v1, v4, v10, v3, v5}, Lcc/f0;->f(Lcc/a1;Lcc/c1;Ljava/util/List;ZLdc/f;)Lcc/m0;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    iget-boolean v3, v11, Ldb/h;->c:Z

    .line 660
    .line 661
    if-eqz v3, :cond_26

    .line 662
    .line 663
    iget-object v3, v0, Ldb/g;->a:Lya/d;

    .line 664
    .line 665
    invoke-interface {v3}, Lya/d;->a()V

    .line 666
    .line 667
    .line 668
    new-instance v3, Ldb/j;

    .line 669
    .line 670
    invoke-direct {v3, v1}, Ldb/j;-><init>(Lcc/m0;)V

    .line 671
    .line 672
    .line 673
    move-object v1, v3

    .line 674
    :cond_26
    if-eqz v2, :cond_27

    .line 675
    .line 676
    iget-boolean v2, v11, Ldb/h;->d:Z

    .line 677
    .line 678
    if-eqz v2, :cond_27

    .line 679
    .line 680
    const/4 v6, 0x1

    .line 681
    :cond_27
    new-instance v2, Ldb/g$b;

    .line 682
    .line 683
    invoke-direct {v2, v1, v12, v6}, Ldb/g$b;-><init>(Lcc/m0;IZ)V

    .line 684
    .line 685
    .line 686
    return-object v2

    .line 687
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 688
    .line 689
    const-string v2, "At least one Annotations object expected"

    .line 690
    .line 691
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    throw v1
.end method

.method public final b(Lcc/s1;Ldb/b;IZ)Ldb/g$a;
    .locals 11

    .line 1
    invoke-static {p1}, Lc5/v;->y(Lcc/e0;)Z

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
    new-instance p1, Ldb/g$a;

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-direct {p1, v1, p2}, Ldb/g$a;-><init>(Lcc/s1;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    instance-of v0, p1, Lcc/y;

    .line 16
    .line 17
    if-eqz v0, :cond_b

    .line 18
    .line 19
    instance-of v0, p1, Lcc/l0;

    .line 20
    .line 21
    move-object v9, p1

    .line 22
    check-cast v9, Lcc/y;

    .line 23
    .line 24
    iget-object v3, v9, Lcc/y;->b:Lcc/m0;

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    move-object v2, p0

    .line 28
    move-object v4, p2

    .line 29
    move v5, p3

    .line 30
    move v7, v0

    .line 31
    move v8, p4

    .line 32
    invoke-virtual/range {v2 .. v8}, Ldb/g;->a(Lcc/m0;Ldb/b;IIZZ)Ldb/g$b;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    iget-object v3, v9, Lcc/y;->c:Lcc/m0;

    .line 37
    .line 38
    const/4 v6, 0x2

    .line 39
    invoke-virtual/range {v2 .. v8}, Ldb/g;->a(Lcc/m0;Ldb/b;IIZZ)Ldb/g$b;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object p3, p2, Ldb/g$b;->a:Lcc/m0;

    .line 44
    .line 45
    iget-object p4, v10, Ldb/g$b;->a:Lcc/m0;

    .line 46
    .line 47
    if-nez p4, :cond_1

    .line 48
    .line 49
    if-nez p3, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    iget-boolean v1, v10, Ldb/g$b;->c:Z

    .line 53
    .line 54
    if-nez v1, :cond_8

    .line 55
    .line 56
    iget-boolean p2, p2, Ldb/g$b;->c:Z

    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, v9, Lcc/y;->c:Lcc/m0;

    .line 62
    .line 63
    iget-object p2, v9, Lcc/y;->b:Lcc/m0;

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    new-instance v1, Lab/h;

    .line 68
    .line 69
    if-nez p4, :cond_3

    .line 70
    .line 71
    move-object p4, p2

    .line 72
    :cond_3
    if-nez p3, :cond_4

    .line 73
    .line 74
    move-object p3, p1

    .line 75
    :cond_4
    invoke-direct {v1, p4, p3}, Lab/h;-><init>(Lcc/m0;Lcc/m0;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    if-nez p4, :cond_6

    .line 80
    .line 81
    move-object p4, p2

    .line 82
    :cond_6
    if-nez p3, :cond_7

    .line 83
    .line 84
    move-object p3, p1

    .line 85
    :cond_7
    invoke-static {p4, p3}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    goto :goto_2

    .line 90
    :cond_8
    :goto_0
    if-eqz p3, :cond_a

    .line 91
    .line 92
    if-nez p4, :cond_9

    .line 93
    .line 94
    move-object p4, p3

    .line 95
    :cond_9
    invoke-static {p4, p3}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    .line 96
    .line 97
    .line 98
    move-result-object p4

    .line 99
    goto :goto_1

    .line 100
    :cond_a
    invoke-static {p4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-static {p1, p4}, Lc5/v;->O(Lcc/s1;Lcc/e0;)Lcc/s1;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :goto_2
    new-instance p1, Ldb/g$a;

    .line 108
    .line 109
    iget p2, v10, Ldb/g$b;->b:I

    .line 110
    .line 111
    invoke-direct {p1, v1, p2}, Ldb/g$a;-><init>(Lcc/s1;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_b
    instance-of v0, p1, Lcc/m0;

    .line 116
    .line 117
    if-eqz v0, :cond_d

    .line 118
    .line 119
    move-object v2, p1

    .line 120
    check-cast v2, Lcc/m0;

    .line 121
    .line 122
    const/4 v5, 0x3

    .line 123
    const/4 v6, 0x0

    .line 124
    move-object v1, p0

    .line 125
    move-object v3, p2

    .line 126
    move v4, p3

    .line 127
    move v7, p4

    .line 128
    invoke-virtual/range {v1 .. v7}, Ldb/g;->a(Lcc/m0;Ldb/b;IIZZ)Ldb/g$b;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    new-instance p3, Ldb/g$a;

    .line 133
    .line 134
    iget-boolean p4, p2, Ldb/g$b;->c:Z

    .line 135
    .line 136
    iget-object v0, p2, Ldb/g$b;->a:Lcc/m0;

    .line 137
    .line 138
    if-eqz p4, :cond_c

    .line 139
    .line 140
    invoke-static {p1, v0}, Lc5/v;->O(Lcc/s1;Lcc/e0;)Lcc/s1;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    :cond_c
    iget p1, p2, Ldb/g$b;->b:I

    .line 145
    .line 146
    invoke-direct {p3, v0, p1}, Ldb/g$a;-><init>(Lcc/s1;I)V

    .line 147
    .line 148
    .line 149
    move-object p1, p3

    .line 150
    :goto_3
    return-object p1

    .line 151
    :cond_d
    new-instance p1, Lj7/p;

    .line 152
    .line 153
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 154
    .line 155
    .line 156
    throw p1
.end method
