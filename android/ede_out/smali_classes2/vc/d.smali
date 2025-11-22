.class public final Lvc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lvc/m$a;

.field public b:Lvc/m;

.field public c:I

.field public d:I

.field public e:I

.field public f:Lrc/e0;

.field public final g:Lvc/k;

.field public final h:Lrc/a;

.field public final i:Lvc/e;

.field public final j:Lrc/n;


# direct methods
.method public constructor <init>(Lvc/k;Lrc/a;Lvc/e;Lrc/n;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvc/d;->g:Lvc/k;

    iput-object p2, p0, Lvc/d;->h:Lrc/a;

    iput-object p3, p0, Lvc/d;->i:Lvc/e;

    iput-object p4, p0, Lvc/d;->j:Lrc/n;

    return-void
.end method


# virtual methods
.method public final a(IIIZZ)Lvc/i;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    :goto_0
    iget-object v0, v1, Lvc/d;->i:Lvc/e;

    .line 3
    .line 4
    iget-boolean v0, v0, Lvc/e;->n:Z

    .line 5
    .line 6
    if-nez v0, :cond_16

    .line 7
    .line 8
    iget-object v0, v1, Lvc/d;->i:Lvc/e;

    .line 9
    .line 10
    iget-object v2, v0, Lvc/e;->g:Lvc/i;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v2, :cond_6

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-boolean v5, v2, Lvc/i;->i:Z

    .line 19
    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    iget-object v5, v2, Lvc/i;->q:Lrc/e0;

    .line 23
    .line 24
    iget-object v5, v5, Lrc/e0;->a:Lrc/a;

    .line 25
    .line 26
    iget-object v5, v5, Lrc/a;->a:Lrc/r;

    .line 27
    .line 28
    invoke-virtual {p0, v5}, Lvc/d;->b(Lrc/r;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move-object v5, v4

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_1
    iget-object v5, v1, Lvc/d;->i:Lvc/e;

    .line 38
    .line 39
    invoke-virtual {v5}, Lvc/e;->i()Ljava/net/Socket;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    :goto_2
    sget-object v6, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    monitor-exit v2

    .line 46
    iget-object v6, v1, Lvc/d;->i:Lvc/e;

    .line 47
    .line 48
    iget-object v6, v6, Lvc/e;->g:Lvc/i;

    .line 49
    .line 50
    if-eqz v6, :cond_4

    .line 51
    .line 52
    if-nez v5, :cond_2

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    :cond_2
    if-eqz v3, :cond_3

    .line 56
    .line 57
    goto/16 :goto_8

    .line 58
    .line 59
    :cond_3
    const-string v0, "Check failed."

    .line 60
    .line 61
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v2

    .line 71
    :cond_4
    if-eqz v5, :cond_5

    .line 72
    .line 73
    invoke-static {v5}, Lsc/c;->d(Ljava/net/Socket;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    iget-object v2, v1, Lvc/d;->j:Lrc/n;

    .line 77
    .line 78
    iget-object v5, v1, Lvc/d;->i:Lvc/e;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const-string v2, "call"

    .line 84
    .line 85
    invoke-static {v5, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    monitor-exit v2

    .line 91
    throw v0

    .line 92
    :cond_6
    :goto_3
    iput v3, v1, Lvc/d;->c:I

    .line 93
    .line 94
    iput v3, v1, Lvc/d;->d:I

    .line 95
    .line 96
    iput v3, v1, Lvc/d;->e:I

    .line 97
    .line 98
    iget-object v2, v1, Lvc/d;->g:Lvc/k;

    .line 99
    .line 100
    iget-object v5, v1, Lvc/d;->h:Lrc/a;

    .line 101
    .line 102
    iget-object v6, v1, Lvc/d;->i:Lvc/e;

    .line 103
    .line 104
    invoke-virtual {v2, v5, v6, v4, v3}, Lvc/k;->a(Lrc/a;Lvc/e;Ljava/util/List;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_7

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_7
    iget-object v2, v1, Lvc/d;->f:Lrc/e0;

    .line 112
    .line 113
    if-eqz v2, :cond_8

    .line 114
    .line 115
    iput-object v4, v1, Lvc/d;->f:Lrc/e0;

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_8
    iget-object v2, v1, Lvc/d;->a:Lvc/m$a;

    .line 119
    .line 120
    if-eqz v2, :cond_a

    .line 121
    .line 122
    invoke-virtual {v2}, Lvc/m$a;->a()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_a

    .line 127
    .line 128
    iget-object v2, v1, Lvc/d;->a:Lvc/m$a;

    .line 129
    .line 130
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Lvc/m$a;->a()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_9

    .line 138
    .line 139
    iget v3, v2, Lvc/m$a;->a:I

    .line 140
    .line 141
    add-int/lit8 v5, v3, 0x1

    .line 142
    .line 143
    iput v5, v2, Lvc/m$a;->a:I

    .line 144
    .line 145
    iget-object v2, v2, Lvc/m$a;->b:Ljava/util/List;

    .line 146
    .line 147
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Lrc/e0;

    .line 152
    .line 153
    :goto_4
    move-object v5, v4

    .line 154
    goto :goto_6

    .line 155
    :cond_9
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 156
    .line 157
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_a
    iget-object v2, v1, Lvc/d;->b:Lvc/m;

    .line 162
    .line 163
    if-nez v2, :cond_b

    .line 164
    .line 165
    new-instance v2, Lvc/m;

    .line 166
    .line 167
    iget-object v5, v1, Lvc/d;->h:Lrc/a;

    .line 168
    .line 169
    iget-object v6, v1, Lvc/d;->i:Lvc/e;

    .line 170
    .line 171
    iget-object v7, v6, Lvc/e;->r:Lrc/v;

    .line 172
    .line 173
    iget-object v7, v7, Lrc/v;->B:Lcom/airbnb/epoxy/a;

    .line 174
    .line 175
    iget-object v8, v1, Lvc/d;->j:Lrc/n;

    .line 176
    .line 177
    invoke-direct {v2, v5, v7, v6, v8}, Lvc/m;-><init>(Lrc/a;Lcom/airbnb/epoxy/a;Lvc/e;Lrc/n;)V

    .line 178
    .line 179
    .line 180
    iput-object v2, v1, Lvc/d;->b:Lvc/m;

    .line 181
    .line 182
    :cond_b
    invoke-virtual {v2}, Lvc/m;->b()Lvc/m$a;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iput-object v2, v1, Lvc/d;->a:Lvc/m$a;

    .line 187
    .line 188
    iget-object v5, v2, Lvc/m$a;->b:Ljava/util/List;

    .line 189
    .line 190
    iget-object v6, v1, Lvc/d;->i:Lvc/e;

    .line 191
    .line 192
    iget-boolean v6, v6, Lvc/e;->n:Z

    .line 193
    .line 194
    if-nez v6, :cond_15

    .line 195
    .line 196
    iget-object v6, v1, Lvc/d;->g:Lvc/k;

    .line 197
    .line 198
    iget-object v7, v1, Lvc/d;->h:Lrc/a;

    .line 199
    .line 200
    iget-object v8, v1, Lvc/d;->i:Lvc/e;

    .line 201
    .line 202
    invoke-virtual {v6, v7, v8, v5, v3}, Lvc/k;->a(Lrc/a;Lvc/e;Ljava/util/List;Z)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_c

    .line 207
    .line 208
    :goto_5
    iget-object v2, v1, Lvc/d;->i:Lvc/e;

    .line 209
    .line 210
    iget-object v2, v2, Lvc/e;->g:Lvc/i;

    .line 211
    .line 212
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_c
    invoke-virtual {v2}, Lvc/m$a;->a()Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_14

    .line 221
    .line 222
    iget v3, v2, Lvc/m$a;->a:I

    .line 223
    .line 224
    add-int/lit8 v6, v3, 0x1

    .line 225
    .line 226
    iput v6, v2, Lvc/m$a;->a:I

    .line 227
    .line 228
    iget-object v2, v2, Lvc/m$a;->b:Ljava/util/List;

    .line 229
    .line 230
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Lrc/e0;

    .line 235
    .line 236
    :goto_6
    new-instance v3, Lvc/i;

    .line 237
    .line 238
    iget-object v6, v1, Lvc/d;->g:Lvc/k;

    .line 239
    .line 240
    invoke-direct {v3, v6, v2}, Lvc/i;-><init>(Lvc/k;Lrc/e0;)V

    .line 241
    .line 242
    .line 243
    iget-object v6, v1, Lvc/d;->i:Lvc/e;

    .line 244
    .line 245
    iput-object v3, v6, Lvc/e;->q:Lvc/i;

    .line 246
    .line 247
    :try_start_1
    iget-object v11, v1, Lvc/d;->i:Lvc/e;

    .line 248
    .line 249
    iget-object v12, v1, Lvc/d;->j:Lrc/n;

    .line 250
    .line 251
    move-object v6, v3

    .line 252
    move v7, p1

    .line 253
    move v8, p2

    .line 254
    move/from16 v9, p3

    .line 255
    .line 256
    move/from16 v10, p4

    .line 257
    .line 258
    invoke-virtual/range {v6 .. v12}, Lvc/i;->c(IIIZLvc/e;Lrc/n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 259
    .line 260
    .line 261
    iget-object v6, v1, Lvc/d;->i:Lvc/e;

    .line 262
    .line 263
    iput-object v4, v6, Lvc/e;->q:Lvc/i;

    .line 264
    .line 265
    iget-object v4, v1, Lvc/d;->i:Lvc/e;

    .line 266
    .line 267
    iget-object v4, v4, Lvc/e;->r:Lrc/v;

    .line 268
    .line 269
    iget-object v4, v4, Lrc/v;->B:Lcom/airbnb/epoxy/a;

    .line 270
    .line 271
    iget-object v6, v3, Lvc/i;->q:Lrc/e0;

    .line 272
    .line 273
    invoke-virtual {v4, v6}, Lcom/airbnb/epoxy/a;->b(Lrc/e0;)V

    .line 274
    .line 275
    .line 276
    iget-object v4, v1, Lvc/d;->g:Lvc/k;

    .line 277
    .line 278
    iget-object v6, v1, Lvc/d;->h:Lrc/a;

    .line 279
    .line 280
    iget-object v7, v1, Lvc/d;->i:Lvc/e;

    .line 281
    .line 282
    invoke-virtual {v4, v6, v7, v5, v0}, Lvc/k;->a(Lrc/a;Lvc/e;Ljava/util/List;Z)Z

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    if-eqz v4, :cond_d

    .line 287
    .line 288
    iget-object v4, v1, Lvc/d;->i:Lvc/e;

    .line 289
    .line 290
    iget-object v4, v4, Lvc/e;->g:Lvc/i;

    .line 291
    .line 292
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    iput-object v2, v1, Lvc/d;->f:Lrc/e0;

    .line 296
    .line 297
    iget-object v2, v3, Lvc/i;->c:Ljava/net/Socket;

    .line 298
    .line 299
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    invoke-static {v2}, Lsc/c;->d(Ljava/net/Socket;)V

    .line 303
    .line 304
    .line 305
    move-object v2, v4

    .line 306
    :goto_7
    iget-object v3, v1, Lvc/d;->j:Lrc/n;

    .line 307
    .line 308
    iget-object v4, v1, Lvc/d;->i:Lvc/e;

    .line 309
    .line 310
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    const-string v3, "call"

    .line 314
    .line 315
    invoke-static {v4, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    :goto_8
    move/from16 v3, p5

    .line 319
    .line 320
    goto :goto_9

    .line 321
    :cond_d
    monitor-enter v3

    .line 322
    :try_start_2
    iget-object v2, v1, Lvc/d;->g:Lvc/k;

    .line 323
    .line 324
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    sget-object v4, Lsc/c;->a:[B

    .line 328
    .line 329
    iget-object v4, v2, Lvc/k;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 330
    .line 331
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    iget-object v4, v2, Lvc/k;->b:Luc/c;

    .line 335
    .line 336
    iget-object v2, v2, Lvc/k;->c:Lvc/j;

    .line 337
    .line 338
    const-wide/16 v5, 0x0

    .line 339
    .line 340
    invoke-virtual {v4, v2, v5, v6}, Luc/c;->c(Luc/a;J)V

    .line 341
    .line 342
    .line 343
    iget-object v2, v1, Lvc/d;->i:Lvc/e;

    .line 344
    .line 345
    invoke-virtual {v2, v3}, Lvc/e;->c(Lvc/i;)V

    .line 346
    .line 347
    .line 348
    sget-object v2, Ll9/m;->a:Ll9/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    .line 350
    monitor-exit v3

    .line 351
    iget-object v2, v1, Lvc/d;->j:Lrc/n;

    .line 352
    .line 353
    iget-object v4, v1, Lvc/d;->i:Lvc/e;

    .line 354
    .line 355
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    const-string v2, "call"

    .line 359
    .line 360
    invoke-static {v4, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    move-object v2, v3

    .line 364
    goto :goto_8

    .line 365
    :goto_9
    invoke-virtual {v2, v3}, Lvc/i;->j(Z)Z

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    if-eqz v4, :cond_e

    .line 370
    .line 371
    return-object v2

    .line 372
    :cond_e
    invoke-virtual {v2}, Lvc/i;->l()V

    .line 373
    .line 374
    .line 375
    iget-object v2, v1, Lvc/d;->f:Lrc/e0;

    .line 376
    .line 377
    if-eqz v2, :cond_f

    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :cond_f
    iget-object v2, v1, Lvc/d;->a:Lvc/m$a;

    .line 382
    .line 383
    if-eqz v2, :cond_10

    .line 384
    .line 385
    invoke-virtual {v2}, Lvc/m$a;->a()Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    goto :goto_a

    .line 390
    :cond_10
    const/4 v2, 0x1

    .line 391
    :goto_a
    if-eqz v2, :cond_11

    .line 392
    .line 393
    goto/16 :goto_0

    .line 394
    .line 395
    :cond_11
    iget-object v2, v1, Lvc/d;->b:Lvc/m;

    .line 396
    .line 397
    if-eqz v2, :cond_12

    .line 398
    .line 399
    invoke-virtual {v2}, Lvc/m;->a()Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    :cond_12
    if-eqz v0, :cond_13

    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 408
    .line 409
    const-string v2, "exhausted all routes"

    .line 410
    .line 411
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    throw v0

    .line 415
    :catchall_1
    move-exception v0

    .line 416
    monitor-exit v3

    .line 417
    throw v0

    .line 418
    :catchall_2
    move-exception v0

    .line 419
    iget-object v2, v1, Lvc/d;->i:Lvc/e;

    .line 420
    .line 421
    iput-object v4, v2, Lvc/e;->q:Lvc/i;

    .line 422
    .line 423
    throw v0

    .line 424
    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 425
    .line 426
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 427
    .line 428
    .line 429
    throw v0

    .line 430
    :cond_15
    new-instance v0, Ljava/io/IOException;

    .line 431
    .line 432
    const-string v2, "Canceled"

    .line 433
    .line 434
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    throw v0

    .line 438
    :cond_16
    new-instance v0, Ljava/io/IOException;

    .line 439
    .line 440
    const-string v2, "Canceled"

    .line 441
    .line 442
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v0
.end method

.method public final b(Lrc/r;)Z
    .locals 3

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lvc/d;->h:Lrc/a;

    .line 7
    .line 8
    iget-object v0, v0, Lrc/a;->a:Lrc/r;

    .line 9
    .line 10
    iget v1, v0, Lrc/r;->f:I

    .line 11
    .line 12
    iget v2, p1, Lrc/r;->f:I

    .line 13
    .line 14
    if-ne v2, v1, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lrc/r;->e:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, v0, Lrc/r;->e:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    return p1
.end method

.method public final c(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lvc/d;->f:Lrc/e0;

    instance-of v0, p1, Lyc/w;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyc/w;

    sget-object v1, Lyc/b;->f:Lyc/b;

    iget-object v0, v0, Lyc/w;->a:Lyc/b;

    if-ne v0, v1, :cond_0

    iget p1, p0, Lvc/d;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lvc/d;->c:I

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lyc/a;

    if-eqz p1, :cond_1

    iget p1, p0, Lvc/d;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lvc/d;->d:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lvc/d;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lvc/d;->e:I

    :goto_0
    return-void
.end method
