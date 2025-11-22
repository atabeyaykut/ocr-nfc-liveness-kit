.class public final Ln0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo0/c$a;

.field public static final b:Lo0/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "a"

    const-string v1, "p"

    const-string v2, "s"

    const-string v3, "rz"

    const-string v4, "r"

    const-string v5, "o"

    const-string v6, "so"

    const-string v7, "eo"

    const-string v8, "sk"

    const-string v9, "sa"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo0/c$a;->a([Ljava/lang/String;)Lo0/c$a;

    move-result-object v0

    sput-object v0, Ln0/c;->a:Lo0/c$a;

    const-string v0, "k"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo0/c$a;->a([Ljava/lang/String;)Lo0/c$a;

    move-result-object v0

    sput-object v0, Ln0/c;->b:Lo0/c$a;

    return-void
.end method

.method public static a(Lo0/d;Ld0/f;)Lj0/l;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lo0/d;->k()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v10, 0x0

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    const/4 v11, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v11, 0x0

    .line 16
    :goto_0
    if-eqz v11, :cond_1

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Lo0/d;->b()V

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v13, 0x0

    .line 25
    const/4 v14, 0x0

    .line 26
    const/4 v15, 0x0

    .line 27
    const/16 v21, 0x0

    .line 28
    .line 29
    const/16 v22, 0x0

    .line 30
    .line 31
    const/16 v23, 0x0

    .line 32
    .line 33
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/high16 v3, 0x3f800000    # 1.0f

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    if-eqz v2, :cond_6

    .line 41
    .line 42
    sget-object v2, Ln0/c;->a:Lo0/c$a;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lo0/d;->n(Lo0/c$a;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    packed-switch v2, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    move-object/from16 v26, v6

    .line 52
    .line 53
    move-object/from16 v27, v7

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :pswitch_0
    invoke-static {v0, v8, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 63
    .line 64
    .line 65
    move-result-object v13

    .line 66
    goto :goto_1

    .line 67
    :pswitch_1
    invoke-static {v0, v8, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-static {v0, v8, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 73
    .line 74
    .line 75
    move-result-object v23

    .line 76
    goto :goto_1

    .line 77
    :pswitch_3
    invoke-static {v0, v8, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 78
    .line 79
    .line 80
    move-result-object v22

    .line 81
    goto :goto_1

    .line 82
    :pswitch_4
    invoke-static/range {p0 .. p1}, Ln0/d;->b(Lo0/d;Ld0/f;)Lj0/d;

    .line 83
    .line 84
    .line 85
    move-result-object v21

    .line 86
    goto :goto_1

    .line 87
    :pswitch_5
    const-string v1, "Lottie doesn\'t support 3D layers."

    .line 88
    .line 89
    invoke-virtual {v8, v1}, Ld0/f;->a(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :pswitch_6
    invoke-static {v0, v8, v10}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    iget-object v1, v5, Lj0/n;->b:Ljava/util/Collection;

    .line 97
    .line 98
    move-object v3, v1

    .line 99
    check-cast v3, Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    new-instance v2, Lq0/a;

    .line 108
    .line 109
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    .line 111
    .line 112
    move-result-object v16

    .line 113
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    const/16 v17, 0x0

    .line 118
    .line 119
    const/16 v18, 0x0

    .line 120
    .line 121
    iget v1, v8, Ld0/f;->l:F

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 124
    .line 125
    .line 126
    move-result-object v19

    .line 127
    move-object v1, v2

    .line 128
    move-object v9, v2

    .line 129
    move-object/from16 v2, p1

    .line 130
    .line 131
    move-object v12, v3

    .line 132
    move-object/from16 v3, v16

    .line 133
    .line 134
    move-object/from16 v16, v5

    .line 135
    .line 136
    move-object/from16 v5, v17

    .line 137
    .line 138
    move-object/from16 v26, v6

    .line 139
    .line 140
    move/from16 v6, v18

    .line 141
    .line 142
    move-object/from16 v27, v7

    .line 143
    .line 144
    move-object/from16 v7, v19

    .line 145
    .line 146
    invoke-direct/range {v1 .. v7}, Lq0/a;-><init>(Ld0/f;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_2
    move-object v12, v3

    .line 154
    move-object/from16 v16, v5

    .line 155
    .line 156
    move-object/from16 v26, v6

    .line 157
    .line 158
    move-object/from16 v27, v7

    .line 159
    .line 160
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Lq0/a;

    .line 165
    .line 166
    iget-object v1, v1, Lq0/a;->b:Ljava/lang/Object;

    .line 167
    .line 168
    if-nez v1, :cond_3

    .line 169
    .line 170
    new-instance v9, Lq0/a;

    .line 171
    .line 172
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    const/4 v5, 0x0

    .line 181
    const/4 v6, 0x0

    .line 182
    iget v1, v8, Ld0/f;->l:F

    .line 183
    .line 184
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    move-object v1, v9

    .line 189
    move-object/from16 v2, p1

    .line 190
    .line 191
    invoke-direct/range {v1 .. v7}, Lq0/a;-><init>(Ld0/f;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v12, v10, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :cond_3
    :goto_2
    move-object/from16 v1, v16

    .line 198
    .line 199
    :goto_3
    move-object/from16 v6, v26

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :pswitch_7
    move-object/from16 v27, v7

    .line 203
    .line 204
    new-instance v6, Lj0/g;

    .line 205
    .line 206
    sget-object v2, Ln0/a0;->a:Ln0/a0;

    .line 207
    .line 208
    invoke-static {v0, v8, v3, v2, v10}, Ln0/r;->a(Lo0/c;Ld0/f;FLn0/h0;Z)Ljava/util/ArrayList;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-direct {v6, v2}, Lj0/g;-><init>(Ljava/util/ArrayList;)V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :pswitch_8
    move-object/from16 v26, v6

    .line 217
    .line 218
    invoke-static/range {p0 .. p1}, Ln0/a;->b(Lo0/d;Ld0/f;)Lj0/m;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :pswitch_9
    move-object/from16 v26, v6

    .line 225
    .line 226
    move-object/from16 v27, v7

    .line 227
    .line 228
    invoke-virtual/range {p0 .. p0}, Lo0/d;->b()V

    .line 229
    .line 230
    .line 231
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_5

    .line 236
    .line 237
    sget-object v2, Ln0/c;->b:Lo0/c$a;

    .line 238
    .line 239
    invoke-virtual {v0, v2}, Lo0/d;->n(Lo0/c$a;)I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_4

    .line 244
    .line 245
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 246
    .line 247
    .line 248
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_4
    invoke-static/range {p0 .. p1}, Ln0/a;->a(Lo0/d;Ld0/f;)Lj0/e;

    .line 253
    .line 254
    .line 255
    move-result-object v15

    .line 256
    goto :goto_4

    .line 257
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lo0/d;->d()V

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :goto_5
    move-object/from16 v7, v27

    .line 262
    .line 263
    goto/16 :goto_1

    .line 264
    .line 265
    :cond_6
    move-object/from16 v26, v6

    .line 266
    .line 267
    move-object/from16 v27, v7

    .line 268
    .line 269
    if-eqz v11, :cond_7

    .line 270
    .line 271
    invoke-virtual/range {p0 .. p0}, Lo0/d;->d()V

    .line 272
    .line 273
    .line 274
    :cond_7
    if-eqz v15, :cond_9

    .line 275
    .line 276
    invoke-virtual {v15}, Lj0/e;->f()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_8

    .line 281
    .line 282
    iget-object v0, v15, Lj0/e;->a:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v0, Ljava/util/List;

    .line 285
    .line 286
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Lq0/a;

    .line 291
    .line 292
    iget-object v0, v0, Lq0/a;->b:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v0, Landroid/graphics/PointF;

    .line 295
    .line 296
    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->equals(FF)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_8

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_8
    const/4 v0, 0x0

    .line 304
    goto :goto_7

    .line 305
    :cond_9
    :goto_6
    const/4 v0, 0x1

    .line 306
    :goto_7
    if-eqz v0, :cond_a

    .line 307
    .line 308
    move-object/from16 v7, v27

    .line 309
    .line 310
    const/16 v17, 0x0

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_a
    move-object/from16 v17, v15

    .line 314
    .line 315
    move-object/from16 v7, v27

    .line 316
    .line 317
    :goto_8
    if-eqz v7, :cond_c

    .line 318
    .line 319
    instance-of v0, v7, Lj0/i;

    .line 320
    .line 321
    if-nez v0, :cond_b

    .line 322
    .line 323
    invoke-interface {v7}, Lj0/m;->f()Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-eqz v0, :cond_b

    .line 328
    .line 329
    invoke-interface {v7}, Lj0/m;->d()Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Lq0/a;

    .line 338
    .line 339
    iget-object v0, v0, Lq0/a;->b:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v0, Landroid/graphics/PointF;

    .line 342
    .line 343
    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->equals(FF)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_b

    .line 348
    .line 349
    goto :goto_9

    .line 350
    :cond_b
    const/4 v0, 0x0

    .line 351
    goto :goto_a

    .line 352
    :cond_c
    :goto_9
    const/4 v0, 0x1

    .line 353
    :goto_a
    if-eqz v0, :cond_d

    .line 354
    .line 355
    const/16 v18, 0x0

    .line 356
    .line 357
    goto :goto_b

    .line 358
    :cond_d
    move-object/from16 v18, v7

    .line 359
    .line 360
    :goto_b
    if-eqz v1, :cond_f

    .line 361
    .line 362
    invoke-virtual {v1}, Lj0/n;->f()Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-eqz v0, :cond_e

    .line 367
    .line 368
    iget-object v0, v1, Lj0/n;->b:Ljava/util/Collection;

    .line 369
    .line 370
    check-cast v0, Ljava/util/List;

    .line 371
    .line 372
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Lq0/a;

    .line 377
    .line 378
    iget-object v0, v0, Lq0/a;->b:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v0, Ljava/lang/Float;

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    cmpl-float v0, v0, v4

    .line 387
    .line 388
    if-nez v0, :cond_e

    .line 389
    .line 390
    goto :goto_c

    .line 391
    :cond_e
    const/4 v0, 0x0

    .line 392
    goto :goto_d

    .line 393
    :cond_f
    :goto_c
    const/4 v0, 0x1

    .line 394
    :goto_d
    move-object/from16 v6, v26

    .line 395
    .line 396
    if-eqz v0, :cond_10

    .line 397
    .line 398
    const/4 v1, 0x0

    .line 399
    :cond_10
    if-eqz v6, :cond_13

    .line 400
    .line 401
    invoke-virtual {v6}, Lj0/n;->f()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_12

    .line 406
    .line 407
    iget-object v0, v6, Lj0/n;->b:Ljava/util/Collection;

    .line 408
    .line 409
    check-cast v0, Ljava/util/List;

    .line 410
    .line 411
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    check-cast v0, Lq0/a;

    .line 416
    .line 417
    iget-object v0, v0, Lq0/a;->b:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v0, Lq0/d;

    .line 420
    .line 421
    iget v2, v0, Lq0/d;->a:F

    .line 422
    .line 423
    cmpl-float v2, v2, v3

    .line 424
    .line 425
    if-nez v2, :cond_11

    .line 426
    .line 427
    iget v0, v0, Lq0/d;->b:F

    .line 428
    .line 429
    cmpl-float v0, v0, v3

    .line 430
    .line 431
    if-nez v0, :cond_11

    .line 432
    .line 433
    const/4 v0, 0x1

    .line 434
    goto :goto_e

    .line 435
    :cond_11
    const/4 v0, 0x0

    .line 436
    :goto_e
    if-eqz v0, :cond_12

    .line 437
    .line 438
    goto :goto_f

    .line 439
    :cond_12
    const/4 v0, 0x0

    .line 440
    goto :goto_10

    .line 441
    :cond_13
    :goto_f
    const/4 v0, 0x1

    .line 442
    :goto_10
    if-eqz v0, :cond_14

    .line 443
    .line 444
    const/16 v19, 0x0

    .line 445
    .line 446
    goto :goto_11

    .line 447
    :cond_14
    move-object/from16 v19, v6

    .line 448
    .line 449
    :goto_11
    if-eqz v14, :cond_16

    .line 450
    .line 451
    invoke-virtual {v14}, Lj0/n;->f()Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-eqz v0, :cond_15

    .line 456
    .line 457
    iget-object v0, v14, Lj0/n;->b:Ljava/util/Collection;

    .line 458
    .line 459
    check-cast v0, Ljava/util/List;

    .line 460
    .line 461
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    check-cast v0, Lq0/a;

    .line 466
    .line 467
    iget-object v0, v0, Lq0/a;->b:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v0, Ljava/lang/Float;

    .line 470
    .line 471
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    cmpl-float v0, v0, v4

    .line 476
    .line 477
    if-nez v0, :cond_15

    .line 478
    .line 479
    goto :goto_12

    .line 480
    :cond_15
    const/4 v0, 0x0

    .line 481
    goto :goto_13

    .line 482
    :cond_16
    :goto_12
    const/4 v0, 0x1

    .line 483
    :goto_13
    if-eqz v0, :cond_17

    .line 484
    .line 485
    const/4 v14, 0x0

    .line 486
    :cond_17
    if-eqz v13, :cond_19

    .line 487
    .line 488
    invoke-virtual {v13}, Lj0/n;->f()Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_18

    .line 493
    .line 494
    iget-object v0, v13, Lj0/n;->b:Ljava/util/Collection;

    .line 495
    .line 496
    check-cast v0, Ljava/util/List;

    .line 497
    .line 498
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    check-cast v0, Lq0/a;

    .line 503
    .line 504
    iget-object v0, v0, Lq0/a;->b:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v0, Ljava/lang/Float;

    .line 507
    .line 508
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    cmpl-float v0, v0, v4

    .line 513
    .line 514
    if-nez v0, :cond_18

    .line 515
    .line 516
    goto :goto_14

    .line 517
    :cond_18
    const/4 v9, 0x0

    .line 518
    goto :goto_15

    .line 519
    :cond_19
    :goto_14
    const/4 v9, 0x1

    .line 520
    :goto_15
    if-eqz v9, :cond_1a

    .line 521
    .line 522
    const/16 v25, 0x0

    .line 523
    .line 524
    goto :goto_16

    .line 525
    :cond_1a
    move-object/from16 v25, v13

    .line 526
    .line 527
    :goto_16
    new-instance v0, Lj0/l;

    .line 528
    .line 529
    move-object/from16 v16, v0

    .line 530
    .line 531
    move-object/from16 v20, v1

    .line 532
    .line 533
    move-object/from16 v24, v14

    .line 534
    .line 535
    invoke-direct/range {v16 .. v25}, Lj0/l;-><init>(Lj0/e;Lj0/m;Lj0/g;Lj0/b;Lj0/d;Lj0/b;Lj0/b;Lj0/b;Lj0/b;)V

    .line 536
    .line 537
    .line 538
    return-object v0

    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
