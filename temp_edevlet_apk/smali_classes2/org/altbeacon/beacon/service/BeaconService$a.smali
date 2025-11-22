.class public final Lorg/altbeacon/beacon/service/BeaconService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/BeaconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/altbeacon/beacon/service/BeaconService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$a;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lorg/altbeacon/beacon/service/BeaconService;

    .line 9
    .line 10
    if-eqz v1, :cond_11

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-class v2, Lgd/l;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lkd/o;

    .line 26
    .line 27
    invoke-direct {v2}, Lkd/o;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "region"

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x1

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lgd/l;

    .line 45
    .line 46
    iput-object v3, v2, Lkd/o;->a:Lgd/l;

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v3, 0x0

    .line 51
    :goto_0
    const-string v4, "scanPeriod"

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Ljava/lang/Long;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    iput-wide v3, v2, Lkd/o;->b:J

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    :cond_1
    const-string v4, "betweenScanPeriod"

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_2

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Ljava/lang/Long;

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v7

    .line 90
    iput-wide v7, v2, Lkd/o;->c:J

    .line 91
    .line 92
    :cond_2
    const-string v4, "backgroundFlag"

    .line 93
    .line 94
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_3

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    iput-boolean v4, v2, Lkd/o;->d:Z

    .line 111
    .line 112
    :cond_3
    const-string v4, "callbackPackageName"

    .line 113
    .line 114
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_4

    .line 119
    .line 120
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/lang/String;

    .line 125
    .line 126
    iput-object v0, v2, Lkd/o;->e:Ljava/lang/String;

    .line 127
    .line 128
    :cond_4
    const/4 v0, 0x0

    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    move-object v2, v0

    .line 133
    :goto_1
    if-eqz v2, :cond_d

    .line 134
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    .line 136
    .line 137
    const/4 v3, 0x2

    .line 138
    if-eq v0, v3, :cond_b

    .line 139
    .line 140
    const/4 v3, 0x3

    .line 141
    if-eq v0, v3, :cond_9

    .line 142
    .line 143
    const/4 v3, 0x4

    .line 144
    if-eq v0, v3, :cond_8

    .line 145
    .line 146
    const/4 v3, 0x5

    .line 147
    if-eq v0, v3, :cond_7

    .line 148
    .line 149
    const/4 v3, 0x6

    .line 150
    if-eq v0, v3, :cond_6

    .line 151
    .line 152
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_4

    .line 156
    .line 157
    :cond_6
    const-string p1, "BeaconService"

    .line 158
    .line 159
    const-string v0, "set scan intervals received"

    .line 160
    .line 161
    new-array v3, v5, [Ljava/lang/Object;

    .line 162
    .line 163
    invoke-static {p1, v0, v3}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_7
    const-string p1, "BeaconService"

    .line 168
    .line 169
    const-string v0, "stop monitoring received"

    .line 170
    .line 171
    new-array v3, v5, [Ljava/lang/Object;

    .line 172
    .line 173
    invoke-static {p1, v0, v3}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, v2, Lkd/o;->a:Lgd/l;

    .line 177
    .line 178
    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/service/BeaconService;->b(Lgd/l;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_8
    const-string p1, "BeaconService"

    .line 183
    .line 184
    const-string v0, "start monitoring received"

    .line 185
    .line 186
    new-array v3, v5, [Ljava/lang/Object;

    .line 187
    .line 188
    invoke-static {p1, v0, v3}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    iget-object p1, v2, Lkd/o;->a:Lgd/l;

    .line 192
    .line 193
    new-instance v0, Lkd/a;

    .line 194
    .line 195
    invoke-direct {v0}, Lkd/a;-><init>()V

    .line 196
    .line 197
    .line 198
    new-array v3, v5, [Ljava/lang/Object;

    .line 199
    .line 200
    const-string v4, "BeaconService"

    .line 201
    .line 202
    const-string v7, "startMonitoring called"

    .line 203
    .line 204
    invoke-static {v4, v7, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iget-object v3, v1, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 208
    .line 209
    iget-object v3, v3, Lkd/k;->d:Lkd/e;

    .line 210
    .line 211
    invoke-virtual {v3, p1, v0}, Lkd/e;->b(Lgd/l;Lkd/a;)V

    .line 212
    .line 213
    .line 214
    new-array p1, v6, [Ljava/lang/Object;

    .line 215
    .line 216
    iget-object v0, v1, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 217
    .line 218
    iget-object v0, v0, Lkd/k;->d:Lkd/e;

    .line 219
    .line 220
    invoke-virtual {v0}, Lkd/e;->g()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    aput-object v0, p1, v5

    .line 229
    .line 230
    const-string v0, "Currently monitoring %s regions."

    .line 231
    .line 232
    invoke-static {v4, v0, p1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    iget-object p1, v1, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 236
    .line 237
    iget-object p1, p1, Lkd/k;->c:Lld/b;

    .line 238
    .line 239
    if-eqz p1, :cond_a

    .line 240
    .line 241
    invoke-virtual {p1}, Lld/b;->o()V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_9
    const-string p1, "BeaconService"

    .line 246
    .line 247
    const-string v0, "stop ranging received"

    .line 248
    .line 249
    new-array v3, v5, [Ljava/lang/Object;

    .line 250
    .line 251
    invoke-static {p1, v0, v3}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    iget-object p1, v2, Lkd/o;->a:Lgd/l;

    .line 255
    .line 256
    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/service/BeaconService;->c(Lgd/l;)V

    .line 257
    .line 258
    .line 259
    :cond_a
    :goto_2
    iget-wide v3, v2, Lkd/o;->b:J

    .line 260
    .line 261
    iget-wide v5, v2, Lkd/o;->c:J

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_b
    const-string p1, "BeaconService"

    .line 265
    .line 266
    const-string v0, "start ranging received"

    .line 267
    .line 268
    new-array v3, v5, [Ljava/lang/Object;

    .line 269
    .line 270
    invoke-static {p1, v0, v3}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    iget-object p1, v2, Lkd/o;->a:Lgd/l;

    .line 274
    .line 275
    new-instance v0, Lkd/a;

    .line 276
    .line 277
    invoke-direct {v0}, Lkd/a;-><init>()V

    .line 278
    .line 279
    .line 280
    iget-object v3, v1, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 281
    .line 282
    iget-object v3, v3, Lkd/k;->e:Ljava/util/HashMap;

    .line 283
    .line 284
    monitor-enter v3

    .line 285
    :try_start_0
    iget-object v4, v1, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 286
    .line 287
    iget-object v4, v4, Lkd/k;->e:Ljava/util/HashMap;

    .line 288
    .line 289
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    if-eqz v4, :cond_c

    .line 294
    .line 295
    const-string v4, "BeaconService"

    .line 296
    .line 297
    const-string v7, "Already ranging that region -- will replace existing region."

    .line 298
    .line 299
    new-array v8, v5, [Ljava/lang/Object;

    .line 300
    .line 301
    invoke-static {v4, v7, v8}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    iget-object v4, v1, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 305
    .line 306
    iget-object v4, v4, Lkd/k;->e:Ljava/util/HashMap;

    .line 307
    .line 308
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    :cond_c
    iget-object v4, v1, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 312
    .line 313
    iget-object v4, v4, Lkd/k;->e:Ljava/util/HashMap;

    .line 314
    .line 315
    new-instance v7, Lkd/f;

    .line 316
    .line 317
    invoke-direct {v7, v0}, Lkd/f;-><init>(Lkd/a;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    const-string p1, "BeaconService"

    .line 324
    .line 325
    const-string v0, "Currently ranging %s regions."

    .line 326
    .line 327
    new-array v4, v6, [Ljava/lang/Object;

    .line 328
    .line 329
    iget-object v6, v1, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 330
    .line 331
    iget-object v6, v6, Lkd/k;->e:Ljava/util/HashMap;

    .line 332
    .line 333
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    aput-object v6, v4, v5

    .line 342
    .line 343
    invoke-static {p1, v0, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object p1, v1, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 348
    .line 349
    iget-object p1, p1, Lkd/k;->c:Lld/b;

    .line 350
    .line 351
    if-eqz p1, :cond_a

    .line 352
    .line 353
    invoke-virtual {p1}, Lld/b;->o()V

    .line 354
    .line 355
    .line 356
    goto :goto_2

    .line 357
    :goto_3
    iget-boolean p1, v2, Lkd/o;->d:Z

    .line 358
    .line 359
    move-wide v2, v3

    .line 360
    move-wide v4, v5

    .line 361
    move v6, p1

    .line 362
    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/BeaconService;->a(JJZ)V

    .line 363
    .line 364
    .line 365
    goto :goto_4

    .line 366
    :catchall_0
    move-exception p1

    .line 367
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    throw p1

    .line 369
    :cond_d
    iget v2, p1, Landroid/os/Message;->what:I

    .line 370
    .line 371
    const/4 v3, 0x7

    .line 372
    if-ne v2, v3, :cond_10

    .line 373
    .line 374
    const-string v2, "BeaconService"

    .line 375
    .line 376
    const-string v3, "Received settings update"

    .line 377
    .line 378
    new-array v4, v5, [Ljava/lang/Object;

    .line 379
    .line 380
    invoke-static {v2, v3, v4}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    sget v2, Lkd/n;->g:I

    .line 388
    .line 389
    const-class v2, Lgd/l;

    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 396
    .line 397
    .line 398
    const-string v2, "SettingsData"

    .line 399
    .line 400
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    if-eqz v3, :cond_e

    .line 405
    .line 406
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    move-object v0, p1

    .line 411
    check-cast v0, Lkd/n;

    .line 412
    .line 413
    :cond_e
    if-eqz v0, :cond_f

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Lkd/n;->a(Lorg/altbeacon/beacon/service/BeaconService;)V

    .line 416
    .line 417
    .line 418
    goto :goto_4

    .line 419
    :cond_f
    const-string p1, "BeaconService"

    .line 420
    .line 421
    const-string v0, "Settings data missing"

    .line 422
    .line 423
    new-array v1, v5, [Ljava/lang/Object;

    .line 424
    .line 425
    invoke-static {p1, v0, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    goto :goto_4

    .line 429
    :cond_10
    const-string v0, "BeaconService"

    .line 430
    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    const-string v2, "Received unknown message from other process : "

    .line 434
    .line 435
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    iget p1, p1, Landroid/os/Message;->what:I

    .line 439
    .line 440
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    new-array v1, v5, [Ljava/lang/Object;

    .line 448
    .line 449
    invoke-static {v0, p1, v1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    :cond_11
    :goto_4
    return-void
.end method
