.class public final Lh6/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lh5/k<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Ljava/lang/Thread;

.field public final synthetic d:Lo6/d;

.field public final synthetic e:Lh6/t;


# direct methods
.method public constructor <init>(Lh6/t;JLjava/lang/Throwable;Ljava/lang/Thread;Lo6/d;)V
    .locals 0

    iput-object p1, p0, Lh6/m;->e:Lh6/t;

    iput-wide p2, p0, Lh6/m;->a:J

    iput-object p4, p0, Lh6/m;->b:Ljava/lang/Throwable;

    iput-object p5, p0, Lh6/m;->c:Ljava/lang/Thread;

    iput-object p6, p0, Lh6/m;->d:Lo6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-wide/16 v2, 0x3e8

    .line 4
    .line 5
    iget-wide v4, v1, Lh6/m;->a:J

    .line 6
    .line 7
    div-long v2, v4, v2

    .line 8
    .line 9
    iget-object v6, v1, Lh6/m;->e:Lh6/t;

    .line 10
    .line 11
    iget-object v0, v6, Lh6/t;->k:Lh6/m0;

    .line 12
    .line 13
    iget-object v0, v0, Lh6/m0;->b:Lm6/e;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v7, Ljava/util/TreeSet;

    .line 19
    .line 20
    iget-object v0, v0, Lm6/e;->b:Lm6/f;

    .line 21
    .line 22
    iget-object v0, v0, Lm6/f;->b:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lm6/f;->d([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v7, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    const/4 v8, 0x0

    .line 44
    if-nez v7, :cond_0

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/String;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v0, v8

    .line 54
    :goto_0
    const-string v7, "FirebaseCrashlytics"

    .line 55
    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    const-string v0, "Tried to write a fatal exception while no session was open."

    .line 59
    .line 60
    invoke-static {v7, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    invoke-static {v8}, Lh5/n;->e(Ljava/lang/Object;)Lh5/z;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto/16 :goto_8

    .line 68
    .line 69
    :cond_1
    iget-object v9, v6, Lh6/t;->c:Lx0/t;

    .line 70
    .line 71
    invoke-virtual {v9}, Lx0/t;->a()V

    .line 72
    .line 73
    .line 74
    iget-object v9, v6, Lh6/t;->k:Lh6/m0;

    .line 75
    .line 76
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const-string v10, "Persisting fatal event for session "

    .line 80
    .line 81
    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    const/4 v11, 0x2

    .line 86
    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-eqz v11, :cond_2

    .line 91
    .line 92
    invoke-static {v7, v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-object v10, v9, Lh6/m0;->a:Lh6/z;

    .line 96
    .line 97
    iget-object v11, v10, Lh6/z;->a:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    .line 108
    .line 109
    new-instance v13, Lcom/google/android/gms/internal/measurement/s3;

    .line 110
    .line 111
    iget-object v14, v1, Lh6/m;->b:Ljava/lang/Throwable;

    .line 112
    .line 113
    iget-object v15, v10, Lh6/z;->d:Lq6/b;

    .line 114
    .line 115
    invoke-direct {v13, v14, v15}, Lcom/google/android/gms/internal/measurement/s3;-><init>(Ljava/lang/Throwable;Lq6/b;)V

    .line 116
    .line 117
    .line 118
    new-instance v14, Lj6/k$a;

    .line 119
    .line 120
    invoke-direct {v14}, Lj6/k$a;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v8, "crash"

    .line 124
    .line 125
    iput-object v8, v14, Lj6/k$a;->b:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iput-object v2, v14, Lj6/k$a;->a:Ljava/lang/Long;

    .line 132
    .line 133
    iget-object v2, v10, Lh6/z;->c:Lh6/a;

    .line 134
    .line 135
    iget-object v2, v2, Lh6/a;->d:Ljava/lang/String;

    .line 136
    .line 137
    const-string v3, "activity"

    .line 138
    .line 139
    invoke-virtual {v11, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Landroid/app/ActivityManager;

    .line 144
    .line 145
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    if-eqz v3, :cond_4

    .line 150
    .line 151
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_4

    .line 160
    .line 161
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 166
    .line 167
    iget-object v11, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    if-eqz v11, :cond_3

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_4
    const/4 v8, 0x0

    .line 177
    :goto_1
    if-eqz v8, :cond_6

    .line 178
    .line 179
    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 180
    .line 181
    const/16 v11, 0x64

    .line 182
    .line 183
    if-eq v8, v11, :cond_5

    .line 184
    .line 185
    const/4 v8, 0x1

    .line 186
    goto :goto_2

    .line 187
    :cond_5
    const/4 v8, 0x0

    .line 188
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    move-object/from16 v20, v8

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_6
    const/16 v20, 0x0

    .line 196
    .line 197
    :goto_3
    const/16 v19, 0x0

    .line 198
    .line 199
    const/16 v18, 0x0

    .line 200
    .line 201
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    const/16 v24, 0x0

    .line 206
    .line 207
    new-instance v11, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    .line 212
    iget-object v2, v13, Lcom/google/android/gms/internal/measurement/s3;->c:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v2, [Ljava/lang/StackTraceElement;

    .line 215
    .line 216
    const/4 v3, 0x4

    .line 217
    move-object/from16 v27, v7

    .line 218
    .line 219
    iget-object v7, v1, Lh6/m;->c:Ljava/lang/Thread;

    .line 220
    .line 221
    invoke-static {v7, v2, v3}, Lh6/z;->e(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Lj6/q;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-eqz v3, :cond_8

    .line 245
    .line 246
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    check-cast v3, Ljava/util/Map$Entry;

    .line 251
    .line 252
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v16

    .line 256
    move-object/from16 v17, v2

    .line 257
    .line 258
    move-object/from16 v2, v16

    .line 259
    .line 260
    check-cast v2, Ljava/lang/Thread;

    .line 261
    .line 262
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v16

    .line 266
    if-nez v16, :cond_7

    .line 267
    .line 268
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    check-cast v3, [Ljava/lang/StackTraceElement;

    .line 273
    .line 274
    invoke-interface {v15, v3}, Lq6/b;->e([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    move-object/from16 v16, v7

    .line 279
    .line 280
    const/4 v7, 0x0

    .line 281
    invoke-static {v2, v3, v7}, Lh6/z;->e(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Lj6/q;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_7
    move-object/from16 v16, v7

    .line 290
    .line 291
    const/4 v7, 0x0

    .line 292
    :goto_5
    move-object/from16 v7, v16

    .line 293
    .line 294
    move-object/from16 v2, v17

    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_8
    const/4 v7, 0x0

    .line 298
    new-instance v2, Lj6/b0;

    .line 299
    .line 300
    invoke-direct {v2, v11}, Lj6/b0;-><init>(Ljava/util/List;)V

    .line 301
    .line 302
    .line 303
    invoke-static {v13, v7}, Lh6/z;->c(Lcom/google/android/gms/internal/measurement/s3;I)Lj6/o;

    .line 304
    .line 305
    .line 306
    move-result-object v23

    .line 307
    const-wide/16 v16, 0x0

    .line 308
    .line 309
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    const-string v7, ""

    .line 314
    .line 315
    if-nez v3, :cond_9

    .line 316
    .line 317
    const-string v11, " address"

    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_9
    move-object v11, v7

    .line 321
    :goto_6
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 322
    .line 323
    .line 324
    move-result v13

    .line 325
    const-string v15, "Missing required properties:"

    .line 326
    .line 327
    if-eqz v13, :cond_e

    .line 328
    .line 329
    new-instance v11, Lj6/p;

    .line 330
    .line 331
    move-wide/from16 v28, v4

    .line 332
    .line 333
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 334
    .line 335
    .line 336
    move-result-wide v3

    .line 337
    const-string v5, "0"

    .line 338
    .line 339
    invoke-direct {v11, v5, v5, v3, v4}, Lj6/p;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v10}, Lh6/z;->a()Lj6/b0;

    .line 343
    .line 344
    .line 345
    move-result-object v26

    .line 346
    new-instance v17, Lj6/m;

    .line 347
    .line 348
    move-object/from16 v21, v17

    .line 349
    .line 350
    move-object/from16 v22, v2

    .line 351
    .line 352
    move-object/from16 v25, v11

    .line 353
    .line 354
    invoke-direct/range {v21 .. v26}, Lj6/m;-><init>(Lj6/b0;Lj6/a0$e$d$a$b$b;Lj6/a0$a;Lj6/a0$e$d$a$b$c;Lj6/b0;)V

    .line 355
    .line 356
    .line 357
    if-nez v8, :cond_a

    .line 358
    .line 359
    const-string v2, " uiOrientation"

    .line 360
    .line 361
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    :cond_a
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    if-eqz v2, :cond_d

    .line 370
    .line 371
    new-instance v2, Lj6/l;

    .line 372
    .line 373
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 374
    .line 375
    .line 376
    move-result v21

    .line 377
    move-object/from16 v16, v2

    .line 378
    .line 379
    invoke-direct/range {v16 .. v21}, Lj6/l;-><init>(Lj6/a0$e$d$a$b;Lj6/b0;Lj6/b0;Ljava/lang/Boolean;I)V

    .line 380
    .line 381
    .line 382
    iput-object v2, v14, Lj6/k$a;->c:Lj6/a0$e$d$a;

    .line 383
    .line 384
    invoke-virtual {v10, v12}, Lh6/z;->b(I)Lj6/s;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    iput-object v2, v14, Lj6/k$a;->d:Lj6/a0$e$d$c;

    .line 389
    .line 390
    invoke-virtual {v14}, Lj6/k$a;->a()Lj6/k;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    iget-object v3, v9, Lh6/m0;->d:Li6/b;

    .line 395
    .line 396
    iget-object v4, v9, Lh6/m0;->e:Lh6/n0;

    .line 397
    .line 398
    invoke-static {v2, v3, v4}, Lh6/m0;->a(Lj6/k;Li6/b;Lh6/n0;)Lj6/k;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    iget-object v3, v9, Lh6/m0;->b:Lm6/e;

    .line 403
    .line 404
    const/4 v4, 0x1

    .line 405
    invoke-virtual {v3, v2, v0, v4}, Lm6/e;->c(Lj6/k;Ljava/lang/String;Z)V

    .line 406
    .line 407
    .line 408
    const-string v0, ".ae"

    .line 409
    .line 410
    :try_start_0
    iget-object v2, v6, Lh6/t;->f:Lm6/f;

    .line 411
    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    move-wide/from16 v4, v28

    .line 418
    .line 419
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    new-instance v3, Ljava/io/File;

    .line 430
    .line 431
    iget-object v2, v2, Lm6/f;->a:Ljava/io/File;

    .line 432
    .line 433
    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_b

    .line 441
    .line 442
    goto :goto_7

    .line 443
    :cond_b
    new-instance v0, Ljava/io/IOException;

    .line 444
    .line 445
    const-string v2, "Create new file failed."

    .line 446
    .line 447
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    const-string v2, "Could not create app exception marker file."

    .line 453
    .line 454
    move-object/from16 v3, v27

    .line 455
    .line 456
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    .line 458
    .line 459
    :goto_7
    iget-object v0, v1, Lh6/m;->d:Lo6/d;

    .line 460
    .line 461
    const/4 v2, 0x0

    .line 462
    invoke-virtual {v6, v2, v0}, Lh6/t;->c(ZLo6/d;)V

    .line 463
    .line 464
    .line 465
    invoke-static {v6}, Lh6/t;->a(Lh6/t;)V

    .line 466
    .line 467
    .line 468
    iget-object v2, v6, Lh6/t;->b:Lh6/c0;

    .line 469
    .line 470
    invoke-virtual {v2}, Lh6/c0;->a()Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    if-nez v2, :cond_c

    .line 475
    .line 476
    const/4 v2, 0x0

    .line 477
    invoke-static {v2}, Lh5/n;->e(Ljava/lang/Object;)Lh5/z;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    goto :goto_8

    .line 482
    :cond_c
    iget-object v2, v6, Lh6/t;->d:Lh6/f;

    .line 483
    .line 484
    iget-object v2, v2, Lh6/f;->a:Ljava/util/concurrent/Executor;

    .line 485
    .line 486
    check-cast v0, Lo6/c;

    .line 487
    .line 488
    iget-object v0, v0, Lo6/c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    check-cast v0, Lh5/l;

    .line 495
    .line 496
    iget-object v0, v0, Lh5/l;->a:Lh5/z;

    .line 497
    .line 498
    new-instance v3, Lh6/l;

    .line 499
    .line 500
    invoke-direct {v3, v1, v2}, Lh6/l;-><init>(Lh6/m;Ljava/util/concurrent/Executor;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0, v2, v3}, Lh5/z;->n(Ljava/util/concurrent/Executor;Lh5/j;)Lh5/k;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    :goto_8
    return-object v0

    .line 508
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 509
    .line 510
    invoke-virtual {v15, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    throw v0

    .line 518
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 519
    .line 520
    invoke-virtual {v15, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    throw v0
.end method
