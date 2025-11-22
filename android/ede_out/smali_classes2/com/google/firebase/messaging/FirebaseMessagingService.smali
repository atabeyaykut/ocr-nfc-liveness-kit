.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Lg7/g;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/ArrayDeque;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->f:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg7/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lg7/l0;->a()Lg7/l0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lg7/l0;->d:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/content/Intent;

    .line 12
    .line 13
    return-object p1
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 26
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    .line 10
    .line 11
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-string v4, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    .line 16
    .line 17
    const-string v5, "FirebaseMessaging"

    .line 18
    .line 19
    if-nez v3, :cond_3

    .line 20
    .line 21
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const-string v3, "com.google.firebase.messaging.NEW_TOKEN"

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v0, "token"

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->e(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const-string v3, "Unknown intent action: "

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    :goto_1
    const-string v0, "google.message_id"

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    const/4 v7, 0x3

    .line 87
    const/4 v8, 0x1

    .line 88
    const/4 v9, 0x0

    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    sget-object v6, Lcom/google/firebase/messaging/FirebaseMessagingService;->f:Ljava/util/ArrayDeque;

    .line 93
    .line 94
    invoke-virtual {v6, v3}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-eqz v10, :cond_7

    .line 99
    .line 100
    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_6

    .line 105
    .line 106
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    const-string v10, "Received duplicate message: "

    .line 115
    .line 116
    if-eqz v6, :cond_5

    .line 117
    .line 118
    invoke-virtual {v10, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    goto :goto_2

    .line 123
    :cond_5
    new-instance v3, Ljava/lang/String;

    .line 124
    .line 125
    invoke-direct {v3, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_2
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_6
    const/4 v3, 0x1

    .line 132
    goto :goto_4

    .line 133
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->size()I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    const/16 v11, 0xa

    .line 138
    .line 139
    if-lt v10, v11, :cond_8

    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :cond_8
    invoke-virtual {v6, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :goto_3
    const/4 v3, 0x0

    .line 148
    :goto_4
    if-nez v3, :cond_2b

    .line 149
    .line 150
    const-string v3, "message_type"

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    const-string v6, "gcm"

    .line 157
    .line 158
    if-nez v3, :cond_9

    .line 159
    .line 160
    move-object v3, v6

    .line 161
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    const/4 v11, 0x2

    .line 166
    sparse-switch v10, :sswitch_data_0

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :sswitch_0
    const-string v6, "send_event"

    .line 171
    .line 172
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_a

    .line 177
    .line 178
    const/4 v6, 0x2

    .line 179
    goto :goto_6

    .line 180
    :sswitch_1
    const-string v6, "send_error"

    .line 181
    .line 182
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-eqz v6, :cond_a

    .line 187
    .line 188
    const/4 v6, 0x3

    .line 189
    goto :goto_6

    .line 190
    :sswitch_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-eqz v6, :cond_a

    .line 195
    .line 196
    const/4 v6, 0x0

    .line 197
    goto :goto_6

    .line 198
    :sswitch_3
    const-string v6, "deleted_messages"

    .line 199
    .line 200
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_a

    .line 205
    .line 206
    const/4 v6, 0x1

    .line 207
    goto :goto_6

    .line 208
    :cond_a
    :goto_5
    const/4 v6, -0x1

    .line 209
    :goto_6
    const-string v10, "message_id"

    .line 210
    .line 211
    if-eqz v6, :cond_f

    .line 212
    .line 213
    if-eq v6, v8, :cond_2b

    .line 214
    .line 215
    if-eq v6, v11, :cond_e

    .line 216
    .line 217
    if-eq v6, v7, :cond_c

    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    const-string v2, "Received message with unknown type: "

    .line 224
    .line 225
    if-eqz v0, :cond_b

    .line 226
    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    goto :goto_7

    .line 232
    :cond_b
    new-instance v0, Ljava/lang/String;

    .line 233
    .line 234
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :goto_7
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    goto/16 :goto_1d

    .line 241
    .line 242
    :cond_c
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-nez v0, :cond_d

    .line 247
    .line 248
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    :cond_d
    new-instance v0, Lg7/k0;

    .line 252
    .line 253
    const-string v3, "error"

    .line 254
    .line 255
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-direct {v0, v2}, Lg7/k0;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_1d

    .line 263
    .line 264
    :cond_e
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    goto/16 :goto_1d

    .line 268
    .line 269
    :cond_f
    invoke-static/range {p1 .. p1}, Lg7/c0;->b(Landroid/content/Intent;)Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-eqz v3, :cond_10

    .line 274
    .line 275
    const-string v3, "_nr"

    .line 276
    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-static {v6, v3}, Lg7/c0;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    if-eqz v3, :cond_11

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_11
    const-string v3, "delivery_metrics_exported_to_big_query_enabled"

    .line 296
    .line 297
    :try_start_0
    invoke-static {}, Lx5/c;->b()Lx5/c;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    .line 299
    .line 300
    invoke-static {}, Lx5/c;->b()Lx5/c;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-virtual {v4}, Lx5/c;->a()V

    .line 305
    .line 306
    .line 307
    const-string v6, "com.google.firebase.messaging"

    .line 308
    .line 309
    iget-object v4, v4, Lx5/c;->a:Landroid/content/Context;

    .line 310
    .line 311
    invoke-virtual {v4, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    const-string v7, "export_to_big_query"

    .line 316
    .line 317
    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    move-result v12

    .line 321
    if-eqz v12, :cond_12

    .line 322
    .line 323
    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    goto :goto_9

    .line 328
    :cond_12
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    if-eqz v6, :cond_13

    .line 333
    .line 334
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    const/16 v7, 0x80

    .line 339
    .line 340
    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    if-eqz v4, :cond_13

    .line 345
    .line 346
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 347
    .line 348
    if-eqz v6, :cond_13

    .line 349
    .line 350
    invoke-virtual {v6, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    if-eqz v6, :cond_13

    .line 355
    .line 356
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 357
    .line 358
    invoke-virtual {v4, v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 359
    .line 360
    .line 361
    move-result v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 362
    goto :goto_9

    .line 363
    :catch_0
    nop

    .line 364
    goto :goto_8

    .line 365
    :catch_1
    const-string v3, "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query"

    .line 366
    .line 367
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    :cond_13
    :goto_8
    const/4 v3, 0x0

    .line 371
    :goto_9
    if-eqz v3, :cond_27

    .line 372
    .line 373
    sget-object v23, Lh7/a$a;->b:Lh7/a$a;

    .line 374
    .line 375
    sget-object v3, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lr2/g;

    .line 376
    .line 377
    if-nez v3, :cond_14

    .line 378
    .line 379
    const-string v0, "TransportFactory is null. Skip exporting message delivery metrics to Big Query"

    .line 380
    .line 381
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    goto/16 :goto_1b

    .line 385
    .line 386
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    if-nez v4, :cond_15

    .line 391
    .line 392
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 393
    .line 394
    :cond_15
    const-string v6, "google.ttl"

    .line 395
    .line 396
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    instance-of v7, v6, Ljava/lang/Integer;

    .line 401
    .line 402
    if-eqz v7, :cond_16

    .line 403
    .line 404
    check-cast v6, Ljava/lang/Integer;

    .line 405
    .line 406
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 407
    .line 408
    .line 409
    move-result v6

    .line 410
    :goto_a
    move v9, v6

    .line 411
    goto :goto_b

    .line 412
    :cond_16
    instance-of v7, v6, Ljava/lang/String;

    .line 413
    .line 414
    if-eqz v7, :cond_17

    .line 415
    .line 416
    :try_start_2
    move-object v7, v6

    .line 417
    check-cast v7, Ljava/lang/String;

    .line 418
    .line 419
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    move-result v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 423
    goto :goto_a

    .line 424
    :goto_b
    move/from16 v21, v9

    .line 425
    .line 426
    goto :goto_c

    .line 427
    :catch_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v6

    .line 431
    const-string v7, "Invalid TTL: "

    .line 432
    .line 433
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    :cond_17
    const/16 v21, 0x0

    .line 441
    .line 442
    :goto_c
    const-string v6, "google.to"

    .line 443
    .line 444
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v6

    .line 448
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 449
    .line 450
    .line 451
    move-result v7

    .line 452
    if-nez v7, :cond_18

    .line 453
    .line 454
    :goto_d
    move-object/from16 v16, v6

    .line 455
    .line 456
    goto :goto_e

    .line 457
    :cond_18
    :try_start_3
    invoke-static {}, Lx5/c;->b()Lx5/c;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    sget-object v7, Lb7/c;->m:Ljava/lang/Object;

    .line 462
    .line 463
    invoke-virtual {v6}, Lx5/c;->a()V

    .line 464
    .line 465
    .line 466
    iget-object v6, v6, Lx5/c;->d:Lc6/m;

    .line 467
    .line 468
    const-class v7, Lb7/d;

    .line 469
    .line 470
    invoke-virtual {v6, v7}, Lc6/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v6

    .line 474
    check-cast v6, Lb7/c;

    .line 475
    .line 476
    invoke-virtual {v6}, Lb7/c;->getId()Lh5/z;

    .line 477
    .line 478
    .line 479
    move-result-object v6

    .line 480
    invoke-static {v6}, Lh5/n;->a(Lh5/k;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    check-cast v6, Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7

    .line 485
    .line 486
    goto :goto_d

    .line 487
    :goto_e
    invoke-static {}, Lx5/c;->b()Lx5/c;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    invoke-virtual {v6}, Lx5/c;->a()V

    .line 492
    .line 493
    .line 494
    iget-object v6, v6, Lx5/c;->a:Landroid/content/Context;

    .line 495
    .line 496
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v19

    .line 500
    sget-object v18, Lh7/a$c;->b:Lh7/a$c;

    .line 501
    .line 502
    invoke-static {v4}, Lg7/e0;->f(Landroid/os/Bundle;)Z

    .line 503
    .line 504
    .line 505
    move-result v6

    .line 506
    if-eqz v6, :cond_19

    .line 507
    .line 508
    sget-object v6, Lh7/a$b;->c:Lh7/a$b;

    .line 509
    .line 510
    goto :goto_f

    .line 511
    :cond_19
    sget-object v6, Lh7/a$b;->b:Lh7/a$b;

    .line 512
    .line 513
    :goto_f
    move-object/from16 v17, v6

    .line 514
    .line 515
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    if-nez v0, :cond_1a

    .line 520
    .line 521
    invoke-virtual {v4, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    :cond_1a
    const-string v6, ""

    .line 526
    .line 527
    if-eqz v0, :cond_1b

    .line 528
    .line 529
    move-object v15, v0

    .line 530
    goto :goto_10

    .line 531
    :cond_1b
    move-object v15, v6

    .line 532
    :goto_10
    const-string v0, "from"

    .line 533
    .line 534
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    if-eqz v0, :cond_1c

    .line 539
    .line 540
    const-string v7, "/topics/"

    .line 541
    .line 542
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 543
    .line 544
    .line 545
    move-result v7

    .line 546
    if-eqz v7, :cond_1c

    .line 547
    .line 548
    goto :goto_11

    .line 549
    :cond_1c
    const/4 v0, 0x0

    .line 550
    :goto_11
    if-eqz v0, :cond_1d

    .line 551
    .line 552
    move-object/from16 v22, v0

    .line 553
    .line 554
    goto :goto_12

    .line 555
    :cond_1d
    move-object/from16 v22, v6

    .line 556
    .line 557
    :goto_12
    const-string v0, "collapse_key"

    .line 558
    .line 559
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    if-eqz v0, :cond_1e

    .line 564
    .line 565
    move-object/from16 v20, v0

    .line 566
    .line 567
    goto :goto_13

    .line 568
    :cond_1e
    move-object/from16 v20, v6

    .line 569
    .line 570
    :goto_13
    const-string v0, "google.c.a.m_l"

    .line 571
    .line 572
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    if-eqz v0, :cond_1f

    .line 577
    .line 578
    move-object/from16 v24, v0

    .line 579
    .line 580
    goto :goto_14

    .line 581
    :cond_1f
    move-object/from16 v24, v6

    .line 582
    .line 583
    :goto_14
    const-string v0, "google.c.a.c_l"

    .line 584
    .line 585
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    if-eqz v0, :cond_20

    .line 590
    .line 591
    move-object/from16 v25, v0

    .line 592
    .line 593
    goto :goto_15

    .line 594
    :cond_20
    move-object/from16 v25, v6

    .line 595
    .line 596
    :goto_15
    const-string v0, "google.c.sender.id"

    .line 597
    .line 598
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 599
    .line 600
    .line 601
    move-result v6

    .line 602
    const-wide/16 v9, 0x0

    .line 603
    .line 604
    if-eqz v6, :cond_21

    .line 605
    .line 606
    :try_start_4
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 611
    .line 612
    .line 613
    move-result-wide v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 614
    goto :goto_18

    .line 615
    :catch_3
    move-exception v0

    .line 616
    const-string v4, "error parsing project number"

    .line 617
    .line 618
    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    .line 620
    .line 621
    :cond_21
    invoke-static {}, Lx5/c;->b()Lx5/c;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    invoke-virtual {v4}, Lx5/c;->a()V

    .line 626
    .line 627
    .line 628
    iget-object v6, v4, Lx5/c;->c:Lx5/e;

    .line 629
    .line 630
    iget-object v0, v6, Lx5/e;->e:Ljava/lang/String;

    .line 631
    .line 632
    if-eqz v0, :cond_22

    .line 633
    .line 634
    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 635
    .line 636
    .line 637
    move-result-wide v6
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    .line 638
    goto :goto_18

    .line 639
    :catch_4
    move-exception v0

    .line 640
    move-object v7, v0

    .line 641
    const-string v0, "error parsing sender ID"

    .line 642
    .line 643
    invoke-static {v5, v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    .line 645
    .line 646
    :cond_22
    invoke-virtual {v4}, Lx5/c;->a()V

    .line 647
    .line 648
    .line 649
    const-string v0, "1:"

    .line 650
    .line 651
    iget-object v4, v6, Lx5/e;->b:Ljava/lang/String;

    .line 652
    .line 653
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    if-nez v0, :cond_23

    .line 658
    .line 659
    goto :goto_16

    .line 660
    :cond_23
    const-string v0, ":"

    .line 661
    .line 662
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    array-length v4, v0

    .line 667
    if-ge v4, v11, :cond_24

    .line 668
    .line 669
    goto :goto_17

    .line 670
    :cond_24
    aget-object v4, v0, v8

    .line 671
    .line 672
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 673
    .line 674
    .line 675
    move-result v0

    .line 676
    if-eqz v0, :cond_25

    .line 677
    .line 678
    goto :goto_17

    .line 679
    :cond_25
    :goto_16
    :try_start_6
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 680
    .line 681
    .line 682
    move-result-wide v6
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    .line 683
    goto :goto_18

    .line 684
    :catch_5
    move-exception v0

    .line 685
    move-object v4, v0

    .line 686
    const-string v0, "error parsing app ID"

    .line 687
    .line 688
    invoke-static {v5, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    .line 690
    .line 691
    :goto_17
    move-wide v6, v9

    .line 692
    :goto_18
    cmp-long v0, v6, v9

    .line 693
    .line 694
    if-lez v0, :cond_26

    .line 695
    .line 696
    move-wide v13, v6

    .line 697
    goto :goto_19

    .line 698
    :cond_26
    move-wide v13, v9

    .line 699
    :goto_19
    new-instance v0, Lh7/a;

    .line 700
    .line 701
    move-object v12, v0

    .line 702
    invoke-direct/range {v12 .. v25}, Lh7/a;-><init>(JLjava/lang/String;Ljava/lang/String;Lh7/a$b;Lh7/a$c;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lh7/a$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    :try_start_7
    const-string v4, "FCM_CLIENT_EVENT_LOGGING"

    .line 706
    .line 707
    const-string v6, "proto"

    .line 708
    .line 709
    new-instance v7, Lr2/b;

    .line 710
    .line 711
    invoke-direct {v7, v6}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    sget-object v6, Lg7/b0;->a:Lg7/b0;

    .line 715
    .line 716
    invoke-interface {v3, v4, v7, v6}, Lr2/g;->a(Ljava/lang/String;Lr2/b;Lr2/e;)Lu2/u;

    .line 717
    .line 718
    .line 719
    move-result-object v3

    .line 720
    new-instance v4, Lh7/b;

    .line 721
    .line 722
    invoke-direct {v4, v0}, Lh7/b;-><init>(Lh7/a;)V

    .line 723
    .line 724
    .line 725
    new-instance v0, Lr2/a;

    .line 726
    .line 727
    sget-object v6, Lr2/d;->b:Lr2/d;

    .line 728
    .line 729
    invoke-direct {v0, v4, v6}, Lr2/a;-><init>(Ljava/lang/Object;Lr2/d;)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v3, v0}, Lu2/u;->a(Lr2/a;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    .line 733
    .line 734
    .line 735
    goto :goto_1b

    .line 736
    :catch_6
    move-exception v0

    .line 737
    const-string v3, "Failed to send big query analytics payload."

    .line 738
    .line 739
    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    .line 741
    .line 742
    goto :goto_1b

    .line 743
    :catch_7
    move-exception v0

    .line 744
    goto :goto_1a

    .line 745
    :catch_8
    move-exception v0

    .line 746
    :goto_1a
    new-instance v2, Ljava/lang/RuntimeException;

    .line 747
    .line 748
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 749
    .line 750
    .line 751
    throw v2

    .line 752
    :cond_27
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    if-nez v0, :cond_28

    .line 757
    .line 758
    new-instance v0, Landroid/os/Bundle;

    .line 759
    .line 760
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 761
    .line 762
    .line 763
    :cond_28
    const-string v3, "androidx.content.wakelockid"

    .line 764
    .line 765
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    invoke-static {v0}, Lg7/e0;->f(Landroid/os/Bundle;)Z

    .line 769
    .line 770
    .line 771
    move-result v3

    .line 772
    if-eqz v3, :cond_2a

    .line 773
    .line 774
    new-instance v3, Lg7/e0;

    .line 775
    .line 776
    invoke-direct {v3, v0}, Lg7/e0;-><init>(Landroid/os/Bundle;)V

    .line 777
    .line 778
    .line 779
    new-instance v4, Lx3/a;

    .line 780
    .line 781
    const-string v5, "Firebase-Messaging-Network-Io"

    .line 782
    .line 783
    invoke-direct {v4, v5}, Lx3/a;-><init>(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 787
    .line 788
    .line 789
    move-result-object v4

    .line 790
    new-instance v5, Lg7/c;

    .line 791
    .line 792
    invoke-direct {v5, v1, v3, v4}, Lg7/c;-><init>(Landroid/content/Context;Lg7/e0;Ljava/util/concurrent/ExecutorService;)V

    .line 793
    .line 794
    .line 795
    :try_start_8
    invoke-virtual {v5}, Lg7/c;->a()Z

    .line 796
    .line 797
    .line 798
    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 799
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 800
    .line 801
    .line 802
    if-eqz v3, :cond_29

    .line 803
    .line 804
    goto :goto_1d

    .line 805
    :cond_29
    invoke-static/range {p1 .. p1}, Lg7/c0;->b(Landroid/content/Intent;)Z

    .line 806
    .line 807
    .line 808
    move-result v3

    .line 809
    if-eqz v3, :cond_2a

    .line 810
    .line 811
    const-string v3, "_nf"

    .line 812
    .line 813
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    invoke-static {v2, v3}, Lg7/c0;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    goto :goto_1c

    .line 821
    :catchall_0
    move-exception v0

    .line 822
    move-object v2, v0

    .line 823
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 824
    .line 825
    .line 826
    throw v2

    .line 827
    :cond_2a
    :goto_1c
    new-instance v2, Lg7/g0;

    .line 828
    .line 829
    invoke-direct {v2, v0}, Lg7/g0;-><init>(Landroid/os/Bundle;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/FirebaseMessagingService;->d(Lg7/g0;)V

    .line 833
    .line 834
    .line 835
    :cond_2b
    :goto_1d
    return-void

    .line 836
    nop

    .line 837
    :sswitch_data_0
    .sparse-switch
        -0x7aedf14e -> :sswitch_3
        0x18f11 -> :sswitch_2
        0x308f3e91 -> :sswitch_1
        0x3090df23 -> :sswitch_0
    .end sparse-switch
.end method

.method public d(Lg7/g0;)V
    .locals 0
    .param p1    # Lg7/g0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method
