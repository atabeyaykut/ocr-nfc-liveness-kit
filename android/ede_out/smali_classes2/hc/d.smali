.class public final Lhc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcc/e0;)Lhc/a;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc/e0;",
            ")",
            "Lhc/a<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lc5/v;->z(Lcc/e0;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lc5/v;->E(Lcc/e0;)Lcc/m0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lhc/d;->a(Lcc/e0;)Lhc/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0}, Lc5/v;->M(Lcc/e0;)Lcc/m0;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lhc/d;->a(Lcc/e0;)Lhc/a;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lhc/a;

    .line 29
    .line 30
    iget-object v3, v0, Lhc/a;->a:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Lcc/e0;

    .line 33
    .line 34
    invoke-static {v3}, Lc5/v;->E(Lcc/e0;)Lcc/m0;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, v1, Lhc/a;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v4, Lcc/e0;

    .line 41
    .line 42
    invoke-static {v4}, Lc5/v;->M(Lcc/e0;)Lcc/m0;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v3, v4}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3, p0}, Lc5/v;->v(Lcc/s1;Lcc/e0;)Lcc/s1;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v0, v0, Lhc/a;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lcc/e0;

    .line 57
    .line 58
    invoke-static {v0}, Lc5/v;->E(Lcc/e0;)Lcc/m0;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, v1, Lhc/a;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Lcc/e0;

    .line 65
    .line 66
    invoke-static {v1}, Lc5/v;->M(Lcc/e0;)Lcc/m0;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0, p0}, Lc5/v;->v(Lcc/s1;Lcc/e0;)Lcc/s1;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {v2, v3, p0}, Lhc/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    instance-of v2, v2, Lpb/b;

    .line 91
    .line 92
    const-string v3, "type.builtIns.nothingType"

    .line 93
    .line 94
    const/4 v4, 0x2

    .line 95
    const/4 v5, 0x1

    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.calls.inference.CapturedTypeConstructor"

    .line 99
    .line 100
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    check-cast v1, Lpb/b;

    .line 104
    .line 105
    invoke-interface {v1}, Lpb/b;->b()Lcc/i1;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcc/i1;->getType()Lcc/e0;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v2, "typeProjection.type"

    .line 114
    .line 115
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcc/e0;->N0()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-static {v1, v2}, Lcc/q1;->k(Lcc/e0;Z)Lcc/e0;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-interface {v0}, Lcc/i1;->b()Lcc/t1;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eq v2, v5, :cond_2

    .line 135
    .line 136
    if-ne v2, v4, :cond_1

    .line 137
    .line 138
    new-instance v0, Lhc/a;

    .line 139
    .line 140
    invoke-static {p0}, Lc5/y;->o(Lcc/e0;)Lja/k;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lja/k;->n()Lcc/m0;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcc/e0;->N0()Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    invoke-static {v2, p0}, Lcc/q1;->k(Lcc/e0;Z)Lcc/e0;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-direct {v0, p0, v1}, Lhc/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 164
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v2, "Only nontrivial projections should have been captured, not: "

    .line 168
    .line 169
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    throw p0

    .line 183
    :cond_2
    new-instance v0, Lhc/a;

    .line 184
    .line 185
    invoke-static {p0}, Lc5/y;->o(Lcc/e0;)Lja/k;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0}, Lja/k;->o()Lcc/m0;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-direct {v0, v1, p0}, Lhc/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :goto_0
    return-object v0

    .line 197
    :cond_3
    invoke-virtual {p0}, Lcc/e0;->K0()Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_11

    .line 206
    .line 207
    invoke-virtual {p0}, Lcc/e0;->K0()Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    invoke-interface {v1}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-eq v2, v6, :cond_4

    .line 224
    .line 225
    goto/16 :goto_7

    .line 226
    .line 227
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .line 231
    .line 232
    new-instance v6, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lcc/e0;->K0()Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    check-cast v7, Ljava/lang/Iterable;

    .line 242
    .line 243
    invoke-interface {v1}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const-string v8, "typeConstructor.parameters"

    .line 248
    .line 249
    invoke-static {v1, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    check-cast v1, Ljava/lang/Iterable;

    .line 253
    .line 254
    invoke-static {v7, v1}, Lm9/t;->A1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    if-eqz v7, :cond_c

    .line 267
    .line 268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    check-cast v7, Ll9/g;

    .line 273
    .line 274
    iget-object v8, v7, Ll9/g;->a:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v8, Lcc/i1;

    .line 277
    .line 278
    iget-object v7, v7, Ll9/g;->b:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v7, Lma/w0;

    .line 281
    .line 282
    const-string v9, "typeParameter"

    .line 283
    .line 284
    invoke-static {v7, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v7}, Lma/w0;->I()Lcc/t1;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    const/4 v10, 0x0

    .line 292
    if-eqz v9, :cond_b

    .line 293
    .line 294
    if-eqz v8, :cond_a

    .line 295
    .line 296
    sget-object v10, Lcc/p1;->b:Lcc/p1;

    .line 297
    .line 298
    invoke-interface {v8}, Lcc/i1;->c()Z

    .line 299
    .line 300
    .line 301
    move-result v10

    .line 302
    if-eqz v10, :cond_5

    .line 303
    .line 304
    sget-object v9, Lcc/t1;->e:Lcc/t1;

    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_5
    invoke-interface {v8}, Lcc/i1;->b()Lcc/t1;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    invoke-static {v9, v10}, Lcc/p1;->b(Lcc/t1;Lcc/t1;)Lcc/t1;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 316
    .line 317
    .line 318
    move-result v9

    .line 319
    if-eqz v9, :cond_8

    .line 320
    .line 321
    if-eq v9, v5, :cond_7

    .line 322
    .line 323
    if-ne v9, v4, :cond_6

    .line 324
    .line 325
    new-instance v9, Lhc/e;

    .line 326
    .line 327
    invoke-static {v7}, Lsb/b;->e(Lma/j;)Lja/k;

    .line 328
    .line 329
    .line 330
    move-result-object v10

    .line 331
    invoke-virtual {v10}, Lja/k;->n()Lcc/m0;

    .line 332
    .line 333
    .line 334
    move-result-object v10

    .line 335
    const-string v11, "typeParameter.builtIns.nothingType"

    .line 336
    .line 337
    invoke-static {v10, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-interface {v8}, Lcc/i1;->getType()Lcc/e0;

    .line 341
    .line 342
    .line 343
    move-result-object v11

    .line 344
    invoke-static {v11, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-direct {v9, v7, v10, v11}, Lhc/e;-><init>(Lma/w0;Lcc/e0;Lcc/e0;)V

    .line 348
    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_6
    new-instance p0, Lj7/p;

    .line 352
    .line 353
    invoke-direct {p0}, Lj7/p;-><init>()V

    .line 354
    .line 355
    .line 356
    throw p0

    .line 357
    :cond_7
    new-instance v9, Lhc/e;

    .line 358
    .line 359
    invoke-interface {v8}, Lcc/i1;->getType()Lcc/e0;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    invoke-static {v10, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-static {v7}, Lsb/b;->e(Lma/j;)Lja/k;

    .line 367
    .line 368
    .line 369
    move-result-object v11

    .line 370
    invoke-virtual {v11}, Lja/k;->o()Lcc/m0;

    .line 371
    .line 372
    .line 373
    move-result-object v11

    .line 374
    invoke-direct {v9, v7, v10, v11}, Lhc/e;-><init>(Lma/w0;Lcc/e0;Lcc/e0;)V

    .line 375
    .line 376
    .line 377
    goto :goto_3

    .line 378
    :cond_8
    new-instance v9, Lhc/e;

    .line 379
    .line 380
    invoke-interface {v8}, Lcc/i1;->getType()Lcc/e0;

    .line 381
    .line 382
    .line 383
    move-result-object v10

    .line 384
    invoke-static {v10, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v8}, Lcc/i1;->getType()Lcc/e0;

    .line 388
    .line 389
    .line 390
    move-result-object v11

    .line 391
    invoke-static {v11, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-direct {v9, v7, v10, v11}, Lhc/e;-><init>(Lma/w0;Lcc/e0;Lcc/e0;)V

    .line 395
    .line 396
    .line 397
    :goto_3
    invoke-interface {v8}, Lcc/i1;->c()Z

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    if-eqz v7, :cond_9

    .line 402
    .line 403
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    goto/16 :goto_1

    .line 410
    .line 411
    :cond_9
    iget-object v7, v9, Lhc/e;->b:Lcc/e0;

    .line 412
    .line 413
    invoke-static {v7}, Lhc/d;->a(Lcc/e0;)Lhc/a;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    iget-object v8, v7, Lhc/a;->a:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v8, Lcc/e0;

    .line 420
    .line 421
    iget-object v7, v7, Lhc/a;->b:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v7, Lcc/e0;

    .line 424
    .line 425
    iget-object v10, v9, Lhc/e;->c:Lcc/e0;

    .line 426
    .line 427
    invoke-static {v10}, Lhc/d;->a(Lcc/e0;)Lhc/a;

    .line 428
    .line 429
    .line 430
    move-result-object v10

    .line 431
    iget-object v11, v10, Lhc/a;->a:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v11, Lcc/e0;

    .line 434
    .line 435
    iget-object v10, v10, Lhc/a;->b:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v10, Lcc/e0;

    .line 438
    .line 439
    new-instance v12, Lhc/e;

    .line 440
    .line 441
    iget-object v9, v9, Lhc/e;->a:Lma/w0;

    .line 442
    .line 443
    invoke-direct {v12, v9, v7, v11}, Lhc/e;-><init>(Lma/w0;Lcc/e0;Lcc/e0;)V

    .line 444
    .line 445
    .line 446
    new-instance v7, Lhc/e;

    .line 447
    .line 448
    invoke-direct {v7, v9, v8, v10}, Lhc/e;-><init>(Lma/w0;Lcc/e0;Lcc/e0;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    goto/16 :goto_1

    .line 458
    .line 459
    :cond_a
    const/16 p0, 0x24

    .line 460
    .line 461
    invoke-static {p0}, Lcc/p1;->a(I)V

    .line 462
    .line 463
    .line 464
    throw v10

    .line 465
    :cond_b
    const/16 p0, 0x23

    .line 466
    .line 467
    invoke-static {p0}, Lcc/p1;->a(I)V

    .line 468
    .line 469
    .line 470
    throw v10

    .line 471
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    if-eqz v0, :cond_d

    .line 476
    .line 477
    goto :goto_4

    .line 478
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    if-eqz v1, :cond_f

    .line 487
    .line 488
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    check-cast v1, Lhc/e;

    .line 493
    .line 494
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    sget-object v4, Ldc/d;->a:Ldc/m;

    .line 498
    .line 499
    iget-object v7, v1, Lhc/e;->c:Lcc/e0;

    .line 500
    .line 501
    iget-object v1, v1, Lhc/e;->b:Lcc/e0;

    .line 502
    .line 503
    invoke-virtual {v4, v1, v7}, Ldc/m;->d(Lcc/e0;Lcc/e0;)Z

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    xor-int/2addr v1, v5

    .line 508
    if-eqz v1, :cond_e

    .line 509
    .line 510
    goto :goto_5

    .line 511
    :cond_f
    :goto_4
    const/4 v5, 0x0

    .line 512
    :goto_5
    new-instance v0, Lhc/a;

    .line 513
    .line 514
    if-eqz v5, :cond_10

    .line 515
    .line 516
    invoke-static {p0}, Lc5/y;->o(Lcc/e0;)Lja/k;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-virtual {v1}, Lja/k;->n()Lcc/m0;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    goto :goto_6

    .line 528
    :cond_10
    invoke-static {v2, p0}, Lhc/d;->b(Ljava/util/ArrayList;Lcc/e0;)Lcc/e0;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    :goto_6
    invoke-static {v6, p0}, Lhc/d;->b(Ljava/util/ArrayList;Lcc/e0;)Lcc/e0;

    .line 533
    .line 534
    .line 535
    move-result-object p0

    .line 536
    invoke-direct {v0, v1, p0}, Lhc/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    .line 538
    .line 539
    return-object v0

    .line 540
    :cond_11
    :goto_7
    new-instance v0, Lhc/a;

    .line 541
    .line 542
    invoke-direct {v0, p0, p0}, Lhc/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    return-object v0
.end method

.method public static final b(Ljava/util/ArrayList;Lcc/e0;)Lcc/e0;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcc/e0;->K0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-static {p0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_9

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lhc/e;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget-object v3, Ldc/d;->a:Ldc/m;

    .line 41
    .line 42
    iget-object v4, v1, Lhc/e;->c:Lcc/e0;

    .line 43
    .line 44
    iget-object v5, v1, Lhc/e;->b:Lcc/e0;

    .line 45
    .line 46
    invoke-virtual {v3, v5, v4}, Ldc/m;->d(Lcc/e0;Lcc/e0;)Z

    .line 47
    .line 48
    .line 49
    iget-object v3, v1, Lhc/e;->b:Lcc/e0;

    .line 50
    .line 51
    iget-object v4, v1, Lhc/e;->c:Lcc/e0;

    .line 52
    .line 53
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_8

    .line 58
    .line 59
    iget-object v1, v1, Lhc/e;->a:Lma/w0;

    .line 60
    .line 61
    invoke-interface {v1}, Lma/w0;->I()Lcc/t1;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    sget-object v6, Lcc/t1;->d:Lcc/t1;

    .line 66
    .line 67
    if-ne v5, v6, :cond_0

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_0
    invoke-static {v3}, Lja/k;->E(Lcc/e0;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    sget-object v7, Lcc/t1;->e:Lcc/t1;

    .line 75
    .line 76
    sget-object v8, Lcc/t1;->c:Lcc/t1;

    .line 77
    .line 78
    if-eqz v5, :cond_2

    .line 79
    .line 80
    invoke-interface {v1}, Lma/w0;->I()Lcc/t1;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    if-eq v5, v6, :cond_2

    .line 85
    .line 86
    new-instance v2, Lcc/k1;

    .line 87
    .line 88
    invoke-interface {v1}, Lma/w0;->I()Lcc/t1;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-ne v7, v1, :cond_1

    .line 93
    .line 94
    move-object v7, v8

    .line 95
    :cond_1
    invoke-direct {v2, v4, v7}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_2
    if-eqz v4, :cond_7

    .line 100
    .line 101
    invoke-static {v4}, Lja/k;->x(Lcc/e0;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    invoke-virtual {v4}, Lcc/e0;->N0()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_3

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    const/4 v2, 0x0

    .line 116
    :goto_1
    if-eqz v2, :cond_5

    .line 117
    .line 118
    new-instance v2, Lcc/k1;

    .line 119
    .line 120
    invoke-interface {v1}, Lma/w0;->I()Lcc/t1;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-ne v6, v1, :cond_4

    .line 125
    .line 126
    move-object v6, v8

    .line 127
    :cond_4
    invoke-direct {v2, v3, v6}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    new-instance v2, Lcc/k1;

    .line 132
    .line 133
    invoke-interface {v1}, Lma/w0;->I()Lcc/t1;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-ne v7, v1, :cond_6

    .line 138
    .line 139
    move-object v7, v8

    .line 140
    :cond_6
    invoke-direct {v2, v4, v7}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_7
    const/16 p0, 0x8c

    .line 145
    .line 146
    invoke-static {p0}, Lja/k;->a(I)V

    .line 147
    .line 148
    .line 149
    throw v2

    .line 150
    :cond_8
    :goto_2
    new-instance v2, Lcc/k1;

    .line 151
    .line 152
    invoke-direct {v2, v3}, Lcc/k1;-><init>(Lcc/e0;)V

    .line 153
    .line 154
    .line 155
    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_9
    const/4 p0, 0x6

    .line 161
    invoke-static {p1, v0, v2, p0}, Lcc/n1;->c(Lcc/e0;Ljava/util/List;Lna/h;I)Lcc/e0;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0
.end method
