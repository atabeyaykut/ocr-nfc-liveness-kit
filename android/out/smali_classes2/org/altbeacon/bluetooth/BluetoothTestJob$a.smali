.class public final Lorg/altbeacon/bluetooth/BluetoothTestJob$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/bluetooth/BluetoothTestJob;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/job/JobParameters;

.field public final synthetic b:Lorg/altbeacon/bluetooth/BluetoothTestJob;


# direct methods
.method public constructor <init>(Lorg/altbeacon/bluetooth/BluetoothTestJob;Landroid/app/job/JobParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$a;->b:Lorg/altbeacon/bluetooth/BluetoothTestJob;

    iput-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$a;->a:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget v0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v0, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v3, "BluetoothTestJob"

    .line 9
    .line 10
    const-string v4, "Bluetooth Test Job running"

    .line 11
    .line 12
    invoke-static {v3, v4, v0}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v4, v1, Lorg/altbeacon/bluetooth/BluetoothTestJob$a;->a:Landroid/app/job/JobParameters;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v5, "test_type"

    .line 22
    .line 23
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v0, 0x1

    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    const-string v6, "No test specified.  Done with job."

    .line 31
    .line 32
    new-array v7, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {v3, v6, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v6, 0x0

    .line 40
    :goto_0
    and-int/lit8 v7, v5, 0x1

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    const-wide/16 v9, 0x3e8

    .line 44
    .line 45
    const-string v11, "c"

    .line 46
    .line 47
    iget-object v12, v1, Lorg/altbeacon/bluetooth/BluetoothTestJob$a;->b:Lorg/altbeacon/bluetooth/BluetoothTestJob;

    .line 48
    .line 49
    if-ne v7, v0, :cond_9

    .line 50
    .line 51
    const-string v0, "Scan test specified."

    .line 52
    .line 53
    new-array v6, v2, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {v3, v0, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lnd/c;->d:Lnd/c;

    .line 59
    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    new-instance v0, Lnd/c;

    .line 63
    .line 64
    invoke-direct {v0}, Lnd/c;-><init>()V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lnd/c;->d:Lnd/c;

    .line 68
    .line 69
    :cond_1
    sget-object v6, Lnd/c;->d:Lnd/c;

    .line 70
    .line 71
    invoke-virtual {v6, v12}, Lnd/c;->a(Lorg/altbeacon/bluetooth/BluetoothTestJob;)V

    .line 72
    .line 73
    .line 74
    iput-object v8, v6, Lnd/c;->c:Ljava/lang/Boolean;

    .line 75
    .line 76
    const-string v0, "Starting scan test"

    .line 77
    .line 78
    new-array v7, v2, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {v11, v0, v7}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v7

    .line 87
    iget-object v0, v6, Lnd/c;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v13, Lnd/a;

    .line 96
    .line 97
    invoke-direct {v13, v6, v0}, Lnd/a;-><init>(Lnd/c;Landroid/bluetooth/le/BluetoothLeScanner;)V

    .line 98
    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object v14, v6, Lnd/c;->c:Ljava/lang/Boolean;

    .line 106
    .line 107
    if-nez v14, :cond_3

    .line 108
    .line 109
    const-string v14, "Waiting for scan test to complete..."

    .line 110
    .line 111
    new-array v15, v2, [Ljava/lang/Object;

    .line 112
    .line 113
    invoke-static {v11, v14, v15}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    .line 115
    .line 116
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    .line 118
    .line 119
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v14

    .line 123
    sub-long/2addr v14, v7

    .line 124
    const-wide/16 v16, 0x1388

    .line 125
    .line 126
    cmp-long v18, v14, v16

    .line 127
    .line 128
    if-lez v18, :cond_2

    .line 129
    .line 130
    const-string v7, "Timeout running scan test"

    .line 131
    .line 132
    new-array v8, v2, [Ljava/lang/Object;

    .line 133
    .line 134
    invoke-static {v11, v7, v8}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {v0, v13}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :catch_1
    move-exception v0

    .line 142
    const/4 v7, 0x1

    .line 143
    new-array v7, v7, [Ljava/lang/Object;

    .line 144
    .line 145
    aput-object v0, v7, v2

    .line 146
    .line 147
    const-string v0, "NullPointerException. Cannot run scan test."

    .line 148
    .line 149
    invoke-static {v11, v0, v7}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catch_2
    const-string v0, "Bluetooth is off.  Cannot run scan test."

    .line 154
    .line 155
    new-array v7, v2, [Ljava/lang/Object;

    .line 156
    .line 157
    invoke-static {v11, v0, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    const-string v0, "Cannot get scanner"

    .line 162
    .line 163
    new-array v7, v2, [Ljava/lang/Object;

    .line 164
    .line 165
    invoke-static {v11, v0, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :cond_5
    :goto_1
    const-string v0, "scan test complete"

    .line 169
    .line 170
    new-array v7, v2, [Ljava/lang/Object;

    .line 171
    .line 172
    invoke-static {v11, v0, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, v6, Lnd/c;->c:Ljava/lang/Boolean;

    .line 176
    .line 177
    if-eqz v0, :cond_7

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    const/4 v0, 0x0

    .line 187
    goto :goto_3

    .line 188
    :cond_7
    :goto_2
    const/4 v0, 0x1

    .line 189
    :goto_3
    if-nez v0, :cond_8

    .line 190
    .line 191
    sget v0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->c:I

    .line 192
    .line 193
    const-string v0, "scan test failed"

    .line 194
    .line 195
    new-array v6, v2, [Ljava/lang/Object;

    .line 196
    .line 197
    invoke-static {v3, v0, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_8
    const/4 v6, 0x1

    .line 201
    :cond_9
    and-int/lit8 v0, v5, 0x2

    .line 202
    .line 203
    const/4 v7, 0x2

    .line 204
    if-ne v0, v7, :cond_11

    .line 205
    .line 206
    if-eqz v6, :cond_a

    .line 207
    .line 208
    const-wide/16 v6, 0x2710

    .line 209
    .line 210
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :catch_3
    nop

    .line 215
    :cond_a
    :goto_4
    sget v0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->c:I

    .line 216
    .line 217
    const-string v0, "Transmit test specified."

    .line 218
    .line 219
    new-array v6, v2, [Ljava/lang/Object;

    .line 220
    .line 221
    invoke-static {v3, v0, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    sget-object v0, Lnd/c;->d:Lnd/c;

    .line 225
    .line 226
    if-nez v0, :cond_b

    .line 227
    .line 228
    new-instance v0, Lnd/c;

    .line 229
    .line 230
    invoke-direct {v0}, Lnd/c;-><init>()V

    .line 231
    .line 232
    .line 233
    sput-object v0, Lnd/c;->d:Lnd/c;

    .line 234
    .line 235
    :cond_b
    sget-object v6, Lnd/c;->d:Lnd/c;

    .line 236
    .line 237
    invoke-virtual {v6, v12}, Lnd/c;->a(Lorg/altbeacon/bluetooth/BluetoothTestJob;)V

    .line 238
    .line 239
    .line 240
    const/4 v7, 0x0

    .line 241
    iput-object v7, v6, Lnd/c;->b:Ljava/lang/Boolean;

    .line 242
    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 244
    .line 245
    .line 246
    move-result-wide v8

    .line 247
    iget-object v0, v6, Lnd/c;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 248
    .line 249
    if-eqz v0, :cond_e

    .line 250
    .line 251
    :try_start_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 252
    .line 253
    .line 254
    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 255
    goto :goto_5

    .line 256
    :catch_4
    move-exception v0

    .line 257
    move-object v10, v0

    .line 258
    const/4 v0, 0x1

    .line 259
    new-array v0, v0, [Ljava/lang/Object;

    .line 260
    .line 261
    aput-object v10, v0, v2

    .line 262
    .line 263
    const-string v10, "Cannot get bluetoothLeAdvertiser"

    .line 264
    .line 265
    invoke-static {v11, v10, v0}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :goto_5
    if-eqz v7, :cond_c

    .line 269
    .line 270
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 271
    .line 272
    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    new-instance v10, Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 284
    .line 285
    invoke-direct {v10}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 286
    .line 287
    .line 288
    const/4 v13, 0x1

    .line 289
    new-array v13, v13, [B

    .line 290
    .line 291
    aput-byte v2, v13, v2

    .line 292
    .line 293
    invoke-virtual {v10, v2, v13}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    invoke-virtual {v10}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    const-string v13, "Starting transmitter test"

    .line 302
    .line 303
    new-array v14, v2, [Ljava/lang/Object;

    .line 304
    .line 305
    invoke-static {v11, v13, v14}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    new-instance v13, Lnd/b;

    .line 309
    .line 310
    invoke-direct {v13, v6, v7}, Lnd/b;-><init>(Lnd/c;Landroid/bluetooth/le/BluetoothLeAdvertiser;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v7, v0, v10, v13}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 314
    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_c
    const-string v0, "Cannot get advertiser"

    .line 318
    .line 319
    new-array v7, v2, [Ljava/lang/Object;

    .line 320
    .line 321
    invoke-static {v11, v0, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    :cond_d
    :goto_6
    iget-object v0, v6, Lnd/c;->b:Ljava/lang/Boolean;

    .line 325
    .line 326
    if-nez v0, :cond_e

    .line 327
    .line 328
    const-string v0, "Waiting for transmitter test to complete..."

    .line 329
    .line 330
    new-array v7, v2, [Ljava/lang/Object;

    .line 331
    .line 332
    invoke-static {v11, v0, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    const-wide/16 v13, 0x3e8

    .line 336
    .line 337
    :try_start_5
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 338
    .line 339
    .line 340
    goto :goto_7

    .line 341
    :catch_5
    nop

    .line 342
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 343
    .line 344
    .line 345
    move-result-wide v13

    .line 346
    sub-long/2addr v13, v8

    .line 347
    const-wide/16 v15, 0x1388

    .line 348
    .line 349
    cmp-long v0, v13, v15

    .line 350
    .line 351
    if-lez v0, :cond_d

    .line 352
    .line 353
    const-string v0, "Timeout running transmitter test"

    .line 354
    .line 355
    new-array v7, v2, [Ljava/lang/Object;

    .line 356
    .line 357
    invoke-static {v11, v0, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    :cond_e
    const-string v0, "transmitter test complete"

    .line 361
    .line 362
    new-array v7, v2, [Ljava/lang/Object;

    .line 363
    .line 364
    invoke-static {v11, v0, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    iget-object v0, v6, Lnd/c;->b:Ljava/lang/Boolean;

    .line 368
    .line 369
    if-eqz v0, :cond_f

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_f

    .line 376
    .line 377
    const/4 v0, 0x1

    .line 378
    goto :goto_8

    .line 379
    :cond_f
    const/4 v0, 0x0

    .line 380
    :goto_8
    if-nez v0, :cond_10

    .line 381
    .line 382
    sget v0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->c:I

    .line 383
    .line 384
    const-string v0, "transmit test failed"

    .line 385
    .line 386
    new-array v6, v2, [Ljava/lang/Object;

    .line 387
    .line 388
    invoke-static {v3, v0, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    :cond_10
    const/4 v6, 0x1

    .line 392
    :cond_11
    if-nez v6, :cond_12

    .line 393
    .line 394
    sget v0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->c:I

    .line 395
    .line 396
    const-string v0, "Unknown test type:"

    .line 397
    .line 398
    const-string v6, "  Exiting."

    .line 399
    .line 400
    invoke-static {v0, v5, v6}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    new-array v5, v2, [Ljava/lang/Object;

    .line 405
    .line 406
    invoke-static {v3, v0, v5}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    :cond_12
    invoke-virtual {v12, v4, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 410
    .line 411
    .line 412
    return-void
.end method
