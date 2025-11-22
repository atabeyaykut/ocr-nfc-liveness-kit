.class public final Lfd/e;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/List<",
        "+",
        "Ll9/g<",
        "+",
        "Led/k;",
        "+",
        "Led/z;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lfd/e;->a:Ljava/lang/ClassLoader;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 34

    .line 1
    sget-object v0, Lfd/d;->c:Led/z;

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v2, v1, Lfd/e;->a:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v3, "getResources(\"\")"

    .line 19
    .line 20
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v3, "java.util.Collections.list(this)"

    .line 28
    .line 29
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v6, 0x0

    .line 46
    const-string v7, "it"

    .line 47
    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Ljava/net/URL;

    .line 55
    .line 56
    sget-object v8, Lfd/d;->c:Led/z;

    .line 57
    .line 58
    invoke-static {v5, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const-string v8, "file"

    .line 66
    .line 67
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-nez v7, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    sget-object v6, Led/k;->a:Led/t;

    .line 75
    .line 76
    sget-object v7, Led/z;->b:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v7, Ljava/io/File;

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v7}, Led/z$a;->b(Ljava/io/File;)Led/z;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    new-instance v7, Ll9/g;

    .line 92
    .line 93
    invoke-direct {v7, v6, v5}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move-object v6, v7

    .line 97
    :goto_1
    if-eqz v6, :cond_0

    .line 98
    .line 99
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "META-INF/MANIFEST.MF"

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v2, "getResources(\"META-INF/MANIFEST.MF\")"

    .line 110
    .line 111
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v2, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_15

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Ljava/net/URL;

    .line 141
    .line 142
    sget-object v5, Lfd/d;->c:Led/z;

    .line 143
    .line 144
    invoke-static {v3, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    const-string v5, "toString()"

    .line 152
    .line 153
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v5, "jar:file:"

    .line 157
    .line 158
    const/4 v8, 0x0

    .line 159
    invoke-static {v3, v5, v8}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-nez v5, :cond_3

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_3
    const-string v5, "!"

    .line 167
    .line 168
    const/4 v8, 0x6

    .line 169
    invoke-static {v3, v5, v8}, Lmc/n;->Q(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    const/4 v8, -0x1

    .line 174
    if-ne v5, v8, :cond_4

    .line 175
    .line 176
    :goto_3
    move-object/from16 v27, v0

    .line 177
    .line 178
    move-object/from16 v25, v2

    .line 179
    .line 180
    move-object v0, v6

    .line 181
    move-object v2, v0

    .line 182
    move-object/from16 v26, v7

    .line 183
    .line 184
    goto/16 :goto_8

    .line 185
    .line 186
    :cond_4
    sget-object v8, Led/z;->b:Ljava/lang/String;

    .line 187
    .line 188
    new-instance v8, Ljava/io/File;

    .line 189
    .line 190
    const/4 v9, 0x4

    .line 191
    invoke-virtual {v3, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    .line 196
    .line 197
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v8}, Led/z$a;->b(Ljava/io/File;)Led/z;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    sget-object v5, Led/k;->a:Led/t;

    .line 212
    .line 213
    const-string v8, "not a zip: expected "

    .line 214
    .line 215
    const-string v9, "fileSystem"

    .line 216
    .line 217
    invoke-static {v5, v9}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string v9, "predicate"

    .line 221
    .line 222
    sget-object v10, Lfd/c;->a:Lfd/c;

    .line 223
    .line 224
    invoke-static {v10, v9}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v3}, Led/t;->j(Led/z;)Led/i;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    const-wide/16 v11, 0x0

    .line 232
    .line 233
    :try_start_0
    invoke-virtual {v9, v11, v12}, Led/i;->d(J)Led/i$a;

    .line 234
    .line 235
    .line 236
    move-result-object v13

    .line 237
    invoke-static {v13}, Led/v;->b(Led/j0;)Led/d0;

    .line 238
    .line 239
    .line 240
    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 241
    :try_start_1
    invoke-virtual {v13}, Led/d0;->b0()I

    .line 242
    .line 243
    .line 244
    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 245
    const v15, 0x6054b50

    .line 246
    .line 247
    .line 248
    const-string v11, " but was "

    .line 249
    .line 250
    const v12, 0x4034b50

    .line 251
    .line 252
    .line 253
    if-eq v14, v12, :cond_6

    .line 254
    .line 255
    if-ne v14, v15, :cond_5

    .line 256
    .line 257
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    .line 258
    .line 259
    const-string v2, "unsupported zip: empty"

    .line 260
    .line 261
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v0

    .line 265
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 266
    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v12}, Lfd/j;->b(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-static {v14}, Lfd/j;->b(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw v0

    .line 297
    :cond_6
    sget-object v8, Ll9/m;->a:Ll9/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 298
    .line 299
    :try_start_3
    invoke-static {v13, v6}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v9}, Led/i;->size()J

    .line 303
    .line 304
    .line 305
    move-result-wide v12

    .line 306
    const/16 v8, 0x16

    .line 307
    .line 308
    move-object v14, v7

    .line 309
    int-to-long v6, v8

    .line 310
    sub-long/2addr v12, v6

    .line 311
    const-wide/16 v6, 0x0

    .line 312
    .line 313
    cmp-long v8, v12, v6

    .line 314
    .line 315
    if-ltz v8, :cond_14

    .line 316
    .line 317
    const-wide/32 v16, 0x10000

    .line 318
    .line 319
    .line 320
    move-object v8, v0

    .line 321
    sub-long v0, v12, v16

    .line 322
    .line 323
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 324
    .line 325
    .line 326
    move-result-wide v0

    .line 327
    :goto_4
    invoke-virtual {v9, v12, v13}, Led/i;->d(J)Led/i$a;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    invoke-static {v6}, Led/v;->b(Led/j0;)Led/d0;

    .line 332
    .line 333
    .line 334
    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 335
    :try_start_4
    invoke-virtual {v6}, Led/d0;->b0()I

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    if-ne v7, v15, :cond_12

    .line 340
    .line 341
    invoke-virtual {v6}, Led/d0;->b()S

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    const v1, 0xffff

    .line 346
    .line 347
    .line 348
    and-int/2addr v0, v1

    .line 349
    invoke-virtual {v6}, Led/d0;->b()S

    .line 350
    .line 351
    .line 352
    move-result v7

    .line 353
    and-int/2addr v7, v1

    .line 354
    invoke-virtual {v6}, Led/d0;->b()S

    .line 355
    .line 356
    .line 357
    move-result v15

    .line 358
    and-int/2addr v15, v1

    .line 359
    move-object/from16 v25, v2

    .line 360
    .line 361
    int-to-long v1, v15

    .line 362
    invoke-virtual {v6}, Led/d0;->b()S

    .line 363
    .line 364
    .line 365
    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 366
    const v19, 0xffff

    .line 367
    .line 368
    .line 369
    and-int v15, v15, v19

    .line 370
    .line 371
    move-object/from16 v26, v14

    .line 372
    .line 373
    int-to-long v14, v15

    .line 374
    move-object/from16 v27, v8

    .line 375
    .line 376
    const-string v8, "unsupported zip: spanned"

    .line 377
    .line 378
    cmp-long v20, v1, v14

    .line 379
    .line 380
    if-nez v20, :cond_11

    .line 381
    .line 382
    if-nez v0, :cond_11

    .line 383
    .line 384
    if-nez v7, :cond_11

    .line 385
    .line 386
    const-wide/16 v14, 0x4

    .line 387
    .line 388
    :try_start_5
    invoke-virtual {v6, v14, v15}, Led/d0;->skip(J)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v6}, Led/d0;->b0()I

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    int-to-long v14, v0

    .line 396
    const-wide v20, 0xffffffffL

    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    and-long v22, v14, v20

    .line 402
    .line 403
    invoke-virtual {v6}, Led/d0;->b()S

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    const v7, 0xffff

    .line 408
    .line 409
    .line 410
    and-int/2addr v0, v7

    .line 411
    new-instance v7, Lfd/a;

    .line 412
    .line 413
    move-object/from16 v19, v7

    .line 414
    .line 415
    move-wide/from16 v20, v1

    .line 416
    .line 417
    move/from16 v24, v0

    .line 418
    .line 419
    invoke-direct/range {v19 .. v24}, Lfd/a;-><init>(JJI)V

    .line 420
    .line 421
    .line 422
    int-to-long v1, v0

    .line 423
    invoke-virtual {v6, v1, v2}, Led/d0;->c(J)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 424
    .line 425
    .line 426
    :try_start_6
    invoke-virtual {v6}, Led/d0;->close()V

    .line 427
    .line 428
    .line 429
    const/16 v1, 0x14

    .line 430
    .line 431
    int-to-long v1, v1

    .line 432
    sub-long/2addr v12, v1

    .line 433
    const-wide/16 v1, 0x0

    .line 434
    .line 435
    cmp-long v6, v12, v1

    .line 436
    .line 437
    if-lez v6, :cond_b

    .line 438
    .line 439
    invoke-virtual {v9, v12, v13}, Led/i;->d(J)Led/i$a;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-static {v1}, Led/v;->b(Led/j0;)Led/d0;

    .line 444
    .line 445
    .line 446
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 447
    :try_start_7
    invoke-virtual {v1}, Led/d0;->b0()I

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    const v6, 0x7064b50

    .line 452
    .line 453
    .line 454
    if-ne v2, v6, :cond_a

    .line 455
    .line 456
    invoke-virtual {v1}, Led/d0;->b0()I

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    invoke-virtual {v1}, Led/d0;->g0()J

    .line 461
    .line 462
    .line 463
    move-result-wide v6

    .line 464
    invoke-virtual {v1}, Led/d0;->b0()I

    .line 465
    .line 466
    .line 467
    move-result v12

    .line 468
    const/4 v13, 0x1

    .line 469
    if-ne v12, v13, :cond_9

    .line 470
    .line 471
    if-nez v2, :cond_9

    .line 472
    .line 473
    invoke-virtual {v9, v6, v7}, Led/i;->d(J)Led/i$a;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-static {v2}, Led/v;->b(Led/j0;)Led/d0;

    .line 478
    .line 479
    .line 480
    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 481
    :try_start_8
    invoke-virtual {v2}, Led/d0;->b0()I

    .line 482
    .line 483
    .line 484
    move-result v6

    .line 485
    const v7, 0x6064b50

    .line 486
    .line 487
    .line 488
    if-ne v6, v7, :cond_8

    .line 489
    .line 490
    const-wide/16 v6, 0xc

    .line 491
    .line 492
    invoke-virtual {v2, v6, v7}, Led/d0;->skip(J)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v2}, Led/d0;->b0()I

    .line 496
    .line 497
    .line 498
    move-result v6

    .line 499
    invoke-virtual {v2}, Led/d0;->b0()I

    .line 500
    .line 501
    .line 502
    move-result v7

    .line 503
    invoke-virtual {v2}, Led/d0;->g0()J

    .line 504
    .line 505
    .line 506
    move-result-wide v29

    .line 507
    invoke-virtual {v2}, Led/d0;->g0()J

    .line 508
    .line 509
    .line 510
    move-result-wide v11

    .line 511
    cmp-long v13, v29, v11

    .line 512
    .line 513
    if-nez v13, :cond_7

    .line 514
    .line 515
    if-nez v6, :cond_7

    .line 516
    .line 517
    if-nez v7, :cond_7

    .line 518
    .line 519
    const-wide/16 v6, 0x8

    .line 520
    .line 521
    invoke-virtual {v2, v6, v7}, Led/d0;->skip(J)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v2}, Led/d0;->g0()J

    .line 525
    .line 526
    .line 527
    move-result-wide v31

    .line 528
    new-instance v6, Lfd/a;

    .line 529
    .line 530
    move-object/from16 v28, v6

    .line 531
    .line 532
    move/from16 v33, v0

    .line 533
    .line 534
    invoke-direct/range {v28 .. v33}, Lfd/a;-><init>(JJI)V

    .line 535
    .line 536
    .line 537
    sget-object v0, Ll9/m;->a:Ll9/m;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 538
    .line 539
    const/4 v0, 0x0

    .line 540
    :try_start_9
    invoke-static {v2, v0}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 541
    .line 542
    .line 543
    move-object v7, v6

    .line 544
    goto :goto_5

    .line 545
    :cond_7
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    .line 546
    .line 547
    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    throw v0

    .line 551
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 552
    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .line 557
    .line 558
    const-string v4, "bad zip: expected "

    .line 559
    .line 560
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-static {v7}, Lfd/j;->b(I)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v4

    .line 567
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-static {v6}, Lfd/j;->b(I)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v4

    .line 577
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 588
    :catchall_0
    move-exception v0

    .line 589
    move-object v3, v0

    .line 590
    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 591
    :catchall_1
    move-exception v0

    .line 592
    move-object v4, v0

    .line 593
    :try_start_c
    invoke-static {v2, v3}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 594
    .line 595
    .line 596
    throw v4

    .line 597
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 598
    .line 599
    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    throw v0

    .line 603
    :cond_a
    :goto_5
    sget-object v0, Ll9/m;->a:Ll9/m;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 604
    .line 605
    const/4 v0, 0x0

    .line 606
    :try_start_d
    invoke-static {v1, v0}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 607
    .line 608
    .line 609
    goto :goto_6

    .line 610
    :catchall_2
    move-exception v0

    .line 611
    move-object v2, v0

    .line 612
    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 613
    :catchall_3
    move-exception v0

    .line 614
    move-object v3, v0

    .line 615
    :try_start_f
    invoke-static {v1, v2}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 616
    .line 617
    .line 618
    throw v3

    .line 619
    :cond_b
    :goto_6
    iget-wide v0, v7, Lfd/a;->b:J

    .line 620
    .line 621
    new-instance v2, Ljava/util/ArrayList;

    .line 622
    .line 623
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v9, v0, v1}, Led/i;->d(J)Led/i$a;

    .line 627
    .line 628
    .line 629
    move-result-object v6

    .line 630
    invoke-static {v6}, Led/v;->b(Led/j0;)Led/d0;

    .line 631
    .line 632
    .line 633
    move-result-object v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 634
    :try_start_10
    iget-wide v7, v7, Lfd/a;->a:J

    .line 635
    .line 636
    const-wide/16 v16, 0x0

    .line 637
    .line 638
    cmp-long v11, v16, v7

    .line 639
    .line 640
    if-gez v11, :cond_f

    .line 641
    .line 642
    move-wide/from16 v11, v16

    .line 643
    .line 644
    :cond_c
    const-wide/16 v13, 0x1

    .line 645
    .line 646
    add-long/2addr v11, v13

    .line 647
    invoke-static {v6}, Lfd/j;->c(Led/d0;)Lfd/f;

    .line 648
    .line 649
    .line 650
    move-result-object v13

    .line 651
    iget-wide v14, v13, Lfd/f;->g:J

    .line 652
    .line 653
    cmp-long v16, v14, v0

    .line 654
    .line 655
    if-gez v16, :cond_e

    .line 656
    .line 657
    invoke-virtual {v10, v13}, Lfd/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v14

    .line 661
    check-cast v14, Ljava/lang/Boolean;

    .line 662
    .line 663
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 664
    .line 665
    .line 666
    move-result v14

    .line 667
    if-eqz v14, :cond_d

    .line 668
    .line 669
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    :cond_d
    cmp-long v13, v11, v7

    .line 673
    .line 674
    if-ltz v13, :cond_c

    .line 675
    .line 676
    goto :goto_7

    .line 677
    :cond_e
    new-instance v0, Ljava/io/IOException;

    .line 678
    .line 679
    const-string v1, "bad zip: local file header offset >= central directory offset"

    .line 680
    .line 681
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    throw v0

    .line 685
    :cond_f
    :goto_7
    sget-object v0, Ll9/m;->a:Ll9/m;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 686
    .line 687
    const/4 v0, 0x0

    .line 688
    :try_start_11
    invoke-static {v6, v0}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 689
    .line 690
    .line 691
    invoke-static {v2}, Lfd/j;->a(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    new-instance v1, Led/l0;

    .line 696
    .line 697
    invoke-direct {v1, v3, v5, v0}, Led/l0;-><init>(Led/z;Led/t;Ljava/util/LinkedHashMap;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 698
    .line 699
    .line 700
    const/4 v2, 0x0

    .line 701
    invoke-static {v9, v2}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 702
    .line 703
    .line 704
    sget-object v0, Lfd/d;->c:Led/z;

    .line 705
    .line 706
    new-instance v3, Ll9/g;

    .line 707
    .line 708
    invoke-direct {v3, v1, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 709
    .line 710
    .line 711
    move-object v0, v3

    .line 712
    :goto_8
    move-object/from16 v7, v25

    .line 713
    .line 714
    if-eqz v0, :cond_10

    .line 715
    .line 716
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    :cond_10
    move-object/from16 v1, p0

    .line 720
    .line 721
    move-object v6, v2

    .line 722
    move-object v2, v7

    .line 723
    move-object/from16 v7, v26

    .line 724
    .line 725
    move-object/from16 v0, v27

    .line 726
    .line 727
    goto/16 :goto_2

    .line 728
    .line 729
    :catchall_4
    move-exception v0

    .line 730
    move-object v1, v0

    .line 731
    :try_start_12
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 732
    :catchall_5
    move-exception v0

    .line 733
    move-object v2, v0

    .line 734
    :try_start_13
    invoke-static {v6, v1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 735
    .line 736
    .line 737
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 738
    :cond_11
    :try_start_14
    new-instance v0, Ljava/io/IOException;

    .line 739
    .line 740
    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 744
    :cond_12
    move-object v7, v2

    .line 745
    move-object/from16 v27, v8

    .line 746
    .line 747
    move-object/from16 v26, v14

    .line 748
    .line 749
    const/4 v2, 0x0

    .line 750
    const-wide/16 v16, 0x0

    .line 751
    .line 752
    :try_start_15
    invoke-virtual {v6}, Led/d0;->close()V

    .line 753
    .line 754
    .line 755
    const-wide/16 v18, -0x1

    .line 756
    .line 757
    add-long v12, v12, v18

    .line 758
    .line 759
    cmp-long v6, v12, v0

    .line 760
    .line 761
    if-ltz v6, :cond_13

    .line 762
    .line 763
    move-object v2, v7

    .line 764
    move-object/from16 v14, v26

    .line 765
    .line 766
    move-object/from16 v8, v27

    .line 767
    .line 768
    goto/16 :goto_4

    .line 769
    .line 770
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 771
    .line 772
    const-string v1, "not a zip: end of central directory signature not found"

    .line 773
    .line 774
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    throw v0

    .line 778
    :catchall_6
    move-exception v0

    .line 779
    invoke-virtual {v6}, Led/d0;->close()V

    .line 780
    .line 781
    .line 782
    throw v0

    .line 783
    :cond_14
    new-instance v0, Ljava/io/IOException;

    .line 784
    .line 785
    const-string v1, "not a zip: size="

    .line 786
    .line 787
    invoke-virtual {v9}, Led/i;->size()J

    .line 788
    .line 789
    .line 790
    move-result-wide v2

    .line 791
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 803
    :catchall_7
    move-exception v0

    .line 804
    move-object v1, v0

    .line 805
    :try_start_16
    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 806
    :catchall_8
    move-exception v0

    .line 807
    move-object v2, v0

    .line 808
    :try_start_17
    invoke-static {v13, v1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 809
    .line 810
    .line 811
    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 812
    :catchall_9
    move-exception v0

    .line 813
    move-object v1, v0

    .line 814
    :try_start_18
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 815
    :catchall_a
    move-exception v0

    .line 816
    move-object v2, v0

    .line 817
    invoke-static {v9, v1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 818
    .line 819
    .line 820
    throw v2

    .line 821
    :cond_15
    move-object v7, v2

    .line 822
    invoke-static {v7, v4}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    return-object v0
.end method
