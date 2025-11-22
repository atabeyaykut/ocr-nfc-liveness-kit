.class public final Lorg/altbeacon/beacon/service/ScanJob$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/service/ScanJob;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/job/JobParameters;

.field public final synthetic b:Lorg/altbeacon/beacon/service/ScanJob;


# direct methods
.method public constructor <init>(Lorg/altbeacon/beacon/service/ScanJob;Landroid/app/job/JobParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    iput-object p2, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->a:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 2
    .line 3
    invoke-static {v0}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 7
    .line 8
    sget v1, Lorg/altbeacon/beacon/service/ScanJob;->f:I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkd/m;->d(Landroid/content/Context;)Lkd/m;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 18
    .line 19
    new-instance v1, Lkd/k;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lkd/k;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 33
    .line 34
    iget-object v3, v2, Lkd/m;->b:Lkd/e;

    .line 35
    .line 36
    iput-object v3, v1, Lkd/k;->d:Lkd/e;

    .line 37
    .line 38
    iget-object v2, v2, Lkd/m;->a:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lkd/k;->g(Ljava/util/HashMap;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 44
    .line 45
    iget-object v2, v2, Lkd/m;->c:Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lkd/k;->f(Ljava/util/HashSet;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 51
    .line 52
    iget-object v3, v2, Lkd/m;->d:Lkd/c;

    .line 53
    .line 54
    iput-object v3, v1, Lkd/k;->g:Lkd/c;

    .line 55
    .line 56
    iget-object v3, v1, Lkd/k;->c:Lld/b;

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    const/4 v5, 0x0

    .line 60
    if-nez v3, :cond_0

    .line 61
    .line 62
    :try_start_0
    invoke-virtual {v2}, Lkd/m;->a()Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v1, v2}, Lkd/k;->b(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    new-array v0, v5, [Ljava/lang/Object;

    .line 75
    .line 76
    const-string v1, "ScanJob"

    .line 77
    .line 78
    const-string v2, "Failed to create CycledLeScanner thread."

    .line 79
    .line 80
    invoke-static {v1, v2, v0}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    :goto_0
    iput-object v1, v0, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 86
    .line 87
    const/4 v0, 0x1

    .line 88
    :goto_1
    if-nez v0, :cond_1

    .line 89
    .line 90
    sget v0, Lorg/altbeacon/beacon/service/ScanJob;->f:I

    .line 91
    .line 92
    const-string v0, "ScanJob"

    .line 93
    .line 94
    const-string v1, "Cannot allocate a scanner to look for beacons.  System resources are low."

    .line 95
    .line 96
    new-array v2, v5, [Ljava/lang/Object;

    .line 97
    .line 98
    invoke-static {v0, v1, v2}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 102
    .line 103
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->a:Landroid/app/job/JobParameters;

    .line 104
    .line 105
    invoke-virtual {v0, v1, v5}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-static {}, Lkd/l;->c()Lkd/l;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lkd/l;->b()V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->a:Landroid/app/job/JobParameters;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 127
    .line 128
    const-string v2, "immediateScanJobId"

    .line 129
    .line 130
    invoke-static {v1, v2}, Lorg/altbeacon/beacon/service/ScanJob;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-ne v0, v1, :cond_2

    .line 135
    .line 136
    const-string v0, "ScanJob"

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v2, "Running immediate scan job: instance is "

    .line 141
    .line 142
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    new-array v2, v5, [Ljava/lang/Object;

    .line 155
    .line 156
    invoke-static {v0, v1, v2}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_2
    const-string v0, "ScanJob"

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v2, "Running periodic scan job: instance is "

    .line 165
    .line 166
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v2, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    new-array v2, v5, [Ljava/lang/Object;

    .line 179
    .line 180
    invoke-static {v0, v1, v2}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-static {}, Lkd/l;->c()Lkd/l;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iget-object v2, v1, Lkd/l;->b:Ljava/util/ArrayList;

    .line 190
    .line 191
    new-instance v3, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object v3, v1, Lkd/l;->b:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 199
    .line 200
    .line 201
    const-string v1, "ScanJob"

    .line 202
    .line 203
    const-string v2, "Processing %d queued scan results"

    .line 204
    .line 205
    new-array v3, v4, [Ljava/lang/Object;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    aput-object v4, v3, v5

    .line 216
    .line 217
    invoke-static {v1, v2, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_4

    .line 229
    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 235
    .line 236
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    if-eqz v2, :cond_3

    .line 241
    .line 242
    iget-object v3, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 243
    .line 244
    iget-object v6, v3, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 245
    .line 246
    if-eqz v6, :cond_3

    .line 247
    .line 248
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    .line 257
    .line 258
    .line 259
    move-result-object v11

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 261
    .line 262
    .line 263
    move-result-wide v2

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 265
    .line 266
    .line 267
    move-result-wide v8

    .line 268
    sub-long/2addr v2, v8

    .line 269
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    .line 270
    .line 271
    .line 272
    move-result-wide v8

    .line 273
    const-wide/32 v12, 0xf4240

    .line 274
    .line 275
    .line 276
    div-long/2addr v8, v12

    .line 277
    add-long/2addr v8, v2

    .line 278
    invoke-virtual/range {v6 .. v11}, Lkd/k;->d(IJLandroid/bluetooth/BluetoothDevice;[B)V

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_4
    sget v0, Lorg/altbeacon/beacon/service/ScanJob;->f:I

    .line 283
    .line 284
    const-string v0, "ScanJob"

    .line 285
    .line 286
    const-string v1, "Done processing queued scan results"

    .line 287
    .line 288
    new-array v2, v5, [Ljava/lang/Object;

    .line 289
    .line 290
    invoke-static {v0, v1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 294
    .line 295
    monitor-enter v0

    .line 296
    :try_start_1
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 297
    .line 298
    iget-boolean v2, v1, Lorg/altbeacon/beacon/service/ScanJob;->e:Z

    .line 299
    .line 300
    if-eqz v2, :cond_5

    .line 301
    .line 302
    const-string v1, "ScanJob"

    .line 303
    .line 304
    const-string v2, "Quitting scan job before we even start.  Somebody told us to stop."

    .line 305
    .line 306
    new-array v3, v5, [Ljava/lang/Object;

    .line 307
    .line 308
    invoke-static {v1, v2, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 312
    .line 313
    iget-object v2, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->a:Landroid/app/job/JobParameters;

    .line 314
    .line 315
    invoke-virtual {v1, v2, v5}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 316
    .line 317
    .line 318
    monitor-exit v0

    .line 319
    return-void

    .line 320
    :cond_5
    iget-boolean v2, v1, Lorg/altbeacon/beacon/service/ScanJob;->d:Z

    .line 321
    .line 322
    if-eqz v2, :cond_6

    .line 323
    .line 324
    const-string v1, "ScanJob"

    .line 325
    .line 326
    const-string v2, "Scanning already started.  Resetting for current parameters"

    .line 327
    .line 328
    new-array v3, v5, [Ljava/lang/Object;

    .line 329
    .line 330
    invoke-static {v1, v2, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 334
    .line 335
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanJob;->c()Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    goto :goto_4

    .line 340
    :cond_6
    invoke-static {v1}, Lorg/altbeacon/beacon/service/ScanJob;->a(Lorg/altbeacon/beacon/service/ScanJob;)Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    :goto_4
    iget-object v2, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 345
    .line 346
    iget-object v2, v2, Lorg/altbeacon/beacon/service/ScanJob;->b:Landroid/os/Handler;

    .line 347
    .line 348
    const/4 v3, 0x0

    .line 349
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    if-eqz v1, :cond_7

    .line 353
    .line 354
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 355
    .line 356
    iget-object v1, v1, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 357
    .line 358
    if-eqz v1, :cond_8

    .line 359
    .line 360
    const-string v1, "ScanJob"

    .line 361
    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    const-string v3, "Scan job running for "

    .line 368
    .line 369
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    iget-object v3, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 373
    .line 374
    iget-object v3, v3, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 375
    .line 376
    invoke-virtual {v3}, Lkd/m;->c()I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v3, " millis"

    .line 384
    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    new-array v3, v5, [Ljava/lang/Object;

    .line 393
    .line 394
    invoke-static {v1, v2, v3}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 398
    .line 399
    iget-object v2, v1, Lorg/altbeacon/beacon/service/ScanJob;->b:Landroid/os/Handler;

    .line 400
    .line 401
    new-instance v3, Lorg/altbeacon/beacon/service/ScanJob$a$a;

    .line 402
    .line 403
    invoke-direct {v3, p0}, Lorg/altbeacon/beacon/service/ScanJob$a$a;-><init>(Lorg/altbeacon/beacon/service/ScanJob$a;)V

    .line 404
    .line 405
    .line 406
    iget-object v1, v1, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 407
    .line 408
    invoke-virtual {v1}, Lkd/m;->c()I

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    int-to-long v4, v1

    .line 413
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 414
    .line 415
    .line 416
    goto :goto_5

    .line 417
    :cond_7
    const-string v1, "ScanJob"

    .line 418
    .line 419
    const-string v2, "Scanning not started so Scan job is complete."

    .line 420
    .line 421
    new-array v3, v5, [Ljava/lang/Object;

    .line 422
    .line 423
    invoke-static {v1, v2, v3}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 427
    .line 428
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanJob;->e()V

    .line 429
    .line 430
    .line 431
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 432
    .line 433
    iget-object v1, v1, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 434
    .line 435
    invoke-virtual {v1}, Lkd/m;->e()V

    .line 436
    .line 437
    .line 438
    const-string v1, "ScanJob"

    .line 439
    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    .line 445
    const-string v3, "ScanJob Lifecycle STOP (start fail): "

    .line 446
    .line 447
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    iget-object v3, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 451
    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    new-array v3, v5, [Ljava/lang/Object;

    .line 460
    .line 461
    invoke-static {v1, v2, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 465
    .line 466
    iget-object v2, p0, Lorg/altbeacon/beacon/service/ScanJob$a;->a:Landroid/app/job/JobParameters;

    .line 467
    .line 468
    invoke-virtual {v1, v2, v5}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 469
    .line 470
    .line 471
    :cond_8
    :goto_5
    monitor-exit v0

    .line 472
    return-void

    .line 473
    :catchall_0
    move-exception v1

    .line 474
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    throw v1
.end method
