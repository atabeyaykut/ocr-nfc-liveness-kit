.class public final Ltr/gov/turkiye/edevlet/kapisi/NotificationListenerService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/NotificationListenerService;",
        "Lcom/google/firebase/messaging/FirebaseMessagingService;",
        "<init>",
        "()V",
        "app_v21Release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lg7/g0;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lg7/g0;->b:Landroidx/collection/ArrayMap;

    .line 6
    .line 7
    if-nez v2, :cond_2

    .line 8
    .line 9
    new-instance v2, Landroidx/collection/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, v1, Lg7/g0;->a:Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    instance-of v7, v6, Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    check-cast v6, Ljava/lang/String;

    .line 45
    .line 46
    const-string v7, "google."

    .line 47
    .line 48
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-nez v7, :cond_0

    .line 53
    .line 54
    const-string v7, "gcm."

    .line 55
    .line 56
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-nez v7, :cond_0

    .line 61
    .line 62
    const-string v7, "from"

    .line 63
    .line 64
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_0

    .line 69
    .line 70
    const-string v7, "message_type"

    .line 71
    .line 72
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-nez v7, :cond_0

    .line 77
    .line 78
    const-string v7, "collapse_key"

    .line 79
    .line 80
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-nez v7, :cond_0

    .line 85
    .line 86
    invoke-virtual {v2, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iput-object v2, v1, Lg7/g0;->b:Landroidx/collection/ArrayMap;

    .line 91
    .line 92
    :cond_2
    iget-object v1, v1, Lg7/g0;->b:Landroidx/collection/ArrayMap;

    .line 93
    .line 94
    const-string v2, "remoteMessage.data"

    .line 95
    .line 96
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v2, "edk_pns_template_id"

    .line 100
    .line 101
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v2, :cond_2e

    .line 108
    .line 109
    const-string v3, "1"

    .line 110
    .line 111
    invoke-static {v2, v3}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    const v7, 0x8000

    .line 116
    .line 117
    .line 118
    const/16 v8, 0x3e8

    .line 119
    .line 120
    const-string v14, "pushTemplateId"

    .line 121
    .line 122
    const-string v15, "redirectToMessageBox"

    .line 123
    .line 124
    const-string v13, "tr.gov.turkiye.edevlet.kapisi"

    .line 125
    .line 126
    const-string v11, "action.login.open"

    .line 127
    .line 128
    const-string v9, "resultPendingIntent"

    .line 129
    .line 130
    const-string v10, "applicationContext"

    .line 131
    .line 132
    const-string v5, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 133
    .line 134
    const-string v12, "notification"

    .line 135
    .line 136
    const-string v6, "alert"

    .line 137
    .line 138
    if-eqz v4, :cond_9

    .line 139
    .line 140
    :try_start_0
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Ljava/lang/String;

    .line 145
    .line 146
    const-string v4, "edk_pns_hizmet_kodu"

    .line 147
    .line 148
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Ljava/lang/String;

    .line 153
    .line 154
    if-eqz v2, :cond_4

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_3

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    const/4 v4, 0x0

    .line 164
    goto :goto_2

    .line 165
    :cond_4
    :goto_1
    const/4 v4, 0x1

    .line 166
    :goto_2
    if-nez v4, :cond_2e

    .line 167
    .line 168
    if-eqz v1, :cond_6

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-nez v4, :cond_5

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_5
    const/4 v4, 0x0

    .line 178
    goto :goto_4

    .line 179
    :cond_6
    :goto_3
    const/4 v4, 0x1

    .line 180
    :goto_4
    if-nez v4, :cond_2e

    .line 181
    .line 182
    new-instance v4, Ljava/util/Random;

    .line 183
    .line 184
    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4, v8}, Ljava/util/Random;->nextInt(I)I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    new-instance v6, Landroid/content/Intent;

    .line 192
    .line 193
    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 200
    .line 201
    const/16 v8, 0x22

    .line 202
    .line 203
    if-lt v7, v8, :cond_7

    .line 204
    .line 205
    invoke-virtual {v6, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    .line 207
    .line 208
    :cond_7
    const-string v8, "newServiceNotification"

    .line 209
    .line 210
    invoke-virtual {v6, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    .line 212
    .line 213
    const/4 v1, 0x1

    .line 214
    invoke-virtual {v6, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    .line 219
    .line 220
    const v1, 0x4008000

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    const/16 v1, 0x17

    .line 227
    .line 228
    if-lt v7, v1, :cond_8

    .line 229
    .line 230
    const/high16 v1, 0xc000000

    .line 231
    .line 232
    invoke-static {v0, v4, v6, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    goto :goto_5

    .line 237
    :cond_8
    const/high16 v1, 0x8000000

    .line 238
    .line 239
    invoke-static {v0, v4, v6, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    :goto_5
    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    check-cast v3, Landroid/app/NotificationManager;

    .line 251
    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-static {v4, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v1, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v3, v2, v4, v1}, Lge/c;->a(Landroid/app/NotificationManager;Ljava/lang/String;Landroid/content/Context;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    .line 264
    .line 265
    goto/16 :goto_20

    .line 266
    .line 267
    :cond_9
    const-string v3, "2"

    .line 268
    .line 269
    invoke-static {v2, v3}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    if-eqz v4, :cond_e

    .line 274
    .line 275
    :try_start_1
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    check-cast v1, Ljava/lang/String;

    .line 280
    .line 281
    if-eqz v1, :cond_b

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-nez v2, :cond_a

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_a
    const/4 v2, 0x0

    .line 291
    goto :goto_7

    .line 292
    :cond_b
    :goto_6
    const/4 v2, 0x1

    .line 293
    :goto_7
    if-nez v2, :cond_2e

    .line 294
    .line 295
    new-instance v2, Ljava/util/Random;

    .line 296
    .line 297
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v8}, Ljava/util/Random;->nextInt(I)I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    new-instance v4, Landroid/content/Intent;

    .line 305
    .line 306
    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 310
    .line 311
    .line 312
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 313
    .line 314
    const/16 v7, 0x22

    .line 315
    .line 316
    if-lt v6, v7, :cond_c

    .line 317
    .line 318
    invoke-virtual {v4, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    .line 320
    .line 321
    :cond_c
    const/4 v7, 0x1

    .line 322
    invoke-virtual {v4, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    .line 327
    .line 328
    const v3, 0x4008000

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 332
    .line 333
    .line 334
    const/16 v3, 0x17

    .line 335
    .line 336
    if-lt v6, v3, :cond_d

    .line 337
    .line 338
    const/high16 v3, 0xc000000

    .line 339
    .line 340
    invoke-static {v0, v2, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    goto :goto_8

    .line 345
    :cond_d
    const/high16 v3, 0x8000000

    .line 346
    .line 347
    invoke-static {v0, v2, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    :goto_8
    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    check-cast v3, Landroid/app/NotificationManager;

    .line 359
    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    invoke-static {v4, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-static {v2, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-static {v3, v1, v4, v2}, Lge/c;->a(Landroid/app/NotificationManager;Ljava/lang/String;Landroid/content/Context;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    .line 372
    .line 373
    goto/16 :goto_20

    .line 374
    .line 375
    :cond_e
    const/4 v3, 0x1

    .line 376
    const-string v4, "3"

    .line 377
    .line 378
    invoke-static {v2, v4}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    const-string v3, "edk_pns_redirect_url"

    .line 383
    .line 384
    const-string v7, "android.intent.action.VIEW"

    .line 385
    .line 386
    if-eqz v4, :cond_14

    .line 387
    .line 388
    :try_start_2
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    check-cast v2, Ljava/lang/String;

    .line 393
    .line 394
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    check-cast v1, Ljava/lang/String;

    .line 399
    .line 400
    if-eqz v2, :cond_10

    .line 401
    .line 402
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    if-nez v3, :cond_f

    .line 407
    .line 408
    goto :goto_9

    .line 409
    :cond_f
    const/4 v3, 0x0

    .line 410
    goto :goto_a

    .line 411
    :cond_10
    :goto_9
    const/4 v3, 0x1

    .line 412
    :goto_a
    if-nez v3, :cond_2e

    .line 413
    .line 414
    if-eqz v1, :cond_12

    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    if-nez v3, :cond_11

    .line 421
    .line 422
    goto :goto_b

    .line 423
    :cond_11
    const/16 v16, 0x0

    .line 424
    .line 425
    goto :goto_c

    .line 426
    :cond_12
    :goto_b
    const/16 v16, 0x1

    .line 427
    .line 428
    :goto_c
    if-nez v16, :cond_2e

    .line 429
    .line 430
    new-instance v3, Ljava/util/Random;

    .line 431
    .line 432
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    new-instance v4, Landroid/content/Intent;

    .line 440
    .line 441
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 449
    .line 450
    .line 451
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 452
    .line 453
    const/16 v6, 0x17

    .line 454
    .line 455
    if-lt v1, v6, :cond_13

    .line 456
    .line 457
    const/high16 v1, 0xc000000

    .line 458
    .line 459
    invoke-static {v0, v3, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    goto :goto_d

    .line 464
    :cond_13
    const/high16 v1, 0x8000000

    .line 465
    .line 466
    invoke-static {v0, v3, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    :goto_d
    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    check-cast v3, Landroid/app/NotificationManager;

    .line 478
    .line 479
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    invoke-static {v4, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-static {v1, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-static {v3, v2, v4, v1}, Lge/c;->a(Landroid/app/NotificationManager;Ljava/lang/String;Landroid/content/Context;Landroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 490
    .line 491
    .line 492
    goto/16 :goto_20

    .line 493
    .line 494
    :cond_14
    const-string v4, "4"

    .line 495
    .line 496
    invoke-static {v2, v4}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    if-eqz v4, :cond_1a

    .line 501
    .line 502
    :try_start_3
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    check-cast v2, Ljava/lang/String;

    .line 507
    .line 508
    const-string v3, "edk_pns_market_redirect_url"

    .line 509
    .line 510
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    check-cast v1, Ljava/lang/String;

    .line 515
    .line 516
    if-eqz v2, :cond_16

    .line 517
    .line 518
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    if-nez v3, :cond_15

    .line 523
    .line 524
    goto :goto_e

    .line 525
    :cond_15
    const/4 v3, 0x0

    .line 526
    goto :goto_f

    .line 527
    :cond_16
    :goto_e
    const/4 v3, 0x1

    .line 528
    :goto_f
    if-nez v3, :cond_2e

    .line 529
    .line 530
    if-eqz v1, :cond_18

    .line 531
    .line 532
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 533
    .line 534
    .line 535
    move-result v3

    .line 536
    if-nez v3, :cond_17

    .line 537
    .line 538
    goto :goto_10

    .line 539
    :cond_17
    const/16 v16, 0x0

    .line 540
    .line 541
    goto :goto_11

    .line 542
    :cond_18
    :goto_10
    const/16 v16, 0x1

    .line 543
    .line 544
    :goto_11
    if-nez v16, :cond_2e

    .line 545
    .line 546
    new-instance v3, Ljava/util/Random;

    .line 547
    .line 548
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    .line 552
    .line 553
    .line 554
    move-result v3

    .line 555
    new-instance v4, Landroid/content/Intent;

    .line 556
    .line 557
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 565
    .line 566
    .line 567
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 568
    .line 569
    const/16 v6, 0x17

    .line 570
    .line 571
    if-lt v1, v6, :cond_19

    .line 572
    .line 573
    const/high16 v1, 0xc000000

    .line 574
    .line 575
    invoke-static {v0, v3, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    goto :goto_12

    .line 580
    :cond_19
    const/high16 v1, 0x8000000

    .line 581
    .line 582
    invoke-static {v0, v3, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    :goto_12
    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    check-cast v3, Landroid/app/NotificationManager;

    .line 594
    .line 595
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    invoke-static {v4, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-static {v1, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    invoke-static {v3, v2, v4, v1}, Lge/c;->a(Landroid/app/NotificationManager;Ljava/lang/String;Landroid/content/Context;Landroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 606
    .line 607
    .line 608
    goto/16 :goto_20

    .line 609
    .line 610
    :cond_1a
    const-string v4, "5"

    .line 611
    .line 612
    invoke-static {v2, v4}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 613
    .line 614
    .line 615
    move-result v4

    .line 616
    if-eqz v4, :cond_20

    .line 617
    .line 618
    :try_start_4
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    check-cast v2, Ljava/lang/String;

    .line 623
    .line 624
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    check-cast v1, Ljava/lang/String;

    .line 629
    .line 630
    if-eqz v2, :cond_1c

    .line 631
    .line 632
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 633
    .line 634
    .line 635
    move-result v3

    .line 636
    if-nez v3, :cond_1b

    .line 637
    .line 638
    goto :goto_13

    .line 639
    :cond_1b
    const/4 v3, 0x0

    .line 640
    goto :goto_14

    .line 641
    :cond_1c
    :goto_13
    const/4 v3, 0x1

    .line 642
    :goto_14
    if-nez v3, :cond_2e

    .line 643
    .line 644
    if-eqz v1, :cond_1e

    .line 645
    .line 646
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    if-nez v3, :cond_1d

    .line 651
    .line 652
    goto :goto_15

    .line 653
    :cond_1d
    const/16 v16, 0x0

    .line 654
    .line 655
    goto :goto_16

    .line 656
    :cond_1e
    :goto_15
    const/16 v16, 0x1

    .line 657
    .line 658
    :goto_16
    if-nez v16, :cond_2e

    .line 659
    .line 660
    new-instance v3, Ljava/util/Random;

    .line 661
    .line 662
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    new-instance v4, Landroid/content/Intent;

    .line 670
    .line 671
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 679
    .line 680
    .line 681
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 682
    .line 683
    const/16 v6, 0x17

    .line 684
    .line 685
    if-lt v1, v6, :cond_1f

    .line 686
    .line 687
    const/high16 v1, 0xc000000

    .line 688
    .line 689
    invoke-static {v0, v3, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    goto :goto_17

    .line 694
    :cond_1f
    const/high16 v1, 0x8000000

    .line 695
    .line 696
    invoke-static {v0, v3, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    :goto_17
    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    check-cast v3, Landroid/app/NotificationManager;

    .line 708
    .line 709
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    invoke-static {v4, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    invoke-static {v1, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-static {v3, v2, v4, v1}, Lge/c;->a(Landroid/app/NotificationManager;Ljava/lang/String;Landroid/content/Context;Landroid/app/PendingIntent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 720
    .line 721
    .line 722
    goto/16 :goto_20

    .line 723
    .line 724
    :cond_20
    const-string v3, "6"

    .line 725
    .line 726
    invoke-static {v2, v3}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 727
    .line 728
    .line 729
    move-result v4

    .line 730
    if-eqz v4, :cond_25

    .line 731
    .line 732
    :try_start_5
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    check-cast v1, Ljava/lang/String;

    .line 737
    .line 738
    if-eqz v1, :cond_22

    .line 739
    .line 740
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 741
    .line 742
    .line 743
    move-result v2

    .line 744
    if-nez v2, :cond_21

    .line 745
    .line 746
    goto :goto_18

    .line 747
    :cond_21
    const/16 v16, 0x0

    .line 748
    .line 749
    goto :goto_19

    .line 750
    :cond_22
    :goto_18
    const/16 v16, 0x1

    .line 751
    .line 752
    :goto_19
    if-nez v16, :cond_2e

    .line 753
    .line 754
    new-instance v2, Ljava/util/Random;

    .line 755
    .line 756
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v2, v8}, Ljava/util/Random;->nextInt(I)I

    .line 760
    .line 761
    .line 762
    move-result v2

    .line 763
    new-instance v4, Landroid/content/Intent;

    .line 764
    .line 765
    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    const v6, 0x8000

    .line 769
    .line 770
    .line 771
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 772
    .line 773
    .line 774
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 775
    .line 776
    const/16 v7, 0x22

    .line 777
    .line 778
    if-lt v6, v7, :cond_23

    .line 779
    .line 780
    invoke-virtual {v4, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    .line 782
    .line 783
    :cond_23
    const/4 v7, 0x0

    .line 784
    invoke-virtual {v4, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v4, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    .line 789
    .line 790
    const v3, 0x4008000

    .line 791
    .line 792
    .line 793
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 794
    .line 795
    .line 796
    const/16 v3, 0x17

    .line 797
    .line 798
    if-lt v6, v3, :cond_24

    .line 799
    .line 800
    const/high16 v3, 0xc000000

    .line 801
    .line 802
    invoke-static {v0, v2, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 803
    .line 804
    .line 805
    move-result-object v2

    .line 806
    goto :goto_1a

    .line 807
    :cond_24
    const/high16 v3, 0x8000000

    .line 808
    .line 809
    invoke-static {v0, v2, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    :goto_1a
    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v3

    .line 817
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    check-cast v3, Landroid/app/NotificationManager;

    .line 821
    .line 822
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 823
    .line 824
    .line 825
    move-result-object v4

    .line 826
    invoke-static {v4, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    invoke-static {v2, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    invoke-static {v3, v1, v4, v2}, Lge/c;->a(Landroid/app/NotificationManager;Ljava/lang/String;Landroid/content/Context;Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 833
    .line 834
    .line 835
    goto/16 :goto_20

    .line 836
    .line 837
    :cond_25
    const-string v3, "7"

    .line 838
    .line 839
    invoke-static {v2, v3}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 840
    .line 841
    .line 842
    move-result v2

    .line 843
    if-eqz v2, :cond_2e

    .line 844
    .line 845
    const-string v2, "tr"

    .line 846
    .line 847
    const-string v4, "nid"

    .line 848
    .line 849
    const-string v7, "tid"

    .line 850
    .line 851
    const-string v8, "uk"

    .line 852
    .line 853
    move-object/from16 v19, v9

    .line 854
    .line 855
    const-class v9, Ltr/gov/turkiye/edevlet/kapisi/NotificationClickListener;

    .line 856
    .line 857
    move-object/from16 v20, v10

    .line 858
    .line 859
    const-string v10, "transaction_id"

    .line 860
    .line 861
    move-object/from16 v21, v2

    .line 862
    .line 863
    const-string v2, "user_key"

    .line 864
    .line 865
    :try_start_6
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v6

    .line 869
    check-cast v6, Ljava/lang/String;

    .line 870
    .line 871
    if-eqz v6, :cond_27

    .line 872
    .line 873
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 874
    .line 875
    .line 876
    move-result v22

    .line 877
    if-nez v22, :cond_26

    .line 878
    .line 879
    goto :goto_1b

    .line 880
    :cond_26
    const/16 v16, 0x0

    .line 881
    .line 882
    goto :goto_1c

    .line 883
    :cond_27
    :goto_1b
    const/16 v16, 0x1

    .line 884
    .line 885
    :goto_1c
    if-nez v16, :cond_2e

    .line 886
    .line 887
    move-object/from16 v16, v6

    .line 888
    .line 889
    new-instance v6, Ljava/util/Random;

    .line 890
    .line 891
    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 892
    .line 893
    .line 894
    move-object/from16 v22, v4

    .line 895
    .line 896
    move-object/from16 v18, v7

    .line 897
    .line 898
    const/16 v4, 0x3e8

    .line 899
    .line 900
    invoke-virtual {v6, v4}, Ljava/util/Random;->nextInt(I)I

    .line 901
    .line 902
    .line 903
    move-result v7

    .line 904
    move-object/from16 v23, v8

    .line 905
    .line 906
    invoke-virtual {v6, v4}, Ljava/util/Random;->nextInt(I)I

    .line 907
    .line 908
    .line 909
    move-result v8

    .line 910
    invoke-virtual {v6, v4}, Ljava/util/Random;->nextInt(I)I

    .line 911
    .line 912
    .line 913
    move-result v4

    .line 914
    new-instance v6, Landroid/content/Intent;

    .line 915
    .line 916
    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    const v11, 0x8000

    .line 920
    .line 921
    .line 922
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 923
    .line 924
    .line 925
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 926
    .line 927
    move/from16 v17, v4

    .line 928
    .line 929
    const/16 v4, 0x22

    .line 930
    .line 931
    if-lt v11, v4, :cond_28

    .line 932
    .line 933
    invoke-virtual {v6, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    .line 935
    .line 936
    :cond_28
    const/4 v4, 0x0

    .line 937
    invoke-virtual {v6, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 938
    .line 939
    .line 940
    invoke-virtual {v6, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    .line 942
    .line 943
    const v3, 0x4008000

    .line 944
    .line 945
    .line 946
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 947
    .line 948
    .line 949
    const/16 v3, 0x17

    .line 950
    .line 951
    if-lt v11, v3, :cond_29

    .line 952
    .line 953
    const/high16 v3, 0xc000000

    .line 954
    .line 955
    goto :goto_1d

    .line 956
    :cond_29
    const/high16 v3, 0x8000000

    .line 957
    .line 958
    :goto_1d
    invoke-static {v0, v7, v6, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 959
    .line 960
    .line 961
    move-result-object v3

    .line 962
    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v4

    .line 966
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    check-cast v4, Landroid/app/NotificationManager;

    .line 970
    .line 971
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 972
    .line 973
    .line 974
    move-result v5

    .line 975
    if-eqz v5, :cond_2d

    .line 976
    .line 977
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 978
    .line 979
    .line 980
    move-result v5

    .line 981
    if-eqz v5, :cond_2d

    .line 982
    .line 983
    new-instance v5, Landroid/content/Intent;

    .line 984
    .line 985
    invoke-direct {v5, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 986
    .line 987
    .line 988
    const-string v6, "tr.gov.turkiye.edevlet.kapisi.APPROVE_ACTION"

    .line 989
    .line 990
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    .line 992
    .line 993
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v6

    .line 997
    check-cast v6, Ljava/lang/String;

    .line 998
    .line 999
    move-object/from16 v7, v23

    .line 1000
    .line 1001
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    .line 1003
    .line 1004
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v6

    .line 1008
    check-cast v6, Ljava/lang/String;

    .line 1009
    .line 1010
    move-object/from16 v12, v18

    .line 1011
    .line 1012
    invoke-virtual {v5, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1013
    .line 1014
    .line 1015
    const/16 v6, 0x783

    .line 1016
    .line 1017
    move-object/from16 v13, v22

    .line 1018
    .line 1019
    invoke-virtual {v5, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1020
    .line 1021
    .line 1022
    new-instance v14, Landroid/content/Intent;

    .line 1023
    .line 1024
    invoke-direct {v14, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1025
    .line 1026
    .line 1027
    const-string v9, "tr.gov.turkiye.edevlet.kapisi.CANCEL_ACTION"

    .line 1028
    .line 1029
    invoke-virtual {v14, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    .line 1031
    .line 1032
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v2

    .line 1036
    check-cast v2, Ljava/lang/String;

    .line 1037
    .line 1038
    invoke-virtual {v14, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    .line 1040
    .line 1041
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v1

    .line 1045
    check-cast v1, Ljava/lang/String;

    .line 1046
    .line 1047
    invoke-virtual {v14, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v14, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1051
    .line 1052
    .line 1053
    const/16 v1, 0x17

    .line 1054
    .line 1055
    const/high16 v2, 0xc000000

    .line 1056
    .line 1057
    if-lt v11, v1, :cond_2a

    .line 1058
    .line 1059
    invoke-static {v0, v8, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v5

    .line 1063
    const/high16 v6, 0x8000000

    .line 1064
    .line 1065
    goto :goto_1e

    .line 1066
    :cond_2a
    const/high16 v6, 0x8000000

    .line 1067
    .line 1068
    invoke-static {v0, v8, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v5

    .line 1072
    :goto_1e
    if-lt v11, v1, :cond_2b

    .line 1073
    .line 1074
    move/from16 v1, v17

    .line 1075
    .line 1076
    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v1

    .line 1080
    goto :goto_1f

    .line 1081
    :cond_2b
    move/from16 v1, v17

    .line 1082
    .line 1083
    invoke-static {v0, v1, v14, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v1

    .line 1087
    :goto_1f
    const v2, 0x7f1301d1

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v2

    .line 1094
    const-string v6, "getString(R.string.notification_text_approve)"

    .line 1095
    .line 1096
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    const v6, 0x7f1301d2

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v6

    .line 1106
    const-string v7, "getString(R.string.notification_text_cancel)"

    .line 1107
    .line 1108
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1109
    .line 1110
    .line 1111
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v7

    .line 1115
    const-string v8, "MainActivity"

    .line 1116
    .line 1117
    const/4 v9, 0x0

    .line 1118
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v7

    .line 1122
    const-string v8, "language"

    .line 1123
    .line 1124
    move-object/from16 v9, v21

    .line 1125
    .line 1126
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v7

    .line 1130
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v7

    .line 1134
    invoke-static {v7, v9}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1135
    .line 1136
    .line 1137
    move-result v7

    .line 1138
    if-eqz v7, :cond_2c

    .line 1139
    .line 1140
    const-string v2, "Onayla"

    .line 1141
    .line 1142
    const-string v6, "Vazge\u00e7"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1143
    .line 1144
    :catch_0
    :cond_2c
    move-object/from16 v29, v2

    .line 1145
    .line 1146
    move-object/from16 v28, v6

    .line 1147
    .line 1148
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v2

    .line 1152
    move-object/from16 v6, v20

    .line 1153
    .line 1154
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    move-object/from16 v7, v19

    .line 1158
    .line 1159
    invoke-static {v3, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1160
    .line 1161
    .line 1162
    const-string v6, "pendingIntentApprove"

    .line 1163
    .line 1164
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    const-string v6, "pendingIntentCancel"

    .line 1168
    .line 1169
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1170
    .line 1171
    .line 1172
    move-object/from16 v22, v4

    .line 1173
    .line 1174
    move-object/from16 v23, v16

    .line 1175
    .line 1176
    move-object/from16 v24, v2

    .line 1177
    .line 1178
    move-object/from16 v25, v3

    .line 1179
    .line 1180
    move-object/from16 v26, v5

    .line 1181
    .line 1182
    move-object/from16 v27, v1

    .line 1183
    .line 1184
    invoke-static/range {v22 .. v29}, Lge/c;->c(Landroid/app/NotificationManager;Ljava/lang/String;Landroid/content/Context;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    goto :goto_20

    .line 1188
    :cond_2d
    move-object/from16 v7, v19

    .line 1189
    .line 1190
    move-object/from16 v6, v20

    .line 1191
    .line 1192
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v1

    .line 1196
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1197
    .line 1198
    .line 1199
    invoke-static {v3, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1200
    .line 1201
    .line 1202
    move-object/from16 v6, v16

    .line 1203
    .line 1204
    invoke-static {v4, v6, v1, v3}, Lge/c;->b(Landroid/app/NotificationManager;Ljava/lang/String;Landroid/content/Context;Landroid/app/PendingIntent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 1205
    .line 1206
    .line 1207
    :catch_1
    :cond_2e
    :goto_20
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "OneTimeWorkRequestBuilde\u2026tData(workerData).build()"

    .line 2
    .line 3
    const-string v1, "token"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v2, "MainActivity"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v4, "sharedPreferences"

    .line 16
    .line 17
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v4, "editor"

    .line 25
    .line 26
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v4, "gcm_token"

    .line 30
    .line 31
    invoke-interface {v2, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    new-array v2, v2, [Ll9/g;

    .line 39
    .line 40
    new-instance v4, Ll9/g;

    .line 41
    .line 42
    invoke-direct {v4, v1, p1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    aput-object v4, v2, v3

    .line 46
    .line 47
    new-instance p1, Landroidx/work/Data$Builder;

    .line 48
    .line 49
    invoke-direct {p1}, Landroidx/work/Data$Builder;-><init>()V

    .line 50
    .line 51
    .line 52
    aget-object v1, v2, v3

    .line 53
    .line 54
    iget-object v2, v1, Ll9/g;->a:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Ljava/lang/String;

    .line 57
    .line 58
    iget-object v1, v1, Ll9/g;->b:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {p1, v2, v1}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v1, "dataBuilder.build()"

    .line 68
    .line 69
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 73
    .line 74
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;

    .line 75
    .line 76
    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    check-cast v1, Landroidx/work/OneTimeWorkRequest;

    .line 93
    .line 94
    new-instance v2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 95
    .line 96
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;

    .line 97
    .line 98
    invoke-direct {v2, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 115
    .line 116
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 121
    .line 122
    .line 123
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    :catch_0
    return-void
.end method
