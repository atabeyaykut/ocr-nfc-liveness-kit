.class public final Ln0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo0/c$a;

.field public static final b:Lo0/c$a;

.field public static final c:Lo0/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    const-string v0, "nm"

    const-string v1, "ind"

    const-string v2, "refId"

    const-string v3, "ty"

    const-string v4, "parent"

    const-string v5, "sw"

    const-string v6, "sh"

    const-string v7, "sc"

    const-string v8, "ks"

    const-string v9, "tt"

    const-string v10, "masksProperties"

    const-string v11, "shapes"

    const-string v12, "t"

    const-string v13, "ef"

    const-string v14, "sr"

    const-string v15, "st"

    const-string v16, "w"

    const-string v17, "h"

    const-string v18, "ip"

    const-string v19, "op"

    const-string v20, "tm"

    const-string v21, "cl"

    const-string v22, "hd"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo0/c$a;->a([Ljava/lang/String;)Lo0/c$a;

    move-result-object v0

    sput-object v0, Ln0/s;->a:Lo0/c$a;

    const-string v0, "d"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo0/c$a;->a([Ljava/lang/String;)Lo0/c$a;

    move-result-object v0

    sput-object v0, Ln0/s;->b:Lo0/c$a;

    const-string v0, "nm"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo0/c$a;->a([Ljava/lang/String;)Lo0/c$a;

    move-result-object v0

    sput-object v0, Ln0/s;->c:Lo0/c$a;

    return-void
.end method

.method public static a(Lo0/d;Ld0/f;)Ll0/e;
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    new-instance v10, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v8, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lo0/d;->b()V

    .line 16
    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    const/4 v11, 0x0

    .line 25
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    const-string v4, "UNSET"

    .line 32
    .line 33
    const-wide/16 v5, 0x0

    .line 34
    .line 35
    const-wide/16 v13, -0x1

    .line 36
    .line 37
    move-wide/from16 v16, v5

    .line 38
    .line 39
    move-wide/from16 v19, v13

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v14, 0x0

    .line 43
    const/16 v18, 0x0

    .line 44
    .line 45
    const/16 v21, 0x0

    .line 46
    .line 47
    const/16 v22, 0x0

    .line 48
    .line 49
    const/16 v23, 0x0

    .line 50
    .line 51
    const/16 v24, 0x0

    .line 52
    .line 53
    const/16 v25, 0x0

    .line 54
    .line 55
    const/high16 v26, 0x3f800000    # 1.0f

    .line 56
    .line 57
    const/16 v27, 0x0

    .line 58
    .line 59
    const/16 v28, 0x0

    .line 60
    .line 61
    const/16 v29, 0x0

    .line 62
    .line 63
    const/16 v30, 0x0

    .line 64
    .line 65
    const/16 v31, 0x0

    .line 66
    .line 67
    const/16 v32, 0x1

    .line 68
    .line 69
    const/16 v33, 0x0

    .line 70
    .line 71
    const/16 v34, 0x0

    .line 72
    .line 73
    const/16 v35, 0x0

    .line 74
    .line 75
    move-object v13, v4

    .line 76
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_30

    .line 81
    .line 82
    sget-object v4, Ln0/s;->a:Lo0/c$a;

    .line 83
    .line 84
    invoke-virtual {v0, v4}, Lo0/d;->n(Lo0/c$a;)I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const/4 v5, 0x2

    .line 89
    const/4 v11, 0x3

    .line 90
    packed-switch v4, :pswitch_data_0

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_19

    .line 102
    .line 103
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 104
    .line 105
    .line 106
    move-result v34

    .line 107
    goto/16 :goto_1a

    .line 108
    .line 109
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    goto/16 :goto_1a

    .line 114
    .line 115
    :pswitch_2
    invoke-static {v0, v7, v2}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 116
    .line 117
    .line 118
    move-result-object v33

    .line 119
    goto/16 :goto_1a

    .line 120
    .line 121
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lo0/d;->g()D

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    double-to-float v4, v4

    .line 126
    move/from16 v35, v4

    .line 127
    .line 128
    goto/16 :goto_1a

    .line 129
    .line 130
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lo0/d;->g()D

    .line 131
    .line 132
    .line 133
    move-result-wide v4

    .line 134
    double-to-float v14, v4

    .line 135
    goto/16 :goto_1a

    .line 136
    .line 137
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    int-to-float v4, v4

    .line 142
    invoke-static {}, Lp0/g;->c()F

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    mul-float v5, v5, v4

    .line 147
    .line 148
    float-to-int v4, v5

    .line 149
    move/from16 v29, v4

    .line 150
    .line 151
    goto/16 :goto_1a

    .line 152
    .line 153
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    int-to-float v4, v4

    .line 158
    invoke-static {}, Lp0/g;->c()F

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    mul-float v5, v5, v4

    .line 163
    .line 164
    float-to-int v4, v5

    .line 165
    move/from16 v28, v4

    .line 166
    .line 167
    goto/16 :goto_1a

    .line 168
    .line 169
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lo0/d;->g()D

    .line 170
    .line 171
    .line 172
    move-result-wide v4

    .line 173
    double-to-float v4, v4

    .line 174
    move/from16 v27, v4

    .line 175
    .line 176
    goto/16 :goto_1a

    .line 177
    .line 178
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lo0/d;->g()D

    .line 179
    .line 180
    .line 181
    move-result-wide v4

    .line 182
    double-to-float v4, v4

    .line 183
    move/from16 v26, v4

    .line 184
    .line 185
    goto/16 :goto_1a

    .line 186
    .line 187
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lo0/d;->a()V

    .line 188
    .line 189
    .line 190
    new-instance v4, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_2

    .line 200
    .line 201
    invoke-virtual/range {p0 .. p0}, Lo0/d;->b()V

    .line 202
    .line 203
    .line 204
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-eqz v5, :cond_1

    .line 209
    .line 210
    sget-object v5, Ln0/s;->c:Lo0/c$a;

    .line 211
    .line 212
    invoke-virtual {v0, v5}, Lo0/d;->n(Lo0/c$a;)I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_0

    .line 217
    .line 218
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 219
    .line 220
    .line 221
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo0/d;->d()V

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lo0/d;->c()V

    .line 238
    .line 239
    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v11, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    .line 243
    .line 244
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-virtual {v7, v4}, Ld0/f;->a(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_c

    .line 258
    .line 259
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lo0/d;->b()V

    .line 260
    .line 261
    .line 262
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_f

    .line 267
    .line 268
    sget-object v4, Ln0/s;->b:Lo0/c$a;

    .line 269
    .line 270
    invoke-virtual {v0, v4}, Lo0/d;->n(Lo0/c$a;)I

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_e

    .line 275
    .line 276
    if-eq v4, v3, :cond_3

    .line 277
    .line 278
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 279
    .line 280
    .line 281
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lo0/d;->a()V

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_c

    .line 293
    .line 294
    sget-object v4, Ln0/b;->a:Lo0/c$a;

    .line 295
    .line 296
    invoke-virtual/range {p0 .. p0}, Lo0/d;->b()V

    .line 297
    .line 298
    .line 299
    const/4 v4, 0x0

    .line 300
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 301
    .line 302
    .line 303
    move-result v31

    .line 304
    if-eqz v31, :cond_a

    .line 305
    .line 306
    sget-object v15, Ln0/b;->a:Lo0/c$a;

    .line 307
    .line 308
    invoke-virtual {v0, v15}, Lo0/d;->n(Lo0/c$a;)I

    .line 309
    .line 310
    .line 311
    move-result v15

    .line 312
    if-eqz v15, :cond_4

    .line 313
    .line 314
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lo0/d;->b()V

    .line 322
    .line 323
    .line 324
    const/4 v4, 0x0

    .line 325
    const/4 v15, 0x0

    .line 326
    const/16 v38, 0x0

    .line 327
    .line 328
    const/16 v39, 0x0

    .line 329
    .line 330
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 331
    .line 332
    .line 333
    move-result v31

    .line 334
    if-eqz v31, :cond_9

    .line 335
    .line 336
    sget-object v1, Ln0/b;->b:Lo0/c$a;

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Lo0/d;->n(Lo0/c$a;)I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    sget-object v2, Ln0/f;->a:Ln0/f;

    .line 343
    .line 344
    if-eqz v1, :cond_8

    .line 345
    .line 346
    if-eq v1, v3, :cond_7

    .line 347
    .line 348
    if-eq v1, v5, :cond_6

    .line 349
    .line 350
    if-eq v1, v11, :cond_5

    .line 351
    .line 352
    invoke-virtual/range {p0 .. p0}, Lo0/d;->o()V

    .line 353
    .line 354
    .line 355
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 356
    .line 357
    .line 358
    goto :goto_6

    .line 359
    :cond_5
    invoke-static {v0, v7, v3}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    goto :goto_6

    .line 364
    :cond_6
    invoke-static {v0, v7, v3}, Ln0/d;->a(Lo0/c;Ld0/f;Z)Lj0/b;

    .line 365
    .line 366
    .line 367
    move-result-object v39

    .line 368
    :goto_6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 369
    .line 370
    const/4 v2, 0x0

    .line 371
    goto :goto_5

    .line 372
    :cond_7
    new-instance v1, Lj0/a;

    .line 373
    .line 374
    const/high16 v5, 0x3f800000    # 1.0f

    .line 375
    .line 376
    const/4 v11, 0x0

    .line 377
    invoke-static {v0, v7, v5, v2, v11}, Ln0/r;->a(Lo0/c;Ld0/f;FLn0/h0;Z)Ljava/util/ArrayList;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-direct {v1, v2}, Lj0/a;-><init>(Ljava/util/ArrayList;)V

    .line 382
    .line 383
    .line 384
    move-object/from16 v38, v1

    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_8
    const/high16 v5, 0x3f800000    # 1.0f

    .line 388
    .line 389
    const/4 v11, 0x0

    .line 390
    new-instance v15, Lj0/a;

    .line 391
    .line 392
    invoke-static {v0, v7, v5, v2, v11}, Ln0/r;->a(Lo0/c;Ld0/f;FLn0/h0;Z)Ljava/util/ArrayList;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-direct {v15, v1}, Lj0/a;-><init>(Ljava/util/ArrayList;)V

    .line 397
    .line 398
    .line 399
    :goto_7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 400
    .line 401
    const/4 v2, 0x0

    .line 402
    const/4 v5, 0x2

    .line 403
    const/4 v11, 0x3

    .line 404
    goto :goto_5

    .line 405
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lo0/d;->d()V

    .line 406
    .line 407
    .line 408
    new-instance v1, Lj0/k;

    .line 409
    .line 410
    move-object/from16 v2, v38

    .line 411
    .line 412
    move-object/from16 v5, v39

    .line 413
    .line 414
    invoke-direct {v1, v15, v2, v5, v4}, Lj0/k;-><init>(Lj0/a;Lj0/a;Lj0/b;Lj0/b;)V

    .line 415
    .line 416
    .line 417
    move-object v4, v1

    .line 418
    const/high16 v1, 0x3f800000    # 1.0f

    .line 419
    .line 420
    const/4 v2, 0x0

    .line 421
    const/4 v5, 0x2

    .line 422
    const/4 v11, 0x3

    .line 423
    goto :goto_4

    .line 424
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lo0/d;->d()V

    .line 425
    .line 426
    .line 427
    if-nez v4, :cond_b

    .line 428
    .line 429
    new-instance v4, Lj0/k;

    .line 430
    .line 431
    const/4 v1, 0x0

    .line 432
    invoke-direct {v4, v1, v1, v1, v1}, Lj0/k;-><init>(Lj0/a;Lj0/a;Lj0/b;Lj0/b;)V

    .line 433
    .line 434
    .line 435
    goto :goto_8

    .line 436
    :cond_b
    const/4 v1, 0x0

    .line 437
    :goto_8
    move-object/from16 v31, v4

    .line 438
    .line 439
    goto :goto_9

    .line 440
    :cond_c
    const/4 v1, 0x0

    .line 441
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    if-eqz v2, :cond_d

    .line 446
    .line 447
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 448
    .line 449
    .line 450
    goto :goto_9

    .line 451
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lo0/d;->c()V

    .line 452
    .line 453
    .line 454
    goto :goto_a

    .line 455
    :cond_e
    const/4 v1, 0x0

    .line 456
    new-instance v2, Lj0/j;

    .line 457
    .line 458
    sget-object v4, Ln0/h;->a:Ln0/h;

    .line 459
    .line 460
    const/4 v5, 0x0

    .line 461
    const/high16 v11, 0x3f800000    # 1.0f

    .line 462
    .line 463
    invoke-static {v0, v7, v11, v4, v5}, Ln0/r;->a(Lo0/c;Ld0/f;FLn0/h0;Z)Ljava/util/ArrayList;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    invoke-direct {v2, v4}, Lj0/j;-><init>(Ljava/util/ArrayList;)V

    .line 468
    .line 469
    .line 470
    move-object/from16 v30, v2

    .line 471
    .line 472
    :goto_a
    const/high16 v1, 0x3f800000    # 1.0f

    .line 473
    .line 474
    const/4 v2, 0x0

    .line 475
    const/4 v5, 0x2

    .line 476
    const/4 v11, 0x3

    .line 477
    goto/16 :goto_3

    .line 478
    .line 479
    :cond_f
    const/4 v1, 0x0

    .line 480
    const/high16 v11, 0x3f800000    # 1.0f

    .line 481
    .line 482
    invoke-virtual/range {p0 .. p0}, Lo0/d;->d()V

    .line 483
    .line 484
    .line 485
    const/high16 v1, 0x3f800000    # 1.0f

    .line 486
    .line 487
    const/4 v2, 0x0

    .line 488
    goto/16 :goto_1a

    .line 489
    .line 490
    :pswitch_b
    const/4 v1, 0x0

    .line 491
    const/high16 v11, 0x3f800000    # 1.0f

    .line 492
    .line 493
    invoke-virtual/range {p0 .. p0}, Lo0/d;->a()V

    .line 494
    .line 495
    .line 496
    :cond_10
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    if-eqz v2, :cond_11

    .line 501
    .line 502
    invoke-static/range {p0 .. p1}, Ln0/g;->a(Lo0/d;Ld0/f;)Lk0/b;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    if-eqz v2, :cond_10

    .line 507
    .line 508
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    goto :goto_b

    .line 512
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lo0/d;->c()V

    .line 513
    .line 514
    .line 515
    :goto_c
    const/4 v2, 0x1

    .line 516
    const/4 v3, 0x0

    .line 517
    goto/16 :goto_19

    .line 518
    .line 519
    :pswitch_c
    const/4 v1, 0x0

    .line 520
    const/high16 v11, 0x3f800000    # 1.0f

    .line 521
    .line 522
    invoke-virtual/range {p0 .. p0}, Lo0/d;->a()V

    .line 523
    .line 524
    .line 525
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    if-eqz v2, :cond_2b

    .line 530
    .line 531
    invoke-virtual/range {p0 .. p0}, Lo0/d;->b()V

    .line 532
    .line 533
    .line 534
    move-object v5, v1

    .line 535
    move-object v15, v5

    .line 536
    const/4 v2, 0x0

    .line 537
    const/4 v4, 0x0

    .line 538
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lo0/d;->e()Z

    .line 539
    .line 540
    .line 541
    move-result v37

    .line 542
    if-eqz v37, :cond_2a

    .line 543
    .line 544
    invoke-virtual/range {p0 .. p0}, Lo0/d;->y()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 552
    .line 553
    .line 554
    move-result v11

    .line 555
    const/16 v3, 0x6f

    .line 556
    .line 557
    const/16 v37, -0x1

    .line 558
    .line 559
    if-eq v11, v3, :cond_18

    .line 560
    .line 561
    const/16 v3, 0xe04

    .line 562
    .line 563
    if-eq v11, v3, :cond_16

    .line 564
    .line 565
    const v3, 0x197f1

    .line 566
    .line 567
    .line 568
    if-eq v11, v3, :cond_14

    .line 569
    .line 570
    const v3, 0x3339a3

    .line 571
    .line 572
    .line 573
    if-eq v11, v3, :cond_12

    .line 574
    .line 575
    goto :goto_f

    .line 576
    :cond_12
    const-string v3, "mode"

    .line 577
    .line 578
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    if-nez v3, :cond_13

    .line 583
    .line 584
    goto :goto_f

    .line 585
    :cond_13
    const/4 v3, 0x3

    .line 586
    goto :goto_10

    .line 587
    :cond_14
    const-string v3, "inv"

    .line 588
    .line 589
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v3

    .line 593
    if-nez v3, :cond_15

    .line 594
    .line 595
    goto :goto_f

    .line 596
    :cond_15
    const/4 v3, 0x2

    .line 597
    goto :goto_10

    .line 598
    :cond_16
    const-string v3, "pt"

    .line 599
    .line 600
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    if-nez v3, :cond_17

    .line 605
    .line 606
    goto :goto_f

    .line 607
    :cond_17
    const/4 v3, 0x1

    .line 608
    goto :goto_10

    .line 609
    :cond_18
    const-string v3, "o"

    .line 610
    .line 611
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v3

    .line 615
    if-nez v3, :cond_19

    .line 616
    .line 617
    :goto_f
    const/4 v3, -0x1

    .line 618
    goto :goto_10

    .line 619
    :cond_19
    const/4 v3, 0x0

    .line 620
    :goto_10
    if-eqz v3, :cond_29

    .line 621
    .line 622
    const/4 v11, 0x1

    .line 623
    if-eq v3, v11, :cond_28

    .line 624
    .line 625
    const/4 v11, 0x2

    .line 626
    if-eq v3, v11, :cond_27

    .line 627
    .line 628
    const/4 v11, 0x3

    .line 629
    if-eq v3, v11, :cond_1a

    .line 630
    .line 631
    invoke-virtual/range {p0 .. p0}, Lo0/d;->p()V

    .line 632
    .line 633
    .line 634
    goto/16 :goto_14

    .line 635
    .line 636
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 644
    .line 645
    .line 646
    move-result v3

    .line 647
    const/16 v11, 0x61

    .line 648
    .line 649
    if-eq v3, v11, :cond_21

    .line 650
    .line 651
    const/16 v11, 0x69

    .line 652
    .line 653
    if-eq v3, v11, :cond_1f

    .line 654
    .line 655
    const/16 v11, 0x6e

    .line 656
    .line 657
    if-eq v3, v11, :cond_1d

    .line 658
    .line 659
    const/16 v11, 0x73

    .line 660
    .line 661
    if-eq v3, v11, :cond_1b

    .line 662
    .line 663
    goto :goto_11

    .line 664
    :cond_1b
    const-string v3, "s"

    .line 665
    .line 666
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result v2

    .line 670
    if-nez v2, :cond_1c

    .line 671
    .line 672
    goto :goto_11

    .line 673
    :cond_1c
    const/4 v2, 0x3

    .line 674
    goto :goto_12

    .line 675
    :cond_1d
    const-string v3, "n"

    .line 676
    .line 677
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    if-nez v2, :cond_1e

    .line 682
    .line 683
    goto :goto_11

    .line 684
    :cond_1e
    const/4 v2, 0x2

    .line 685
    goto :goto_12

    .line 686
    :cond_1f
    const-string v3, "i"

    .line 687
    .line 688
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result v2

    .line 692
    if-nez v2, :cond_20

    .line 693
    .line 694
    goto :goto_11

    .line 695
    :cond_20
    const/4 v2, 0x1

    .line 696
    goto :goto_12

    .line 697
    :cond_21
    const-string v3, "a"

    .line 698
    .line 699
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v2

    .line 703
    if-nez v2, :cond_22

    .line 704
    .line 705
    :goto_11
    const/4 v2, -0x1

    .line 706
    goto :goto_12

    .line 707
    :cond_22
    const/4 v2, 0x0

    .line 708
    :goto_12
    if-eqz v2, :cond_26

    .line 709
    .line 710
    const/4 v3, 0x1

    .line 711
    if-eq v2, v3, :cond_25

    .line 712
    .line 713
    const/4 v3, 0x2

    .line 714
    if-eq v2, v3, :cond_24

    .line 715
    .line 716
    const/4 v11, 0x3

    .line 717
    if-eq v2, v11, :cond_23

    .line 718
    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    .line 720
    .line 721
    const-string v11, "Unknown mask mode "

    .line 722
    .line 723
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    const-string v1, ". Defaulting to Add."

    .line 730
    .line 731
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    invoke-static {v1}, Lp0/c;->b(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    goto :goto_13

    .line 742
    :cond_23
    const/4 v1, 0x0

    .line 743
    const/4 v2, 0x2

    .line 744
    goto :goto_15

    .line 745
    :cond_24
    const/4 v1, 0x0

    .line 746
    const/4 v2, 0x4

    .line 747
    goto :goto_15

    .line 748
    :cond_25
    const/4 v3, 0x2

    .line 749
    const-string v1, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 750
    .line 751
    invoke-virtual {v7, v1}, Ld0/f;->a(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    const/4 v1, 0x0

    .line 755
    const/4 v2, 0x3

    .line 756
    goto :goto_15

    .line 757
    :cond_26
    const/4 v3, 0x2

    .line 758
    :goto_13
    const/4 v1, 0x0

    .line 759
    const/4 v2, 0x1

    .line 760
    goto :goto_15

    .line 761
    :cond_27
    const/4 v3, 0x2

    .line 762
    invoke-virtual/range {p0 .. p0}, Lo0/d;->f()Z

    .line 763
    .line 764
    .line 765
    move-result v4

    .line 766
    goto :goto_14

    .line 767
    :cond_28
    const/4 v3, 0x2

    .line 768
    new-instance v5, Lj0/h;

    .line 769
    .line 770
    invoke-static {}, Lp0/g;->c()F

    .line 771
    .line 772
    .line 773
    move-result v1

    .line 774
    sget-object v11, Ln0/b0;->a:Ln0/b0;

    .line 775
    .line 776
    const/4 v3, 0x0

    .line 777
    invoke-static {v0, v7, v1, v11, v3}, Ln0/r;->a(Lo0/c;Ld0/f;FLn0/h0;Z)Ljava/util/ArrayList;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    invoke-direct {v5, v1}, Lj0/h;-><init>(Ljava/util/ArrayList;)V

    .line 782
    .line 783
    .line 784
    goto :goto_14

    .line 785
    :cond_29
    const/4 v3, 0x0

    .line 786
    invoke-static/range {p0 .. p1}, Ln0/d;->b(Lo0/d;Ld0/f;)Lj0/d;

    .line 787
    .line 788
    .line 789
    move-result-object v15

    .line 790
    :goto_14
    const/4 v1, 0x0

    .line 791
    :goto_15
    const/4 v3, 0x1

    .line 792
    const/high16 v11, 0x3f800000    # 1.0f

    .line 793
    .line 794
    goto/16 :goto_e

    .line 795
    .line 796
    :cond_2a
    const/4 v3, 0x0

    .line 797
    invoke-virtual/range {p0 .. p0}, Lo0/d;->d()V

    .line 798
    .line 799
    .line 800
    new-instance v1, Lk0/f;

    .line 801
    .line 802
    invoke-direct {v1, v2, v5, v15, v4}, Lk0/f;-><init>(ILj0/h;Lj0/d;Z)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    const/4 v1, 0x0

    .line 809
    const/4 v3, 0x1

    .line 810
    const/high16 v11, 0x3f800000    # 1.0f

    .line 811
    .line 812
    goto/16 :goto_d

    .line 813
    .line 814
    :cond_2b
    const/4 v3, 0x0

    .line 815
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 816
    .line 817
    .line 818
    move-result v1

    .line 819
    iget v2, v7, Ld0/f;->o:I

    .line 820
    .line 821
    add-int/2addr v2, v1

    .line 822
    iput v2, v7, Ld0/f;->o:I

    .line 823
    .line 824
    invoke-virtual/range {p0 .. p0}, Lo0/d;->c()V

    .line 825
    .line 826
    .line 827
    goto :goto_16

    .line 828
    :pswitch_d
    const/4 v3, 0x0

    .line 829
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 830
    .line 831
    .line 832
    move-result v1

    .line 833
    const/4 v2, 0x6

    .line 834
    invoke-static {v2}, Lg/d;->d(I)[I

    .line 835
    .line 836
    .line 837
    move-result-object v4

    .line 838
    array-length v2, v4

    .line 839
    if-lt v1, v2, :cond_2c

    .line 840
    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    .line 842
    .line 843
    const-string v4, "Unsupported matte type: "

    .line 844
    .line 845
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    invoke-virtual {v7, v1}, Ld0/f;->a(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    :goto_16
    const/4 v2, 0x1

    .line 859
    goto/16 :goto_19

    .line 860
    .line 861
    :cond_2c
    const/4 v2, 0x6

    .line 862
    invoke-static {v2}, Lg/d;->d(I)[I

    .line 863
    .line 864
    .line 865
    move-result-object v2

    .line 866
    aget v32, v2, v1

    .line 867
    .line 868
    invoke-static/range {v32 .. v32}, Lg/d;->c(I)I

    .line 869
    .line 870
    .line 871
    move-result v1

    .line 872
    const/4 v2, 0x3

    .line 873
    if-eq v1, v2, :cond_2e

    .line 874
    .line 875
    const/4 v2, 0x4

    .line 876
    if-eq v1, v2, :cond_2d

    .line 877
    .line 878
    goto :goto_18

    .line 879
    :cond_2d
    const-string v1, "Unsupported matte type: Luma Inverted"

    .line 880
    .line 881
    goto :goto_17

    .line 882
    :cond_2e
    const-string v1, "Unsupported matte type: Luma"

    .line 883
    .line 884
    :goto_17
    invoke-virtual {v7, v1}, Ld0/f;->a(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    :goto_18
    iget v1, v7, Ld0/f;->o:I

    .line 888
    .line 889
    const/4 v2, 0x1

    .line 890
    add-int/2addr v1, v2

    .line 891
    iput v1, v7, Ld0/f;->o:I

    .line 892
    .line 893
    goto :goto_19

    .line 894
    :pswitch_e
    const/4 v2, 0x1

    .line 895
    const/4 v3, 0x0

    .line 896
    invoke-static/range {p0 .. p1}, Ln0/c;->a(Lo0/d;Ld0/f;)Lj0/l;

    .line 897
    .line 898
    .line 899
    move-result-object v22

    .line 900
    goto :goto_19

    .line 901
    :pswitch_f
    const/4 v2, 0x1

    .line 902
    const/4 v3, 0x0

    .line 903
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 908
    .line 909
    .line 910
    move-result v25

    .line 911
    goto :goto_19

    .line 912
    :pswitch_10
    const/4 v2, 0x1

    .line 913
    const/4 v3, 0x0

    .line 914
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 915
    .line 916
    .line 917
    move-result v1

    .line 918
    int-to-float v1, v1

    .line 919
    invoke-static {}, Lp0/g;->c()F

    .line 920
    .line 921
    .line 922
    move-result v4

    .line 923
    mul-float v4, v4, v1

    .line 924
    .line 925
    float-to-int v1, v4

    .line 926
    move/from16 v24, v1

    .line 927
    .line 928
    goto :goto_19

    .line 929
    :pswitch_11
    const/4 v2, 0x1

    .line 930
    const/4 v3, 0x0

    .line 931
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 932
    .line 933
    .line 934
    move-result v1

    .line 935
    int-to-float v1, v1

    .line 936
    invoke-static {}, Lp0/g;->c()F

    .line 937
    .line 938
    .line 939
    move-result v4

    .line 940
    mul-float v4, v4, v1

    .line 941
    .line 942
    float-to-int v1, v4

    .line 943
    move/from16 v23, v1

    .line 944
    .line 945
    goto :goto_19

    .line 946
    :pswitch_12
    const/4 v2, 0x1

    .line 947
    const/4 v3, 0x0

    .line 948
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 949
    .line 950
    .line 951
    move-result v1

    .line 952
    int-to-long v4, v1

    .line 953
    move-wide/from16 v19, v4

    .line 954
    .line 955
    goto :goto_19

    .line 956
    :pswitch_13
    const/4 v2, 0x1

    .line 957
    const/4 v3, 0x0

    .line 958
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 959
    .line 960
    .line 961
    move-result v1

    .line 962
    const/16 v18, 0x7

    .line 963
    .line 964
    const/4 v4, 0x6

    .line 965
    if-ge v1, v4, :cond_2f

    .line 966
    .line 967
    invoke-static/range {v18 .. v18}, Lg/d;->d(I)[I

    .line 968
    .line 969
    .line 970
    move-result-object v4

    .line 971
    aget v18, v4, v1

    .line 972
    .line 973
    goto :goto_19

    .line 974
    :pswitch_14
    const/4 v2, 0x1

    .line 975
    const/4 v3, 0x0

    .line 976
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v21

    .line 980
    goto :goto_19

    .line 981
    :pswitch_15
    const/4 v2, 0x1

    .line 982
    const/4 v3, 0x0

    .line 983
    invoke-virtual/range {p0 .. p0}, Lo0/d;->i()I

    .line 984
    .line 985
    .line 986
    move-result v1

    .line 987
    int-to-long v4, v1

    .line 988
    move-wide/from16 v16, v4

    .line 989
    .line 990
    goto :goto_19

    .line 991
    :pswitch_16
    const/4 v2, 0x1

    .line 992
    const/4 v3, 0x0

    .line 993
    invoke-virtual/range {p0 .. p0}, Lo0/d;->j()Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v13

    .line 997
    :cond_2f
    :goto_19
    const/high16 v1, 0x3f800000    # 1.0f

    .line 998
    .line 999
    const/4 v2, 0x0

    .line 1000
    const/4 v3, 0x1

    .line 1001
    :goto_1a
    const/4 v11, 0x0

    .line 1002
    goto/16 :goto_0

    .line 1003
    .line 1004
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lo0/d;->d()V

    .line 1005
    .line 1006
    .line 1007
    new-instance v15, Ljava/util/ArrayList;

    .line 1008
    .line 1009
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    .line 1011
    .line 1012
    const/4 v0, 0x0

    .line 1013
    cmpl-float v1, v14, v0

    .line 1014
    .line 1015
    if-lez v1, :cond_31

    .line 1016
    .line 1017
    new-instance v11, Lq0/a;

    .line 1018
    .line 1019
    const/4 v4, 0x0

    .line 1020
    const/4 v5, 0x0

    .line 1021
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v36

    .line 1025
    move-object v0, v11

    .line 1026
    move-object/from16 v1, p1

    .line 1027
    .line 1028
    move-object v2, v12

    .line 1029
    move-object v3, v12

    .line 1030
    move-object/from16 v37, v10

    .line 1031
    .line 1032
    move-object v10, v6

    .line 1033
    move-object/from16 v6, v36

    .line 1034
    .line 1035
    invoke-direct/range {v0 .. v6}, Lq0/a;-><init>(Ld0/f;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    .line 1040
    .line 1041
    goto :goto_1b

    .line 1042
    :cond_31
    move-object/from16 v37, v10

    .line 1043
    .line 1044
    move-object v10, v6

    .line 1045
    :goto_1b
    const/4 v0, 0x0

    .line 1046
    cmpl-float v0, v35, v0

    .line 1047
    .line 1048
    if-lez v0, :cond_32

    .line 1049
    .line 1050
    goto :goto_1c

    .line 1051
    :cond_32
    iget v0, v7, Ld0/f;->l:F

    .line 1052
    .line 1053
    move/from16 v35, v0

    .line 1054
    .line 1055
    :goto_1c
    new-instance v11, Lq0/a;

    .line 1056
    .line 1057
    const/4 v4, 0x0

    .line 1058
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v6

    .line 1062
    move-object v0, v11

    .line 1063
    move-object/from16 v1, p1

    .line 1064
    .line 1065
    move-object v2, v9

    .line 1066
    move-object v3, v9

    .line 1067
    move v5, v14

    .line 1068
    invoke-direct/range {v0 .. v6}, Lq0/a;-><init>(Ld0/f;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    .line 1073
    .line 1074
    new-instance v9, Lq0/a;

    .line 1075
    .line 1076
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1077
    .line 1078
    .line 1079
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v6

    .line 1083
    move-object v0, v9

    .line 1084
    move-object v2, v12

    .line 1085
    move-object v3, v12

    .line 1086
    move/from16 v5, v35

    .line 1087
    .line 1088
    invoke-direct/range {v0 .. v6}, Lq0/a;-><init>(Ld0/f;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    .line 1093
    .line 1094
    const-string v0, ".ai"

    .line 1095
    .line 1096
    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v0

    .line 1100
    if-nez v0, :cond_33

    .line 1101
    .line 1102
    const-string v0, "ai"

    .line 1103
    .line 1104
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1105
    .line 1106
    .line 1107
    move-result v0

    .line 1108
    if-eqz v0, :cond_34

    .line 1109
    .line 1110
    :cond_33
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 1111
    .line 1112
    invoke-virtual {v7, v0}, Ld0/f;->a(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    :cond_34
    new-instance v35, Ll0/e;

    .line 1116
    .line 1117
    move-object/from16 v0, v35

    .line 1118
    .line 1119
    move-object v1, v8

    .line 1120
    move-object/from16 v2, p1

    .line 1121
    .line 1122
    move-object v3, v13

    .line 1123
    move-wide/from16 v4, v16

    .line 1124
    .line 1125
    move/from16 v6, v18

    .line 1126
    .line 1127
    move-wide/from16 v7, v19

    .line 1128
    .line 1129
    move-object/from16 v9, v21

    .line 1130
    .line 1131
    move-object/from16 v10, v37

    .line 1132
    .line 1133
    move-object/from16 v11, v22

    .line 1134
    .line 1135
    move/from16 v12, v23

    .line 1136
    .line 1137
    move/from16 v13, v24

    .line 1138
    .line 1139
    move/from16 v14, v25

    .line 1140
    .line 1141
    move-object/from16 v21, v15

    .line 1142
    .line 1143
    move/from16 v15, v26

    .line 1144
    .line 1145
    move/from16 v16, v27

    .line 1146
    .line 1147
    move/from16 v17, v28

    .line 1148
    .line 1149
    move/from16 v18, v29

    .line 1150
    .line 1151
    move-object/from16 v19, v30

    .line 1152
    .line 1153
    move-object/from16 v20, v31

    .line 1154
    .line 1155
    move/from16 v22, v32

    .line 1156
    .line 1157
    move-object/from16 v23, v33

    .line 1158
    .line 1159
    move/from16 v24, v34

    .line 1160
    .line 1161
    invoke-direct/range {v0 .. v24}, Ll0/e;-><init>(Ljava/util/List;Ld0/f;Ljava/lang/String;JIJLjava/lang/String;Ljava/util/List;Lj0/l;IIIFFIILj0/j;Lj0/k;Ljava/util/List;ILj0/b;Z)V

    .line 1162
    .line 1163
    .line 1164
    return-object v35

    .line 1165
    :pswitch_data_0
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
