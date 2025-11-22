.class public Lio/realm/internal/OsRealmConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsRealmConfig$b;
    }
.end annotation


# static fields
.field public static final k:J


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Lio/realm/o0;

.field public final d:Ljava/net/URI;

.field public final e:J

.field public final f:Lio/realm/internal/h;

.field public final g:Lio/realm/CompactOnLaunchCallback;

.field public final h:Lio/realm/internal/OsSharedRealm$MigrationCallback;

.field public final j:Lio/realm/internal/OsSharedRealm$InitializationCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/OsRealmConfig;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsRealmConfig;->k:J

    return-void
.end method

.method public constructor <init>(Lio/realm/o0;Ljava/lang/String;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$MigrationCallback;Lio/realm/internal/OsSharedRealm$InitializationCallback;)V
    .locals 40

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p4

    .line 6
    .line 7
    move-object/from16 v10, p6

    .line 8
    .line 9
    const-string v14, "Cannot create a URI from the Realm URL address"

    .line 10
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lio/realm/internal/h;

    .line 15
    .line 16
    invoke-direct {v2}, Lio/realm/internal/h;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v2, v15, Lio/realm/internal/OsRealmConfig;->f:Lio/realm/internal/h;

    .line 20
    .line 21
    iput-object v0, v15, Lio/realm/internal/OsRealmConfig;->c:Lio/realm/o0;

    .line 22
    .line 23
    iget-object v2, v0, Lio/realm/o0;->c:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v13, 0x1

    .line 26
    iget-wide v3, v0, Lio/realm/o0;->n:J

    .line 27
    .line 28
    move-object/from16 v5, p2

    .line 29
    .line 30
    invoke-static {v2, v5, v13, v3, v4}, Lio/realm/internal/OsRealmConfig;->nativeCreate(Ljava/lang/String;Ljava/lang/String;ZJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    iput-wide v2, v15, Lio/realm/internal/OsRealmConfig;->e:J

    .line 35
    .line 36
    sget-object v2, Lio/realm/internal/h;->b:Lio/realm/internal/h;

    .line 37
    .line 38
    invoke-virtual {v2, v15}, Lio/realm/internal/h;->a(Lio/realm/internal/i;)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lio/realm/internal/j;->b:Lio/realm/internal/j;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget-object v2, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    .line 47
    .line 48
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const/16 v2, 0x13

    .line 52
    .line 53
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    .line 55
    const/4 v11, 0x0

    .line 56
    aget-object v3, v2, v11

    .line 57
    .line 58
    move-object/from16 v19, v3

    .line 59
    .line 60
    check-cast v19, Ljava/lang/String;

    .line 61
    .line 62
    aget-object v3, v2, v13

    .line 63
    .line 64
    move-object/from16 v20, v3

    .line 65
    .line 66
    check-cast v20, Ljava/lang/String;

    .line 67
    .line 68
    const/4 v3, 0x2

    .line 69
    aget-object v4, v2, v3

    .line 70
    .line 71
    move-object/from16 v21, v4

    .line 72
    .line 73
    check-cast v21, Ljava/lang/String;

    .line 74
    .line 75
    const/4 v4, 0x3

    .line 76
    aget-object v5, v2, v4

    .line 77
    .line 78
    move-object v12, v5

    .line 79
    check-cast v12, Ljava/lang/String;

    .line 80
    .line 81
    const/4 v5, 0x4

    .line 82
    aget-object v6, v2, v5

    .line 83
    .line 84
    move-object/from16 v22, v6

    .line 85
    .line 86
    check-cast v22, Ljava/lang/String;

    .line 87
    .line 88
    const/4 v6, 0x5

    .line 89
    aget-object v7, v2, v6

    .line 90
    .line 91
    move-object/from16 v23, v7

    .line 92
    .line 93
    check-cast v23, Ljava/lang/String;

    .line 94
    .line 95
    const/4 v9, 0x6

    .line 96
    aget-object v7, v2, v9

    .line 97
    .line 98
    move-object/from16 v24, v7

    .line 99
    .line 100
    check-cast v24, Ljava/lang/String;

    .line 101
    .line 102
    const/4 v7, 0x7

    .line 103
    aget-object v7, v2, v7

    .line 104
    .line 105
    move-object/from16 v16, v7

    .line 106
    .line 107
    check-cast v16, Ljava/lang/Byte;

    .line 108
    .line 109
    const/16 v7, 0x8

    .line 110
    .line 111
    aget-object v7, v2, v7

    .line 112
    .line 113
    check-cast v7, Ljava/lang/String;

    .line 114
    .line 115
    const/16 v8, 0x9

    .line 116
    .line 117
    aget-object v8, v2, v8

    .line 118
    .line 119
    move-object/from16 v25, v8

    .line 120
    .line 121
    check-cast v25, Ljava/lang/String;

    .line 122
    .line 123
    const/16 v8, 0xa

    .line 124
    .line 125
    aget-object v8, v2, v8

    .line 126
    .line 127
    check-cast v8, Ljava/util/Map;

    .line 128
    .line 129
    const/16 v17, 0xb

    .line 130
    .line 131
    aget-object v17, v2, v17

    .line 132
    .line 133
    check-cast v17, Ljava/lang/Byte;

    .line 134
    .line 135
    const/16 v18, 0xc

    .line 136
    .line 137
    aget-object v4, v2, v18

    .line 138
    .line 139
    iput-object v4, v15, Lio/realm/internal/OsRealmConfig;->a:Ljava/lang/Object;

    .line 140
    .line 141
    const/16 v4, 0xd

    .line 142
    .line 143
    aget-object v4, v2, v4

    .line 144
    .line 145
    iput-object v4, v15, Lio/realm/internal/OsRealmConfig;->b:Ljava/lang/Object;

    .line 146
    .line 147
    const/16 v4, 0xe

    .line 148
    .line 149
    aget-object v4, v2, v4

    .line 150
    .line 151
    move-object/from16 v26, v4

    .line 152
    .line 153
    check-cast v26, Ljava/lang/String;

    .line 154
    .line 155
    const/16 v4, 0xf

    .line 156
    .line 157
    aget-object v27, v2, v4

    .line 158
    .line 159
    const/16 v4, 0x10

    .line 160
    .line 161
    aget-object v4, v2, v4

    .line 162
    .line 163
    move-object/from16 v18, v4

    .line 164
    .line 165
    check-cast v18, Ljava/lang/Long;

    .line 166
    .line 167
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 168
    .line 169
    const/16 v28, 0x11

    .line 170
    .line 171
    aget-object v5, v2, v28

    .line 172
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    const/16 v4, 0x12

    .line 178
    .line 179
    aget-object v2, v2, v4

    .line 180
    .line 181
    move-object v4, v2

    .line 182
    check-cast v4, Ljava/lang/String;

    .line 183
    .line 184
    if-eqz v8, :cond_1

    .line 185
    .line 186
    invoke-interface {v8}, Ljava/util/Map;->size()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    mul-int/lit8 v2, v2, 0x2

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_1
    const/4 v2, 0x0

    .line 194
    :goto_1
    new-array v2, v2, [Ljava/lang/String;

    .line 195
    .line 196
    if-eqz v8, :cond_2

    .line 197
    .line 198
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    const/16 v28, 0x0

    .line 207
    .line 208
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v30

    .line 212
    if-eqz v30, :cond_2

    .line 213
    .line 214
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v30

    .line 218
    check-cast v30, Ljava/util/Map$Entry;

    .line 219
    .line 220
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v31

    .line 224
    check-cast v31, Ljava/lang/String;

    .line 225
    .line 226
    aput-object v31, v2, v28

    .line 227
    .line 228
    add-int/lit8 v31, v28, 0x1

    .line 229
    .line 230
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v30

    .line 234
    check-cast v30, Ljava/lang/String;

    .line 235
    .line 236
    aput-object v30, v2, v31

    .line 237
    .line 238
    add-int/lit8 v28, v28, 0x2

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_2
    iget-object v6, v0, Lio/realm/o0;->e:[B

    .line 242
    .line 243
    if-nez v6, :cond_3

    .line 244
    .line 245
    const/4 v6, 0x0

    .line 246
    goto :goto_3

    .line 247
    :cond_3
    array-length v8, v6

    .line 248
    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    :goto_3
    move-object/from16 v32, v12

    .line 253
    .line 254
    if-eqz v6, :cond_4

    .line 255
    .line 256
    iget-wide v11, v15, Lio/realm/internal/OsRealmConfig;->e:J

    .line 257
    .line 258
    invoke-static {v11, v12, v6}, Lio/realm/internal/OsRealmConfig;->nativeSetEncryptionKey(J[B)V

    .line 259
    .line 260
    .line 261
    :cond_4
    iget-wide v11, v15, Lio/realm/internal/OsRealmConfig;->e:J

    .line 262
    .line 263
    iget v6, v0, Lio/realm/o0;->h:I

    .line 264
    .line 265
    if-ne v6, v3, :cond_5

    .line 266
    .line 267
    const/4 v6, 0x1

    .line 268
    goto :goto_4

    .line 269
    :cond_5
    const/4 v6, 0x0

    .line 270
    :goto_4
    invoke-static {v11, v12, v6}, Lio/realm/internal/OsRealmConfig;->nativeSetInMemory(JZ)V

    .line 271
    .line 272
    .line 273
    iget-wide v11, v15, Lio/realm/internal/OsRealmConfig;->e:J

    .line 274
    .line 275
    move/from16 v6, p3

    .line 276
    .line 277
    invoke-static {v11, v12, v6}, Lio/realm/internal/OsRealmConfig;->nativeEnableChangeNotification(JZ)V

    .line 278
    .line 279
    .line 280
    iget-boolean v6, v0, Lio/realm/o0;->q:Z

    .line 281
    .line 282
    if-eqz v6, :cond_6

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_6
    iget-boolean v3, v0, Lio/realm/o0;->l:Z

    .line 286
    .line 287
    if-eqz v3, :cond_7

    .line 288
    .line 289
    const/4 v3, 0x3

    .line 290
    goto :goto_5

    .line 291
    :cond_7
    if-eqz v21, :cond_8

    .line 292
    .line 293
    const/4 v3, 0x5

    .line 294
    goto :goto_5

    .line 295
    :cond_8
    iget-boolean v3, v0, Lio/realm/o0;->g:Z

    .line 296
    .line 297
    if-eqz v3, :cond_9

    .line 298
    .line 299
    const/4 v3, 0x4

    .line 300
    goto :goto_5

    .line 301
    :cond_9
    const/4 v3, 0x6

    .line 302
    :goto_5
    iget-wide v11, v0, Lio/realm/o0;->f:J

    .line 303
    .line 304
    if-nez v1, :cond_a

    .line 305
    .line 306
    const-wide/16 v28, 0x0

    .line 307
    .line 308
    move-object/from16 v8, p5

    .line 309
    .line 310
    move-wide/from16 v38, v28

    .line 311
    .line 312
    move-object/from16 v28, v14

    .line 313
    .line 314
    move-wide/from16 v13, v38

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_a
    move-object/from16 v28, v14

    .line 318
    .line 319
    iget-wide v13, v1, Lio/realm/internal/OsSchemaInfo;->a:J

    .line 320
    .line 321
    move-object/from16 v8, p5

    .line 322
    .line 323
    :goto_6
    iput-object v8, v15, Lio/realm/internal/OsRealmConfig;->h:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    .line 324
    .line 325
    iget-wide v9, v15, Lio/realm/internal/OsRealmConfig;->e:J

    .line 326
    .line 327
    invoke-static {v3}, Landroidx/camera/core/impl/a;->c(I)B

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    move-object/from16 v1, p0

    .line 332
    .line 333
    move-object/from16 v33, v2

    .line 334
    .line 335
    move-wide v2, v9

    .line 336
    move-object v10, v4

    .line 337
    move v4, v6

    .line 338
    move v9, v5

    .line 339
    move-wide v5, v11

    .line 340
    move-object v12, v7

    .line 341
    const/4 v11, 0x0

    .line 342
    move-wide v7, v13

    .line 343
    move v14, v9

    .line 344
    const/4 v13, 0x6

    .line 345
    move-object/from16 v9, p5

    .line 346
    .line 347
    invoke-direct/range {v1 .. v9}, Lio/realm/internal/OsRealmConfig;->nativeSetSchemaConfig(JBJJLio/realm/internal/OsSharedRealm$MigrationCallback;)V

    .line 348
    .line 349
    .line 350
    iget-object v0, v0, Lio/realm/o0;->m:Lio/realm/CompactOnLaunchCallback;

    .line 351
    .line 352
    iput-object v0, v15, Lio/realm/internal/OsRealmConfig;->g:Lio/realm/CompactOnLaunchCallback;

    .line 353
    .line 354
    if-eqz v0, :cond_b

    .line 355
    .line 356
    iget-wide v1, v15, Lio/realm/internal/OsRealmConfig;->e:J

    .line 357
    .line 358
    invoke-static {v1, v2, v0}, Lio/realm/internal/OsRealmConfig;->nativeSetCompactOnLaunchCallback(JLio/realm/CompactOnLaunchCallback;)V

    .line 359
    .line 360
    .line 361
    :cond_b
    move-object/from16 v0, p6

    .line 362
    .line 363
    iput-object v0, v15, Lio/realm/internal/OsRealmConfig;->j:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    .line 364
    .line 365
    if-eqz v0, :cond_c

    .line 366
    .line 367
    iget-wide v1, v15, Lio/realm/internal/OsRealmConfig;->e:J

    .line 368
    .line 369
    invoke-direct {v15, v1, v2, v0}, Lio/realm/internal/OsRealmConfig;->nativeSetInitializationCallback(JLio/realm/internal/OsSharedRealm$InitializationCallback;)V

    .line 370
    .line 371
    .line 372
    :cond_c
    if-eqz v21, :cond_14

    .line 373
    .line 374
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    .line 375
    .line 376
    .line 377
    move-result-wide v2

    .line 378
    iget-wide v4, v15, Lio/realm/internal/OsRealmConfig;->e:J

    .line 379
    .line 380
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Byte;->byteValue()B

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    move-object v8, v12

    .line 385
    move-object/from16 v9, v32

    .line 386
    .line 387
    move v12, v0

    .line 388
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Byte;->byteValue()B

    .line 389
    .line 390
    .line 391
    move-result v16

    .line 392
    iget-object v0, v15, Lio/realm/internal/OsRealmConfig;->a:Ljava/lang/Object;

    .line 393
    .line 394
    move-object/from16 v17, v0

    .line 395
    .line 396
    iget-object v0, v15, Lio/realm/internal/OsRealmConfig;->b:Ljava/lang/Object;

    .line 397
    .line 398
    move-object/from16 v18, v0

    .line 399
    .line 400
    move-object/from16 v1, p0

    .line 401
    .line 402
    move-object/from16 v6, v21

    .line 403
    .line 404
    move-object/from16 v7, v19

    .line 405
    .line 406
    move-object v0, v8

    .line 407
    move-object/from16 v8, v20

    .line 408
    .line 409
    move-object/from16 v34, v9

    .line 410
    .line 411
    move-object/from16 v9, v22

    .line 412
    .line 413
    move-object/from16 v35, v10

    .line 414
    .line 415
    move-object/from16 v10, v23

    .line 416
    .line 417
    move-object/from16 v11, v24

    .line 418
    .line 419
    move-object v13, v0

    .line 420
    move/from16 v37, v14

    .line 421
    .line 422
    move-object/from16 v36, v28

    .line 423
    .line 424
    move-object/from16 v14, v25

    .line 425
    .line 426
    move-object/from16 v15, v33

    .line 427
    .line 428
    move-object/from16 v19, v26

    .line 429
    .line 430
    move-object/from16 v20, v27

    .line 431
    .line 432
    invoke-direct/range {v1 .. v20}, Lio/realm/internal/OsRealmConfig;->nativeCreateAndSetSyncConfig(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .line 440
    .line 441
    move-object/from16 v5, v34

    .line 442
    .line 443
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 444
    .line 445
    .line 446
    const/4 v3, 0x1

    .line 447
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    new-instance v8, Ljava/net/URI;

    .line 459
    .line 460
    invoke-direct {v8, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 461
    .line 462
    .line 463
    move-object/from16 v5, v36

    .line 464
    .line 465
    const/4 v2, 0x0

    .line 466
    const/4 v6, 0x6

    .line 467
    goto :goto_8

    .line 468
    :catch_0
    move-exception v0

    .line 469
    goto :goto_7

    .line 470
    :catch_1
    move-exception v0

    .line 471
    const/4 v3, 0x1

    .line 472
    :goto_7
    const/4 v2, 0x0

    .line 473
    new-array v4, v2, [Ljava/lang/Object;

    .line 474
    .line 475
    move-object/from16 v5, v36

    .line 476
    .line 477
    const/4 v6, 0x6

    .line 478
    invoke-static {v6, v0, v5, v4}, Lio/realm/log/RealmLog;->a(ILjava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    const/4 v8, 0x0

    .line 482
    :goto_8
    move-object/from16 v4, p0

    .line 483
    .line 484
    iget-wide v9, v4, Lio/realm/internal/OsRealmConfig;->e:J

    .line 485
    .line 486
    move-object/from16 v11, v35

    .line 487
    .line 488
    move/from16 v7, v37

    .line 489
    .line 490
    invoke-static {v9, v10, v7, v11}, Lio/realm/internal/OsRealmConfig;->nativeSetSyncConfigSslSettings(JZLjava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 494
    .line 495
    .line 496
    move-result-object v7

    .line 497
    if-eqz v8, :cond_15

    .line 498
    .line 499
    if-eqz v7, :cond_15

    .line 500
    .line 501
    :try_start_2
    new-instance v0, Ljava/net/URI;

    .line 502
    .line 503
    const-string v9, "ws"

    .line 504
    .line 505
    const-string v10, "http"

    .line 506
    .line 507
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    .line 512
    .line 513
    .line 514
    goto :goto_9

    .line 515
    :catch_2
    move-exception v0

    .line 516
    new-array v1, v2, [Ljava/lang/Object;

    .line 517
    .line 518
    invoke-static {v6, v0, v5, v1}, Lio/realm/log/RealmLog;->a(ILjava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    const/4 v0, 0x0

    .line 522
    :goto_9
    invoke-virtual {v7, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    if-eqz v0, :cond_15

    .line 527
    .line 528
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    if-nez v1, :cond_15

    .line 533
    .line 534
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    check-cast v0, Ljava/net/Proxy;

    .line 539
    .line 540
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    sget-object v5, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 545
    .line 546
    if-eq v1, v5, :cond_15

    .line 547
    .line 548
    sget-object v1, Lio/realm/internal/OsRealmConfig$a;->a:[I

    .line 549
    .line 550
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 555
    .line 556
    .line 557
    move-result v5

    .line 558
    aget v1, v1, v5

    .line 559
    .line 560
    if-eq v1, v3, :cond_d

    .line 561
    .line 562
    const/4 v11, -0x1

    .line 563
    goto :goto_a

    .line 564
    :cond_d
    const/4 v11, 0x0

    .line 565
    :goto_a
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 570
    .line 571
    if-ne v1, v3, :cond_13

    .line 572
    .line 573
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    .line 578
    .line 579
    if-eqz v1, :cond_12

    .line 580
    .line 581
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 582
    .line 583
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    if-eqz v1, :cond_e

    .line 588
    .line 589
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    goto :goto_b

    .line 594
    :cond_e
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    if-eqz v1, :cond_10

    .line 599
    .line 600
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    if-eqz v3, :cond_f

    .line 609
    .line 610
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    goto :goto_b

    .line 615
    :cond_f
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    goto :goto_b

    .line 620
    :cond_10
    const/4 v1, 0x0

    .line 621
    :goto_b
    if-eqz v1, :cond_11

    .line 622
    .line 623
    iget-wide v2, v4, Lio/realm/internal/OsRealmConfig;->e:J

    .line 624
    .line 625
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    invoke-static {v2, v3, v11, v1, v0}, Lio/realm/internal/OsRealmConfig;->nativeSetSyncConfigProxySettings(JBLjava/lang/String;I)V

    .line 630
    .line 631
    .line 632
    goto :goto_c

    .line 633
    :cond_11
    new-array v0, v2, [Ljava/lang/Object;

    .line 634
    .line 635
    const-string v1, "Could not retrieve proxy\'s hostname."

    .line 636
    .line 637
    const/4 v3, 0x0

    .line 638
    invoke-static {v6, v3, v1, v0}, Lio/realm/log/RealmLog;->a(ILjava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    goto :goto_c

    .line 642
    :cond_12
    const/4 v3, 0x0

    .line 643
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    const-string v1, "Unsupported proxy socket address type: "

    .line 652
    .line 653
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    new-array v1, v2, [Ljava/lang/Object;

    .line 658
    .line 659
    invoke-static {v6, v3, v0, v1}, Lio/realm/log/RealmLog;->a(ILjava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    .line 661
    .line 662
    goto :goto_c

    .line 663
    :cond_13
    const/4 v3, 0x0

    .line 664
    new-array v0, v2, [Ljava/lang/Object;

    .line 665
    .line 666
    const-string v1, "SOCKS proxies are not supported."

    .line 667
    .line 668
    invoke-static {v6, v3, v1, v0}, Lio/realm/log/RealmLog;->a(ILjava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    goto :goto_c

    .line 672
    :cond_14
    move-object v3, v11

    .line 673
    move-object v4, v15

    .line 674
    move-object v8, v3

    .line 675
    :cond_15
    :goto_c
    iput-object v8, v4, Lio/realm/internal/OsRealmConfig;->d:Ljava/net/URI;

    .line 676
    .line 677
    return-void
.end method

.method private static native nativeCreate(Ljava/lang/String;Ljava/lang/String;ZJ)J
.end method

.method private native nativeCreateAndSetSyncConfig(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
.end method

.method private static native nativeEnableChangeNotification(JZ)V
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeSetCompactOnLaunchCallback(JLio/realm/CompactOnLaunchCallback;)V
.end method

.method private static native nativeSetEncryptionKey(J[B)V
.end method

.method private static native nativeSetInMemory(JZ)V
.end method

.method private native nativeSetInitializationCallback(JLio/realm/internal/OsSharedRealm$InitializationCallback;)V
.end method

.method private native nativeSetSchemaConfig(JBJJLio/realm/internal/OsSharedRealm$MigrationCallback;)V
.end method

.method private static native nativeSetSyncConfigProxySettings(JBLjava/lang/String;I)V
.end method

.method private static native nativeSetSyncConfigSslSettings(JZLjava/lang/String;)V
.end method


# virtual methods
.method public final getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/OsRealmConfig;->k:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsRealmConfig;->e:J

    return-wide v0
.end method
