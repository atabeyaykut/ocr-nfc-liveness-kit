.class public final Lqb/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;Lja/l;)Lqb/b;
    .locals 2

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lqb/i;->b(Ljava/lang/Object;)Lqb/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lqb/i$a;

    invoke-direct {p0, p1}, Lqb/i$a;-><init>(Lja/l;)V

    new-instance p1, Lqb/b;

    invoke-direct {p1, v0, p0}, Lqb/b;-><init>(Ljava/util/List;Lx9/l;)V

    return-object p1
.end method

.method public static b(Ljava/lang/Object;)Lqb/g;
    .locals 6

    .line 1
    instance-of v0, p0, Ljava/lang/Byte;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lqb/d;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-direct {v0, p0}, Lqb/d;-><init>(B)V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_9

    .line 17
    .line 18
    :cond_0
    instance-of v0, p0, Ljava/lang/Short;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lqb/v;

    .line 23
    .line 24
    check-cast p0, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-direct {v0, p0}, Lqb/v;-><init>(S)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_9

    .line 34
    .line 35
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    new-instance v0, Lqb/n;

    .line 40
    .line 41
    check-cast p0, Ljava/lang/Number;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-direct {v0, p0}, Lqb/n;-><init>(I)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_9

    .line 51
    .line 52
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    new-instance v0, Lqb/t;

    .line 57
    .line 58
    check-cast p0, Ljava/lang/Number;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-direct {v0, v1, v2}, Lqb/t;-><init>(J)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_9

    .line 68
    .line 69
    :cond_3
    instance-of v0, p0, Ljava/lang/Character;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    new-instance v0, Lqb/e;

    .line 74
    .line 75
    check-cast p0, Ljava/lang/Character;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-direct {v0, p0}, Lqb/e;-><init>(C)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_9

    .line 85
    .line 86
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    new-instance v0, Lqb/m;

    .line 91
    .line 92
    check-cast p0, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    invoke-direct {v0, p0}, Lqb/m;-><init>(F)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_9

    .line 102
    .line 103
    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    new-instance v0, Lqb/j;

    .line 108
    .line 109
    check-cast p0, Ljava/lang/Number;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 112
    .line 113
    .line 114
    move-result-wide v1

    .line 115
    invoke-direct {v0, v1, v2}, Lqb/j;-><init>(D)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_9

    .line 119
    .line 120
    :cond_6
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    new-instance v0, Lqb/c;

    .line 125
    .line 126
    check-cast p0, Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    invoke-direct {v0, p0}, Lqb/c;-><init>(Z)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_9

    .line 136
    .line 137
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    .line 138
    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    new-instance v0, Lqb/w;

    .line 142
    .line 143
    check-cast p0, Ljava/lang/String;

    .line 144
    .line 145
    invoke-direct {v0, p0}, Lqb/w;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_9

    .line 149
    .line 150
    :cond_8
    instance-of v0, p0, [B

    .line 151
    .line 152
    sget-object v1, Lm9/v;->a:Lm9/v;

    .line 153
    .line 154
    const/4 v2, 0x1

    .line 155
    const/4 v3, 0x0

    .line 156
    const-string v4, "<this>"

    .line 157
    .line 158
    if-eqz v0, :cond_b

    .line 159
    .line 160
    check-cast p0, [B

    .line 161
    .line 162
    invoke-static {p0, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    array-length v0, p0

    .line 166
    if-eqz v0, :cond_a

    .line 167
    .line 168
    if-eq v0, v2, :cond_9

    .line 169
    .line 170
    new-instance v1, Ljava/util/ArrayList;

    .line 171
    .line 172
    array-length v0, p0

    .line 173
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .line 175
    .line 176
    array-length v0, p0

    .line 177
    :goto_0
    if-ge v3, v0, :cond_a

    .line 178
    .line 179
    aget-byte v2, p0, v3

    .line 180
    .line 181
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    add-int/lit8 v3, v3, 0x1

    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_9
    aget-byte p0, p0, v3

    .line 192
    .line 193
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-static {p0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    :cond_a
    sget-object p0, Lja/l;->h:Lja/l;

    .line 202
    .line 203
    goto/16 :goto_8

    .line 204
    .line 205
    :cond_b
    instance-of v0, p0, [S

    .line 206
    .line 207
    if-eqz v0, :cond_e

    .line 208
    .line 209
    check-cast p0, [S

    .line 210
    .line 211
    invoke-static {p0, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    array-length v0, p0

    .line 215
    if-eqz v0, :cond_d

    .line 216
    .line 217
    if-eq v0, v2, :cond_c

    .line 218
    .line 219
    new-instance v1, Ljava/util/ArrayList;

    .line 220
    .line 221
    array-length v0, p0

    .line 222
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    .line 224
    .line 225
    array-length v0, p0

    .line 226
    :goto_1
    if-ge v3, v0, :cond_d

    .line 227
    .line 228
    aget-short v2, p0, v3

    .line 229
    .line 230
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    add-int/lit8 v3, v3, 0x1

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_c
    aget-short p0, p0, v3

    .line 241
    .line 242
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-static {p0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    :cond_d
    sget-object p0, Lja/l;->j:Lja/l;

    .line 251
    .line 252
    goto/16 :goto_8

    .line 253
    .line 254
    :cond_e
    instance-of v0, p0, [I

    .line 255
    .line 256
    if-eqz v0, :cond_11

    .line 257
    .line 258
    check-cast p0, [I

    .line 259
    .line 260
    invoke-static {p0, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    array-length v0, p0

    .line 264
    if-eqz v0, :cond_10

    .line 265
    .line 266
    if-eq v0, v2, :cond_f

    .line 267
    .line 268
    new-instance v1, Ljava/util/ArrayList;

    .line 269
    .line 270
    array-length v0, p0

    .line 271
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .line 273
    .line 274
    array-length v0, p0

    .line 275
    :goto_2
    if-ge v3, v0, :cond_10

    .line 276
    .line 277
    aget v2, p0, v3

    .line 278
    .line 279
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    add-int/lit8 v3, v3, 0x1

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_f
    aget p0, p0, v3

    .line 290
    .line 291
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-static {p0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    :cond_10
    sget-object p0, Lja/l;->k:Lja/l;

    .line 300
    .line 301
    goto/16 :goto_8

    .line 302
    .line 303
    :cond_11
    instance-of v0, p0, [J

    .line 304
    .line 305
    if-eqz v0, :cond_14

    .line 306
    .line 307
    check-cast p0, [J

    .line 308
    .line 309
    invoke-static {p0, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    array-length v0, p0

    .line 313
    if-eqz v0, :cond_13

    .line 314
    .line 315
    if-eq v0, v2, :cond_12

    .line 316
    .line 317
    new-instance v1, Ljava/util/ArrayList;

    .line 318
    .line 319
    array-length v0, p0

    .line 320
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .line 322
    .line 323
    array-length v0, p0

    .line 324
    :goto_3
    if-ge v3, v0, :cond_13

    .line 325
    .line 326
    aget-wide v4, p0, v3

    .line 327
    .line 328
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    add-int/lit8 v3, v3, 0x1

    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_12
    aget-wide v0, p0, v3

    .line 339
    .line 340
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    invoke-static {p0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    :cond_13
    sget-object p0, Lja/l;->m:Lja/l;

    .line 349
    .line 350
    goto/16 :goto_8

    .line 351
    .line 352
    :cond_14
    instance-of v0, p0, [C

    .line 353
    .line 354
    if-eqz v0, :cond_17

    .line 355
    .line 356
    check-cast p0, [C

    .line 357
    .line 358
    invoke-static {p0, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    array-length v0, p0

    .line 362
    if-eqz v0, :cond_16

    .line 363
    .line 364
    if-eq v0, v2, :cond_15

    .line 365
    .line 366
    new-instance v1, Ljava/util/ArrayList;

    .line 367
    .line 368
    array-length v0, p0

    .line 369
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    .line 371
    .line 372
    array-length v0, p0

    .line 373
    :goto_4
    if-ge v3, v0, :cond_16

    .line 374
    .line 375
    aget-char v2, p0, v3

    .line 376
    .line 377
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    add-int/lit8 v3, v3, 0x1

    .line 385
    .line 386
    goto :goto_4

    .line 387
    :cond_15
    aget-char p0, p0, v3

    .line 388
    .line 389
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    invoke-static {p0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    :cond_16
    sget-object p0, Lja/l;->g:Lja/l;

    .line 398
    .line 399
    goto/16 :goto_8

    .line 400
    .line 401
    :cond_17
    instance-of v0, p0, [F

    .line 402
    .line 403
    if-eqz v0, :cond_1a

    .line 404
    .line 405
    check-cast p0, [F

    .line 406
    .line 407
    invoke-static {p0, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    array-length v0, p0

    .line 411
    if-eqz v0, :cond_19

    .line 412
    .line 413
    if-eq v0, v2, :cond_18

    .line 414
    .line 415
    new-instance v1, Ljava/util/ArrayList;

    .line 416
    .line 417
    array-length v0, p0

    .line 418
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    .line 420
    .line 421
    array-length v0, p0

    .line 422
    :goto_5
    if-ge v3, v0, :cond_19

    .line 423
    .line 424
    aget v2, p0, v3

    .line 425
    .line 426
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    add-int/lit8 v3, v3, 0x1

    .line 434
    .line 435
    goto :goto_5

    .line 436
    :cond_18
    aget p0, p0, v3

    .line 437
    .line 438
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    invoke-static {p0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    :cond_19
    sget-object p0, Lja/l;->l:Lja/l;

    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_1a
    instance-of v0, p0, [D

    .line 450
    .line 451
    if-eqz v0, :cond_1d

    .line 452
    .line 453
    check-cast p0, [D

    .line 454
    .line 455
    invoke-static {p0, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    array-length v0, p0

    .line 459
    if-eqz v0, :cond_1c

    .line 460
    .line 461
    if-eq v0, v2, :cond_1b

    .line 462
    .line 463
    new-instance v1, Ljava/util/ArrayList;

    .line 464
    .line 465
    array-length v0, p0

    .line 466
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 467
    .line 468
    .line 469
    array-length v0, p0

    .line 470
    :goto_6
    if-ge v3, v0, :cond_1c

    .line 471
    .line 472
    aget-wide v4, p0, v3

    .line 473
    .line 474
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    add-int/lit8 v3, v3, 0x1

    .line 482
    .line 483
    goto :goto_6

    .line 484
    :cond_1b
    aget-wide v0, p0, v3

    .line 485
    .line 486
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 487
    .line 488
    .line 489
    move-result-object p0

    .line 490
    invoke-static {p0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    :cond_1c
    sget-object p0, Lja/l;->n:Lja/l;

    .line 495
    .line 496
    goto :goto_8

    .line 497
    :cond_1d
    instance-of v0, p0, [Z

    .line 498
    .line 499
    if-eqz v0, :cond_20

    .line 500
    .line 501
    check-cast p0, [Z

    .line 502
    .line 503
    invoke-static {p0, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    array-length v0, p0

    .line 507
    if-eqz v0, :cond_1f

    .line 508
    .line 509
    if-eq v0, v2, :cond_1e

    .line 510
    .line 511
    new-instance v1, Ljava/util/ArrayList;

    .line 512
    .line 513
    array-length v0, p0

    .line 514
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 515
    .line 516
    .line 517
    array-length v0, p0

    .line 518
    :goto_7
    if-ge v3, v0, :cond_1f

    .line 519
    .line 520
    aget-boolean v2, p0, v3

    .line 521
    .line 522
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    add-int/lit8 v3, v3, 0x1

    .line 530
    .line 531
    goto :goto_7

    .line 532
    :cond_1e
    aget-boolean p0, p0, v3

    .line 533
    .line 534
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 535
    .line 536
    .line 537
    move-result-object p0

    .line 538
    invoke-static {p0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    :cond_1f
    sget-object p0, Lja/l;->f:Lja/l;

    .line 543
    .line 544
    :goto_8
    invoke-static {v1, p0}, Lqb/i;->a(Ljava/util/List;Lja/l;)Lqb/b;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    goto :goto_9

    .line 549
    :cond_20
    if-nez p0, :cond_21

    .line 550
    .line 551
    new-instance v0, Lqb/u;

    .line 552
    .line 553
    invoke-direct {v0}, Lqb/u;-><init>()V

    .line 554
    .line 555
    .line 556
    goto :goto_9

    .line 557
    :cond_21
    const/4 v0, 0x0

    .line 558
    :goto_9
    return-object v0
.end method
