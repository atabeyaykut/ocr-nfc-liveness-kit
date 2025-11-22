.class public final Lc5/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lc5/k;->a:I

    iput-object p2, p0, Lc5/k;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc5/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lc5/k;->a:I

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_c

    .line 11
    .line 12
    :pswitch_0
    iget-object v0, v1, Lc5/k;->b:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v0, v1, Lc5/k;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    iget-object v3, v1, Lc5/k;->c:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v4, v3

    .line 25
    check-cast v4, Lc5/v5;

    .line 26
    .line 27
    iget-object v4, v4, Lc5/x4;->a:Lc5/z4;

    .line 28
    .line 29
    check-cast v4, Lc5/i4;

    .line 30
    .line 31
    iget-object v4, v4, Lc5/i4;->g:Lc5/e;

    .line 32
    .line 33
    check-cast v3, Lc5/v5;

    .line 34
    .line 35
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 36
    .line 37
    check-cast v3, Lc5/i4;

    .line 38
    .line 39
    invoke-virtual {v3}, Lc5/i4;->o()Lc5/w2;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lc5/w2;->h()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    sget-object v6, Lc5/r2;->O:Lc5/q2;

    .line 48
    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v4, v4, Lc5/e;->c:Lc5/d;

    .line 56
    .line 57
    iget-object v7, v6, Lc5/q2;->a:Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {v4, v3, v7}, Lc5/d;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    :try_start_1
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v6, v3}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/lang/Double;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 85
    .line 86
    .line 87
    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    :goto_0
    :try_start_2
    invoke-virtual {v6, v5}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Ljava/lang/Double;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .line 105
    .line 106
    :try_start_3
    iget-object v0, v1, Lc5/k;->b:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 111
    .line 112
    .line 113
    monitor-exit v2

    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    iget-object v3, v1, Lc5/k;->b:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    throw v0

    .line 127
    :pswitch_1
    const-string v0, "creation_timestamp"

    .line 128
    .line 129
    const-string v2, "app_id"

    .line 130
    .line 131
    iget-object v3, v1, Lc5/k;->c:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v3, Lc5/v5;

    .line 134
    .line 135
    iget-object v4, v1, Lc5/k;->b:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v4, Landroid/os/Bundle;

    .line 138
    .line 139
    invoke-virtual {v3}, Lc5/t2;->b()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Lc5/r3;->c()V

    .line 143
    .line 144
    .line 145
    invoke-static {v4}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    const-string v5, "name"

    .line 149
    .line 150
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    invoke-static {v10}, Lr3/r;->f(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 158
    .line 159
    move-object v5, v3

    .line 160
    check-cast v5, Lc5/i4;

    .line 161
    .line 162
    invoke-virtual {v5}, Lc5/i4;->a()Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-nez v6, :cond_2

    .line 167
    .line 168
    iget-object v0, v5, Lc5/i4;->j:Lc5/e3;

    .line 169
    .line 170
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 171
    .line 172
    .line 173
    const-string v2, "Conditional property not cleared since app measurement is disabled"

    .line 174
    .line 175
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_2
    new-instance v12, Lc5/r7;

    .line 182
    .line 183
    const-wide/16 v7, 0x0

    .line 184
    .line 185
    const/4 v9, 0x0

    .line 186
    const-string v11, ""

    .line 187
    .line 188
    move-object v6, v12

    .line 189
    invoke-direct/range {v6 .. v11}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :try_start_4
    check-cast v3, Lc5/i4;

    .line 193
    .line 194
    iget-object v13, v3, Lc5/i4;->m:Lc5/v7;

    .line 195
    .line 196
    invoke-static {v13}, Lc5/i4;->c(Lc5/y4;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v14

    .line 203
    const-string v3, "expired_event_name"

    .line 204
    .line 205
    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    const-string v3, "expired_event_params"

    .line 210
    .line 211
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 212
    .line 213
    .line 214
    move-result-object v16

    .line 215
    const-string v17, ""

    .line 216
    .line 217
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v18

    .line 221
    const/16 v20, 0x1

    .line 222
    .line 223
    invoke-virtual/range {v13 .. v20}, Lc5/v7;->p0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lc5/s;

    .line 224
    .line 225
    .line 226
    move-result-object v20
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    .line 227
    new-instance v3, Lc5/b;

    .line 228
    .line 229
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    const-string v8, ""

    .line 234
    .line 235
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 236
    .line 237
    .line 238
    move-result-wide v10

    .line 239
    const-string v0, "active"

    .line 240
    .line 241
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    const-string v2, "trigger_event_name"

    .line 246
    .line 247
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    const/4 v14, 0x0

    .line 252
    const-string v2, "trigger_timeout"

    .line 253
    .line 254
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 255
    .line 256
    .line 257
    move-result-wide v15

    .line 258
    const/16 v17, 0x0

    .line 259
    .line 260
    const-string v2, "time_to_live"

    .line 261
    .line 262
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 263
    .line 264
    .line 265
    move-result-wide v18

    .line 266
    move-object v6, v3

    .line 267
    move-object v9, v12

    .line 268
    move v12, v0

    .line 269
    invoke-direct/range {v6 .. v20}, Lc5/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lc5/r7;JZLjava/lang/String;Lc5/s;JLc5/s;JLc5/s;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5}, Lc5/i4;->s()Lc5/t6;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0, v3}, Lc5/t6;->h(Lc5/b;)V

    .line 277
    .line 278
    .line 279
    :catch_1
    :goto_2
    return-void

    .line 280
    :pswitch_2
    iget-object v0, v1, Lc5/k;->c:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v0, Lc5/i4;

    .line 283
    .line 284
    iget-object v7, v1, Lc5/k;->b:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v7, Lc5/c5;

    .line 287
    .line 288
    iget-object v8, v0, Lc5/i4;->k:Lc5/h4;

    .line 289
    .line 290
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8}, Lc5/h4;->b()V

    .line 294
    .line 295
    .line 296
    iget-object v8, v0, Lc5/i4;->g:Lc5/e;

    .line 297
    .line 298
    iget-object v9, v8, Lc5/x4;->a:Lc5/z4;

    .line 299
    .line 300
    check-cast v9, Lc5/i4;

    .line 301
    .line 302
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    new-instance v9, Lc5/m;

    .line 306
    .line 307
    invoke-direct {v9, v0}, Lc5/m;-><init>(Lc5/i4;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v9}, Lc5/y4;->e()V

    .line 311
    .line 312
    .line 313
    iput-object v9, v0, Lc5/i4;->y:Lc5/m;

    .line 314
    .line 315
    new-instance v9, Lc5/w2;

    .line 316
    .line 317
    iget-wide v10, v7, Lc5/c5;->f:J

    .line 318
    .line 319
    invoke-direct {v9, v0, v10, v11}, Lc5/w2;-><init>(Lc5/i4;J)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v9}, Lc5/r3;->d()V

    .line 323
    .line 324
    .line 325
    iput-object v9, v0, Lc5/i4;->z:Lc5/w2;

    .line 326
    .line 327
    new-instance v10, Lc5/y2;

    .line 328
    .line 329
    invoke-direct {v10, v0}, Lc5/y2;-><init>(Lc5/i4;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v10}, Lc5/r3;->d()V

    .line 333
    .line 334
    .line 335
    iput-object v10, v0, Lc5/i4;->w:Lc5/y2;

    .line 336
    .line 337
    new-instance v10, Lc5/t6;

    .line 338
    .line 339
    invoke-direct {v10, v0}, Lc5/t6;-><init>(Lc5/i4;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v10}, Lc5/r3;->d()V

    .line 343
    .line 344
    .line 345
    iput-object v10, v0, Lc5/i4;->x:Lc5/t6;

    .line 346
    .line 347
    iget-object v10, v0, Lc5/i4;->m:Lc5/v7;

    .line 348
    .line 349
    iget-boolean v11, v10, Lc5/y4;->b:Z

    .line 350
    .line 351
    if-nez v11, :cond_22

    .line 352
    .line 353
    invoke-virtual {v10}, Lc5/v7;->L()V

    .line 354
    .line 355
    .line 356
    iget-object v11, v10, Lc5/x4;->a:Lc5/z4;

    .line 357
    .line 358
    check-cast v11, Lc5/i4;

    .line 359
    .line 360
    iget-object v11, v11, Lc5/i4;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 361
    .line 362
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 363
    .line 364
    .line 365
    iput-boolean v6, v10, Lc5/y4;->b:Z

    .line 366
    .line 367
    iget-object v11, v0, Lc5/i4;->h:Lc5/s3;

    .line 368
    .line 369
    iget-boolean v12, v11, Lc5/y4;->b:Z

    .line 370
    .line 371
    if-nez v12, :cond_21

    .line 372
    .line 373
    invoke-virtual {v11}, Lc5/s3;->h()V

    .line 374
    .line 375
    .line 376
    iget-object v12, v11, Lc5/x4;->a:Lc5/z4;

    .line 377
    .line 378
    check-cast v12, Lc5/i4;

    .line 379
    .line 380
    iget-object v12, v12, Lc5/i4;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 381
    .line 382
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 383
    .line 384
    .line 385
    iput-boolean v6, v11, Lc5/y4;->b:Z

    .line 386
    .line 387
    iget-object v11, v0, Lc5/i4;->z:Lc5/w2;

    .line 388
    .line 389
    iget-boolean v12, v11, Lc5/r3;->b:Z

    .line 390
    .line 391
    if-nez v12, :cond_20

    .line 392
    .line 393
    invoke-virtual {v11}, Lc5/w2;->g()V

    .line 394
    .line 395
    .line 396
    iget-object v12, v11, Lc5/x4;->a:Lc5/z4;

    .line 397
    .line 398
    check-cast v12, Lc5/i4;

    .line 399
    .line 400
    iget-object v12, v12, Lc5/i4;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 401
    .line 402
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 403
    .line 404
    .line 405
    iput-boolean v6, v11, Lc5/r3;->b:Z

    .line 406
    .line 407
    iget-object v11, v0, Lc5/i4;->j:Lc5/e3;

    .line 408
    .line 409
    invoke-static {v11}, Lc5/i4;->e(Lc5/y4;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v8}, Lc5/e;->g()V

    .line 413
    .line 414
    .line 415
    const-wide/32 v12, 0xb3b0

    .line 416
    .line 417
    .line 418
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 419
    .line 420
    .line 421
    move-result-object v8

    .line 422
    const-string v12, "App measurement initialized, version"

    .line 423
    .line 424
    iget-object v13, v11, Lc5/e3;->m:Lc5/c3;

    .line 425
    .line 426
    invoke-virtual {v13, v8, v12}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-static {v11}, Lc5/i4;->e(Lc5/y4;)V

    .line 430
    .line 431
    .line 432
    const-string v8, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    .line 433
    .line 434
    invoke-virtual {v13, v8}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v9}, Lc5/w2;->h()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v8

    .line 441
    iget-object v9, v0, Lc5/i4;->b:Ljava/lang/String;

    .line 442
    .line 443
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 444
    .line 445
    .line 446
    move-result v9

    .line 447
    if-eqz v9, :cond_5

    .line 448
    .line 449
    invoke-virtual {v10, v8}, Lc5/v7;->P(Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    if-eqz v9, :cond_3

    .line 454
    .line 455
    invoke-static {v11}, Lc5/i4;->e(Lc5/y4;)V

    .line 456
    .line 457
    .line 458
    const-string v8, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    .line 459
    .line 460
    goto :goto_3

    .line 461
    :cond_3
    invoke-static {v11}, Lc5/i4;->e(Lc5/y4;)V

    .line 462
    .line 463
    .line 464
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v8

    .line 468
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 469
    .line 470
    .line 471
    move-result v9

    .line 472
    const-string v10, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    .line 473
    .line 474
    if-eqz v9, :cond_4

    .line 475
    .line 476
    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v8

    .line 480
    goto :goto_3

    .line 481
    :cond_4
    new-instance v8, Ljava/lang/String;

    .line 482
    .line 483
    invoke-direct {v8, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    :goto_3
    invoke-virtual {v13, v8}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    :cond_5
    invoke-static {v11}, Lc5/i4;->e(Lc5/y4;)V

    .line 490
    .line 491
    .line 492
    const-string v8, "Debug-level message logging enabled"

    .line 493
    .line 494
    iget-object v9, v11, Lc5/e3;->n:Lc5/c3;

    .line 495
    .line 496
    invoke-virtual {v9, v8}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    iget v8, v0, Lc5/i4;->H:I

    .line 500
    .line 501
    iget-object v9, v0, Lc5/i4;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 502
    .line 503
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 504
    .line 505
    .line 506
    move-result v10

    .line 507
    if-eq v8, v10, :cond_6

    .line 508
    .line 509
    invoke-static {v11}, Lc5/i4;->e(Lc5/y4;)V

    .line 510
    .line 511
    .line 512
    iget v8, v0, Lc5/i4;->H:I

    .line 513
    .line 514
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 515
    .line 516
    .line 517
    move-result-object v8

    .line 518
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 519
    .line 520
    .line 521
    move-result v9

    .line 522
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 523
    .line 524
    .line 525
    move-result-object v9

    .line 526
    iget-object v10, v11, Lc5/e3;->f:Lc5/c3;

    .line 527
    .line 528
    const-string v11, "Not all components initialized"

    .line 529
    .line 530
    invoke-virtual {v10, v8, v11, v9}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    :cond_6
    iput-boolean v6, v0, Lc5/i4;->A:Z

    .line 534
    .line 535
    iget-object v7, v7, Lc5/c5;->g:Lcom/google/android/gms/internal/measurement/e1;

    .line 536
    .line 537
    iget-object v8, v0, Lc5/i4;->k:Lc5/h4;

    .line 538
    .line 539
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v8}, Lc5/h4;->b()V

    .line 543
    .line 544
    .line 545
    iget-object v8, v0, Lc5/i4;->h:Lc5/s3;

    .line 546
    .line 547
    invoke-static {v8}, Lc5/i4;->c(Lc5/y4;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v8}, Lc5/s3;->n()Lc5/f;

    .line 551
    .line 552
    .line 553
    move-result-object v9

    .line 554
    invoke-virtual {v8}, Lc5/x4;->b()V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v8}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 558
    .line 559
    .line 560
    move-result-object v10

    .line 561
    const-string v11, "consent_source"

    .line 562
    .line 563
    const/16 v12, 0x64

    .line 564
    .line 565
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 566
    .line 567
    .line 568
    move-result v10

    .line 569
    iget-object v11, v0, Lc5/i4;->g:Lc5/e;

    .line 570
    .line 571
    iget-object v13, v11, Lc5/x4;->a:Lc5/z4;

    .line 572
    .line 573
    const-string v13, "google_analytics_default_allow_ad_storage"

    .line 574
    .line 575
    invoke-virtual {v11, v13}, Lc5/e;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 576
    .line 577
    .line 578
    move-result-object v13

    .line 579
    const-string v14, "google_analytics_default_allow_analytics_storage"

    .line 580
    .line 581
    invoke-virtual {v11, v14}, Lc5/e;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 582
    .line 583
    .line 584
    move-result-object v14

    .line 585
    iget-wide v2, v0, Lc5/i4;->K:J

    .line 586
    .line 587
    iget-object v4, v0, Lc5/i4;->r:Lc5/v5;

    .line 588
    .line 589
    const/16 v12, -0xa

    .line 590
    .line 591
    if-nez v13, :cond_7

    .line 592
    .line 593
    if-eqz v14, :cond_8

    .line 594
    .line 595
    :cond_7
    invoke-virtual {v8, v12}, Lc5/s3;->s(I)Z

    .line 596
    .line 597
    .line 598
    move-result v19

    .line 599
    if-eqz v19, :cond_8

    .line 600
    .line 601
    new-instance v7, Lc5/f;

    .line 602
    .line 603
    invoke-direct {v7, v13, v14}, Lc5/f;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 604
    .line 605
    .line 606
    goto :goto_5

    .line 607
    :cond_8
    invoke-virtual {v0}, Lc5/i4;->o()Lc5/w2;

    .line 608
    .line 609
    .line 610
    move-result-object v13

    .line 611
    invoke-virtual {v13}, Lc5/w2;->n()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v13

    .line 615
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 616
    .line 617
    .line 618
    move-result v13

    .line 619
    sget-object v14, Lc5/f;->c:Lc5/f;

    .line 620
    .line 621
    const/16 v15, 0x1e

    .line 622
    .line 623
    if-nez v13, :cond_a

    .line 624
    .line 625
    if-eqz v10, :cond_9

    .line 626
    .line 627
    if-eq v10, v15, :cond_9

    .line 628
    .line 629
    const/16 v13, 0xa

    .line 630
    .line 631
    if-eq v10, v13, :cond_9

    .line 632
    .line 633
    if-eq v10, v15, :cond_9

    .line 634
    .line 635
    if-eq v10, v15, :cond_9

    .line 636
    .line 637
    const/16 v13, 0x28

    .line 638
    .line 639
    if-ne v10, v13, :cond_a

    .line 640
    .line 641
    :cond_9
    invoke-static {v4}, Lc5/i4;->d(Lc5/r3;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v4, v14, v12, v2, v3}, Lc5/v5;->t(Lc5/f;IJ)V

    .line 645
    .line 646
    .line 647
    goto :goto_4

    .line 648
    :cond_a
    sget-object v10, Lcom/google/android/gms/internal/measurement/ia;->b:Lcom/google/android/gms/internal/measurement/ia;

    .line 649
    .line 650
    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/ia;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 651
    .line 652
    invoke-interface {v10}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v10

    .line 656
    check-cast v10, Lcom/google/android/gms/internal/measurement/ja;

    .line 657
    .line 658
    invoke-interface {v10}, Lcom/google/android/gms/internal/measurement/ja;->a()V

    .line 659
    .line 660
    .line 661
    sget-object v10, Lc5/r2;->o0:Lc5/q2;

    .line 662
    .line 663
    invoke-virtual {v11, v5, v10}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 664
    .line 665
    .line 666
    move-result v10

    .line 667
    if-eqz v10, :cond_b

    .line 668
    .line 669
    invoke-virtual {v0}, Lc5/i4;->o()Lc5/w2;

    .line 670
    .line 671
    .line 672
    move-result-object v10

    .line 673
    invoke-virtual {v10}, Lc5/w2;->n()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v10

    .line 677
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 678
    .line 679
    .line 680
    move-result v10

    .line 681
    if-eqz v10, :cond_c

    .line 682
    .line 683
    :cond_b
    if-eqz v7, :cond_c

    .line 684
    .line 685
    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/e1;->g:Landroid/os/Bundle;

    .line 686
    .line 687
    if-eqz v7, :cond_c

    .line 688
    .line 689
    invoke-virtual {v8, v15}, Lc5/s3;->s(I)Z

    .line 690
    .line 691
    .line 692
    move-result v10

    .line 693
    if-eqz v10, :cond_c

    .line 694
    .line 695
    invoke-static {v7}, Lc5/f;->a(Landroid/os/Bundle;)Lc5/f;

    .line 696
    .line 697
    .line 698
    move-result-object v7

    .line 699
    invoke-virtual {v7, v14}, Lc5/f;->equals(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v10

    .line 703
    if-nez v10, :cond_c

    .line 704
    .line 705
    const/16 v12, 0x1e

    .line 706
    .line 707
    goto :goto_5

    .line 708
    :cond_c
    :goto_4
    move-object v7, v5

    .line 709
    const/16 v12, 0x64

    .line 710
    .line 711
    :goto_5
    if-eqz v7, :cond_d

    .line 712
    .line 713
    invoke-static {v4}, Lc5/i4;->d(Lc5/r3;)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v4, v7, v12, v2, v3}, Lc5/v5;->t(Lc5/f;IJ)V

    .line 717
    .line 718
    .line 719
    move-object v9, v7

    .line 720
    :cond_d
    invoke-static {v4}, Lc5/i4;->d(Lc5/r3;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v4, v9}, Lc5/v5;->u(Lc5/f;)V

    .line 724
    .line 725
    .line 726
    iget-object v7, v8, Lc5/s3;->e:Lc5/o3;

    .line 727
    .line 728
    invoke-virtual {v7}, Lc5/o3;->a()J

    .line 729
    .line 730
    .line 731
    move-result-wide v9

    .line 732
    iget-object v12, v0, Lc5/i4;->j:Lc5/e3;

    .line 733
    .line 734
    const-wide/16 v13, 0x0

    .line 735
    .line 736
    cmp-long v15, v9, v13

    .line 737
    .line 738
    if-nez v15, :cond_e

    .line 739
    .line 740
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 741
    .line 742
    .line 743
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 744
    .line 745
    .line 746
    move-result-object v9

    .line 747
    iget-object v10, v12, Lc5/e3;->p:Lc5/c3;

    .line 748
    .line 749
    const-string v13, "Persisting first open"

    .line 750
    .line 751
    invoke-virtual {v10, v9, v13}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v7, v2, v3}, Lc5/o3;->b(J)V

    .line 755
    .line 756
    .line 757
    :cond_e
    invoke-static {v4}, Lc5/i4;->d(Lc5/r3;)V

    .line 758
    .line 759
    .line 760
    iget-object v9, v4, Lc5/v5;->p:Lc5/a8;

    .line 761
    .line 762
    invoke-virtual {v9}, Lc5/a8;->b()Z

    .line 763
    .line 764
    .line 765
    move-result v10

    .line 766
    if-eqz v10, :cond_f

    .line 767
    .line 768
    invoke-virtual {v9}, Lc5/a8;->c()Z

    .line 769
    .line 770
    .line 771
    move-result v10

    .line 772
    if-eqz v10, :cond_f

    .line 773
    .line 774
    iget-object v9, v9, Lc5/a8;->a:Lc5/i4;

    .line 775
    .line 776
    iget-object v9, v9, Lc5/i4;->h:Lc5/s3;

    .line 777
    .line 778
    invoke-static {v9}, Lc5/i4;->c(Lc5/y4;)V

    .line 779
    .line 780
    .line 781
    iget-object v9, v9, Lc5/s3;->w:Lc5/q3;

    .line 782
    .line 783
    invoke-virtual {v9, v5}, Lc5/q3;->b(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    :cond_f
    invoke-virtual {v0}, Lc5/i4;->b()Z

    .line 787
    .line 788
    .line 789
    move-result v9

    .line 790
    iget-object v10, v0, Lc5/i4;->m:Lc5/v7;

    .line 791
    .line 792
    if-nez v9, :cond_15

    .line 793
    .line 794
    invoke-virtual {v0}, Lc5/i4;->a()Z

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    if-eqz v2, :cond_14

    .line 799
    .line 800
    invoke-static {v10}, Lc5/i4;->c(Lc5/y4;)V

    .line 801
    .line 802
    .line 803
    const-string v2, "android.permission.INTERNET"

    .line 804
    .line 805
    invoke-virtual {v10, v2}, Lc5/v7;->O(Ljava/lang/String;)Z

    .line 806
    .line 807
    .line 808
    move-result v2

    .line 809
    if-nez v2, :cond_10

    .line 810
    .line 811
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 812
    .line 813
    .line 814
    const-string v2, "App is missing INTERNET permission"

    .line 815
    .line 816
    iget-object v3, v12, Lc5/e3;->f:Lc5/c3;

    .line 817
    .line 818
    invoke-virtual {v3, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    :cond_10
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 822
    .line 823
    invoke-virtual {v10, v2}, Lc5/v7;->O(Ljava/lang/String;)Z

    .line 824
    .line 825
    .line 826
    move-result v2

    .line 827
    if-nez v2, :cond_11

    .line 828
    .line 829
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 830
    .line 831
    .line 832
    const-string v2, "App is missing ACCESS_NETWORK_STATE permission"

    .line 833
    .line 834
    iget-object v3, v12, Lc5/e3;->f:Lc5/c3;

    .line 835
    .line 836
    invoke-virtual {v3, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    :cond_11
    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 840
    .line 841
    invoke-static {v0}, Ly3/c;->a(Landroid/content/Context;)Ly3/b;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    invoke-virtual {v2}, Ly3/b;->c()Z

    .line 846
    .line 847
    .line 848
    move-result v2

    .line 849
    if-nez v2, :cond_13

    .line 850
    .line 851
    invoke-virtual {v11}, Lc5/e;->t()Z

    .line 852
    .line 853
    .line 854
    move-result v2

    .line 855
    if-nez v2, :cond_13

    .line 856
    .line 857
    invoke-static {v0}, Lc5/v7;->U(Landroid/content/Context;)Z

    .line 858
    .line 859
    .line 860
    move-result v2

    .line 861
    if-nez v2, :cond_12

    .line 862
    .line 863
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 864
    .line 865
    .line 866
    const-string v2, "AppMeasurementReceiver not registered/enabled"

    .line 867
    .line 868
    iget-object v3, v12, Lc5/e3;->f:Lc5/c3;

    .line 869
    .line 870
    invoke-virtual {v3, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    :cond_12
    invoke-static {v0}, Lc5/v7;->V(Landroid/content/Context;)Z

    .line 874
    .line 875
    .line 876
    move-result v0

    .line 877
    if-nez v0, :cond_13

    .line 878
    .line 879
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 880
    .line 881
    .line 882
    const-string v0, "AppMeasurementService not registered/enabled"

    .line 883
    .line 884
    iget-object v2, v12, Lc5/e3;->f:Lc5/c3;

    .line 885
    .line 886
    invoke-virtual {v2, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    :cond_13
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 890
    .line 891
    .line 892
    const-string v0, "Uploading is not possible. App measurement disabled"

    .line 893
    .line 894
    iget-object v2, v12, Lc5/e3;->f:Lc5/c3;

    .line 895
    .line 896
    invoke-virtual {v2, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    :cond_14
    const/4 v4, 0x1

    .line 900
    goto/16 :goto_a

    .line 901
    .line 902
    :cond_15
    invoke-virtual {v0}, Lc5/i4;->o()Lc5/w2;

    .line 903
    .line 904
    .line 905
    move-result-object v9

    .line 906
    invoke-virtual {v9}, Lc5/w2;->n()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v9

    .line 910
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 911
    .line 912
    .line 913
    move-result v9

    .line 914
    iget-object v13, v8, Lc5/s3;->f:Lc5/q3;

    .line 915
    .line 916
    if-eqz v9, :cond_17

    .line 917
    .line 918
    invoke-virtual {v0}, Lc5/i4;->o()Lc5/w2;

    .line 919
    .line 920
    .line 921
    move-result-object v9

    .line 922
    invoke-virtual {v9}, Lc5/r3;->c()V

    .line 923
    .line 924
    .line 925
    iget-object v9, v9, Lc5/w2;->m:Ljava/lang/String;

    .line 926
    .line 927
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 928
    .line 929
    .line 930
    move-result v9

    .line 931
    if-nez v9, :cond_16

    .line 932
    .line 933
    goto :goto_6

    .line 934
    :cond_16
    move-object/from16 v16, v11

    .line 935
    .line 936
    goto/16 :goto_7

    .line 937
    .line 938
    :cond_17
    :goto_6
    invoke-static {v10}, Lc5/i4;->c(Lc5/y4;)V

    .line 939
    .line 940
    .line 941
    invoke-virtual {v0}, Lc5/i4;->o()Lc5/w2;

    .line 942
    .line 943
    .line 944
    move-result-object v9

    .line 945
    invoke-virtual {v9}, Lc5/w2;->n()Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v9

    .line 949
    invoke-virtual {v8}, Lc5/x4;->b()V

    .line 950
    .line 951
    .line 952
    invoke-virtual {v8}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 953
    .line 954
    .line 955
    move-result-object v14

    .line 956
    const-string v15, "gmp_app_id"

    .line 957
    .line 958
    invoke-interface {v14, v15, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v14

    .line 962
    invoke-virtual {v0}, Lc5/i4;->o()Lc5/w2;

    .line 963
    .line 964
    .line 965
    move-result-object v6

    .line 966
    invoke-virtual {v6}, Lc5/r3;->c()V

    .line 967
    .line 968
    .line 969
    iget-object v6, v6, Lc5/w2;->m:Ljava/lang/String;

    .line 970
    .line 971
    invoke-virtual {v8}, Lc5/x4;->b()V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v8}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 975
    .line 976
    .line 977
    move-result-object v1

    .line 978
    move-object/from16 v16, v11

    .line 979
    .line 980
    const-string v11, "admob_app_id"

    .line 981
    .line 982
    invoke-interface {v1, v11, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v1

    .line 986
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 987
    .line 988
    .line 989
    invoke-static {v9, v14, v6, v1}, Lc5/v7;->X(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 990
    .line 991
    .line 992
    move-result v1

    .line 993
    if-eqz v1, :cond_19

    .line 994
    .line 995
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 996
    .line 997
    .line 998
    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    .line 999
    .line 1000
    iget-object v6, v12, Lc5/e3;->m:Lc5/c3;

    .line 1001
    .line 1002
    invoke-virtual {v6, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v8}, Lc5/x4;->b()V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v8}, Lc5/s3;->o()Ljava/lang/Boolean;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v1

    .line 1012
    invoke-virtual {v8}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v6

    .line 1016
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v6

    .line 1020
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1021
    .line 1022
    .line 1023
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1024
    .line 1025
    .line 1026
    if-eqz v1, :cond_18

    .line 1027
    .line 1028
    invoke-virtual {v8, v1}, Lc5/s3;->p(Ljava/lang/Boolean;)V

    .line 1029
    .line 1030
    .line 1031
    :cond_18
    invoke-virtual {v0}, Lc5/i4;->p()Lc5/y2;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v1

    .line 1035
    invoke-virtual {v1}, Lc5/y2;->h()V

    .line 1036
    .line 1037
    .line 1038
    iget-object v1, v0, Lc5/i4;->x:Lc5/t6;

    .line 1039
    .line 1040
    invoke-virtual {v1}, Lc5/t6;->w()V

    .line 1041
    .line 1042
    .line 1043
    iget-object v1, v0, Lc5/i4;->x:Lc5/t6;

    .line 1044
    .line 1045
    invoke-virtual {v1}, Lc5/t6;->v()V

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v7, v2, v3}, Lc5/o3;->b(J)V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v13, v5}, Lc5/q3;->b(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    :cond_19
    invoke-virtual {v0}, Lc5/i4;->o()Lc5/w2;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v1

    .line 1058
    invoke-virtual {v1}, Lc5/w2;->n()Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v1

    .line 1062
    invoke-virtual {v8}, Lc5/x4;->b()V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v8}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v2

    .line 1069
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v2

    .line 1073
    invoke-interface {v2, v15, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1074
    .line 1075
    .line 1076
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v0}, Lc5/i4;->o()Lc5/w2;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v1

    .line 1083
    invoke-virtual {v1}, Lc5/r3;->c()V

    .line 1084
    .line 1085
    .line 1086
    iget-object v1, v1, Lc5/w2;->m:Ljava/lang/String;

    .line 1087
    .line 1088
    invoke-virtual {v8}, Lc5/x4;->b()V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v8}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v2

    .line 1095
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v2

    .line 1099
    invoke-interface {v2, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1100
    .line 1101
    .line 1102
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1103
    .line 1104
    .line 1105
    :goto_7
    invoke-virtual {v8}, Lc5/s3;->n()Lc5/f;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    invoke-virtual {v1}, Lc5/f;->f()Z

    .line 1110
    .line 1111
    .line 1112
    move-result v1

    .line 1113
    if-nez v1, :cond_1a

    .line 1114
    .line 1115
    invoke-virtual {v13, v5}, Lc5/q3;->b(Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    :cond_1a
    invoke-static {v4}, Lc5/i4;->d(Lc5/r3;)V

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v13}, Lc5/q3;->a()Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v1

    .line 1125
    iget-object v2, v4, Lc5/v5;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1126
    .line 1127
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1128
    .line 1129
    .line 1130
    sget-object v1, Lcom/google/android/gms/internal/measurement/fa;->b:Lcom/google/android/gms/internal/measurement/fa;

    .line 1131
    .line 1132
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/fa;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 1133
    .line 1134
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v1

    .line 1138
    check-cast v1, Lcom/google/android/gms/internal/measurement/ga;

    .line 1139
    .line 1140
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/ga;->a()V

    .line 1141
    .line 1142
    .line 1143
    sget-object v1, Lc5/r2;->h0:Lc5/q2;

    .line 1144
    .line 1145
    move-object/from16 v2, v16

    .line 1146
    .line 1147
    invoke-virtual {v2, v5, v1}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v1

    .line 1151
    if-eqz v1, :cond_1b

    .line 1152
    .line 1153
    invoke-static {v10}, Lc5/i4;->c(Lc5/y4;)V

    .line 1154
    .line 1155
    .line 1156
    :try_start_5
    iget-object v1, v10, Lc5/x4;->a:Lc5/z4;

    .line 1157
    .line 1158
    check-cast v1, Lc5/i4;

    .line 1159
    .line 1160
    iget-object v1, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 1161
    .line 1162
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v1

    .line 1166
    const-string v3, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 1167
    .line 1168
    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1169
    .line 1170
    .line 1171
    goto :goto_8

    .line 1172
    :catch_2
    nop

    .line 1173
    iget-object v1, v8, Lc5/s3;->v:Lc5/q3;

    .line 1174
    .line 1175
    invoke-virtual {v1}, Lc5/q3;->a()Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v3

    .line 1179
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v3

    .line 1183
    if-nez v3, :cond_1b

    .line 1184
    .line 1185
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 1186
    .line 1187
    .line 1188
    const-string v3, "Remote config removed with active feature rollouts"

    .line 1189
    .line 1190
    iget-object v6, v12, Lc5/e3;->j:Lc5/c3;

    .line 1191
    .line 1192
    invoke-virtual {v6, v3}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v1, v5}, Lc5/q3;->b(Ljava/lang/String;)V

    .line 1196
    .line 1197
    .line 1198
    :cond_1b
    :goto_8
    invoke-virtual {v0}, Lc5/i4;->o()Lc5/w2;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v1

    .line 1202
    invoke-virtual {v1}, Lc5/w2;->n()Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v1

    .line 1206
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v1

    .line 1210
    if-eqz v1, :cond_1c

    .line 1211
    .line 1212
    invoke-virtual {v0}, Lc5/i4;->o()Lc5/w2;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v1

    .line 1216
    invoke-virtual {v1}, Lc5/r3;->c()V

    .line 1217
    .line 1218
    .line 1219
    iget-object v1, v1, Lc5/w2;->m:Ljava/lang/String;

    .line 1220
    .line 1221
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1222
    .line 1223
    .line 1224
    move-result v1

    .line 1225
    if-nez v1, :cond_14

    .line 1226
    .line 1227
    :cond_1c
    invoke-virtual {v0}, Lc5/i4;->a()Z

    .line 1228
    .line 1229
    .line 1230
    move-result v1

    .line 1231
    iget-object v3, v8, Lc5/s3;->c:Landroid/content/SharedPreferences;

    .line 1232
    .line 1233
    if-nez v3, :cond_1d

    .line 1234
    .line 1235
    const/4 v3, 0x0

    .line 1236
    goto :goto_9

    .line 1237
    :cond_1d
    const-string v5, "deferred_analytics_collection"

    .line 1238
    .line 1239
    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1240
    .line 1241
    .line 1242
    move-result v3

    .line 1243
    :goto_9
    if-nez v3, :cond_1e

    .line 1244
    .line 1245
    invoke-virtual {v2}, Lc5/e;->r()Z

    .line 1246
    .line 1247
    .line 1248
    move-result v2

    .line 1249
    if-nez v2, :cond_1e

    .line 1250
    .line 1251
    xor-int/lit8 v2, v1, 0x1

    .line 1252
    .line 1253
    invoke-virtual {v8, v2}, Lc5/s3;->q(Z)V

    .line 1254
    .line 1255
    .line 1256
    :cond_1e
    if-eqz v1, :cond_1f

    .line 1257
    .line 1258
    invoke-static {v4}, Lc5/i4;->d(Lc5/r3;)V

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {v4}, Lc5/v5;->C()V

    .line 1262
    .line 1263
    .line 1264
    :cond_1f
    iget-object v1, v0, Lc5/i4;->l:Lc5/e7;

    .line 1265
    .line 1266
    invoke-static {v1}, Lc5/i4;->d(Lc5/r3;)V

    .line 1267
    .line 1268
    .line 1269
    iget-object v1, v1, Lc5/e7;->d:Lc5/d7;

    .line 1270
    .line 1271
    invoke-virtual {v1}, Lc5/d7;->a()V

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {v0}, Lc5/i4;->s()Lc5/t6;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v1

    .line 1278
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1279
    .line 1280
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v1, v2}, Lc5/t6;->x(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v0}, Lc5/i4;->s()Lc5/t6;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    iget-object v1, v8, Lc5/s3;->y:Lc5/n3;

    .line 1291
    .line 1292
    invoke-virtual {v1}, Lc5/n3;->a()Landroid/os/Bundle;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v1

    .line 1296
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual {v0}, Lc5/r3;->c()V

    .line 1300
    .line 1301
    .line 1302
    const/4 v2, 0x0

    .line 1303
    invoke-virtual {v0, v2}, Lc5/t6;->q(Z)Lc5/y7;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v2

    .line 1307
    new-instance v3, Lo3/d1;

    .line 1308
    .line 1309
    const/4 v4, 0x1

    .line 1310
    invoke-direct {v3, v0, v2, v1, v4}, Lo3/d1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v0, v3}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 1314
    .line 1315
    .line 1316
    :goto_a
    iget-object v0, v8, Lc5/s3;->n:Lc5/m3;

    .line 1317
    .line 1318
    invoke-virtual {v0, v4}, Lc5/m3;->a(Z)V

    .line 1319
    .line 1320
    .line 1321
    return-void

    .line 1322
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1323
    .line 1324
    const-string v1, "Can\'t initialize twice"

    .line 1325
    .line 1326
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1327
    .line 1328
    .line 1329
    throw v0

    .line 1330
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1331
    .line 1332
    const-string v1, "Can\'t initialize twice"

    .line 1333
    .line 1334
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1335
    .line 1336
    .line 1337
    throw v0

    .line 1338
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1339
    .line 1340
    const-string v1, "Can\'t initialize twice"

    .line 1341
    .line 1342
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1343
    .line 1344
    .line 1345
    throw v0

    .line 1346
    :pswitch_3
    const/4 v2, 0x0

    .line 1347
    iget-object v0, v1, Lc5/k;->b:Ljava/lang/Object;

    .line 1348
    .line 1349
    check-cast v0, Lc5/z4;

    .line 1350
    .line 1351
    invoke-interface {v0}, Lc5/z4;->j()Lcom/google/android/gms/internal/clearcut/z;

    .line 1352
    .line 1353
    .line 1354
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/z;->c()Z

    .line 1355
    .line 1356
    .line 1357
    move-result v0

    .line 1358
    if-eqz v0, :cond_23

    .line 1359
    .line 1360
    iget-object v0, v1, Lc5/k;->b:Ljava/lang/Object;

    .line 1361
    .line 1362
    check-cast v0, Lc5/z4;

    .line 1363
    .line 1364
    invoke-interface {v0}, Lc5/z4;->l()Lc5/h4;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v0

    .line 1368
    invoke-virtual {v0, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 1369
    .line 1370
    .line 1371
    goto :goto_b

    .line 1372
    :cond_23
    iget-object v0, v1, Lc5/k;->c:Ljava/lang/Object;

    .line 1373
    .line 1374
    check-cast v0, Lc5/l;

    .line 1375
    .line 1376
    iget-wide v3, v0, Lc5/l;->c:J

    .line 1377
    .line 1378
    const-wide/16 v5, 0x0

    .line 1379
    .line 1380
    cmp-long v0, v3, v5

    .line 1381
    .line 1382
    if-eqz v0, :cond_24

    .line 1383
    .line 1384
    const/4 v2, 0x1

    .line 1385
    :cond_24
    iget-object v0, v1, Lc5/k;->c:Ljava/lang/Object;

    .line 1386
    .line 1387
    check-cast v0, Lc5/l;

    .line 1388
    .line 1389
    iput-wide v5, v0, Lc5/l;->c:J

    .line 1390
    .line 1391
    if-eqz v2, :cond_25

    .line 1392
    .line 1393
    iget-object v0, v1, Lc5/k;->c:Ljava/lang/Object;

    .line 1394
    .line 1395
    check-cast v0, Lc5/l;

    .line 1396
    .line 1397
    invoke-virtual {v0}, Lc5/l;->b()V

    .line 1398
    .line 1399
    .line 1400
    :cond_25
    :goto_b
    return-void

    .line 1401
    :goto_c
    iget-object v0, v1, Lc5/k;->c:Ljava/lang/Object;

    .line 1402
    .line 1403
    check-cast v0, Lc5/o7;

    .line 1404
    .line 1405
    invoke-virtual {v0}, Lc5/o7;->l()Lc5/h4;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v2

    .line 1409
    invoke-virtual {v2}, Lc5/h4;->b()V

    .line 1410
    .line 1411
    .line 1412
    new-instance v2, Lc5/v3;

    .line 1413
    .line 1414
    invoke-direct {v2, v0}, Lc5/v3;-><init>(Lc5/o7;)V

    .line 1415
    .line 1416
    .line 1417
    iput-object v2, v0, Lc5/o7;->l:Lc5/v3;

    .line 1418
    .line 1419
    new-instance v2, Lc5/i;

    .line 1420
    .line 1421
    invoke-direct {v2, v0}, Lc5/i;-><init>(Lc5/o7;)V

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v2}, Lc5/j7;->d()V

    .line 1425
    .line 1426
    .line 1427
    iput-object v2, v0, Lc5/o7;->c:Lc5/i;

    .line 1428
    .line 1429
    invoke-virtual {v0}, Lc5/o7;->K()Lc5/e;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v2

    .line 1433
    iget-object v3, v0, Lc5/o7;->a:Lc5/c4;

    .line 1434
    .line 1435
    invoke-static {v3}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 1436
    .line 1437
    .line 1438
    iput-object v3, v2, Lc5/e;->c:Lc5/d;

    .line 1439
    .line 1440
    new-instance v2, Lc5/u6;

    .line 1441
    .line 1442
    invoke-direct {v2, v0}, Lc5/u6;-><init>(Lc5/o7;)V

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v2}, Lc5/j7;->d()V

    .line 1446
    .line 1447
    .line 1448
    iput-object v2, v0, Lc5/o7;->j:Lc5/u6;

    .line 1449
    .line 1450
    new-instance v2, Lc5/g8;

    .line 1451
    .line 1452
    invoke-direct {v2, v0}, Lc5/g8;-><init>(Lc5/o7;)V

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual {v2}, Lc5/j7;->d()V

    .line 1456
    .line 1457
    .line 1458
    iput-object v2, v0, Lc5/o7;->f:Lc5/g8;

    .line 1459
    .line 1460
    new-instance v2, Lc5/a6;

    .line 1461
    .line 1462
    invoke-direct {v2, v0}, Lc5/a6;-><init>(Lc5/o7;)V

    .line 1463
    .line 1464
    .line 1465
    invoke-virtual {v2}, Lc5/j7;->d()V

    .line 1466
    .line 1467
    .line 1468
    iput-object v2, v0, Lc5/o7;->h:Lc5/a6;

    .line 1469
    .line 1470
    new-instance v2, Lc5/h7;

    .line 1471
    .line 1472
    invoke-direct {v2, v0}, Lc5/h7;-><init>(Lc5/o7;)V

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v2}, Lc5/j7;->d()V

    .line 1476
    .line 1477
    .line 1478
    iput-object v2, v0, Lc5/o7;->e:Lc5/h7;

    .line 1479
    .line 1480
    new-instance v2, Lc5/l3;

    .line 1481
    .line 1482
    invoke-direct {v2, v0}, Lc5/l3;-><init>(Lc5/o7;)V

    .line 1483
    .line 1484
    .line 1485
    iput-object v2, v0, Lc5/o7;->d:Lc5/l3;

    .line 1486
    .line 1487
    iget v2, v0, Lc5/o7;->s:I

    .line 1488
    .line 1489
    iget v3, v0, Lc5/o7;->t:I

    .line 1490
    .line 1491
    if-eq v2, v3, :cond_26

    .line 1492
    .line 1493
    invoke-virtual {v0}, Lc5/o7;->m()Lc5/e3;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v2

    .line 1497
    iget v3, v0, Lc5/o7;->s:I

    .line 1498
    .line 1499
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v3

    .line 1503
    iget v4, v0, Lc5/o7;->t:I

    .line 1504
    .line 1505
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v4

    .line 1509
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 1510
    .line 1511
    const-string v5, "Not all upload components initialized"

    .line 1512
    .line 1513
    invoke-virtual {v2, v3, v5, v4}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1514
    .line 1515
    .line 1516
    :cond_26
    const/4 v2, 0x1

    .line 1517
    iput-boolean v2, v0, Lc5/o7;->n:Z

    .line 1518
    .line 1519
    invoke-virtual {v0}, Lc5/o7;->l()Lc5/h4;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v2

    .line 1523
    invoke-virtual {v2}, Lc5/h4;->b()V

    .line 1524
    .line 1525
    .line 1526
    iget-object v2, v0, Lc5/o7;->c:Lc5/i;

    .line 1527
    .line 1528
    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    .line 1529
    .line 1530
    .line 1531
    invoke-virtual {v2}, Lc5/i;->g()V

    .line 1532
    .line 1533
    .line 1534
    iget-object v2, v0, Lc5/o7;->j:Lc5/u6;

    .line 1535
    .line 1536
    iget-object v2, v2, Lc5/u6;->j:Lc5/o3;

    .line 1537
    .line 1538
    invoke-virtual {v2}, Lc5/o3;->a()J

    .line 1539
    .line 1540
    .line 1541
    move-result-wide v2

    .line 1542
    const-wide/16 v4, 0x0

    .line 1543
    .line 1544
    cmp-long v6, v2, v4

    .line 1545
    .line 1546
    if-nez v6, :cond_27

    .line 1547
    .line 1548
    iget-object v2, v0, Lc5/o7;->j:Lc5/u6;

    .line 1549
    .line 1550
    iget-object v2, v2, Lc5/u6;->j:Lc5/o3;

    .line 1551
    .line 1552
    invoke-virtual {v0}, Lc5/o7;->i()Lw3/a;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v3

    .line 1556
    check-cast v3, Lc5/w;

    .line 1557
    .line 1558
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1559
    .line 1560
    .line 1561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1562
    .line 1563
    .line 1564
    move-result-wide v3

    .line 1565
    invoke-virtual {v2, v3, v4}, Lc5/o3;->b(J)V

    .line 1566
    .line 1567
    .line 1568
    :cond_27
    invoke-virtual {v0}, Lc5/o7;->D()V

    .line 1569
    .line 1570
    .line 1571
    return-void

    .line 1572
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
