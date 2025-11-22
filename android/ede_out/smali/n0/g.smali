.class public final Ln0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo0/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ty"

    const-string v1, "d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo0/c$a;->a([Ljava/lang/String;)Lo0/c$a;

    move-result-object v0

    sput-object v0, Ln0/g;->a:Lo0/c$a;

    return-void
.end method

.method public static a(Lo0/d;Ld0/f;)Lk0/b;
    .locals 30
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lo0/d;->b()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x2

    .line 10
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v4, :cond_2

    .line 17
    .line 18
    sget-object v4, Ln0/g;->a:Lo0/c$a;

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Lo0/d;->n(Lo0/c$a;)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    if-eq v4, v5, :cond_0

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v4, v6

    .line 46
    :goto_1
    if-nez v4, :cond_3

    .line 47
    .line 48
    return-object v6

    .line 49
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const/4 v7, 0x4

    .line 54
    const/4 v8, 0x5

    .line 55
    const/4 v9, 0x3

    .line 56
    const/4 v10, 0x0

    .line 57
    sparse-switch v6, :sswitch_data_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :sswitch_0
    const-string v6, "tr"

    .line 63
    .line 64
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_4

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_4
    const/16 v6, 0xc

    .line 73
    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :sswitch_1
    const-string v6, "tm"

    .line 77
    .line 78
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-nez v6, :cond_5

    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_5
    const/16 v6, 0xb

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :sswitch_2
    const-string v6, "st"

    .line 91
    .line 92
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_6

    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :cond_6
    const/16 v6, 0xa

    .line 101
    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :sswitch_3
    const-string v6, "sr"

    .line 105
    .line 106
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-nez v6, :cond_7

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :cond_7
    const/16 v6, 0x9

    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :sswitch_4
    const-string v6, "sh"

    .line 119
    .line 120
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-nez v6, :cond_8

    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :cond_8
    const/16 v6, 0x8

    .line 129
    .line 130
    goto/16 :goto_3

    .line 131
    .line 132
    :sswitch_5
    const-string v6, "rp"

    .line 133
    .line 134
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-nez v6, :cond_9

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_9
    const/4 v6, 0x7

    .line 142
    goto :goto_3

    .line 143
    :sswitch_6
    const-string v6, "rc"

    .line 144
    .line 145
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_a

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_a
    const/4 v6, 0x6

    .line 153
    goto :goto_3

    .line 154
    :sswitch_7
    const-string v6, "mm"

    .line 155
    .line 156
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-nez v6, :cond_b

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_b
    const/4 v6, 0x5

    .line 164
    goto :goto_3

    .line 165
    :sswitch_8
    const-string v6, "gs"

    .line 166
    .line 167
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-nez v6, :cond_c

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_c
    const/4 v6, 0x4

    .line 175
    goto :goto_3

    .line 176
    :sswitch_9
    const-string v6, "gr"

    .line 177
    .line 178
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    if-nez v6, :cond_d

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_d
    const/4 v6, 0x3

    .line 186
    goto :goto_3

    .line 187
    :sswitch_a
    const-string v6, "gf"

    .line 188
    .line 189
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-nez v6, :cond_e

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_e
    const/4 v6, 0x2

    .line 197
    goto :goto_3

    .line 198
    :sswitch_b
    const-string v6, "fl"

    .line 199
    .line 200
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-nez v6, :cond_f

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_f
    const/4 v6, 0x1

    .line 208
    goto :goto_3

    .line 209
    :sswitch_c
    const-string v6, "el"

    .line 210
    .line 211
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-nez v6, :cond_10

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_10
    const/4 v6, 0x0

    .line 219
    goto :goto_3

    .line 220
    :goto_2
    const/4 v6, -0x1

    .line 221
    :goto_3
    sget-object v11, Ln0/f;->a:Ln0/f;

    .line 222
    .line 223
    const/16 v12, 0x64

    .line 224
    .line 225
    const-string v13, "o"

    .line 226
    .line 227
    const-string v14, "g"

    .line 228
    .line 229
    const-string v15, "d"

    .line 230
    .line 231
    packed-switch v6, :pswitch_data_0

    .line 232
    .line 233
    .line 234
    const-string v1, "Unknown shape type "

    .line 235
    .line 236
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-static {v1}, Lp0/c;->b(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const/4 v1, 0x0

    .line 244
    goto/16 :goto_23

    .line 245
    .line 246
    :pswitch_0
    invoke-static/range {p0 .. p1}, Ln0/c;->a(Lo0/d;Ld0/f;)Lj0/l;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    goto/16 :goto_23

    .line 251
    .line 252
    :pswitch_1
    sget-object v3, Ln0/g0;->a:Lo0/c$a;

    .line 253
    .line 254
    const/4 v3, 0x0

    .line 255
    const/4 v4, 0x0

    .line 256
    const/4 v6, 0x0

    .line 257
    const/4 v11, 0x0

    .line 258
    const/4 v12, 0x0

    .line 259
    const/4 v13, 0x0

    .line 260
    move-object v15, v3

    .line 261
    move-object/from16 v17, v6

    .line 262
    .line 263
    move-object/from16 v18, v11

    .line 264
    .line 265
    move-object/from16 v19, v12

    .line 266
    .line 267
    const/16 v16, 0x0

    .line 268
    .line 269
    const/16 v20, 0x0

    .line 270
    .line 271
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-eqz v3, :cond_19

    .line 276
    .line 277
    sget-object v3, Ln0/g0;->a:Lo0/c$a;

    .line 278
    .line 279
    invoke-virtual {v0, v3}, Lo0/d;->n(Lo0/c$a;)I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-eqz v3, :cond_18

    .line 284
    .line 285
    if-eq v3, v5, :cond_17

    .line 286
    .line 287
    if-eq v3, v2, :cond_16

    .line 288
    .line 289
    if-eq v3, v9, :cond_15

    .line 290
    .line 291
    if-eq v3, v7, :cond_12

    .line 292
    .line 293
    if-eq v3, v8, :cond_11

    .line 294
    .line 295
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 300
    .line 301
    .line 302
    move-result v20

    .line 303
    goto :goto_4

    .line 304
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-eq v3, v5, :cond_14

    .line 309
    .line 310
    if-ne v3, v2, :cond_13

    .line 311
    .line 312
    const/16 v16, 0x2

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 316
    .line 317
    const-string v1, "Unknown trim path type "

    .line 318
    .line 319
    invoke-static {v1, v3}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw v0

    .line 327
    :cond_14
    const/16 v16, 0x1

    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v15

    .line 334
    goto :goto_4

    .line 335
    :cond_16
    invoke-static {v0, v1, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 336
    .line 337
    .line 338
    move-result-object v19

    .line 339
    goto :goto_4

    .line 340
    :cond_17
    invoke-static {v0, v1, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 341
    .line 342
    .line 343
    move-result-object v18

    .line 344
    goto :goto_4

    .line 345
    :cond_18
    invoke-static {v0, v1, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 346
    .line 347
    .line 348
    move-result-object v17

    .line 349
    goto :goto_4

    .line 350
    :cond_19
    new-instance v1, Lk0/p;

    .line 351
    .line 352
    move-object v14, v1

    .line 353
    invoke-direct/range {v14 .. v20}, Lk0/p;-><init>(Ljava/lang/String;ILj0/b;Lj0/b;Lj0/b;Z)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_23

    .line 357
    .line 358
    :pswitch_2
    sget-object v3, Ln0/f0;->a:Lo0/c$a;

    .line 359
    .line 360
    new-instance v3, Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .line 364
    .line 365
    const/4 v4, 0x0

    .line 366
    const/4 v6, 0x0

    .line 367
    const/4 v7, 0x0

    .line 368
    const/4 v8, 0x0

    .line 369
    const/16 v16, 0x0

    .line 370
    .line 371
    const/16 v17, 0x0

    .line 372
    .line 373
    const/16 v18, 0x0

    .line 374
    .line 375
    const/16 v19, 0x0

    .line 376
    .line 377
    const/16 v20, 0x0

    .line 378
    .line 379
    move-object/from16 v17, v6

    .line 380
    .line 381
    move-object/from16 v18, v7

    .line 382
    .line 383
    move-object/from16 v20, v8

    .line 384
    .line 385
    move-object/from16 v22, v16

    .line 386
    .line 387
    const/16 v23, 0x0

    .line 388
    .line 389
    const/16 v24, 0x0

    .line 390
    .line 391
    const/16 v25, 0x0

    .line 392
    .line 393
    const/16 v26, 0x0

    .line 394
    .line 395
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    if-eqz v6, :cond_27

    .line 400
    .line 401
    sget-object v6, Ln0/f0;->a:Lo0/c$a;

    .line 402
    .line 403
    invoke-virtual {v0, v6}, Lo0/d;->n(Lo0/c$a;)I

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    packed-switch v6, :pswitch_data_1

    .line 408
    .line 409
    .line 410
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_b

    .line 414
    .line 415
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lo0/d;->a()V

    .line 416
    .line 417
    .line 418
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    if-eqz v6, :cond_25

    .line 423
    .line 424
    invoke-virtual/range {p0 .. p0}, Lo0/d;->b()V

    .line 425
    .line 426
    .line 427
    const/4 v6, 0x0

    .line 428
    const/4 v7, 0x0

    .line 429
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 430
    .line 431
    .line 432
    move-result v8

    .line 433
    if-eqz v8, :cond_1c

    .line 434
    .line 435
    sget-object v8, Ln0/f0;->b:Lo0/c$a;

    .line 436
    .line 437
    invoke-virtual {v0, v8}, Lo0/d;->n(Lo0/c$a;)I

    .line 438
    .line 439
    .line 440
    move-result v8

    .line 441
    if-eqz v8, :cond_1b

    .line 442
    .line 443
    if-eq v8, v5, :cond_1a

    .line 444
    .line 445
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 446
    .line 447
    .line 448
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 449
    .line 450
    .line 451
    goto :goto_7

    .line 452
    :cond_1a
    invoke-static {v0, v1, v5}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 453
    .line 454
    .line 455
    move-result-object v6

    .line 456
    goto :goto_7

    .line 457
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    goto :goto_7

    .line 462
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lo0/d;->d()V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 469
    .line 470
    .line 471
    move-result v8

    .line 472
    if-eq v8, v12, :cond_21

    .line 473
    .line 474
    const/16 v12, 0x67

    .line 475
    .line 476
    if-eq v8, v12, :cond_1f

    .line 477
    .line 478
    const/16 v12, 0x6f

    .line 479
    .line 480
    if-eq v8, v12, :cond_1d

    .line 481
    .line 482
    goto :goto_8

    .line 483
    :cond_1d
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v7

    .line 487
    if-nez v7, :cond_1e

    .line 488
    .line 489
    goto :goto_8

    .line 490
    :cond_1e
    const/4 v7, 0x2

    .line 491
    goto :goto_9

    .line 492
    :cond_1f
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result v7

    .line 496
    if-nez v7, :cond_20

    .line 497
    .line 498
    goto :goto_8

    .line 499
    :cond_20
    const/4 v7, 0x1

    .line 500
    goto :goto_9

    .line 501
    :cond_21
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    if-nez v7, :cond_22

    .line 506
    .line 507
    :goto_8
    const/4 v7, -0x1

    .line 508
    goto :goto_9

    .line 509
    :cond_22
    const/4 v7, 0x0

    .line 510
    :goto_9
    if-eqz v7, :cond_24

    .line 511
    .line 512
    if-eq v7, v5, :cond_24

    .line 513
    .line 514
    if-eq v7, v2, :cond_23

    .line 515
    .line 516
    goto :goto_a

    .line 517
    :cond_23
    move-object/from16 v18, v6

    .line 518
    .line 519
    goto :goto_a

    .line 520
    :cond_24
    iput-boolean v5, v1, Ld0/f;->n:Z

    .line 521
    .line 522
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    :goto_a
    const/16 v12, 0x64

    .line 526
    .line 527
    goto :goto_6

    .line 528
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lo0/d;->c()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 532
    .line 533
    .line 534
    move-result v6

    .line 535
    if-ne v6, v5, :cond_26

    .line 536
    .line 537
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v6

    .line 541
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    goto :goto_b

    .line 545
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 546
    .line 547
    .line 548
    move-result v26

    .line 549
    goto :goto_b

    .line 550
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lo0/d;->g()D

    .line 551
    .line 552
    .line 553
    move-result-wide v6

    .line 554
    double-to-float v6, v6

    .line 555
    move/from16 v25, v6

    .line 556
    .line 557
    goto :goto_b

    .line 558
    :pswitch_6
    invoke-static {v9}, Lg/d;->d(I)[I

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 563
    .line 564
    .line 565
    move-result v7

    .line 566
    sub-int/2addr v7, v5

    .line 567
    aget v24, v6, v7

    .line 568
    .line 569
    goto :goto_b

    .line 570
    :pswitch_7
    invoke-static {v9}, Lg/d;->d(I)[I

    .line 571
    .line 572
    .line 573
    move-result-object v6

    .line 574
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 575
    .line 576
    .line 577
    move-result v7

    .line 578
    sub-int/2addr v7, v5

    .line 579
    aget v23, v6, v7

    .line 580
    .line 581
    goto :goto_b

    .line 582
    :pswitch_8
    invoke-static/range {p0 .. p1}, Ln0/d;->b(Lo0/d;Ld0/f;)Lj0/d;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    goto :goto_b

    .line 587
    :pswitch_9
    invoke-static {v0, v1, v5}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 588
    .line 589
    .line 590
    move-result-object v22

    .line 591
    goto :goto_b

    .line 592
    :pswitch_a
    new-instance v6, Lj0/a;

    .line 593
    .line 594
    const/high16 v7, 0x3f800000    # 1.0f

    .line 595
    .line 596
    invoke-static {v0, v1, v7, v11, v10}, Ln0/r;->a(Lo0/c;Ld0/f;FLn0/h0;Z)Ljava/util/ArrayList;

    .line 597
    .line 598
    .line 599
    move-result-object v7

    .line 600
    invoke-direct {v6, v7}, Lj0/a;-><init>(Ljava/util/ArrayList;)V

    .line 601
    .line 602
    .line 603
    move-object/from16 v20, v6

    .line 604
    .line 605
    goto :goto_b

    .line 606
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v17

    .line 610
    :cond_26
    :goto_b
    const/16 v12, 0x64

    .line 611
    .line 612
    goto/16 :goto_5

    .line 613
    .line 614
    :cond_27
    if-nez v4, :cond_28

    .line 615
    .line 616
    new-instance v1, Lj0/d;

    .line 617
    .line 618
    new-instance v2, Lq0/a;

    .line 619
    .line 620
    const/16 v4, 0x64

    .line 621
    .line 622
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    invoke-direct {v2, v4}, Lq0/a;-><init>(Ljava/lang/Object;)V

    .line 627
    .line 628
    .line 629
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-direct {v1, v2}, Lj0/d;-><init>(Ljava/util/List;)V

    .line 634
    .line 635
    .line 636
    move-object/from16 v21, v1

    .line 637
    .line 638
    goto :goto_c

    .line 639
    :cond_28
    move-object/from16 v21, v4

    .line 640
    .line 641
    :goto_c
    new-instance v1, Lk0/o;

    .line 642
    .line 643
    move-object/from16 v16, v1

    .line 644
    .line 645
    move-object/from16 v19, v3

    .line 646
    .line 647
    invoke-direct/range {v16 .. v26}, Lk0/o;-><init>(Ljava/lang/String;Lj0/b;Ljava/util/ArrayList;Lj0/a;Lj0/d;Lj0/b;IIFZ)V

    .line 648
    .line 649
    .line 650
    goto/16 :goto_23

    .line 651
    .line 652
    :pswitch_c
    sget-object v3, Ln0/x;->a:Lo0/c$a;

    .line 653
    .line 654
    const/4 v3, 0x0

    .line 655
    const/4 v4, 0x0

    .line 656
    const/4 v6, 0x0

    .line 657
    const/4 v7, 0x0

    .line 658
    const/4 v8, 0x0

    .line 659
    const/4 v9, 0x0

    .line 660
    const/4 v11, 0x0

    .line 661
    const/4 v12, 0x0

    .line 662
    const/4 v13, 0x0

    .line 663
    const/4 v14, 0x0

    .line 664
    move-object/from16 v16, v3

    .line 665
    .line 666
    move-object/from16 v18, v6

    .line 667
    .line 668
    move-object/from16 v19, v7

    .line 669
    .line 670
    move-object/from16 v20, v8

    .line 671
    .line 672
    move-object/from16 v21, v9

    .line 673
    .line 674
    move-object/from16 v22, v11

    .line 675
    .line 676
    move-object/from16 v23, v12

    .line 677
    .line 678
    move-object/from16 v24, v13

    .line 679
    .line 680
    const/16 v17, 0x0

    .line 681
    .line 682
    const/16 v25, 0x0

    .line 683
    .line 684
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 685
    .line 686
    .line 687
    move-result v3

    .line 688
    if-eqz v3, :cond_2b

    .line 689
    .line 690
    sget-object v3, Ln0/x;->a:Lo0/c$a;

    .line 691
    .line 692
    invoke-virtual {v0, v3}, Lo0/d;->n(Lo0/c$a;)I

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    packed-switch v3, :pswitch_data_2

    .line 697
    .line 698
    .line 699
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 700
    .line 701
    .line 702
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 703
    .line 704
    .line 705
    goto :goto_d

    .line 706
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 707
    .line 708
    .line 709
    move-result v25

    .line 710
    goto :goto_d

    .line 711
    :pswitch_e
    invoke-static {v0, v1, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 712
    .line 713
    .line 714
    move-result-object v23

    .line 715
    goto :goto_d

    .line 716
    :pswitch_f
    invoke-static {v0, v1, v5}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 717
    .line 718
    .line 719
    move-result-object v21

    .line 720
    goto :goto_d

    .line 721
    :pswitch_10
    invoke-static {v0, v1, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 722
    .line 723
    .line 724
    move-result-object v24

    .line 725
    goto :goto_d

    .line 726
    :pswitch_11
    invoke-static {v0, v1, v5}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 727
    .line 728
    .line 729
    move-result-object v22

    .line 730
    goto :goto_d

    .line 731
    :pswitch_12
    invoke-static {v0, v1, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 732
    .line 733
    .line 734
    move-result-object v20

    .line 735
    goto :goto_d

    .line 736
    :pswitch_13
    invoke-static/range {p0 .. p1}, Ln0/a;->b(Lo0/d;Ld0/f;)Lj0/m;

    .line 737
    .line 738
    .line 739
    move-result-object v19

    .line 740
    goto :goto_d

    .line 741
    :pswitch_14
    invoke-static {v0, v1, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 742
    .line 743
    .line 744
    move-result-object v18

    .line 745
    goto :goto_d

    .line 746
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 747
    .line 748
    .line 749
    move-result v3

    .line 750
    invoke-static {v2}, Lg/d;->d(I)[I

    .line 751
    .line 752
    .line 753
    move-result-object v4

    .line 754
    array-length v6, v4

    .line 755
    const/4 v7, 0x0

    .line 756
    :goto_e
    if-ge v7, v6, :cond_2a

    .line 757
    .line 758
    aget v17, v4, v7

    .line 759
    .line 760
    invoke-static/range {v17 .. v17}, Landroidx/appcompat/widget/v;->a(I)I

    .line 761
    .line 762
    .line 763
    move-result v8

    .line 764
    if-ne v8, v3, :cond_29

    .line 765
    .line 766
    goto :goto_d

    .line 767
    :cond_29
    add-int/lit8 v7, v7, 0x1

    .line 768
    .line 769
    goto :goto_e

    .line 770
    :cond_2a
    const/16 v17, 0x0

    .line 771
    .line 772
    goto :goto_d

    .line 773
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v16

    .line 777
    goto :goto_d

    .line 778
    :cond_2b
    new-instance v1, Lk0/h;

    .line 779
    .line 780
    move-object v15, v1

    .line 781
    invoke-direct/range {v15 .. v25}, Lk0/h;-><init>(Ljava/lang/String;ILj0/b;Lj0/m;Lj0/b;Lj0/b;Lj0/b;Lj0/b;Lj0/b;Z)V

    .line 782
    .line 783
    .line 784
    goto/16 :goto_23

    .line 785
    .line 786
    :pswitch_17
    sget-object v3, Ln0/e0;->a:Lo0/c$a;

    .line 787
    .line 788
    const/4 v3, 0x0

    .line 789
    const/4 v4, 0x0

    .line 790
    const/4 v6, 0x0

    .line 791
    const/4 v7, 0x0

    .line 792
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 793
    .line 794
    .line 795
    move-result v8

    .line 796
    if-eqz v8, :cond_30

    .line 797
    .line 798
    sget-object v8, Ln0/e0;->a:Lo0/c$a;

    .line 799
    .line 800
    invoke-virtual {v0, v8}, Lo0/d;->n(Lo0/c$a;)I

    .line 801
    .line 802
    .line 803
    move-result v8

    .line 804
    if-eqz v8, :cond_2f

    .line 805
    .line 806
    if-eq v8, v5, :cond_2e

    .line 807
    .line 808
    if-eq v8, v2, :cond_2d

    .line 809
    .line 810
    if-eq v8, v9, :cond_2c

    .line 811
    .line 812
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 813
    .line 814
    .line 815
    goto :goto_f

    .line 816
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 817
    .line 818
    .line 819
    move-result v7

    .line 820
    goto :goto_f

    .line 821
    :cond_2d
    new-instance v3, Lj0/h;

    .line 822
    .line 823
    invoke-static {}, Lp0/g;->c()F

    .line 824
    .line 825
    .line 826
    move-result v8

    .line 827
    sget-object v11, Ln0/b0;->a:Ln0/b0;

    .line 828
    .line 829
    invoke-static {v0, v1, v8, v11, v10}, Ln0/r;->a(Lo0/c;Ld0/f;FLn0/h0;Z)Ljava/util/ArrayList;

    .line 830
    .line 831
    .line 832
    move-result-object v8

    .line 833
    invoke-direct {v3, v8}, Lj0/h;-><init>(Ljava/util/ArrayList;)V

    .line 834
    .line 835
    .line 836
    goto :goto_f

    .line 837
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 838
    .line 839
    .line 840
    move-result v4

    .line 841
    goto :goto_f

    .line 842
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v6

    .line 846
    goto :goto_f

    .line 847
    :cond_30
    new-instance v1, Lk0/n;

    .line 848
    .line 849
    invoke-direct {v1, v6, v4, v3, v7}, Lk0/n;-><init>(Ljava/lang/String;ILj0/h;Z)V

    .line 850
    .line 851
    .line 852
    goto/16 :goto_23

    .line 853
    .line 854
    :pswitch_18
    sget-object v3, Ln0/z;->a:Lo0/c$a;

    .line 855
    .line 856
    const/4 v3, 0x0

    .line 857
    const/4 v4, 0x0

    .line 858
    const/4 v6, 0x0

    .line 859
    const/4 v8, 0x0

    .line 860
    const/4 v11, 0x0

    .line 861
    move-object v13, v3

    .line 862
    move-object v14, v4

    .line 863
    move-object v15, v6

    .line 864
    move-object/from16 v16, v8

    .line 865
    .line 866
    const/16 v17, 0x0

    .line 867
    .line 868
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 869
    .line 870
    .line 871
    move-result v3

    .line 872
    if-eqz v3, :cond_36

    .line 873
    .line 874
    sget-object v3, Ln0/z;->a:Lo0/c$a;

    .line 875
    .line 876
    invoke-virtual {v0, v3}, Lo0/d;->n(Lo0/c$a;)I

    .line 877
    .line 878
    .line 879
    move-result v3

    .line 880
    if-eqz v3, :cond_35

    .line 881
    .line 882
    if-eq v3, v5, :cond_34

    .line 883
    .line 884
    if-eq v3, v2, :cond_33

    .line 885
    .line 886
    if-eq v3, v9, :cond_32

    .line 887
    .line 888
    if-eq v3, v7, :cond_31

    .line 889
    .line 890
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 891
    .line 892
    .line 893
    goto :goto_10

    .line 894
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 895
    .line 896
    .line 897
    move-result v17

    .line 898
    goto :goto_10

    .line 899
    :cond_32
    invoke-static/range {p0 .. p1}, Ln0/c;->a(Lo0/d;Ld0/f;)Lj0/l;

    .line 900
    .line 901
    .line 902
    move-result-object v16

    .line 903
    goto :goto_10

    .line 904
    :cond_33
    invoke-static {v0, v1, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 905
    .line 906
    .line 907
    move-result-object v15

    .line 908
    goto :goto_10

    .line 909
    :cond_34
    invoke-static {v0, v1, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 910
    .line 911
    .line 912
    move-result-object v14

    .line 913
    goto :goto_10

    .line 914
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v13

    .line 918
    goto :goto_10

    .line 919
    :cond_36
    new-instance v1, Lk0/j;

    .line 920
    .line 921
    move-object v12, v1

    .line 922
    invoke-direct/range {v12 .. v17}, Lk0/j;-><init>(Ljava/lang/String;Lj0/b;Lj0/b;Lj0/l;Z)V

    .line 923
    .line 924
    .line 925
    goto/16 :goto_23

    .line 926
    .line 927
    :pswitch_19
    sget-object v3, Ln0/y;->a:Lo0/c$a;

    .line 928
    .line 929
    const/4 v3, 0x0

    .line 930
    const/4 v4, 0x0

    .line 931
    const/4 v6, 0x0

    .line 932
    const/4 v8, 0x0

    .line 933
    const/4 v10, 0x0

    .line 934
    move-object v12, v3

    .line 935
    move-object v13, v4

    .line 936
    move-object v14, v6

    .line 937
    move-object v15, v8

    .line 938
    const/16 v16, 0x0

    .line 939
    .line 940
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 941
    .line 942
    .line 943
    move-result v3

    .line 944
    if-eqz v3, :cond_3c

    .line 945
    .line 946
    sget-object v3, Ln0/y;->a:Lo0/c$a;

    .line 947
    .line 948
    invoke-virtual {v0, v3}, Lo0/d;->n(Lo0/c$a;)I

    .line 949
    .line 950
    .line 951
    move-result v3

    .line 952
    if-eqz v3, :cond_3b

    .line 953
    .line 954
    if-eq v3, v5, :cond_3a

    .line 955
    .line 956
    if-eq v3, v2, :cond_39

    .line 957
    .line 958
    if-eq v3, v9, :cond_38

    .line 959
    .line 960
    if-eq v3, v7, :cond_37

    .line 961
    .line 962
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 963
    .line 964
    .line 965
    goto :goto_11

    .line 966
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 967
    .line 968
    .line 969
    move-result v16

    .line 970
    goto :goto_11

    .line 971
    :cond_38
    invoke-static {v0, v1, v5}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 972
    .line 973
    .line 974
    move-result-object v15

    .line 975
    goto :goto_11

    .line 976
    :cond_39
    invoke-static/range {p0 .. p1}, Ln0/d;->c(Lo0/d;Ld0/f;)Lj0/f;

    .line 977
    .line 978
    .line 979
    move-result-object v14

    .line 980
    goto :goto_11

    .line 981
    :cond_3a
    invoke-static/range {p0 .. p1}, Ln0/a;->b(Lo0/d;Ld0/f;)Lj0/m;

    .line 982
    .line 983
    .line 984
    move-result-object v13

    .line 985
    goto :goto_11

    .line 986
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v12

    .line 990
    goto :goto_11

    .line 991
    :cond_3c
    new-instance v1, Lk0/i;

    .line 992
    .line 993
    move-object v11, v1

    .line 994
    invoke-direct/range {v11 .. v16}, Lk0/i;-><init>(Ljava/lang/String;Lj0/m;Lj0/f;Lj0/b;Z)V

    .line 995
    .line 996
    .line 997
    goto/16 :goto_23

    .line 998
    .line 999
    :pswitch_1a
    sget-object v3, Ln0/u;->a:Lo0/c$a;

    .line 1000
    .line 1001
    const/4 v3, 0x0

    .line 1002
    const/4 v4, 0x0

    .line 1003
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 1004
    .line 1005
    .line 1006
    move-result v6

    .line 1007
    if-eqz v6, :cond_45

    .line 1008
    .line 1009
    sget-object v6, Ln0/u;->a:Lo0/c$a;

    .line 1010
    .line 1011
    invoke-virtual {v0, v6}, Lo0/d;->n(Lo0/c$a;)I

    .line 1012
    .line 1013
    .line 1014
    move-result v6

    .line 1015
    if-eqz v6, :cond_44

    .line 1016
    .line 1017
    if-eq v6, v5, :cond_3e

    .line 1018
    .line 1019
    if-eq v6, v2, :cond_3d

    .line 1020
    .line 1021
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 1025
    .line 1026
    .line 1027
    goto :goto_12

    .line 1028
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v3

    .line 1032
    goto :goto_12

    .line 1033
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 1034
    .line 1035
    .line 1036
    move-result v6

    .line 1037
    if-eq v6, v5, :cond_43

    .line 1038
    .line 1039
    if-eq v6, v2, :cond_42

    .line 1040
    .line 1041
    if-eq v6, v9, :cond_41

    .line 1042
    .line 1043
    if-eq v6, v7, :cond_40

    .line 1044
    .line 1045
    if-eq v6, v8, :cond_3f

    .line 1046
    .line 1047
    goto :goto_13

    .line 1048
    :cond_3f
    const/4 v10, 0x5

    .line 1049
    goto :goto_12

    .line 1050
    :cond_40
    const/4 v10, 0x4

    .line 1051
    goto :goto_12

    .line 1052
    :cond_41
    const/4 v10, 0x3

    .line 1053
    goto :goto_12

    .line 1054
    :cond_42
    const/4 v10, 0x2

    .line 1055
    goto :goto_12

    .line 1056
    :cond_43
    :goto_13
    const/4 v10, 0x1

    .line 1057
    goto :goto_12

    .line 1058
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v4

    .line 1062
    goto :goto_12

    .line 1063
    :cond_45
    new-instance v2, Lk0/g;

    .line 1064
    .line 1065
    invoke-direct {v2, v4, v10, v3}, Lk0/g;-><init>(Ljava/lang/String;IZ)V

    .line 1066
    .line 1067
    .line 1068
    const-string v3, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 1069
    .line 1070
    invoke-virtual {v1, v3}, Ld0/f;->a(Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    move-object v1, v2

    .line 1074
    goto/16 :goto_23

    .line 1075
    .line 1076
    :pswitch_1b
    sget-object v2, Ln0/n;->a:Lo0/c$a;

    .line 1077
    .line 1078
    new-instance v2, Ljava/util/ArrayList;

    .line 1079
    .line 1080
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .line 1082
    .line 1083
    const/4 v3, 0x0

    .line 1084
    const/4 v4, 0x0

    .line 1085
    const/4 v6, 0x0

    .line 1086
    const/4 v7, 0x0

    .line 1087
    const/4 v8, 0x0

    .line 1088
    const/4 v11, 0x0

    .line 1089
    const/4 v12, 0x0

    .line 1090
    const/16 v16, 0x0

    .line 1091
    .line 1092
    const/16 v17, 0x0

    .line 1093
    .line 1094
    const/16 v18, 0x0

    .line 1095
    .line 1096
    const/16 v19, 0x0

    .line 1097
    .line 1098
    const/16 v20, 0x0

    .line 1099
    .line 1100
    move-object/from16 v17, v4

    .line 1101
    .line 1102
    move-object/from16 v21, v8

    .line 1103
    .line 1104
    move-object/from16 v22, v11

    .line 1105
    .line 1106
    move-object/from16 v23, v12

    .line 1107
    .line 1108
    move-object/from16 v28, v19

    .line 1109
    .line 1110
    const/16 v18, 0x0

    .line 1111
    .line 1112
    const/16 v24, 0x0

    .line 1113
    .line 1114
    const/16 v25, 0x0

    .line 1115
    .line 1116
    const/16 v26, 0x0

    .line 1117
    .line 1118
    const/16 v29, 0x0

    .line 1119
    .line 1120
    move-object/from16 v19, v7

    .line 1121
    .line 1122
    :cond_46
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 1123
    .line 1124
    .line 1125
    move-result v4

    .line 1126
    if-eqz v4, :cond_52

    .line 1127
    .line 1128
    sget-object v4, Ln0/n;->a:Lo0/c$a;

    .line 1129
    .line 1130
    invoke-virtual {v0, v4}, Lo0/d;->n(Lo0/c$a;)I

    .line 1131
    .line 1132
    .line 1133
    move-result v4

    .line 1134
    packed-switch v4, :pswitch_data_3

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 1141
    .line 1142
    .line 1143
    goto :goto_14

    .line 1144
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lo0/d;->a()V

    .line 1145
    .line 1146
    .line 1147
    :cond_47
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 1148
    .line 1149
    .line 1150
    move-result v4

    .line 1151
    if-eqz v4, :cond_4d

    .line 1152
    .line 1153
    invoke-virtual/range {p0 .. p0}, Lo0/d;->b()V

    .line 1154
    .line 1155
    .line 1156
    const/4 v4, 0x0

    .line 1157
    const/4 v6, 0x0

    .line 1158
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 1159
    .line 1160
    .line 1161
    move-result v7

    .line 1162
    if-eqz v7, :cond_4a

    .line 1163
    .line 1164
    sget-object v7, Ln0/n;->c:Lo0/c$a;

    .line 1165
    .line 1166
    invoke-virtual {v0, v7}, Lo0/d;->n(Lo0/c$a;)I

    .line 1167
    .line 1168
    .line 1169
    move-result v7

    .line 1170
    if-eqz v7, :cond_49

    .line 1171
    .line 1172
    if-eq v7, v5, :cond_48

    .line 1173
    .line 1174
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 1178
    .line 1179
    .line 1180
    goto :goto_16

    .line 1181
    :cond_48
    invoke-static {v0, v1, v5}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v4

    .line 1185
    goto :goto_16

    .line 1186
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v6

    .line 1190
    goto :goto_16

    .line 1191
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lo0/d;->d()V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v7

    .line 1198
    if-eqz v7, :cond_4b

    .line 1199
    .line 1200
    move-object/from16 v28, v4

    .line 1201
    .line 1202
    goto :goto_15

    .line 1203
    :cond_4b
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1204
    .line 1205
    .line 1206
    move-result v7

    .line 1207
    if-nez v7, :cond_4c

    .line 1208
    .line 1209
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1210
    .line 1211
    .line 1212
    move-result v6

    .line 1213
    if-eqz v6, :cond_47

    .line 1214
    .line 1215
    :cond_4c
    iput-boolean v5, v1, Ld0/f;->n:Z

    .line 1216
    .line 1217
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    .line 1219
    .line 1220
    goto :goto_15

    .line 1221
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lo0/d;->c()V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1225
    .line 1226
    .line 1227
    move-result v4

    .line 1228
    if-ne v4, v5, :cond_46

    .line 1229
    .line 1230
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v4

    .line 1234
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    .line 1236
    .line 1237
    goto :goto_14

    .line 1238
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 1239
    .line 1240
    .line 1241
    move-result v29

    .line 1242
    goto :goto_14

    .line 1243
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lo0/d;->g()D

    .line 1244
    .line 1245
    .line 1246
    move-result-wide v6

    .line 1247
    double-to-float v4, v6

    .line 1248
    move/from16 v26, v4

    .line 1249
    .line 1250
    goto/16 :goto_14

    .line 1251
    .line 1252
    :pswitch_1f
    invoke-static {v9}, Lg/d;->d(I)[I

    .line 1253
    .line 1254
    .line 1255
    move-result-object v4

    .line 1256
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 1257
    .line 1258
    .line 1259
    move-result v6

    .line 1260
    sub-int/2addr v6, v5

    .line 1261
    aget v25, v4, v6

    .line 1262
    .line 1263
    goto/16 :goto_14

    .line 1264
    .line 1265
    :pswitch_20
    invoke-static {v9}, Lg/d;->d(I)[I

    .line 1266
    .line 1267
    .line 1268
    move-result-object v4

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 1270
    .line 1271
    .line 1272
    move-result v6

    .line 1273
    sub-int/2addr v6, v5

    .line 1274
    aget v24, v4, v6

    .line 1275
    .line 1276
    goto/16 :goto_14

    .line 1277
    .line 1278
    :pswitch_21
    invoke-static {v0, v1, v5}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v23

    .line 1282
    goto/16 :goto_14

    .line 1283
    .line 1284
    :pswitch_22
    invoke-static/range {p0 .. p1}, Ln0/d;->c(Lo0/d;Ld0/f;)Lj0/f;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v22

    .line 1288
    goto/16 :goto_14

    .line 1289
    .line 1290
    :pswitch_23
    invoke-static/range {p0 .. p1}, Ln0/d;->c(Lo0/d;Ld0/f;)Lj0/f;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v21

    .line 1294
    goto/16 :goto_14

    .line 1295
    .line 1296
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 1297
    .line 1298
    .line 1299
    move-result v4

    .line 1300
    if-ne v4, v5, :cond_4e

    .line 1301
    .line 1302
    const/16 v18, 0x1

    .line 1303
    .line 1304
    goto/16 :goto_14

    .line 1305
    .line 1306
    :cond_4e
    const/16 v18, 0x2

    .line 1307
    .line 1308
    goto/16 :goto_14

    .line 1309
    .line 1310
    :pswitch_25
    invoke-static/range {p0 .. p1}, Ln0/d;->b(Lo0/d;Ld0/f;)Lj0/d;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v3

    .line 1314
    goto/16 :goto_14

    .line 1315
    .line 1316
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lo0/d;->b()V

    .line 1317
    .line 1318
    .line 1319
    const/4 v4, -0x1

    .line 1320
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 1321
    .line 1322
    .line 1323
    move-result v6

    .line 1324
    if-eqz v6, :cond_51

    .line 1325
    .line 1326
    sget-object v6, Ln0/n;->b:Lo0/c$a;

    .line 1327
    .line 1328
    invoke-virtual {v0, v6}, Lo0/d;->n(Lo0/c$a;)I

    .line 1329
    .line 1330
    .line 1331
    move-result v6

    .line 1332
    if-eqz v6, :cond_50

    .line 1333
    .line 1334
    if-eq v6, v5, :cond_4f

    .line 1335
    .line 1336
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 1340
    .line 1341
    .line 1342
    goto :goto_17

    .line 1343
    :cond_4f
    new-instance v6, Lj0/c;

    .line 1344
    .line 1345
    new-instance v7, Ln0/l;

    .line 1346
    .line 1347
    invoke-direct {v7, v4}, Ln0/l;-><init>(I)V

    .line 1348
    .line 1349
    .line 1350
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1351
    .line 1352
    invoke-static {v0, v1, v8, v7, v10}, Ln0/r;->a(Lo0/c;Ld0/f;FLn0/h0;Z)Ljava/util/ArrayList;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v7

    .line 1356
    invoke-direct {v6, v7}, Lj0/c;-><init>(Ljava/util/ArrayList;)V

    .line 1357
    .line 1358
    .line 1359
    move-object/from16 v19, v6

    .line 1360
    .line 1361
    goto :goto_17

    .line 1362
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 1363
    .line 1364
    .line 1365
    move-result v4

    .line 1366
    goto :goto_17

    .line 1367
    :cond_51
    invoke-virtual/range {p0 .. p0}, Lo0/d;->d()V

    .line 1368
    .line 1369
    .line 1370
    goto/16 :goto_14

    .line 1371
    .line 1372
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v17

    .line 1376
    goto/16 :goto_14

    .line 1377
    .line 1378
    :cond_52
    if-nez v3, :cond_53

    .line 1379
    .line 1380
    new-instance v1, Lj0/d;

    .line 1381
    .line 1382
    new-instance v3, Lq0/a;

    .line 1383
    .line 1384
    const/16 v4, 0x64

    .line 1385
    .line 1386
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v4

    .line 1390
    invoke-direct {v3, v4}, Lq0/a;-><init>(Ljava/lang/Object;)V

    .line 1391
    .line 1392
    .line 1393
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v3

    .line 1397
    invoke-direct {v1, v3}, Lj0/d;-><init>(Ljava/util/List;)V

    .line 1398
    .line 1399
    .line 1400
    move-object/from16 v20, v1

    .line 1401
    .line 1402
    goto :goto_18

    .line 1403
    :cond_53
    move-object/from16 v20, v3

    .line 1404
    .line 1405
    :goto_18
    new-instance v1, Lk0/e;

    .line 1406
    .line 1407
    move-object/from16 v16, v1

    .line 1408
    .line 1409
    move-object/from16 v27, v2

    .line 1410
    .line 1411
    invoke-direct/range {v16 .. v29}, Lk0/e;-><init>(Ljava/lang/String;ILj0/c;Lj0/d;Lj0/f;Lj0/f;Lj0/b;IIFLjava/util/ArrayList;Lj0/b;Z)V

    .line 1412
    .line 1413
    .line 1414
    goto/16 :goto_23

    .line 1415
    .line 1416
    :pswitch_28
    sget-object v3, Ln0/d0;->a:Lo0/c$a;

    .line 1417
    .line 1418
    new-instance v3, Ljava/util/ArrayList;

    .line 1419
    .line 1420
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    .line 1422
    .line 1423
    const/4 v4, 0x0

    .line 1424
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 1425
    .line 1426
    .line 1427
    move-result v6

    .line 1428
    if-eqz v6, :cond_59

    .line 1429
    .line 1430
    sget-object v6, Ln0/d0;->a:Lo0/c$a;

    .line 1431
    .line 1432
    invoke-virtual {v0, v6}, Lo0/d;->n(Lo0/c$a;)I

    .line 1433
    .line 1434
    .line 1435
    move-result v6

    .line 1436
    if-eqz v6, :cond_58

    .line 1437
    .line 1438
    if-eq v6, v5, :cond_57

    .line 1439
    .line 1440
    if-eq v6, v2, :cond_54

    .line 1441
    .line 1442
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 1443
    .line 1444
    .line 1445
    goto :goto_19

    .line 1446
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lo0/d;->a()V

    .line 1447
    .line 1448
    .line 1449
    :cond_55
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 1450
    .line 1451
    .line 1452
    move-result v6

    .line 1453
    if-eqz v6, :cond_56

    .line 1454
    .line 1455
    invoke-static/range {p0 .. p1}, Ln0/g;->a(Lo0/d;Ld0/f;)Lk0/b;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v6

    .line 1459
    if-eqz v6, :cond_55

    .line 1460
    .line 1461
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    .line 1463
    .line 1464
    goto :goto_1a

    .line 1465
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lo0/d;->c()V

    .line 1466
    .line 1467
    .line 1468
    goto :goto_19

    .line 1469
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 1470
    .line 1471
    .line 1472
    move-result v10

    .line 1473
    goto :goto_19

    .line 1474
    :cond_58
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v4

    .line 1478
    goto :goto_19

    .line 1479
    :cond_59
    new-instance v1, Lk0/m;

    .line 1480
    .line 1481
    invoke-direct {v1, v4, v10, v3}, Lk0/m;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    .line 1482
    .line 1483
    .line 1484
    goto/16 :goto_23

    .line 1485
    .line 1486
    :pswitch_29
    sget-object v2, Ln0/m;->a:Lo0/c$a;

    .line 1487
    .line 1488
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1489
    .line 1490
    const/4 v3, 0x0

    .line 1491
    const/4 v4, 0x0

    .line 1492
    const/4 v6, 0x0

    .line 1493
    const/4 v7, 0x0

    .line 1494
    const/4 v8, 0x0

    .line 1495
    const/4 v9, 0x0

    .line 1496
    const/4 v11, 0x0

    .line 1497
    move-object v15, v2

    .line 1498
    move-object v13, v4

    .line 1499
    move-object/from16 v16, v7

    .line 1500
    .line 1501
    move-object/from16 v18, v8

    .line 1502
    .line 1503
    move-object/from16 v19, v9

    .line 1504
    .line 1505
    const/4 v14, 0x0

    .line 1506
    const/16 v20, 0x0

    .line 1507
    .line 1508
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 1509
    .line 1510
    .line 1511
    move-result v2

    .line 1512
    if-eqz v2, :cond_5f

    .line 1513
    .line 1514
    sget-object v2, Ln0/m;->a:Lo0/c$a;

    .line 1515
    .line 1516
    invoke-virtual {v0, v2}, Lo0/d;->n(Lo0/c$a;)I

    .line 1517
    .line 1518
    .line 1519
    move-result v2

    .line 1520
    packed-switch v2, :pswitch_data_4

    .line 1521
    .line 1522
    .line 1523
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 1524
    .line 1525
    .line 1526
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 1527
    .line 1528
    .line 1529
    goto :goto_1b

    .line 1530
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 1531
    .line 1532
    .line 1533
    move-result v20

    .line 1534
    goto :goto_1b

    .line 1535
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 1536
    .line 1537
    .line 1538
    move-result v2

    .line 1539
    if-ne v2, v5, :cond_5a

    .line 1540
    .line 1541
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1542
    .line 1543
    goto :goto_1c

    .line 1544
    :cond_5a
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1545
    .line 1546
    :goto_1c
    move-object v15, v2

    .line 1547
    goto :goto_1b

    .line 1548
    :pswitch_2c
    invoke-static/range {p0 .. p1}, Ln0/d;->c(Lo0/d;Ld0/f;)Lj0/f;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v19

    .line 1552
    goto :goto_1b

    .line 1553
    :pswitch_2d
    invoke-static/range {p0 .. p1}, Ln0/d;->c(Lo0/d;Ld0/f;)Lj0/f;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v18

    .line 1557
    goto :goto_1b

    .line 1558
    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 1559
    .line 1560
    .line 1561
    move-result v2

    .line 1562
    if-ne v2, v5, :cond_5b

    .line 1563
    .line 1564
    const/4 v14, 0x1

    .line 1565
    goto :goto_1b

    .line 1566
    :cond_5b
    const/4 v14, 0x2

    .line 1567
    goto :goto_1b

    .line 1568
    :pswitch_2f
    invoke-static/range {p0 .. p1}, Ln0/d;->b(Lo0/d;Ld0/f;)Lj0/d;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v3

    .line 1572
    goto :goto_1b

    .line 1573
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Lo0/d;->b()V

    .line 1574
    .line 1575
    .line 1576
    const/4 v2, -0x1

    .line 1577
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 1578
    .line 1579
    .line 1580
    move-result v4

    .line 1581
    if-eqz v4, :cond_5e

    .line 1582
    .line 1583
    sget-object v4, Ln0/m;->b:Lo0/c$a;

    .line 1584
    .line 1585
    invoke-virtual {v0, v4}, Lo0/d;->n(Lo0/c$a;)I

    .line 1586
    .line 1587
    .line 1588
    move-result v4

    .line 1589
    if-eqz v4, :cond_5d

    .line 1590
    .line 1591
    if-eq v4, v5, :cond_5c

    .line 1592
    .line 1593
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 1594
    .line 1595
    .line 1596
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 1597
    .line 1598
    .line 1599
    goto :goto_1d

    .line 1600
    :cond_5c
    new-instance v4, Lj0/c;

    .line 1601
    .line 1602
    new-instance v6, Ln0/l;

    .line 1603
    .line 1604
    invoke-direct {v6, v2}, Ln0/l;-><init>(I)V

    .line 1605
    .line 1606
    .line 1607
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1608
    .line 1609
    invoke-static {v0, v1, v7, v6, v10}, Ln0/r;->a(Lo0/c;Ld0/f;FLn0/h0;Z)Ljava/util/ArrayList;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v6

    .line 1613
    invoke-direct {v4, v6}, Lj0/c;-><init>(Ljava/util/ArrayList;)V

    .line 1614
    .line 1615
    .line 1616
    move-object/from16 v16, v4

    .line 1617
    .line 1618
    goto :goto_1d

    .line 1619
    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 1620
    .line 1621
    .line 1622
    move-result v2

    .line 1623
    goto :goto_1d

    .line 1624
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lo0/d;->d()V

    .line 1625
    .line 1626
    .line 1627
    goto :goto_1b

    .line 1628
    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v13

    .line 1632
    goto :goto_1b

    .line 1633
    :cond_5f
    if-nez v3, :cond_60

    .line 1634
    .line 1635
    new-instance v1, Lj0/d;

    .line 1636
    .line 1637
    new-instance v2, Lq0/a;

    .line 1638
    .line 1639
    const/16 v3, 0x64

    .line 1640
    .line 1641
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v3

    .line 1645
    invoke-direct {v2, v3}, Lq0/a;-><init>(Ljava/lang/Object;)V

    .line 1646
    .line 1647
    .line 1648
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v2

    .line 1652
    invoke-direct {v1, v2}, Lj0/d;-><init>(Ljava/util/List;)V

    .line 1653
    .line 1654
    .line 1655
    move-object/from16 v17, v1

    .line 1656
    .line 1657
    goto :goto_1e

    .line 1658
    :cond_60
    move-object/from16 v17, v3

    .line 1659
    .line 1660
    :goto_1e
    new-instance v1, Lk0/d;

    .line 1661
    .line 1662
    move-object v12, v1

    .line 1663
    invoke-direct/range {v12 .. v20}, Lk0/d;-><init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Lj0/c;Lj0/d;Lj0/f;Lj0/f;Z)V

    .line 1664
    .line 1665
    .line 1666
    goto/16 :goto_23

    .line 1667
    .line 1668
    :pswitch_32
    sget-object v3, Ln0/c0;->a:Lo0/c$a;

    .line 1669
    .line 1670
    const/4 v3, 0x1

    .line 1671
    const/4 v4, 0x0

    .line 1672
    const/4 v6, 0x0

    .line 1673
    const/4 v12, 0x0

    .line 1674
    const/4 v13, 0x0

    .line 1675
    const/4 v14, 0x0

    .line 1676
    move-object/from16 v16, v13

    .line 1677
    .line 1678
    const/4 v14, 0x0

    .line 1679
    const/16 v18, 0x0

    .line 1680
    .line 1681
    move-object v13, v6

    .line 1682
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 1683
    .line 1684
    .line 1685
    move-result v6

    .line 1686
    if-eqz v6, :cond_67

    .line 1687
    .line 1688
    sget-object v6, Ln0/c0;->a:Lo0/c$a;

    .line 1689
    .line 1690
    invoke-virtual {v0, v6}, Lo0/d;->n(Lo0/c$a;)I

    .line 1691
    .line 1692
    .line 1693
    move-result v6

    .line 1694
    if-eqz v6, :cond_66

    .line 1695
    .line 1696
    if-eq v6, v5, :cond_65

    .line 1697
    .line 1698
    if-eq v6, v2, :cond_64

    .line 1699
    .line 1700
    if-eq v6, v9, :cond_63

    .line 1701
    .line 1702
    if-eq v6, v7, :cond_62

    .line 1703
    .line 1704
    if-eq v6, v8, :cond_61

    .line 1705
    .line 1706
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 1707
    .line 1708
    .line 1709
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 1710
    .line 1711
    .line 1712
    goto :goto_1f

    .line 1713
    :cond_61
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 1714
    .line 1715
    .line 1716
    move-result v18

    .line 1717
    goto :goto_1f

    .line 1718
    :cond_62
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 1719
    .line 1720
    .line 1721
    move-result v3

    .line 1722
    goto :goto_1f

    .line 1723
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 1724
    .line 1725
    .line 1726
    move-result v14

    .line 1727
    goto :goto_1f

    .line 1728
    :cond_64
    invoke-static/range {p0 .. p1}, Ln0/d;->b(Lo0/d;Ld0/f;)Lj0/d;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v4

    .line 1732
    goto :goto_1f

    .line 1733
    :cond_65
    new-instance v6, Lj0/a;

    .line 1734
    .line 1735
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1736
    .line 1737
    invoke-static {v0, v1, v12, v11, v10}, Ln0/r;->a(Lo0/c;Ld0/f;FLn0/h0;Z)Ljava/util/ArrayList;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v12

    .line 1741
    invoke-direct {v6, v12}, Lj0/a;-><init>(Ljava/util/ArrayList;)V

    .line 1742
    .line 1743
    .line 1744
    move-object/from16 v16, v6

    .line 1745
    .line 1746
    goto :goto_1f

    .line 1747
    :cond_66
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v13

    .line 1751
    goto :goto_1f

    .line 1752
    :cond_67
    if-nez v4, :cond_68

    .line 1753
    .line 1754
    new-instance v4, Lj0/d;

    .line 1755
    .line 1756
    new-instance v1, Lq0/a;

    .line 1757
    .line 1758
    const/16 v2, 0x64

    .line 1759
    .line 1760
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v2

    .line 1764
    invoke-direct {v1, v2}, Lq0/a;-><init>(Ljava/lang/Object;)V

    .line 1765
    .line 1766
    .line 1767
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v1

    .line 1771
    invoke-direct {v4, v1}, Lj0/d;-><init>(Ljava/util/List;)V

    .line 1772
    .line 1773
    .line 1774
    :cond_68
    move-object/from16 v17, v4

    .line 1775
    .line 1776
    if-ne v3, v5, :cond_69

    .line 1777
    .line 1778
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1779
    .line 1780
    goto :goto_20

    .line 1781
    :cond_69
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1782
    .line 1783
    :goto_20
    move-object v15, v1

    .line 1784
    new-instance v1, Lk0/l;

    .line 1785
    .line 1786
    move-object v12, v1

    .line 1787
    invoke-direct/range {v12 .. v18}, Lk0/l;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lj0/a;Lj0/d;Z)V

    .line 1788
    .line 1789
    .line 1790
    goto :goto_23

    .line 1791
    :pswitch_33
    sget-object v4, Ln0/e;->a:Lo0/c$a;

    .line 1792
    .line 1793
    if-ne v3, v9, :cond_6a

    .line 1794
    .line 1795
    const/4 v3, 0x1

    .line 1796
    goto :goto_21

    .line 1797
    :cond_6a
    const/4 v3, 0x0

    .line 1798
    :goto_21
    const/4 v4, 0x0

    .line 1799
    const/4 v6, 0x0

    .line 1800
    const/4 v8, 0x0

    .line 1801
    const/4 v10, 0x0

    .line 1802
    move v15, v3

    .line 1803
    move-object v12, v4

    .line 1804
    move-object v13, v6

    .line 1805
    move-object v14, v8

    .line 1806
    const/16 v16, 0x0

    .line 1807
    .line 1808
    :goto_22
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 1809
    .line 1810
    .line 1811
    move-result v3

    .line 1812
    if-eqz v3, :cond_71

    .line 1813
    .line 1814
    sget-object v3, Ln0/e;->a:Lo0/c$a;

    .line 1815
    .line 1816
    invoke-virtual {v0, v3}, Lo0/d;->n(Lo0/c$a;)I

    .line 1817
    .line 1818
    .line 1819
    move-result v3

    .line 1820
    if-eqz v3, :cond_70

    .line 1821
    .line 1822
    if-eq v3, v5, :cond_6f

    .line 1823
    .line 1824
    if-eq v3, v2, :cond_6e

    .line 1825
    .line 1826
    if-eq v3, v9, :cond_6d

    .line 1827
    .line 1828
    if-eq v3, v7, :cond_6b

    .line 1829
    .line 1830
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 1831
    .line 1832
    .line 1833
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 1834
    .line 1835
    .line 1836
    goto :goto_22

    .line 1837
    :cond_6b
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 1838
    .line 1839
    .line 1840
    move-result v3

    .line 1841
    if-ne v3, v9, :cond_6c

    .line 1842
    .line 1843
    const/4 v15, 0x1

    .line 1844
    goto :goto_22

    .line 1845
    :cond_6c
    const/4 v15, 0x0

    .line 1846
    goto :goto_22

    .line 1847
    :cond_6d
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 1848
    .line 1849
    .line 1850
    move-result v16

    .line 1851
    goto :goto_22

    .line 1852
    :cond_6e
    invoke-static/range {p0 .. p1}, Ln0/d;->c(Lo0/d;Ld0/f;)Lj0/f;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v14

    .line 1856
    goto :goto_22

    .line 1857
    :cond_6f
    invoke-static/range {p0 .. p1}, Ln0/a;->b(Lo0/d;Ld0/f;)Lj0/m;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v13

    .line 1861
    goto :goto_22

    .line 1862
    :cond_70
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 1863
    .line 1864
    .line 1865
    move-result-object v12

    .line 1866
    goto :goto_22

    .line 1867
    :cond_71
    new-instance v1, Lk0/a;

    .line 1868
    .line 1869
    move-object v11, v1

    .line 1870
    invoke-direct/range {v11 .. v16}, Lk0/a;-><init>(Ljava/lang/String;Lj0/m;Lj0/f;ZZ)V

    .line 1871
    .line 1872
    .line 1873
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 1874
    .line 1875
    .line 1876
    move-result v2

    .line 1877
    if-eqz v2, :cond_72

    .line 1878
    .line 1879
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 1880
    .line 1881
    .line 1882
    goto :goto_23

    .line 1883
    :cond_72
    invoke-virtual/range {p0 .. p0}, Lo0/d;->d()V

    .line 1884
    .line 1885
    .line 1886
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_c
        0xcc6 -> :sswitch_b
        0xcdf -> :sswitch_a
        0xceb -> :sswitch_9
        0xcec -> :sswitch_8
        0xda0 -> :sswitch_7
        0xe31 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_29
        :pswitch_28
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch
.end method
