.class public final Ldd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldd/b$a;
    }
.end annotation


# instance fields
.field public volatile a:Lm9/x;

.field public volatile b:I

.field public final c:Ldd/b$a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    sget-object p1, Ldd/b$a;->a:Ldd/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ldd/b;->c:Ldd/b$a;

    .line 7
    .line 8
    sget-object p1, Lm9/x;->a:Lm9/x;

    .line 9
    .line 10
    iput-object p1, p0, Ldd/b;->a:Lm9/x;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput p1, p0, Ldd/b;->b:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lwc/f;)Lrc/b0;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Ldd/b;->b:I

    .line 6
    .line 7
    iget-object v3, v0, Lwc/f;->f:Lrc/x;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-ne v2, v4, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Lwc/f;->c(Lrc/x;)Lrc/b0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v4, 0x4

    .line 18
    if-ne v2, v4, :cond_1

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-nez v4, :cond_3

    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    if-ne v2, v5, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v2, 0x0

    .line 30
    goto :goto_2

    .line 31
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 32
    :goto_2
    iget-object v5, v3, Lrc/x;->e:Lrc/a0;

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Lwc/f;->a()Lvc/i;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v8, "--> "

    .line 41
    .line 42
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v8, v3, Lrc/x;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v8, 0x20

    .line 51
    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v8, v3, Lrc/x;->b:Lrc/r;

    .line 56
    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v8, ""

    .line 61
    .line 62
    if-eqz v6, :cond_4

    .line 63
    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v10, " "

    .line 67
    .line 68
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v6, v6, Lvc/i;->e:Lrc/w;

    .line 72
    .line 73
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move-object v6, v8

    .line 85
    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const-string v7, "-byte body)"

    .line 93
    .line 94
    const-string v9, " ("

    .line 95
    .line 96
    if-nez v2, :cond_5

    .line 97
    .line 98
    if-eqz v5, :cond_5

    .line 99
    .line 100
    invoke-static {v6, v9}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v5}, Lrc/a0;->a()J

    .line 105
    .line 106
    .line 107
    move-result-wide v10

    .line 108
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    :cond_5
    iget-object v10, v1, Ldd/b;->c:Ldd/b$a;

    .line 119
    .line 120
    invoke-interface {v10, v6}, Ldd/b$a;->a(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v6, "identity"

    .line 124
    .line 125
    const-string v10, "gzip"

    .line 126
    .line 127
    const-string v11, "Content-Encoding"

    .line 128
    .line 129
    const-string v12, "-byte body omitted)"

    .line 130
    .line 131
    const-string v13, "UTF_8"

    .line 132
    .line 133
    if-eqz v2, :cond_10

    .line 134
    .line 135
    iget-object v14, v3, Lrc/x;->d:Lrc/q;

    .line 136
    .line 137
    if-eqz v5, :cond_8

    .line 138
    .line 139
    invoke-virtual {v5}, Lrc/a0;->b()Lrc/t;

    .line 140
    .line 141
    .line 142
    move-result-object v15

    .line 143
    move/from16 v16, v2

    .line 144
    .line 145
    if-eqz v15, :cond_6

    .line 146
    .line 147
    const-string v2, "Content-Type"

    .line 148
    .line 149
    invoke-virtual {v14, v2}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    if-nez v2, :cond_6

    .line 154
    .line 155
    iget-object v2, v1, Ldd/b;->c:Ldd/b$a;

    .line 156
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    move-object/from16 v17, v12

    .line 160
    .line 161
    const-string v12, "Content-Type: "

    .line 162
    .line 163
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-interface {v2, v0}, Ldd/b$a;->a(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_6
    move-object/from16 v17, v12

    .line 178
    .line 179
    :goto_4
    invoke-virtual {v5}, Lrc/a0;->a()J

    .line 180
    .line 181
    .line 182
    move-result-wide v18

    .line 183
    const-wide/16 v20, -0x1

    .line 184
    .line 185
    cmp-long v0, v18, v20

    .line 186
    .line 187
    if-eqz v0, :cond_7

    .line 188
    .line 189
    const-string v0, "Content-Length"

    .line 190
    .line 191
    invoke-virtual {v14, v0}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-nez v0, :cond_7

    .line 196
    .line 197
    iget-object v0, v1, Ldd/b;->c:Ldd/b$a;

    .line 198
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v12, "Content-Length: "

    .line 202
    .line 203
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    move-object v15, v7

    .line 207
    move-object v12, v8

    .line 208
    invoke-virtual {v5}, Lrc/a0;->a()J

    .line 209
    .line 210
    .line 211
    move-result-wide v7

    .line 212
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-interface {v0, v2}, Ldd/b$a;->a(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_7
    move-object v15, v7

    .line 224
    goto :goto_5

    .line 225
    :cond_8
    move/from16 v16, v2

    .line 226
    .line 227
    move-object v15, v7

    .line 228
    move-object/from16 v17, v12

    .line 229
    .line 230
    :goto_5
    move-object v12, v8

    .line 231
    :goto_6
    iget-object v0, v14, Lrc/q;->a:[Ljava/lang/String;

    .line 232
    .line 233
    array-length v0, v0

    .line 234
    div-int/lit8 v0, v0, 0x2

    .line 235
    .line 236
    const/4 v2, 0x0

    .line 237
    :goto_7
    if-ge v2, v0, :cond_9

    .line 238
    .line 239
    invoke-virtual {v1, v14, v2}, Ldd/b;->b(Lrc/q;I)V

    .line 240
    .line 241
    .line 242
    add-int/lit8 v2, v2, 0x1

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_9
    const-string v0, "--> END "

    .line 246
    .line 247
    if-eqz v4, :cond_f

    .line 248
    .line 249
    if-nez v5, :cond_a

    .line 250
    .line 251
    goto/16 :goto_a

    .line 252
    .line 253
    :cond_a
    iget-object v2, v3, Lrc/x;->d:Lrc/q;

    .line 254
    .line 255
    invoke-virtual {v2, v11}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    if-eqz v2, :cond_b

    .line 260
    .line 261
    invoke-static {v2, v6}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    if-nez v7, :cond_b

    .line 266
    .line 267
    invoke-static {v2, v10}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-nez v2, :cond_b

    .line 272
    .line 273
    const/4 v2, 0x1

    .line 274
    goto :goto_8

    .line 275
    :cond_b
    const/4 v2, 0x0

    .line 276
    :goto_8
    if-eqz v2, :cond_c

    .line 277
    .line 278
    iget-object v2, v1, Ldd/b;->c:Ldd/b$a;

    .line 279
    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, v3, Lrc/x;->c:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v0, " (encoded body omitted)"

    .line 291
    .line 292
    move-object v7, v5

    .line 293
    move-object v8, v15

    .line 294
    move-object/from16 v5, v17

    .line 295
    .line 296
    goto/16 :goto_b

    .line 297
    .line 298
    :cond_c
    new-instance v2, Led/e;

    .line 299
    .line 300
    invoke-direct {v2}, Led/e;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5, v2}, Lrc/a0;->c(Led/f;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5}, Lrc/a0;->b()Lrc/t;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    if-eqz v7, :cond_d

    .line 311
    .line 312
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 313
    .line 314
    invoke-virtual {v7, v8}, Lrc/t;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    if-eqz v7, :cond_d

    .line 319
    .line 320
    goto :goto_9

    .line 321
    :cond_d
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 322
    .line 323
    invoke-static {v7, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :goto_9
    iget-object v8, v1, Ldd/b;->c:Ldd/b$a;

    .line 327
    .line 328
    invoke-interface {v8, v12}, Ldd/b$a;->a(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-static {v2}, Lc5/v;->B(Led/e;)Z

    .line 332
    .line 333
    .line 334
    move-result v8

    .line 335
    if-eqz v8, :cond_e

    .line 336
    .line 337
    iget-object v8, v1, Ldd/b;->c:Ldd/b$a;

    .line 338
    .line 339
    move-object/from16 v18, v15

    .line 340
    .line 341
    iget-wide v14, v2, Led/e;->b:J

    .line 342
    .line 343
    invoke-virtual {v2, v14, v15, v7}, Led/e;->q(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    invoke-interface {v8, v2}, Ldd/b$a;->a(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iget-object v2, v1, Ldd/b;->c:Ldd/b$a;

    .line 351
    .line 352
    new-instance v7, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget-object v0, v3, Lrc/x;->c:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5}, Lrc/a0;->a()J

    .line 366
    .line 367
    .line 368
    move-result-wide v14

    .line 369
    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    move-object/from16 v8, v18

    .line 373
    .line 374
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    move-object/from16 v5, v17

    .line 378
    .line 379
    goto :goto_c

    .line 380
    :cond_e
    move-object v8, v15

    .line 381
    iget-object v2, v1, Ldd/b;->c:Ldd/b$a;

    .line 382
    .line 383
    new-instance v7, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    iget-object v0, v3, Lrc/x;->c:Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v0, " (binary "

    .line 394
    .line 395
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v5}, Lrc/a0;->a()J

    .line 399
    .line 400
    .line 401
    move-result-wide v14

    .line 402
    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    move-object/from16 v5, v17

    .line 406
    .line 407
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    goto :goto_c

    .line 411
    :cond_f
    :goto_a
    move-object v8, v15

    .line 412
    move-object/from16 v5, v17

    .line 413
    .line 414
    iget-object v2, v1, Ldd/b;->c:Ldd/b$a;

    .line 415
    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget-object v0, v3, Lrc/x;->c:Ljava/lang/String;

    .line 422
    .line 423
    :goto_b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    :goto_c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-interface {v2, v0}, Ldd/b$a;->a(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto :goto_d

    .line 434
    :cond_10
    move/from16 v16, v2

    .line 435
    .line 436
    move-object v5, v12

    .line 437
    move-object v12, v8

    .line 438
    move-object v8, v7

    .line 439
    :goto_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 440
    .line 441
    .line 442
    move-result-wide v14

    .line 443
    move-object/from16 v0, p1

    .line 444
    .line 445
    :try_start_0
    invoke-virtual {v0, v3}, Lwc/f;->c(Lrc/x;)Lrc/b0;

    .line 446
    .line 447
    .line 448
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 450
    .line 451
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 452
    .line 453
    .line 454
    move-result-wide v17

    .line 455
    sub-long v14, v17, v14

    .line 456
    .line 457
    invoke-virtual {v2, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 458
    .line 459
    .line 460
    move-result-wide v2

    .line 461
    iget-object v7, v0, Lrc/b0;->h:Lrc/d0;

    .line 462
    .line 463
    invoke-static {v7}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v7}, Lrc/d0;->a()J

    .line 467
    .line 468
    .line 469
    move-result-wide v14

    .line 470
    const-wide/16 v17, -0x1

    .line 471
    .line 472
    cmp-long v19, v14, v17

    .line 473
    .line 474
    move-object/from16 v18, v8

    .line 475
    .line 476
    if-eqz v19, :cond_11

    .line 477
    .line 478
    new-instance v8, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    move-wide/from16 v19, v14

    .line 487
    .line 488
    const-string v14, "-byte"

    .line 489
    .line 490
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v8

    .line 497
    goto :goto_e

    .line 498
    :cond_11
    move-wide/from16 v19, v14

    .line 499
    .line 500
    const-string v8, "unknown-length"

    .line 501
    .line 502
    :goto_e
    iget-object v14, v1, Ldd/b;->c:Ldd/b$a;

    .line 503
    .line 504
    new-instance v15, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    move-object/from16 v17, v5

    .line 507
    .line 508
    const-string v5, "<-- "

    .line 509
    .line 510
    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    iget v5, v0, Lrc/b0;->e:I

    .line 514
    .line 515
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    iget-object v5, v0, Lrc/b0;->d:Ljava/lang/String;

    .line 519
    .line 520
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 521
    .line 522
    .line 523
    move-result v5

    .line 524
    if-nez v5, :cond_12

    .line 525
    .line 526
    const/4 v5, 0x1

    .line 527
    goto :goto_f

    .line 528
    :cond_12
    const/4 v5, 0x0

    .line 529
    :goto_f
    if-eqz v5, :cond_13

    .line 530
    .line 531
    move-object v5, v12

    .line 532
    move-object/from16 v21, v5

    .line 533
    .line 534
    move-object/from16 v23, v13

    .line 535
    .line 536
    goto :goto_10

    .line 537
    :cond_13
    iget-object v5, v0, Lrc/b0;->d:Ljava/lang/String;

    .line 538
    .line 539
    move-object/from16 v21, v12

    .line 540
    .line 541
    new-instance v12, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .line 545
    .line 546
    const/16 v22, 0x20

    .line 547
    .line 548
    move-object/from16 v23, v13

    .line 549
    .line 550
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v13

    .line 554
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v5

    .line 564
    :goto_10
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const/16 v5, 0x20

    .line 568
    .line 569
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    iget-object v5, v0, Lrc/b0;->b:Lrc/x;

    .line 573
    .line 574
    iget-object v5, v5, Lrc/x;->b:Lrc/r;

    .line 575
    .line 576
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v2, "ms"

    .line 586
    .line 587
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    if-nez v16, :cond_14

    .line 591
    .line 592
    const-string v2, ", "

    .line 593
    .line 594
    const-string v3, " body"

    .line 595
    .line 596
    invoke-static {v2, v8, v3}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    goto :goto_11

    .line 601
    :cond_14
    move-object/from16 v2, v21

    .line 602
    .line 603
    :goto_11
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    const/16 v2, 0x29

    .line 607
    .line 608
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-interface {v14, v2}, Ldd/b$a;->a(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    if-eqz v16, :cond_1f

    .line 619
    .line 620
    iget-object v2, v0, Lrc/b0;->g:Lrc/q;

    .line 621
    .line 622
    iget-object v3, v2, Lrc/q;->a:[Ljava/lang/String;

    .line 623
    .line 624
    array-length v3, v3

    .line 625
    div-int/lit8 v3, v3, 0x2

    .line 626
    .line 627
    const/4 v5, 0x0

    .line 628
    :goto_12
    if-ge v5, v3, :cond_15

    .line 629
    .line 630
    invoke-virtual {v1, v2, v5}, Ldd/b;->b(Lrc/q;I)V

    .line 631
    .line 632
    .line 633
    add-int/lit8 v5, v5, 0x1

    .line 634
    .line 635
    goto :goto_12

    .line 636
    :cond_15
    if-eqz v4, :cond_1e

    .line 637
    .line 638
    invoke-static {v0}, Lwc/e;->a(Lrc/b0;)Z

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    if-nez v3, :cond_16

    .line 643
    .line 644
    goto/16 :goto_16

    .line 645
    .line 646
    :cond_16
    iget-object v3, v0, Lrc/b0;->g:Lrc/q;

    .line 647
    .line 648
    invoke-virtual {v3, v11}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    if-eqz v3, :cond_17

    .line 653
    .line 654
    invoke-static {v3, v6}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 655
    .line 656
    .line 657
    move-result v4

    .line 658
    if-nez v4, :cond_17

    .line 659
    .line 660
    invoke-static {v3, v10}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 661
    .line 662
    .line 663
    move-result v3

    .line 664
    if-nez v3, :cond_17

    .line 665
    .line 666
    const/4 v3, 0x1

    .line 667
    goto :goto_13

    .line 668
    :cond_17
    const/4 v3, 0x0

    .line 669
    :goto_13
    if-eqz v3, :cond_18

    .line 670
    .line 671
    iget-object v2, v1, Ldd/b;->c:Ldd/b$a;

    .line 672
    .line 673
    const-string v3, "<-- END HTTP (encoded body omitted)"

    .line 674
    .line 675
    goto/16 :goto_17

    .line 676
    .line 677
    :cond_18
    invoke-virtual {v7}, Lrc/d0;->c()Led/g;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    const-wide v4, 0x7fffffffffffffffL

    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    invoke-interface {v3, v4, v5}, Led/g;->Y(J)Z

    .line 687
    .line 688
    .line 689
    invoke-interface {v3}, Led/g;->getBuffer()Led/e;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    invoke-virtual {v2, v11}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    invoke-static {v10, v2}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 698
    .line 699
    .line 700
    move-result v2

    .line 701
    const/4 v4, 0x0

    .line 702
    if-eqz v2, :cond_19

    .line 703
    .line 704
    iget-wide v5, v3, Led/e;->b:J

    .line 705
    .line 706
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    new-instance v5, Led/p;

    .line 711
    .line 712
    invoke-virtual {v3}, Led/e;->c()Led/e;

    .line 713
    .line 714
    .line 715
    move-result-object v3

    .line 716
    invoke-direct {v5, v3}, Led/p;-><init>(Led/j0;)V

    .line 717
    .line 718
    .line 719
    :try_start_1
    new-instance v3, Led/e;

    .line 720
    .line 721
    invoke-direct {v3}, Led/e;-><init>()V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v3, v5}, Led/e;->J(Led/j0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    .line 726
    .line 727
    invoke-static {v5, v4}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 728
    .line 729
    .line 730
    move-object v4, v2

    .line 731
    goto :goto_14

    .line 732
    :catchall_0
    move-exception v0

    .line 733
    move-object v2, v0

    .line 734
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 735
    :catchall_1
    move-exception v0

    .line 736
    move-object v3, v0

    .line 737
    invoke-static {v5, v2}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 738
    .line 739
    .line 740
    throw v3

    .line 741
    :cond_19
    :goto_14
    invoke-virtual {v7}, Lrc/d0;->b()Lrc/t;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    if-eqz v2, :cond_1a

    .line 746
    .line 747
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 748
    .line 749
    invoke-virtual {v2, v5}, Lrc/t;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    if-eqz v2, :cond_1a

    .line 754
    .line 755
    goto :goto_15

    .line 756
    :cond_1a
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 757
    .line 758
    move-object/from16 v5, v23

    .line 759
    .line 760
    invoke-static {v2, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    :goto_15
    invoke-static {v3}, Lc5/v;->B(Led/e;)Z

    .line 764
    .line 765
    .line 766
    move-result v5

    .line 767
    if-nez v5, :cond_1b

    .line 768
    .line 769
    iget-object v2, v1, Ldd/b;->c:Ldd/b$a;

    .line 770
    .line 771
    move-object/from16 v5, v21

    .line 772
    .line 773
    invoke-interface {v2, v5}, Ldd/b$a;->a(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    iget-object v2, v1, Ldd/b;->c:Ldd/b$a;

    .line 777
    .line 778
    new-instance v4, Ljava/lang/StringBuilder;

    .line 779
    .line 780
    const-string v5, "<-- END HTTP (binary "

    .line 781
    .line 782
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    iget-wide v5, v3, Led/e;->b:J

    .line 786
    .line 787
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    move-object/from16 v3, v17

    .line 791
    .line 792
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v3

    .line 799
    invoke-interface {v2, v3}, Ldd/b$a;->a(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    return-object v0

    .line 803
    :cond_1b
    move-object/from16 v5, v21

    .line 804
    .line 805
    const-wide/16 v6, 0x0

    .line 806
    .line 807
    cmp-long v8, v19, v6

    .line 808
    .line 809
    if-eqz v8, :cond_1c

    .line 810
    .line 811
    iget-object v6, v1, Ldd/b;->c:Ldd/b$a;

    .line 812
    .line 813
    invoke-interface {v6, v5}, Ldd/b$a;->a(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    iget-object v5, v1, Ldd/b;->c:Ldd/b$a;

    .line 817
    .line 818
    invoke-virtual {v3}, Led/e;->c()Led/e;

    .line 819
    .line 820
    .line 821
    move-result-object v6

    .line 822
    iget-wide v7, v6, Led/e;->b:J

    .line 823
    .line 824
    invoke-virtual {v6, v7, v8, v2}, Led/e;->q(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    invoke-interface {v5, v2}, Ldd/b$a;->a(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    :cond_1c
    iget-object v2, v1, Ldd/b;->c:Ldd/b$a;

    .line 832
    .line 833
    const-string v5, "<-- END HTTP ("

    .line 834
    .line 835
    if-eqz v4, :cond_1d

    .line 836
    .line 837
    new-instance v6, Ljava/lang/StringBuilder;

    .line 838
    .line 839
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    iget-wide v7, v3, Led/e;->b:J

    .line 843
    .line 844
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    const-string v3, "-byte, "

    .line 848
    .line 849
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    const-string v3, "-gzipped-byte body)"

    .line 856
    .line 857
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v3

    .line 864
    goto :goto_17

    .line 865
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 866
    .line 867
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    iget-wide v5, v3, Led/e;->b:J

    .line 871
    .line 872
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    move-object/from16 v3, v18

    .line 876
    .line 877
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    goto :goto_17

    .line 885
    :cond_1e
    :goto_16
    iget-object v2, v1, Ldd/b;->c:Ldd/b$a;

    .line 886
    .line 887
    const-string v3, "<-- END HTTP"

    .line 888
    .line 889
    :goto_17
    invoke-interface {v2, v3}, Ldd/b$a;->a(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    :cond_1f
    return-object v0

    .line 893
    :catch_0
    move-exception v0

    .line 894
    move-object v2, v0

    .line 895
    iget-object v0, v1, Ldd/b;->c:Ldd/b$a;

    .line 896
    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    .line 898
    .line 899
    const-string v4, "<-- HTTP FAILED: "

    .line 900
    .line 901
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v3

    .line 911
    invoke-interface {v0, v3}, Ldd/b$a;->a(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    throw v2
.end method

.method public final b(Lrc/q;I)V
    .locals 3

    iget-object v0, p0, Ldd/b;->a:Lm9/x;

    invoke-virtual {p1, p2}, Lrc/q;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm9/x;->contains(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2}, Lrc/q;->w(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldd/b;->c:Ldd/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lrc/q;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ldd/b$a;->a(Ljava/lang/String;)V

    return-void
.end method
