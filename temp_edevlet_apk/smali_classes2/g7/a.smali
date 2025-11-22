.class public final Lg7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg7/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lg7/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a(Landroid/content/Context;Lg7/e0;)Lg7/a$a;
    .locals 14

    .line 1
    const-string v0, "Couldn\'t get own application info: "

    .line 2
    .line 3
    const-string v1, "FirebaseMessaging"

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/16 v4, 0x80

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "gcm.n.android_channel_id"

    .line 45
    .line 46
    invoke-virtual {p1, v4}, Lg7/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x3

    .line 54
    const/16 v8, 0x1a

    .line 55
    .line 56
    if-ge v5, v8, :cond_1

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual {v5, v9, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    if-lt v5, v8, :cond_7

    .line 75
    .line 76
    const-class v5, Landroid/app/NotificationManager;

    .line 77
    .line 78
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Landroid/app/NotificationManager;

    .line 83
    .line 84
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-nez v8, :cond_3

    .line 89
    .line 90
    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    if-eqz v8, :cond_2

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    add-int/lit8 v8, v8, 0x7a

    .line 108
    .line 109
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .line 111
    .line 112
    const-string v8, "Notification Channel requested ("

    .line 113
    .line 114
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v4, ") has not been created by the app. Manifest configuration, or default, value will be used."

    .line 121
    .line 122
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :cond_3
    const-string v4, "com.google.firebase.messaging.default_notification_channel_id"

    .line 133
    .line 134
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-nez v8, :cond_5

    .line 143
    .line 144
    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    if-eqz v8, :cond_4

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_4
    const-string v4, "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used."

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_5
    const-string v4, "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used."

    .line 155
    .line 156
    :goto_1
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    const-string v4, "fcm_fallback_notification_channel"

    .line 160
    .line 161
    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    if-nez v8, :cond_8

    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    const-string v10, "fcm_fallback_notification_channel_label"

    .line 176
    .line 177
    const-string v11, "string"

    .line 178
    .line 179
    invoke-virtual {v8, v10, v11, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-nez v8, :cond_6

    .line 184
    .line 185
    const-string v8, "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name."

    .line 186
    .line 187
    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    const-string v8, "Misc"

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_6
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    :goto_2
    new-instance v9, Landroid/app/NotificationChannel;

    .line 198
    .line 199
    invoke-direct {v9, v4, v8, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :catch_1
    :cond_7
    :goto_3
    const/4 v4, 0x0

    .line 207
    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    new-instance v8, Landroidx/core/app/NotificationCompat$Builder;

    .line 216
    .line 217
    invoke-direct {v8, p0, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string v4, "gcm.n.title"

    .line 221
    .line 222
    invoke-virtual {p1, v5, v3, v4}, Lg7/e0;->d(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    if-nez v9, :cond_9

    .line 231
    .line 232
    invoke-virtual {v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 233
    .line 234
    .line 235
    :cond_9
    const-string v4, "gcm.n.body"

    .line 236
    .line 237
    invoke-virtual {p1, v5, v3, v4}, Lg7/e0;->d(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    if-nez v9, :cond_a

    .line 246
    .line 247
    invoke-virtual {v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 248
    .line 249
    .line 250
    new-instance v9, Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 251
    .line 252
    invoke-direct {v9}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v9, v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-virtual {v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 260
    .line 261
    .line 262
    :cond_a
    const-string v4, "gcm.n.icon"

    .line 263
    .line 264
    invoke-virtual {p1, v4}, Lg7/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    if-nez v9, :cond_d

    .line 273
    .line 274
    const-string v9, "drawable"

    .line 275
    .line 276
    invoke-virtual {v5, v4, v9, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    if-eqz v9, :cond_b

    .line 281
    .line 282
    invoke-static {v5, v9}, Lg7/a;->b(Landroid/content/res/Resources;I)Z

    .line 283
    .line 284
    .line 285
    move-result v10

    .line 286
    if-nez v10, :cond_11

    .line 287
    .line 288
    :cond_b
    const-string v9, "mipmap"

    .line 289
    .line 290
    invoke-virtual {v5, v4, v9, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v9

    .line 294
    if-eqz v9, :cond_c

    .line 295
    .line 296
    invoke-static {v5, v9}, Lg7/a;->b(Landroid/content/res/Resources;I)Z

    .line 297
    .line 298
    .line 299
    move-result v10

    .line 300
    if-nez v10, :cond_11

    .line 301
    .line 302
    :cond_c
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 307
    .line 308
    .line 309
    move-result v9

    .line 310
    new-instance v10, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    add-int/lit8 v9, v9, 0x3d

    .line 313
    .line 314
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 315
    .line 316
    .line 317
    const-string v9, "Icon resource "

    .line 318
    .line 319
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v4, " not found. Notification will use default icon."

    .line 326
    .line 327
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    :cond_d
    const-string v4, "com.google.firebase.messaging.default_notification_icon"

    .line 338
    .line 339
    invoke-virtual {v2, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    if-eqz v4, :cond_e

    .line 344
    .line 345
    invoke-static {v5, v4}, Lg7/a;->b(Landroid/content/res/Resources;I)Z

    .line 346
    .line 347
    .line 348
    move-result v9

    .line 349
    if-nez v9, :cond_f

    .line 350
    .line 351
    :cond_e
    :try_start_2
    invoke-virtual {v7, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 352
    .line 353
    .line 354
    move-result-object v9

    .line 355
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 356
    .line 357
    move v9, v0

    .line 358
    goto :goto_5

    .line 359
    :catch_2
    move-exception v9

    .line 360
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    :cond_f
    move v9, v4

    .line 372
    :goto_5
    if-eqz v9, :cond_10

    .line 373
    .line 374
    invoke-static {v5, v9}, Lg7/a;->b(Landroid/content/res/Resources;I)Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-nez v0, :cond_11

    .line 379
    .line 380
    :cond_10
    const v9, 0x1080093

    .line 381
    .line 382
    .line 383
    :cond_11
    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 384
    .line 385
    .line 386
    const-string v0, "gcm.n.sound2"

    .line 387
    .line 388
    invoke-virtual {p1, v0}, Lg7/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    if-eqz v4, :cond_12

    .line 397
    .line 398
    const-string v0, "gcm.n.sound"

    .line 399
    .line 400
    invoke-virtual {p1, v0}, Lg7/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    :cond_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    const/4 v9, 0x2

    .line 409
    if-eqz v4, :cond_13

    .line 410
    .line 411
    const/4 v0, 0x0

    .line 412
    goto :goto_6

    .line 413
    :cond_13
    const-string v4, "default"

    .line 414
    .line 415
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-nez v4, :cond_14

    .line 420
    .line 421
    const-string v4, "raw"

    .line 422
    .line 423
    invoke-virtual {v5, v0, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    if-eqz v4, :cond_14

    .line 428
    .line 429
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    new-instance v10, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    add-int/lit8 v4, v4, 0x18

    .line 448
    .line 449
    add-int/2addr v4, v5

    .line 450
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 451
    .line 452
    .line 453
    const-string v4, "android.resource://"

    .line 454
    .line 455
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v4, "/raw/"

    .line 462
    .line 463
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    goto :goto_6

    .line 478
    :cond_14
    invoke-static {v9}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    :goto_6
    if-eqz v0, :cond_15

    .line 483
    .line 484
    invoke-virtual {v8, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 485
    .line 486
    .line 487
    :cond_15
    const-string v0, "gcm.n.click_action"

    .line 488
    .line 489
    invoke-virtual {p1, v0}, Lg7/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    if-nez v4, :cond_16

    .line 498
    .line 499
    new-instance v4, Landroid/content/Intent;

    .line 500
    .line 501
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    .line 506
    .line 507
    const/high16 v0, 0x10000000

    .line 508
    .line 509
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 510
    .line 511
    .line 512
    goto :goto_8

    .line 513
    :cond_16
    const-string v0, "gcm.n.link_android"

    .line 514
    .line 515
    invoke-virtual {p1, v0}, Lg7/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 520
    .line 521
    .line 522
    move-result v4

    .line 523
    if-eqz v4, :cond_17

    .line 524
    .line 525
    const-string v0, "gcm.n.link"

    .line 526
    .line 527
    invoke-virtual {p1, v0}, Lg7/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    :cond_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    if-nez v4, :cond_18

    .line 536
    .line 537
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    goto :goto_7

    .line 542
    :cond_18
    const/4 v0, 0x0

    .line 543
    :goto_7
    if-eqz v0, :cond_19

    .line 544
    .line 545
    new-instance v4, Landroid/content/Intent;

    .line 546
    .line 547
    const-string v5, "android.intent.action.VIEW"

    .line 548
    .line 549
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 556
    .line 557
    .line 558
    goto :goto_8

    .line 559
    :cond_19
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    if-nez v4, :cond_1a

    .line 564
    .line 565
    const-string v0, "No activity found to launch app"

    .line 566
    .line 567
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .line 569
    .line 570
    :cond_1a
    :goto_8
    const/16 v0, 0x17

    .line 571
    .line 572
    sget-object v3, Lg7/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 573
    .line 574
    const/4 v5, 0x1

    .line 575
    const-string v7, "google.c.a.e"

    .line 576
    .line 577
    if-nez v4, :cond_1b

    .line 578
    .line 579
    const/4 v4, 0x0

    .line 580
    goto :goto_d

    .line 581
    :cond_1b
    const/high16 v10, 0x4000000

    .line 582
    .line 583
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 584
    .line 585
    .line 586
    new-instance v10, Landroid/os/Bundle;

    .line 587
    .line 588
    iget-object v11, p1, Lg7/e0;->a:Landroid/os/Bundle;

    .line 589
    .line 590
    invoke-direct {v10, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v11}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 594
    .line 595
    .line 596
    move-result-object v11

    .line 597
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 598
    .line 599
    .line 600
    move-result-object v11

    .line 601
    :cond_1c
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 602
    .line 603
    .line 604
    move-result v12

    .line 605
    if-eqz v12, :cond_1f

    .line 606
    .line 607
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v12

    .line 611
    check-cast v12, Ljava/lang/String;

    .line 612
    .line 613
    const-string v13, "google.c."

    .line 614
    .line 615
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 616
    .line 617
    .line 618
    move-result v13

    .line 619
    if-nez v13, :cond_1e

    .line 620
    .line 621
    const-string v13, "gcm.n."

    .line 622
    .line 623
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 624
    .line 625
    .line 626
    move-result v13

    .line 627
    if-nez v13, :cond_1e

    .line 628
    .line 629
    const-string v13, "gcm.notification."

    .line 630
    .line 631
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 632
    .line 633
    .line 634
    move-result v13

    .line 635
    if-eqz v13, :cond_1d

    .line 636
    .line 637
    goto :goto_a

    .line 638
    :cond_1d
    const/4 v13, 0x0

    .line 639
    goto :goto_b

    .line 640
    :cond_1e
    :goto_a
    const/4 v13, 0x1

    .line 641
    :goto_b
    if-eqz v13, :cond_1c

    .line 642
    .line 643
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    goto :goto_9

    .line 647
    :cond_1f
    invoke-virtual {v4, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 648
    .line 649
    .line 650
    invoke-virtual {p1, v7}, Lg7/e0;->a(Ljava/lang/String;)Z

    .line 651
    .line 652
    .line 653
    move-result v10

    .line 654
    if-eqz v10, :cond_20

    .line 655
    .line 656
    invoke-virtual {p1}, Lg7/e0;->g()Landroid/os/Bundle;

    .line 657
    .line 658
    .line 659
    move-result-object v10

    .line 660
    const-string v11, "gcm.n.analytics_data"

    .line 661
    .line 662
    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 663
    .line 664
    .line 665
    :cond_20
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 666
    .line 667
    .line 668
    move-result v10

    .line 669
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 670
    .line 671
    if-lt v11, v0, :cond_21

    .line 672
    .line 673
    const/high16 v11, 0x44000000    # 512.0f

    .line 674
    .line 675
    goto :goto_c

    .line 676
    :cond_21
    const/high16 v11, 0x40000000    # 2.0f

    .line 677
    .line 678
    :goto_c
    invoke-static {p0, v10, v4, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 679
    .line 680
    .line 681
    move-result-object v4

    .line 682
    :goto_d
    invoke-virtual {v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {p1, v7}, Lg7/e0;->a(Ljava/lang/String;)Z

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    if-nez v4, :cond_22

    .line 690
    .line 691
    const/4 v0, 0x0

    .line 692
    goto :goto_f

    .line 693
    :cond_22
    new-instance v4, Landroid/content/Intent;

    .line 694
    .line 695
    const-string v7, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    .line 696
    .line 697
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {p1}, Lg7/e0;->g()Landroid/os/Bundle;

    .line 701
    .line 702
    .line 703
    move-result-object v7

    .line 704
    invoke-virtual {v4, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 709
    .line 710
    .line 711
    move-result v3

    .line 712
    new-instance v7, Landroid/content/Intent;

    .line 713
    .line 714
    const-string v10, "com.google.firebase.MESSAGING_EVENT"

    .line 715
    .line 716
    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    new-instance v10, Landroid/content/ComponentName;

    .line 720
    .line 721
    const-string v11, "com.google.firebase.iid.FirebaseInstanceIdReceiver"

    .line 722
    .line 723
    invoke-direct {v10, p0, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 727
    .line 728
    .line 729
    move-result-object v7

    .line 730
    const-string v10, "wrapped_intent"

    .line 731
    .line 732
    invoke-virtual {v7, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 737
    .line 738
    if-lt v7, v0, :cond_23

    .line 739
    .line 740
    const/high16 v0, 0x44000000    # 512.0f

    .line 741
    .line 742
    goto :goto_e

    .line 743
    :cond_23
    const/high16 v0, 0x40000000    # 2.0f

    .line 744
    .line 745
    :goto_e
    invoke-static {p0, v3, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    :goto_f
    if-eqz v0, :cond_24

    .line 750
    .line 751
    invoke-virtual {v8, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 752
    .line 753
    .line 754
    :cond_24
    const-string v0, "gcm.n.color"

    .line 755
    .line 756
    invoke-virtual {p1, v0}, Lg7/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    if-nez v3, :cond_25

    .line 765
    .line 766
    :try_start_3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 767
    .line 768
    .line 769
    move-result v3

    .line 770
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 771
    .line 772
    .line 773
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 774
    goto :goto_10

    .line 775
    :catch_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 780
    .line 781
    .line 782
    move-result v3

    .line 783
    new-instance v4, Ljava/lang/StringBuilder;

    .line 784
    .line 785
    add-int/lit8 v3, v3, 0x38

    .line 786
    .line 787
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 788
    .line 789
    .line 790
    const-string v3, "Color is invalid: "

    .line 791
    .line 792
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    const-string v0, ". Notification will use default color."

    .line 799
    .line 800
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .line 809
    .line 810
    :cond_25
    const-string v0, "com.google.firebase.messaging.default_notification_color"

    .line 811
    .line 812
    invoke-virtual {v2, v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 813
    .line 814
    .line 815
    move-result v0

    .line 816
    if-eqz v0, :cond_26

    .line 817
    .line 818
    :try_start_4
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 819
    .line 820
    .line 821
    move-result p0

    .line 822
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 823
    .line 824
    .line 825
    move-result-object p0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 826
    goto :goto_10

    .line 827
    :catch_4
    const-string p0, "Cannot find the color resource referenced in AndroidManifest."

    .line 828
    .line 829
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    .line 831
    .line 832
    :cond_26
    const/4 p0, 0x0

    .line 833
    :goto_10
    if-eqz p0, :cond_27

    .line 834
    .line 835
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 836
    .line 837
    .line 838
    move-result p0

    .line 839
    invoke-virtual {v8, p0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 840
    .line 841
    .line 842
    :cond_27
    const-string p0, "gcm.n.sticky"

    .line 843
    .line 844
    invoke-virtual {p1, p0}, Lg7/e0;->a(Ljava/lang/String;)Z

    .line 845
    .line 846
    .line 847
    move-result p0

    .line 848
    xor-int/2addr p0, v5

    .line 849
    invoke-virtual {v8, p0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 850
    .line 851
    .line 852
    const-string p0, "gcm.n.local_only"

    .line 853
    .line 854
    invoke-virtual {p1, p0}, Lg7/e0;->a(Ljava/lang/String;)Z

    .line 855
    .line 856
    .line 857
    move-result p0

    .line 858
    invoke-virtual {v8, p0}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 859
    .line 860
    .line 861
    const-string p0, "gcm.n.ticker"

    .line 862
    .line 863
    invoke-virtual {p1, p0}, Lg7/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object p0

    .line 867
    if-eqz p0, :cond_28

    .line 868
    .line 869
    invoke-virtual {v8, p0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 870
    .line 871
    .line 872
    :cond_28
    const-string p0, "gcm.n.notification_priority"

    .line 873
    .line 874
    invoke-virtual {p1, p0}, Lg7/e0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    .line 875
    .line 876
    .line 877
    move-result-object p0

    .line 878
    if-nez p0, :cond_29

    .line 879
    .line 880
    goto :goto_11

    .line 881
    :cond_29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 882
    .line 883
    .line 884
    move-result v0

    .line 885
    const/4 v2, -0x2

    .line 886
    if-lt v0, v2, :cond_2a

    .line 887
    .line 888
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 889
    .line 890
    .line 891
    move-result v0

    .line 892
    if-le v0, v9, :cond_2b

    .line 893
    .line 894
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object p0

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    .line 899
    .line 900
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    add-int/lit8 v2, v2, 0x48

    .line 905
    .line 906
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 907
    .line 908
    .line 909
    const-string v2, "notificationPriority is invalid "

    .line 910
    .line 911
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    const-string p0, ". Skipping setting notificationPriority."

    .line 918
    .line 919
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object p0

    .line 926
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .line 928
    .line 929
    :goto_11
    const/4 p0, 0x0

    .line 930
    :cond_2b
    if-eqz p0, :cond_2c

    .line 931
    .line 932
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 933
    .line 934
    .line 935
    move-result p0

    .line 936
    invoke-virtual {v8, p0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 937
    .line 938
    .line 939
    :cond_2c
    const-string p0, "gcm.n.visibility"

    .line 940
    .line 941
    invoke-virtual {p1, p0}, Lg7/e0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    .line 942
    .line 943
    .line 944
    move-result-object p0

    .line 945
    const-string v0, "NotificationParams"

    .line 946
    .line 947
    if-nez p0, :cond_2d

    .line 948
    .line 949
    goto :goto_12

    .line 950
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 951
    .line 952
    .line 953
    move-result v2

    .line 954
    const/4 v3, -0x1

    .line 955
    if-lt v2, v3, :cond_2e

    .line 956
    .line 957
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 958
    .line 959
    .line 960
    move-result v2

    .line 961
    if-le v2, v5, :cond_2f

    .line 962
    .line 963
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object p0

    .line 967
    new-instance v2, Ljava/lang/StringBuilder;

    .line 968
    .line 969
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 970
    .line 971
    .line 972
    move-result v3

    .line 973
    add-int/lit8 v3, v3, 0x35

    .line 974
    .line 975
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 976
    .line 977
    .line 978
    const-string v3, "visibility is invalid: "

    .line 979
    .line 980
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    .line 985
    .line 986
    const-string p0, ". Skipping setting visibility."

    .line 987
    .line 988
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    .line 990
    .line 991
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object p0

    .line 995
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    .line 997
    .line 998
    :goto_12
    const/4 p0, 0x0

    .line 999
    :cond_2f
    if-eqz p0, :cond_30

    .line 1000
    .line 1001
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 1002
    .line 1003
    .line 1004
    move-result p0

    .line 1005
    invoke-virtual {v8, p0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 1006
    .line 1007
    .line 1008
    :cond_30
    const-string p0, "gcm.n.notification_count"

    .line 1009
    .line 1010
    invoke-virtual {p1, p0}, Lg7/e0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1011
    .line 1012
    .line 1013
    move-result-object p0

    .line 1014
    if-nez p0, :cond_31

    .line 1015
    .line 1016
    goto :goto_13

    .line 1017
    :cond_31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 1018
    .line 1019
    .line 1020
    move-result v2

    .line 1021
    if-gez v2, :cond_32

    .line 1022
    .line 1023
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object p0

    .line 1027
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 1030
    .line 1031
    .line 1032
    move-result v3

    .line 1033
    add-int/lit8 v3, v3, 0x43

    .line 1034
    .line 1035
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1036
    .line 1037
    .line 1038
    const-string v3, "notificationCount is invalid: "

    .line 1039
    .line 1040
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    .line 1046
    const-string p0, ". Skipping setting notificationCount."

    .line 1047
    .line 1048
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object p0

    .line 1055
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    .line 1057
    .line 1058
    :goto_13
    const/4 p0, 0x0

    .line 1059
    :cond_32
    if-eqz p0, :cond_33

    .line 1060
    .line 1061
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 1062
    .line 1063
    .line 1064
    move-result p0

    .line 1065
    invoke-virtual {v8, p0}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 1066
    .line 1067
    .line 1068
    :cond_33
    const-string p0, "gcm.n.event_time"

    .line 1069
    .line 1070
    invoke-virtual {p1, p0}, Lg7/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v1

    .line 1074
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1075
    .line 1076
    .line 1077
    move-result v2

    .line 1078
    if-nez v2, :cond_34

    .line 1079
    .line 1080
    :try_start_5
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1081
    .line 1082
    .line 1083
    move-result-wide v2

    .line 1084
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1085
    .line 1086
    .line 1087
    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1088
    goto :goto_14

    .line 1089
    :catch_5
    invoke-static {p0}, Lg7/e0;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object p0

    .line 1093
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v2

    .line 1097
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1098
    .line 1099
    .line 1100
    move-result v2

    .line 1101
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v3

    .line 1105
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1106
    .line 1107
    .line 1108
    move-result v3

    .line 1109
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    add-int/lit8 v2, v2, 0x26

    .line 1112
    .line 1113
    add-int/2addr v2, v3

    .line 1114
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1115
    .line 1116
    .line 1117
    const-string v2, "Couldn\'t parse value of "

    .line 1118
    .line 1119
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    .line 1125
    const-string p0, "("

    .line 1126
    .line 1127
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    .line 1133
    const-string p0, ") into a long"

    .line 1134
    .line 1135
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object p0

    .line 1142
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    .line 1144
    .line 1145
    :cond_34
    const/4 p0, 0x0

    .line 1146
    :goto_14
    if-eqz p0, :cond_35

    .line 1147
    .line 1148
    invoke-virtual {v8, v5}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 1152
    .line 1153
    .line 1154
    move-result-wide v1

    .line 1155
    invoke-virtual {v8, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 1156
    .line 1157
    .line 1158
    :cond_35
    const-string p0, "gcm.n.vibrate_timings"

    .line 1159
    .line 1160
    invoke-virtual {p1, p0}, Lg7/e0;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1161
    .line 1162
    .line 1163
    move-result-object p0

    .line 1164
    if-nez p0, :cond_36

    .line 1165
    .line 1166
    goto :goto_16

    .line 1167
    :cond_36
    :try_start_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 1168
    .line 1169
    .line 1170
    move-result v1

    .line 1171
    if-le v1, v5, :cond_37

    .line 1172
    .line 1173
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 1174
    .line 1175
    .line 1176
    move-result v1

    .line 1177
    new-array v2, v1, [J

    .line 1178
    .line 1179
    const/4 v3, 0x0

    .line 1180
    :goto_15
    if-ge v3, v1, :cond_38

    .line 1181
    .line 1182
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optLong(I)J

    .line 1183
    .line 1184
    .line 1185
    move-result-wide v10

    .line 1186
    aput-wide v10, v2, v3

    .line 1187
    .line 1188
    add-int/lit8 v3, v3, 0x1

    .line 1189
    .line 1190
    goto :goto_15

    .line 1191
    :cond_37
    new-instance v1, Lorg/json/JSONException;

    .line 1192
    .line 1193
    const-string v2, "vibrateTimings have invalid length"

    .line 1194
    .line 1195
    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 1196
    .line 1197
    .line 1198
    throw v1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1199
    :catch_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1200
    .line 1201
    .line 1202
    move-result-object p0

    .line 1203
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 1206
    .line 1207
    .line 1208
    move-result v2

    .line 1209
    add-int/lit8 v2, v2, 0x4a

    .line 1210
    .line 1211
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1212
    .line 1213
    .line 1214
    const-string v2, "User defined vibrateTimings is invalid: "

    .line 1215
    .line 1216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    .line 1222
    const-string p0, ". Skipping setting vibrateTimings."

    .line 1223
    .line 1224
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object p0

    .line 1231
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    .line 1233
    .line 1234
    :goto_16
    const/4 v2, 0x0

    .line 1235
    :cond_38
    if-eqz v2, :cond_39

    .line 1236
    .line 1237
    invoke-virtual {v8, v2}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    .line 1238
    .line 1239
    .line 1240
    :cond_39
    const-string p0, ". Skipping setting LightSettings"

    .line 1241
    .line 1242
    const-string v1, "LightSettings is invalid: "

    .line 1243
    .line 1244
    const-string v2, "gcm.n.light_settings"

    .line 1245
    .line 1246
    invoke-virtual {p1, v2}, Lg7/e0;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v2

    .line 1250
    if-nez v2, :cond_3a

    .line 1251
    .line 1252
    goto/16 :goto_18

    .line 1253
    .line 1254
    :cond_3a
    const/4 v3, 0x3

    .line 1255
    new-array v4, v3, [I

    .line 1256
    .line 1257
    :try_start_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 1258
    .line 1259
    .line 1260
    move-result v7

    .line 1261
    if-ne v7, v3, :cond_3c

    .line 1262
    .line 1263
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v3

    .line 1267
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1268
    .line 1269
    .line 1270
    move-result v3

    .line 1271
    const/high16 v7, -0x1000000

    .line 1272
    .line 1273
    if-eq v3, v7, :cond_3b

    .line 1274
    .line 1275
    aput v3, v4, v6

    .line 1276
    .line 1277
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optInt(I)I

    .line 1278
    .line 1279
    .line 1280
    move-result v3

    .line 1281
    aput v3, v4, v5

    .line 1282
    .line 1283
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->optInt(I)I

    .line 1284
    .line 1285
    .line 1286
    move-result v3

    .line 1287
    aput v3, v4, v9

    .line 1288
    .line 1289
    goto :goto_19

    .line 1290
    :cond_3b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1291
    .line 1292
    const-string v4, "Transparent color is invalid"

    .line 1293
    .line 1294
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1295
    .line 1296
    .line 1297
    throw v3

    .line 1298
    :cond_3c
    new-instance v3, Lorg/json/JSONException;

    .line 1299
    .line 1300
    const-string v4, "lightSettings don\'t have all three fields"

    .line 1301
    .line 1302
    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    throw v3
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1306
    :catch_7
    move-exception v3

    .line 1307
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v2

    .line 1311
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v3

    .line 1315
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v4

    .line 1319
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1320
    .line 1321
    .line 1322
    move-result v4

    .line 1323
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1324
    .line 1325
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1326
    .line 1327
    .line 1328
    move-result v10

    .line 1329
    add-int/lit8 v10, v10, 0x3c

    .line 1330
    .line 1331
    add-int/2addr v10, v4

    .line 1332
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    const-string v1, ". "

    .line 1342
    .line 1343
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1353
    .line 1354
    .line 1355
    move-result-object p0

    .line 1356
    goto :goto_17

    .line 1357
    :catch_8
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v2

    .line 1361
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1362
    .line 1363
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1364
    .line 1365
    .line 1366
    move-result v4

    .line 1367
    add-int/lit8 v4, v4, 0x3a

    .line 1368
    .line 1369
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1370
    .line 1371
    .line 1372
    invoke-static {v3, v1, v2, p0}, Landroid/support/v4/media/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1373
    .line 1374
    .line 1375
    move-result-object p0

    .line 1376
    :goto_17
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    .line 1378
    .line 1379
    :goto_18
    const/4 v4, 0x0

    .line 1380
    :goto_19
    if-eqz v4, :cond_3d

    .line 1381
    .line 1382
    aget p0, v4, v6

    .line 1383
    .line 1384
    aget v0, v4, v5

    .line 1385
    .line 1386
    aget v1, v4, v9

    .line 1387
    .line 1388
    invoke-virtual {v8, p0, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    .line 1389
    .line 1390
    .line 1391
    :cond_3d
    const-string p0, "gcm.n.default_sound"

    .line 1392
    .line 1393
    invoke-virtual {p1, p0}, Lg7/e0;->a(Ljava/lang/String;)Z

    .line 1394
    .line 1395
    .line 1396
    move-result p0

    .line 1397
    const-string v0, "gcm.n.default_vibrate_timings"

    .line 1398
    .line 1399
    invoke-virtual {p1, v0}, Lg7/e0;->a(Ljava/lang/String;)Z

    .line 1400
    .line 1401
    .line 1402
    move-result v0

    .line 1403
    if-eqz v0, :cond_3e

    .line 1404
    .line 1405
    or-int/lit8 p0, p0, 0x2

    .line 1406
    .line 1407
    :cond_3e
    const-string v0, "gcm.n.default_light_settings"

    .line 1408
    .line 1409
    invoke-virtual {p1, v0}, Lg7/e0;->a(Ljava/lang/String;)Z

    .line 1410
    .line 1411
    .line 1412
    move-result v0

    .line 1413
    if-eqz v0, :cond_3f

    .line 1414
    .line 1415
    or-int/lit8 p0, p0, 0x4

    .line 1416
    .line 1417
    :cond_3f
    invoke-virtual {v8, p0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 1418
    .line 1419
    .line 1420
    new-instance p0, Lg7/a$a;

    .line 1421
    .line 1422
    const-string v0, "gcm.n.tag"

    .line 1423
    .line 1424
    invoke-virtual {p1, v0}, Lg7/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 1425
    .line 1426
    .line 1427
    move-result-object p1

    .line 1428
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v0

    .line 1432
    if-nez v0, :cond_40

    .line 1433
    .line 1434
    goto :goto_1a

    .line 1435
    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1436
    .line 1437
    .line 1438
    move-result-wide v0

    .line 1439
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1440
    .line 1441
    const/16 v2, 0x25

    .line 1442
    .line 1443
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1444
    .line 1445
    .line 1446
    const-string v2, "FCM-Notification:"

    .line 1447
    .line 1448
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    .line 1450
    .line 1451
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1455
    .line 1456
    .line 1457
    move-result-object p1

    .line 1458
    :goto_1a
    invoke-direct {p0, v8, p1}, Lg7/a$a;-><init>(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;)V

    .line 1459
    .line 1460
    .line 1461
    return-object p0
.end method

.method public static b(Landroid/content/res/Resources;I)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-string v0, "FirebaseMessaging"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Adaptive icons cannot be used in notifications. Ignoring icon id: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_1
    return v3

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x42

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Couldn\'t find resource "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", treating it as an invalid icon"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
