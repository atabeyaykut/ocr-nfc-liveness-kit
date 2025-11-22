.class public final synthetic Ld6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/h;


# instance fields
.field public final synthetic a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld6/c;->a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    return-void
.end method


# virtual methods
.method public final i(Lc6/y;)Ljava/lang/Object;
    .locals 39

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Ld6/c;->a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-class v2, Lx5/c;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lc6/y;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lx5/c;

    .line 17
    .line 18
    const-class v3, Le6/a;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lc6/y;->i(Ljava/lang/Class;)La7/a;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-class v4, Lz5/a;

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Lc6/y;->i(Ljava/lang/Class;)La7/a;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-class v5, Lb7/d;

    .line 31
    .line 32
    invoke-virtual {v0, v5}, Lc6/y;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lb7/d;

    .line 37
    .line 38
    invoke-virtual {v2}, Lx5/c;->a()V

    .line 39
    .line 40
    .line 41
    iget-object v12, v2, Lx5/c;->a:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    sget-object v13, Lc5/y;->g:Lc5/y;

    .line 48
    .line 49
    const-string v6, "Initializing Firebase Crashlytics 18.2.6 for "

    .line 50
    .line 51
    invoke-static {v6, v5}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const/4 v7, 0x4

    .line 56
    invoke-virtual {v13, v7}, Lc5/y;->f(I)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    const-string v14, "FirebaseCrashlytics"

    .line 61
    .line 62
    const/4 v15, 0x0

    .line 63
    if-eqz v8, :cond_0

    .line 64
    .line 65
    invoke-static {v14, v6, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    :cond_0
    new-instance v11, Lm6/f;

    .line 69
    .line 70
    invoke-direct {v11, v12}, Lm6/f;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    new-instance v10, Lh6/c0;

    .line 74
    .line 75
    invoke-direct {v10, v2}, Lh6/c0;-><init>(Lx5/c;)V

    .line 76
    .line 77
    .line 78
    new-instance v9, Lh6/g0;

    .line 79
    .line 80
    invoke-direct {v9, v12, v5, v0, v10}, Lh6/g0;-><init>(Landroid/content/Context;Ljava/lang/String;Lb7/d;Lh6/c0;)V

    .line 81
    .line 82
    .line 83
    new-instance v6, Le6/c;

    .line 84
    .line 85
    invoke-direct {v6, v3}, Le6/c;-><init>(La7/a;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Ld6/a;

    .line 89
    .line 90
    invoke-direct {v0, v4}, Ld6/a;-><init>(La7/a;)V

    .line 91
    .line 92
    .line 93
    const-string v3, "Crashlytics Exception Handler"

    .line 94
    .line 95
    invoke-static {v3}, Lh6/f0;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 96
    .line 97
    .line 98
    move-result-object v16

    .line 99
    new-instance v8, Lh6/x;

    .line 100
    .line 101
    new-instance v5, Landroidx/camera/camera2/interop/c;

    .line 102
    .line 103
    const/4 v3, 0x6

    .line 104
    invoke-direct {v5, v3, v0}, Landroidx/camera/camera2/interop/c;-><init>(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    new-instance v4, Landroidx/camera/camera2/interop/d;

    .line 108
    .line 109
    invoke-direct {v4, v7, v0}, Landroidx/camera/camera2/interop/d;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    move-object v3, v8

    .line 113
    move-object v0, v4

    .line 114
    move-object v4, v2

    .line 115
    move-object/from16 v17, v5

    .line 116
    .line 117
    move-object v5, v9

    .line 118
    move-object v7, v10

    .line 119
    move-object/from16 v26, v8

    .line 120
    .line 121
    move-object/from16 v8, v17

    .line 122
    .line 123
    move-object/from16 v21, v9

    .line 124
    .line 125
    move-object v9, v0

    .line 126
    move-object v0, v10

    .line 127
    move-object v10, v11

    .line 128
    move-object v15, v11

    .line 129
    move-object/from16 v11, v16

    .line 130
    .line 131
    invoke-direct/range {v3 .. v11}, Lh6/x;-><init>(Lx5/c;Lh6/g0;Le6/c;Lh6/c0;Landroidx/camera/camera2/interop/c;Landroidx/camera/camera2/interop/d;Lm6/f;Ljava/util/concurrent/ExecutorService;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Lx5/c;->a()V

    .line 135
    .line 136
    .line 137
    iget-object v2, v2, Lx5/c;->c:Lx5/e;

    .line 138
    .line 139
    iget-object v2, v2, Lx5/e;->b:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v12}, Lh6/e;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v4, "Mapping file ID is: "

    .line 148
    .line 149
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v13, v3}, Lc5/y;->l(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance v10, Le6/d;

    .line 163
    .line 164
    invoke-direct {v10, v12}, Le6/d;-><init>(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    :try_start_0
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-virtual/range {v21 .. v21}, Lh6/g0;->d()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const/4 v4, 0x0

    .line 180
    invoke-virtual {v3, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 185
    .line 186
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v24

    .line 190
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 191
    .line 192
    if-nez v3, :cond_1

    .line 193
    .line 194
    const-string v3, "0.0"

    .line 195
    .line 196
    :cond_1
    move-object/from16 v23, v3

    .line 197
    .line 198
    new-instance v9, Lh6/a;

    .line 199
    .line 200
    const/16 v16, 0x0

    .line 201
    .line 202
    move-object v3, v9

    .line 203
    move-object v4, v2

    .line 204
    move-object v6, v11

    .line 205
    move-object/from16 v8, v24

    .line 206
    .line 207
    move-object v1, v9

    .line 208
    move-object/from16 v9, v23

    .line 209
    .line 210
    invoke-direct/range {v3 .. v10}, Lh6/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le6/d;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 211
    .line 212
    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v4, "Installer package name is: "

    .line 216
    .line 217
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v13, v3}, Lc5/y;->E(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v3, "com.google.firebase.crashlytics.startup"

    .line 231
    .line 232
    invoke-static {v3}, Lh6/f0;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    new-instance v4, Lb0/a;

    .line 237
    .line 238
    invoke-direct {v4}, Lb0/a;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual/range {v21 .. v21}, Lh6/g0;->d()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    new-instance v8, Lcom/google/android/gms/internal/clearcut/z;

    .line 246
    .line 247
    invoke-direct {v8}, Lcom/google/android/gms/internal/clearcut/z;-><init>()V

    .line 248
    .line 249
    .line 250
    new-instance v9, Lo6/e;

    .line 251
    .line 252
    invoke-direct {v9, v8}, Lo6/e;-><init>(Lcom/google/android/gms/internal/clearcut/z;)V

    .line 253
    .line 254
    .line 255
    new-instance v10, Lcom/google/android/gms/internal/measurement/w5;

    .line 256
    .line 257
    invoke-direct {v10, v15}, Lcom/google/android/gms/internal/measurement/w5;-><init>(Lm6/f;)V

    .line 258
    .line 259
    .line 260
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 261
    .line 262
    const/4 v7, 0x1

    .line 263
    new-array v7, v7, [Ljava/lang/Object;

    .line 264
    .line 265
    aput-object v2, v7, v16

    .line 266
    .line 267
    const-string v11, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings"

    .line 268
    .line 269
    invoke-static {v6, v11, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    new-instance v11, Lp4/m9;

    .line 274
    .line 275
    invoke-direct {v11, v7, v4}, Lp4/m9;-><init>(Ljava/lang/String;Lb0/a;)V

    .line 276
    .line 277
    .line 278
    const/4 v4, 0x2

    .line 279
    new-array v4, v4, [Ljava/lang/Object;

    .line 280
    .line 281
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 282
    .line 283
    sget-object v13, Lh6/g0;->h:Ljava/lang/String;

    .line 284
    .line 285
    const-string v15, ""

    .line 286
    .line 287
    invoke-virtual {v7, v13, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    aput-object v7, v4, v16

    .line 292
    .line 293
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 294
    .line 295
    const-string v15, ""

    .line 296
    .line 297
    invoke-virtual {v7, v13, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    const/4 v15, 0x1

    .line 302
    aput-object v7, v4, v15

    .line 303
    .line 304
    const-string v7, "%s/%s"

    .line 305
    .line 306
    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v18

    .line 310
    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 311
    .line 312
    const-string v6, ""

    .line 313
    .line 314
    invoke-virtual {v4, v13, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v19

    .line 318
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 319
    .line 320
    const-string v6, ""

    .line 321
    .line 322
    invoke-virtual {v4, v13, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v20

    .line 326
    const/4 v4, 0x4

    .line 327
    new-array v6, v4, [Ljava/lang/String;

    .line 328
    .line 329
    invoke-static {v12}, Lh6/e;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    aput-object v7, v6, v16

    .line 334
    .line 335
    const/4 v7, 0x1

    .line 336
    aput-object v2, v6, v7

    .line 337
    .line 338
    const/4 v7, 0x2

    .line 339
    aput-object v23, v6, v7

    .line 340
    .line 341
    const/4 v7, 0x3

    .line 342
    aput-object v24, v6, v7

    .line 343
    .line 344
    new-instance v7, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .line 348
    .line 349
    const/4 v13, 0x0

    .line 350
    :goto_0
    const-string v15, ""

    .line 351
    .line 352
    if-ge v13, v4, :cond_3

    .line 353
    .line 354
    aget-object v4, v6, v13

    .line 355
    .line 356
    move-object/from16 v16, v6

    .line 357
    .line 358
    if-eqz v4, :cond_2

    .line 359
    .line 360
    const-string v6, "-"

    .line 361
    .line 362
    invoke-virtual {v4, v6, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 367
    .line 368
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 376
    .line 377
    const/4 v4, 0x4

    .line 378
    move-object/from16 v6, v16

    .line 379
    .line 380
    goto :goto_0

    .line 381
    :cond_3
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 382
    .line 383
    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 394
    .line 395
    .line 396
    move-result v7

    .line 397
    if-eqz v7, :cond_4

    .line 398
    .line 399
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    check-cast v7, Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    goto :goto_1

    .line 409
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 414
    .line 415
    .line 416
    move-result v6

    .line 417
    if-lez v6, :cond_5

    .line 418
    .line 419
    invoke-static {v4}, Lh6/e;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    move-object/from16 v22, v4

    .line 424
    .line 425
    goto :goto_2

    .line 426
    :cond_5
    const/16 v22, 0x0

    .line 427
    .line 428
    :goto_2
    if-eqz v5, :cond_6

    .line 429
    .line 430
    const/4 v4, 0x4

    .line 431
    goto :goto_3

    .line 432
    :cond_6
    const/4 v4, 0x1

    .line 433
    :goto_3
    invoke-static {v4}, Landroidx/constraintlayout/core/a;->a(I)I

    .line 434
    .line 435
    .line 436
    move-result v25

    .line 437
    new-instance v7, Lp6/f;

    .line 438
    .line 439
    move-object/from16 v16, v7

    .line 440
    .line 441
    move-object/from16 v17, v2

    .line 442
    .line 443
    invoke-direct/range {v16 .. v25}, Lp6/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh6/g0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 444
    .line 445
    .line 446
    new-instance v2, Lo6/c;

    .line 447
    .line 448
    move-object v5, v2

    .line 449
    move-object v6, v12

    .line 450
    move-object v12, v0

    .line 451
    invoke-direct/range {v5 .. v12}, Lo6/c;-><init>(Landroid/content/Context;Lp6/f;Lcom/google/android/gms/internal/clearcut/z;Lo6/e;Lcom/google/android/gms/internal/measurement/w5;Lp4/m9;Lh6/c0;)V

    .line 452
    .line 453
    .line 454
    iget-object v0, v2, Lo6/c;->a:Landroid/content/Context;

    .line 455
    .line 456
    const-string v4, "com.google.firebase.crashlytics"

    .line 457
    .line 458
    const/4 v5, 0x0

    .line 459
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    const-string v4, "existing_instance_identifier"

    .line 464
    .line 465
    invoke-interface {v0, v4, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    iget-object v4, v2, Lo6/c;->b:Lp6/f;

    .line 470
    .line 471
    iget-object v4, v4, Lp6/f;->f:Ljava/lang/String;

    .line 472
    .line 473
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    const/4 v4, 0x1

    .line 478
    xor-int/2addr v0, v4

    .line 479
    iget-object v5, v2, Lo6/c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 480
    .line 481
    iget-object v6, v2, Lo6/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 482
    .line 483
    if-nez v0, :cond_7

    .line 484
    .line 485
    invoke-virtual {v2, v4}, Lo6/c;->a(I)Lp6/e;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    if-eqz v0, :cond_7

    .line 490
    .line 491
    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    check-cast v4, Lh5/l;

    .line 499
    .line 500
    iget-object v0, v0, Lp6/e;->a:Lp6/a;

    .line 501
    .line 502
    invoke-virtual {v4, v0}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    const/4 v4, 0x0

    .line 506
    invoke-static {v4}, Lh5/n;->e(Ljava/lang/Object;)Lh5/z;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    goto :goto_4

    .line 511
    :cond_7
    const/4 v0, 0x3

    .line 512
    invoke-virtual {v2, v0}, Lo6/c;->a(I)Lp6/e;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    if-eqz v0, :cond_8

    .line 517
    .line 518
    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    check-cast v4, Lh5/l;

    .line 526
    .line 527
    iget-object v0, v0, Lp6/e;->a:Lp6/a;

    .line 528
    .line 529
    invoke-virtual {v4, v0}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    :cond_8
    iget-object v0, v2, Lo6/c;->g:Lh6/c0;

    .line 533
    .line 534
    iget-object v4, v0, Lh6/c0;->f:Lh5/l;

    .line 535
    .line 536
    iget-object v4, v4, Lh5/l;->a:Lh5/z;

    .line 537
    .line 538
    iget-object v5, v0, Lh6/c0;->b:Ljava/lang/Object;

    .line 539
    .line 540
    monitor-enter v5

    .line 541
    :try_start_1
    iget-object v0, v0, Lh6/c0;->c:Lh5/l;

    .line 542
    .line 543
    iget-object v0, v0, Lh5/l;->a:Lh5/z;

    .line 544
    .line 545
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    sget-object v5, Lh6/p0;->a:Ljava/util/concurrent/ExecutorService;

    .line 547
    .line 548
    new-instance v5, Lh5/l;

    .line 549
    .line 550
    invoke-direct {v5}, Lh5/l;-><init>()V

    .line 551
    .line 552
    .line 553
    new-instance v6, Landroidx/camera/camera2/interop/c;

    .line 554
    .line 555
    const/4 v7, 0x7

    .line 556
    invoke-direct {v6, v7, v5}, Landroidx/camera/camera2/interop/c;-><init>(ILjava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v4, v3, v6}, Lh5/z;->e(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0, v3, v6}, Lh5/z;->e(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;

    .line 563
    .line 564
    .line 565
    new-instance v0, Lo6/b;

    .line 566
    .line 567
    invoke-direct {v0, v2}, Lo6/b;-><init>(Lo6/c;)V

    .line 568
    .line 569
    .line 570
    iget-object v4, v5, Lh5/l;->a:Lh5/z;

    .line 571
    .line 572
    invoke-virtual {v4, v3, v0}, Lh5/z;->n(Ljava/util/concurrent/Executor;Lh5/j;)Lh5/k;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    :goto_4
    new-instance v4, Ld6/d;

    .line 577
    .line 578
    invoke-direct {v4}, Ld6/d;-><init>()V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0, v3, v4}, Lh5/k;->e(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;

    .line 582
    .line 583
    .line 584
    move-object/from16 v4, v26

    .line 585
    .line 586
    iget-object v0, v4, Lh6/x;->h:Lm6/f;

    .line 587
    .line 588
    iget-object v5, v4, Lh6/x;->a:Landroid/content/Context;

    .line 589
    .line 590
    if-eqz v5, :cond_a

    .line 591
    .line 592
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    if-eqz v6, :cond_a

    .line 597
    .line 598
    const-string v7, "bool"

    .line 599
    .line 600
    const-string v8, "com.crashlytics.RequireBuildId"

    .line 601
    .line 602
    invoke-static {v5, v8, v7}, Lh6/e;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    move-result v7

    .line 606
    if-lez v7, :cond_9

    .line 607
    .line 608
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 609
    .line 610
    .line 611
    move-result v6

    .line 612
    goto :goto_5

    .line 613
    :cond_9
    const-string v6, "string"

    .line 614
    .line 615
    invoke-static {v5, v8, v6}, Lh6/e;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    move-result v6

    .line 619
    if-lez v6, :cond_a

    .line 620
    .line 621
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v6

    .line 625
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 626
    .line 627
    .line 628
    move-result v6

    .line 629
    goto :goto_5

    .line 630
    :cond_a
    const/4 v6, 0x1

    .line 631
    :goto_5
    const-string v7, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    .line 632
    .line 633
    if-nez v6, :cond_b

    .line 634
    .line 635
    const/4 v6, 0x2

    .line 636
    invoke-static {v14, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 637
    .line 638
    .line 639
    move-result v6

    .line 640
    if-eqz v6, :cond_c

    .line 641
    .line 642
    const-string v6, "Configured not to require a build ID."

    .line 643
    .line 644
    const/4 v8, 0x0

    .line 645
    invoke-static {v14, v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    .line 647
    .line 648
    goto :goto_6

    .line 649
    :cond_b
    iget-object v6, v1, Lh6/a;->b:Ljava/lang/String;

    .line 650
    .line 651
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 652
    .line 653
    .line 654
    move-result v6

    .line 655
    if-nez v6, :cond_d

    .line 656
    .line 657
    :cond_c
    :goto_6
    const/4 v6, 0x1

    .line 658
    goto :goto_7

    .line 659
    :cond_d
    const-string v6, "."

    .line 660
    .line 661
    invoke-static {v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    .line 663
    .line 664
    const-string v8, ".     |  | "

    .line 665
    .line 666
    invoke-static {v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .line 668
    .line 669
    const-string v8, ".     |  |"

    .line 670
    .line 671
    invoke-static {v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .line 673
    .line 674
    invoke-static {v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .line 676
    .line 677
    const-string v9, ".   \\ |  | /"

    .line 678
    .line 679
    invoke-static {v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    const-string v9, ".    \\    /"

    .line 683
    .line 684
    invoke-static {v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .line 686
    .line 687
    const-string v9, ".     \\  /"

    .line 688
    .line 689
    invoke-static {v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .line 691
    .line 692
    const-string v9, ".      \\/"

    .line 693
    .line 694
    invoke-static {v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    .line 696
    .line 697
    invoke-static {v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .line 699
    .line 700
    invoke-static {v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .line 702
    .line 703
    invoke-static {v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .line 705
    .line 706
    const-string v9, ".      /\\"

    .line 707
    .line 708
    invoke-static {v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    .line 710
    .line 711
    const-string v9, ".     /  \\"

    .line 712
    .line 713
    invoke-static {v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .line 715
    .line 716
    const-string v9, ".    /    \\"

    .line 717
    .line 718
    invoke-static {v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .line 720
    .line 721
    const-string v9, ".   / |  | \\"

    .line 722
    .line 723
    invoke-static {v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .line 725
    .line 726
    invoke-static {v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    .line 728
    .line 729
    invoke-static {v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .line 731
    .line 732
    invoke-static {v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .line 734
    .line 735
    invoke-static {v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    .line 737
    .line 738
    const/4 v6, 0x0

    .line 739
    :goto_7
    if-eqz v6, :cond_15

    .line 740
    .line 741
    :try_start_2
    new-instance v6, Lx0/t;

    .line 742
    .line 743
    const-string v7, "crash_marker"

    .line 744
    .line 745
    invoke-direct {v6, v7, v0}, Lx0/t;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 746
    .line 747
    .line 748
    iput-object v6, v4, Lh6/x;->e:Lx0/t;

    .line 749
    .line 750
    new-instance v6, Lx0/t;

    .line 751
    .line 752
    const-string v7, "initialization_marker"

    .line 753
    .line 754
    invoke-direct {v6, v7, v0}, Lx0/t;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 755
    .line 756
    .line 757
    iput-object v6, v4, Lh6/x;->d:Lx0/t;

    .line 758
    .line 759
    new-instance v32, Lh6/n0;

    .line 760
    .line 761
    invoke-direct/range {v32 .. v32}, Lh6/n0;-><init>()V

    .line 762
    .line 763
    .line 764
    new-instance v6, Li6/b;

    .line 765
    .line 766
    invoke-direct {v6, v0}, Li6/b;-><init>(Lm6/f;)V

    .line 767
    .line 768
    .line 769
    new-instance v0, Ls4/a9;

    .line 770
    .line 771
    const/4 v7, 0x1

    .line 772
    new-array v7, v7, [Lq6/b;

    .line 773
    .line 774
    new-instance v8, La2/b;

    .line 775
    .line 776
    invoke-direct {v8}, La2/b;-><init>()V

    .line 777
    .line 778
    .line 779
    const/4 v9, 0x0

    .line 780
    aput-object v8, v7, v9

    .line 781
    .line 782
    invoke-direct {v0, v7}, Ls4/a9;-><init>([Lq6/b;)V

    .line 783
    .line 784
    .line 785
    iget-object v7, v4, Lh6/x;->a:Landroid/content/Context;

    .line 786
    .line 787
    iget-object v8, v4, Lh6/x;->g:Lh6/g0;

    .line 788
    .line 789
    iget-object v9, v4, Lh6/x;->h:Lm6/f;

    .line 790
    .line 791
    move-object/from16 v27, v7

    .line 792
    .line 793
    move-object/from16 v28, v8

    .line 794
    .line 795
    move-object/from16 v29, v9

    .line 796
    .line 797
    move-object/from16 v30, v1

    .line 798
    .line 799
    move-object/from16 v31, v6

    .line 800
    .line 801
    move-object/from16 v33, v0

    .line 802
    .line 803
    move-object/from16 v34, v2

    .line 804
    .line 805
    invoke-static/range {v27 .. v34}, Lh6/m0;->b(Landroid/content/Context;Lh6/g0;Lm6/f;Lh6/a;Li6/b;Lh6/n0;Ls4/a9;Lo6/c;)Lh6/m0;

    .line 806
    .line 807
    .line 808
    move-result-object v36

    .line 809
    new-instance v0, Lh6/t;

    .line 810
    .line 811
    iget-object v7, v4, Lh6/x;->a:Landroid/content/Context;

    .line 812
    .line 813
    iget-object v8, v4, Lh6/x;->l:Lh6/f;

    .line 814
    .line 815
    iget-object v9, v4, Lh6/x;->g:Lh6/g0;

    .line 816
    .line 817
    iget-object v10, v4, Lh6/x;->b:Lh6/c0;

    .line 818
    .line 819
    iget-object v11, v4, Lh6/x;->h:Lm6/f;

    .line 820
    .line 821
    iget-object v12, v4, Lh6/x;->e:Lx0/t;

    .line 822
    .line 823
    iget-object v13, v4, Lh6/x;->m:Le6/a;

    .line 824
    .line 825
    iget-object v15, v4, Lh6/x;->j:Lf6/a;

    .line 826
    .line 827
    move-object/from16 v27, v0

    .line 828
    .line 829
    move-object/from16 v28, v7

    .line 830
    .line 831
    move-object/from16 v29, v8

    .line 832
    .line 833
    move-object/from16 v30, v9

    .line 834
    .line 835
    move-object/from16 v31, v10

    .line 836
    .line 837
    move-object/from16 v32, v11

    .line 838
    .line 839
    move-object/from16 v33, v12

    .line 840
    .line 841
    move-object/from16 v34, v1

    .line 842
    .line 843
    move-object/from16 v35, v6

    .line 844
    .line 845
    move-object/from16 v37, v13

    .line 846
    .line 847
    move-object/from16 v38, v15

    .line 848
    .line 849
    invoke-direct/range {v27 .. v38}, Lh6/t;-><init>(Landroid/content/Context;Lh6/f;Lh6/g0;Lh6/c0;Lm6/f;Lx0/t;Lh6/a;Li6/b;Lh6/m0;Le6/a;Lf6/a;)V

    .line 850
    .line 851
    .line 852
    iput-object v0, v4, Lh6/x;->f:Lh6/t;

    .line 853
    .line 854
    iget-object v0, v4, Lh6/x;->d:Lx0/t;

    .line 855
    .line 856
    iget-object v1, v0, Lx0/t;->b:Ljava/lang/Object;

    .line 857
    .line 858
    check-cast v1, Lm6/f;

    .line 859
    .line 860
    iget-object v0, v0, Lx0/t;->a:Ljava/lang/Object;

    .line 861
    .line 862
    check-cast v0, Ljava/lang/String;

    .line 863
    .line 864
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 865
    .line 866
    .line 867
    new-instance v6, Ljava/io/File;

    .line 868
    .line 869
    iget-object v1, v1, Lm6/f;->a:Ljava/io/File;

    .line 870
    .line 871
    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 875
    .line 876
    .line 877
    move-result v0

    .line 878
    new-instance v1, Lh6/y;

    .line 879
    .line 880
    invoke-direct {v1, v4}, Lh6/y;-><init>(Lh6/x;)V

    .line 881
    .line 882
    .line 883
    iget-object v6, v4, Lh6/x;->l:Lh6/f;

    .line 884
    .line 885
    invoke-virtual {v6, v1}, Lh6/f;->a(Ljava/util/concurrent/Callable;)Lh5/k;

    .line 886
    .line 887
    .line 888
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 889
    :try_start_3
    invoke-static {v1}, Lh6/p0;->a(Lh5/k;)Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    check-cast v1, Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 894
    .line 895
    :try_start_4
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 896
    .line 897
    invoke-virtual {v6, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    :catch_0
    iget-object v1, v4, Lh6/x;->f:Lh6/t;

    .line 901
    .line 902
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 903
    .line 904
    .line 905
    move-result-object v6

    .line 906
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 907
    .line 908
    .line 909
    new-instance v7, Lh6/s;

    .line 910
    .line 911
    invoke-direct {v7, v1}, Lh6/s;-><init>(Lh6/t;)V

    .line 912
    .line 913
    .line 914
    iget-object v8, v1, Lh6/t;->d:Lh6/f;

    .line 915
    .line 916
    invoke-virtual {v8, v7}, Lh6/f;->a(Ljava/util/concurrent/Callable;)Lh5/k;

    .line 917
    .line 918
    .line 919
    new-instance v7, Lh6/k;

    .line 920
    .line 921
    invoke-direct {v7, v1}, Lh6/k;-><init>(Lh6/t;)V

    .line 922
    .line 923
    .line 924
    new-instance v8, Lh6/b0;

    .line 925
    .line 926
    iget-object v9, v1, Lh6/t;->i:Le6/a;

    .line 927
    .line 928
    invoke-direct {v8, v7, v2, v6, v9}, Lh6/b0;-><init>(Lh6/k;Lo6/c;Ljava/lang/Thread$UncaughtExceptionHandler;Le6/a;)V

    .line 929
    .line 930
    .line 931
    iput-object v8, v1, Lh6/t;->l:Lh6/b0;

    .line 932
    .line 933
    invoke-static {v8}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 934
    .line 935
    .line 936
    if-eqz v0, :cond_13

    .line 937
    .line 938
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 939
    .line 940
    invoke-virtual {v5, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 941
    .line 942
    .line 943
    move-result v0

    .line 944
    if-nez v0, :cond_e

    .line 945
    .line 946
    const/4 v0, 0x1

    .line 947
    goto :goto_8

    .line 948
    :cond_e
    const/4 v0, 0x0

    .line 949
    :goto_8
    if-eqz v0, :cond_10

    .line 950
    .line 951
    const-string v0, "connectivity"

    .line 952
    .line 953
    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 958
    .line 959
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    if-eqz v0, :cond_f

    .line 964
    .line 965
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 966
    .line 967
    .line 968
    move-result v0

    .line 969
    if-eqz v0, :cond_f

    .line 970
    .line 971
    goto :goto_9

    .line 972
    :cond_f
    const/4 v0, 0x0

    .line 973
    goto :goto_a

    .line 974
    :cond_10
    :goto_9
    const/4 v0, 0x1

    .line 975
    :goto_a
    if-eqz v0, :cond_13

    .line 976
    .line 977
    const-string v0, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    .line 978
    .line 979
    const/4 v1, 0x3

    .line 980
    invoke-static {v14, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 981
    .line 982
    .line 983
    move-result v1

    .line 984
    if-eqz v1, :cond_11

    .line 985
    .line 986
    const/4 v1, 0x0

    .line 987
    invoke-static {v14, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 988
    .line 989
    .line 990
    :cond_11
    new-instance v0, Lh6/w;

    .line 991
    .line 992
    invoke-direct {v0, v4, v2}, Lh6/w;-><init>(Lh6/x;Lo6/c;)V

    .line 993
    .line 994
    .line 995
    iget-object v1, v4, Lh6/x;->k:Ljava/util/concurrent/ExecutorService;

    .line 996
    .line 997
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    const/4 v1, 0x3

    .line 1002
    invoke-static {v14, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v1

    .line 1006
    if-eqz v1, :cond_12

    .line 1007
    .line 1008
    const-string v1, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    .line 1009
    .line 1010
    const/4 v5, 0x0

    .line 1011
    invoke-static {v14, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1012
    .line 1013
    .line 1014
    :cond_12
    :try_start_5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1015
    .line 1016
    const-wide/16 v5, 0x4

    .line 1017
    .line 1018
    invoke-interface {v0, v5, v6, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1019
    .line 1020
    .line 1021
    goto :goto_c

    .line 1022
    :catch_1
    move-exception v0

    .line 1023
    :try_start_6
    const-string v1, "Crashlytics timed out during initialization."

    .line 1024
    .line 1025
    goto :goto_b

    .line 1026
    :catch_2
    move-exception v0

    .line 1027
    const-string v1, "Crashlytics encountered a problem during initialization."

    .line 1028
    .line 1029
    goto :goto_b

    .line 1030
    :catch_3
    move-exception v0

    .line 1031
    const-string v1, "Crashlytics was interrupted during initialization."

    .line 1032
    .line 1033
    :goto_b
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1034
    .line 1035
    .line 1036
    goto :goto_c

    .line 1037
    :cond_13
    const/4 v0, 0x3

    .line 1038
    invoke-static {v14, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1039
    .line 1040
    .line 1041
    move-result v0

    .line 1042
    if-eqz v0, :cond_14

    .line 1043
    .line 1044
    const-string v0, "Successfully configured exception handler."

    .line 1045
    .line 1046
    const/4 v1, 0x0

    .line 1047
    invoke-static {v14, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1048
    .line 1049
    .line 1050
    :cond_14
    const/4 v0, 0x1

    .line 1051
    goto :goto_d

    .line 1052
    :catch_4
    move-exception v0

    .line 1053
    const-string v1, "Crashlytics was not started due to an exception during initialization"

    .line 1054
    .line 1055
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1056
    .line 1057
    .line 1058
    const/4 v0, 0x0

    .line 1059
    iput-object v0, v4, Lh6/x;->f:Lh6/t;

    .line 1060
    .line 1061
    :goto_c
    const/4 v0, 0x0

    .line 1062
    :goto_d
    new-instance v1, Ld6/e;

    .line 1063
    .line 1064
    invoke-direct {v1, v0, v4, v2}, Ld6/e;-><init>(ZLh6/x;Lo6/c;)V

    .line 1065
    .line 1066
    .line 1067
    invoke-static {v3, v1}, Lh5/n;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lh5/z;

    .line 1068
    .line 1069
    .line 1070
    new-instance v15, Ld6/f;

    .line 1071
    .line 1072
    invoke-direct {v15}, Ld6/f;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    goto :goto_e

    .line 1076
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1077
    .line 1078
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    throw v0

    .line 1082
    :catchall_0
    move-exception v0

    .line 1083
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1084
    throw v0

    .line 1085
    :catch_5
    move-exception v0

    .line 1086
    const/4 v8, 0x0

    .line 1087
    const-string v1, "Error retrieving app package info."

    .line 1088
    .line 1089
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    .line 1091
    .line 1092
    move-object v15, v8

    .line 1093
    :goto_e
    return-object v15
.end method
