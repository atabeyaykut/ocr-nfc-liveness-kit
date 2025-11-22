.class public final synthetic Lc5/d5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc5/r3;


# direct methods
.method public synthetic constructor <init>(Lc5/r3;I)V
    .locals 0

    iput p2, p0, Lc5/d5;->a:I

    iput-object p1, p0, Lc5/d5;->b:Lc5/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lc5/d5;->a:I

    .line 4
    .line 5
    iget-object v2, v1, Lc5/d5;->b:Lc5/r3;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_b

    .line 11
    .line 12
    :pswitch_0
    check-cast v2, Lc5/v5;

    .line 13
    .line 14
    invoke-virtual {v2}, Lc5/t2;->b()V

    .line 15
    .line 16
    .line 17
    iget-object v0, v2, Lc5/x4;->a:Lc5/z4;

    .line 18
    .line 19
    move-object v2, v0

    .line 20
    check-cast v2, Lc5/i4;

    .line 21
    .line 22
    iget-object v0, v2, Lc5/i4;->h:Lc5/s3;

    .line 23
    .line 24
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lc5/s3;->s:Lc5/m3;

    .line 28
    .line 29
    invoke-virtual {v0}, Lc5/m3;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v3, v2, Lc5/i4;->j:Lc5/e3;

    .line 34
    .line 35
    if-nez v0, :cond_b

    .line 36
    .line 37
    iget-object v4, v2, Lc5/i4;->h:Lc5/s3;

    .line 38
    .line 39
    invoke-static {v4}, Lc5/i4;->c(Lc5/y4;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v4, Lc5/s3;->t:Lc5/o3;

    .line 43
    .line 44
    invoke-virtual {v0}, Lc5/o3;->a()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    invoke-static {v4}, Lc5/i4;->c(Lc5/y4;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v7, 0x1

    .line 52
    .line 53
    add-long/2addr v7, v5

    .line 54
    iget-object v0, v4, Lc5/s3;->t:Lc5/o3;

    .line 55
    .line 56
    invoke-virtual {v0, v7, v8}, Lc5/o3;->b(J)V

    .line 57
    .line 58
    .line 59
    const-wide/16 v7, 0x5

    .line 60
    .line 61
    const/4 v9, 0x1

    .line 62
    cmp-long v0, v5, v7

    .line 63
    .line 64
    if-ltz v0, :cond_0

    .line 65
    .line 66
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    .line 70
    .line 71
    iget-object v2, v3, Lc5/e3;->j:Lc5/c3;

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v4}, Lc5/i4;->c(Lc5/y4;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v4, Lc5/s3;->s:Lc5/m3;

    .line 80
    .line 81
    invoke-virtual {v0, v9}, Lc5/m3;->a(Z)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_a

    .line 85
    .line 86
    :cond_0
    iget-object v0, v2, Lc5/i4;->k:Lc5/h4;

    .line 87
    .line 88
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 92
    .line 93
    .line 94
    iget-object v5, v2, Lc5/i4;->t:Lc5/z5;

    .line 95
    .line 96
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Lc5/i4;->o()Lc5/w2;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lc5/w2;->h()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-static {v4}, Lc5/i4;->c(Lc5/y4;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Lc5/x4;->b()V

    .line 114
    .line 115
    .line 116
    iget-object v0, v4, Lc5/x4;->a:Lc5/z4;

    .line 117
    .line 118
    move-object v7, v0

    .line 119
    check-cast v7, Lc5/i4;

    .line 120
    .line 121
    iget-object v8, v7, Lc5/i4;->p:Lc5/w;

    .line 122
    .line 123
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 127
    .line 128
    .line 129
    move-result-wide v10

    .line 130
    iget-object v8, v4, Lc5/s3;->g:Ljava/lang/String;

    .line 131
    .line 132
    const-string v12, ""

    .line 133
    .line 134
    if-eqz v8, :cond_2

    .line 135
    .line 136
    iget-wide v13, v4, Lc5/s3;->j:J

    .line 137
    .line 138
    cmp-long v15, v10, v13

    .line 139
    .line 140
    if-ltz v15, :cond_1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_1
    new-instance v0, Landroid/util/Pair;

    .line 144
    .line 145
    iget-boolean v7, v4, Lc5/s3;->h:Z

    .line 146
    .line 147
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-direct {v0, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_2
    :goto_0
    iget-object v8, v7, Lc5/i4;->g:Lc5/e;

    .line 156
    .line 157
    sget-object v13, Lc5/r2;->b:Lc5/q2;

    .line 158
    .line 159
    invoke-virtual {v8, v6, v13}, Lc5/e;->h(Ljava/lang/String;Lc5/q2;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v13

    .line 163
    add-long/2addr v13, v10

    .line 164
    iput-wide v13, v4, Lc5/s3;->j:J

    .line 165
    .line 166
    :try_start_0
    check-cast v0, Lc5/i4;

    .line 167
    .line 168
    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 169
    .line 170
    invoke-static {v0}, Lf3/a;->a(Landroid/content/Context;)Lf3/a$a;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v12, v4, Lc5/s3;->g:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v8, v0, Lf3/a$a;->a:Ljava/lang/String;

    .line 177
    .line 178
    if-eqz v8, :cond_3

    .line 179
    .line 180
    iput-object v8, v4, Lc5/s3;->g:Ljava/lang/String;

    .line 181
    .line 182
    :cond_3
    iget-boolean v0, v0, Lf3/a$a;->b:Z

    .line 183
    .line 184
    iput-boolean v0, v4, Lc5/s3;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    iget-object v7, v7, Lc5/i4;->j:Lc5/e3;

    .line 189
    .line 190
    invoke-static {v7}, Lc5/i4;->e(Lc5/y4;)V

    .line 191
    .line 192
    .line 193
    const-string v8, "Unable to get advertising id"

    .line 194
    .line 195
    iget-object v7, v7, Lc5/e3;->n:Lc5/c3;

    .line 196
    .line 197
    invoke-virtual {v7, v0, v8}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iput-object v12, v4, Lc5/s3;->g:Ljava/lang/String;

    .line 201
    .line 202
    :goto_1
    new-instance v0, Landroid/util/Pair;

    .line 203
    .line 204
    iget-object v7, v4, Lc5/s3;->g:Ljava/lang/String;

    .line 205
    .line 206
    iget-boolean v8, v4, Lc5/s3;->h:Z

    .line 207
    .line 208
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    invoke-direct {v0, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :goto_2
    const-string v7, "google_analytics_adid_collection_enabled"

    .line 216
    .line 217
    iget-object v8, v2, Lc5/i4;->g:Lc5/e;

    .line 218
    .line 219
    invoke-virtual {v8, v7}, Lc5/e;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    const/4 v8, 0x0

    .line 224
    if-eqz v7, :cond_5

    .line 225
    .line 226
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-eqz v7, :cond_4

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_4
    const/4 v7, 0x0

    .line 234
    goto :goto_4

    .line 235
    :cond_5
    :goto_3
    const/4 v7, 0x1

    .line 236
    :goto_4
    if-eqz v7, :cond_a

    .line 237
    .line 238
    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v7, Ljava/lang/Boolean;

    .line 241
    .line 242
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-nez v7, :cond_a

    .line 247
    .line 248
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v7, Ljava/lang/CharSequence;

    .line 251
    .line 252
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    if-eqz v7, :cond_6

    .line 257
    .line 258
    goto/16 :goto_8

    .line 259
    .line 260
    :cond_6
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5}, Lc5/y4;->d()V

    .line 264
    .line 265
    .line 266
    iget-object v7, v5, Lc5/x4;->a:Lc5/z4;

    .line 267
    .line 268
    check-cast v7, Lc5/i4;

    .line 269
    .line 270
    iget-object v10, v7, Lc5/i4;->a:Landroid/content/Context;

    .line 271
    .line 272
    const-string v11, "connectivity"

    .line 273
    .line 274
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    check-cast v10, Landroid/net/ConnectivityManager;

    .line 279
    .line 280
    const/4 v11, 0x0

    .line 281
    if-eqz v10, :cond_7

    .line 282
    .line 283
    :try_start_1
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 284
    .line 285
    .line 286
    move-result-object v10
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    goto :goto_5

    .line 288
    :catch_1
    nop

    .line 289
    :cond_7
    move-object v10, v11

    .line 290
    :goto_5
    if-eqz v10, :cond_9

    .line 291
    .line 292
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    if-eqz v10, :cond_9

    .line 297
    .line 298
    iget-object v3, v2, Lc5/i4;->m:Lc5/v7;

    .line 299
    .line 300
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Lc5/i4;->o()Lc5/w2;

    .line 304
    .line 305
    .line 306
    move-result-object v10

    .line 307
    iget-object v10, v10, Lc5/x4;->a:Lc5/z4;

    .line 308
    .line 309
    check-cast v10, Lc5/i4;

    .line 310
    .line 311
    iget-object v10, v10, Lc5/i4;->g:Lc5/e;

    .line 312
    .line 313
    invoke-virtual {v10}, Lc5/e;->g()V

    .line 314
    .line 315
    .line 316
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v0, Ljava/lang/String;

    .line 319
    .line 320
    iget-object v4, v4, Lc5/s3;->t:Lc5/o3;

    .line 321
    .line 322
    invoke-virtual {v4}, Lc5/o3;->a()J

    .line 323
    .line 324
    .line 325
    move-result-wide v12

    .line 326
    const-wide/16 v14, -0x1

    .line 327
    .line 328
    add-long/2addr v12, v14

    .line 329
    iget-object v4, v3, Lc5/x4;->a:Lc5/z4;

    .line 330
    .line 331
    :try_start_2
    invoke-static {v0}, Lr3/r;->f(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-static {v6}, Lr3/r;->f(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const/4 v10, 0x4

    .line 338
    new-array v10, v10, [Ljava/lang/Object;

    .line 339
    .line 340
    const/4 v14, 0x2

    .line 341
    new-array v15, v14, [Ljava/lang/Object;

    .line 342
    .line 343
    const-wide/32 v16, 0xb3b0

    .line 344
    .line 345
    .line 346
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 347
    .line 348
    .line 349
    move-result-object v16

    .line 350
    aput-object v16, v15, v8

    .line 351
    .line 352
    invoke-virtual {v3}, Lc5/v7;->j0()I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    aput-object v3, v15, v9

    .line 361
    .line 362
    const-string v3, "v%s.%s"

    .line 363
    .line 364
    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    aput-object v3, v10, v8

    .line 369
    .line 370
    aput-object v0, v10, v9

    .line 371
    .line 372
    aput-object v6, v10, v14

    .line 373
    .line 374
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    const/4 v3, 0x3

    .line 379
    aput-object v0, v10, v3

    .line 380
    .line 381
    const-string v0, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s"

    .line 382
    .line 383
    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    move-object v3, v4

    .line 388
    check-cast v3, Lc5/i4;

    .line 389
    .line 390
    iget-object v3, v3, Lc5/i4;->g:Lc5/e;

    .line 391
    .line 392
    const-string v8, "debug.deferred.deeplink"

    .line 393
    .line 394
    invoke-virtual {v3, v8}, Lc5/e;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    if-eqz v3, :cond_8

    .line 403
    .line 404
    const-string v3, "&ddl_test=1"

    .line 405
    .line 406
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    :cond_8
    new-instance v3, Ljava/net/URL;

    .line 411
    .line 412
    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 413
    .line 414
    .line 415
    move-object v11, v3

    .line 416
    goto :goto_7

    .line 417
    :catch_2
    move-exception v0

    .line 418
    goto :goto_6

    .line 419
    :catch_3
    move-exception v0

    .line 420
    :goto_6
    check-cast v4, Lc5/i4;

    .line 421
    .line 422
    iget-object v3, v4, Lc5/i4;->j:Lc5/e3;

    .line 423
    .line 424
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    iget-object v3, v3, Lc5/e3;->f:Lc5/c3;

    .line 432
    .line 433
    const-string v4, "Failed to create BOW URL for Deferred Deep Link. exception"

    .line 434
    .line 435
    invoke-virtual {v3, v0, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    :goto_7
    if-eqz v11, :cond_c

    .line 439
    .line 440
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 441
    .line 442
    .line 443
    new-instance v0, Lc0/c;

    .line 444
    .line 445
    invoke-direct {v0, v2}, Lc0/c;-><init>(Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v5}, Lc5/x4;->b()V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v5}, Lc5/y4;->d()V

    .line 452
    .line 453
    .line 454
    iget-object v2, v7, Lc5/i4;->k:Lc5/h4;

    .line 455
    .line 456
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 457
    .line 458
    .line 459
    new-instance v3, Lc5/y5;

    .line 460
    .line 461
    invoke-direct {v3, v5, v6, v11, v0}, Lc5/y5;-><init>(Lc5/z5;Ljava/lang/String;Ljava/net/URL;Lc0/c;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2, v3}, Lc5/h4;->o(Ljava/lang/Runnable;)V

    .line 465
    .line 466
    .line 467
    goto :goto_a

    .line 468
    :cond_9
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 469
    .line 470
    .line 471
    const-string v0, "Network is not available for Deferred Deep Link request. Skipping"

    .line 472
    .line 473
    iget-object v2, v3, Lc5/e3;->j:Lc5/c3;

    .line 474
    .line 475
    goto :goto_9

    .line 476
    :cond_a
    :goto_8
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 477
    .line 478
    .line 479
    const-string v0, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    .line 480
    .line 481
    iget-object v2, v3, Lc5/e3;->n:Lc5/c3;

    .line 482
    .line 483
    :goto_9
    invoke-virtual {v2, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    goto :goto_a

    .line 487
    :cond_b
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 488
    .line 489
    .line 490
    const-string v0, "Deferred Deep Link already retrieved. Not fetching again."

    .line 491
    .line 492
    iget-object v2, v3, Lc5/e3;->n:Lc5/c3;

    .line 493
    .line 494
    invoke-virtual {v2, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    :cond_c
    :goto_a
    return-void

    .line 498
    :goto_b
    check-cast v2, Lc5/f6;

    .line 499
    .line 500
    iget-object v0, v2, Lc5/f6;->k:Lc5/b6;

    .line 501
    .line 502
    iput-object v0, v2, Lc5/f6;->e:Lc5/b6;

    .line 503
    .line 504
    return-void

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
