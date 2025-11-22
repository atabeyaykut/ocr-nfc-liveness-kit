.class public final Lc5/w2;
.super Lc5/r3;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:J

.field public final h:J

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc5/i4;J)V
    .locals 0

    invoke-direct {p0, p1}, Lc5/r3;-><init>(Lc5/i4;)V

    iput-wide p2, p0, Lc5/w2;->h:J

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 15
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "appId",
            "appStore",
            "appName",
            "gmpAppId",
            "gaAppId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lc5/i4;

    .line 5
    .line 6
    iget-object v2, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "Unknown"

    .line 19
    .line 20
    const/high16 v5, -0x80000000

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const-string v7, ""

    .line 24
    .line 25
    const-string v8, "unknown"

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    iget-object v9, v1, Lc5/i4;->j:Lc5/e3;

    .line 30
    .line 31
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    iget-object v9, v9, Lc5/e3;->f:Lc5/c3;

    .line 39
    .line 40
    const-string v11, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 41
    .line 42
    invoke-virtual {v9, v10, v11}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_0
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    iget-object v9, v1, Lc5/i4;->j:Lc5/e3;

    .line 52
    .line 53
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    iget-object v9, v9, Lc5/e3;->f:Lc5/c3;

    .line 61
    .line 62
    const-string v11, "Error retrieving app installer package name. appId"

    .line 63
    .line 64
    invoke-virtual {v9, v10, v11}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    if-nez v8, :cond_1

    .line 68
    .line 69
    const-string v8, "manual_install"

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const-string v9, "com.android.vending"

    .line 73
    .line 74
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-eqz v9, :cond_2

    .line 79
    .line 80
    move-object v8, v7

    .line 81
    :cond_2
    :goto_1
    :try_start_1
    move-object v9, v0

    .line 82
    check-cast v9, Lc5/i4;

    .line 83
    .line 84
    iget-object v9, v9, Lc5/i4;->a:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v3, v9, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    if-eqz v9, :cond_4

    .line 95
    .line 96
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 97
    .line 98
    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-nez v11, :cond_3

    .line 107
    .line 108
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    move-object v10, v4

    .line 114
    :goto_2
    :try_start_2
    iget-object v4, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 115
    .line 116
    iget v5, v9, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :catch_1
    move-object v9, v4

    .line 120
    move-object v4, v10

    .line 121
    goto :goto_3

    .line 122
    :catch_2
    move-object v9, v4

    .line 123
    :goto_3
    iget-object v10, v1, Lc5/i4;->j:Lc5/e3;

    .line 124
    .line 125
    invoke-static {v10}, Lc5/i4;->e(Lc5/y4;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    iget-object v10, v10, Lc5/e3;->f:Lc5/c3;

    .line 133
    .line 134
    const-string v12, "Error retrieving package info. appId, appName"

    .line 135
    .line 136
    invoke-virtual {v10, v11, v12, v4}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    move-object v4, v9

    .line 140
    :cond_4
    :goto_4
    iput-object v2, p0, Lc5/w2;->c:Ljava/lang/String;

    .line 141
    .line 142
    iput-object v8, p0, Lc5/w2;->f:Ljava/lang/String;

    .line 143
    .line 144
    iput-object v4, p0, Lc5/w2;->d:Ljava/lang/String;

    .line 145
    .line 146
    iput v5, p0, Lc5/w2;->e:I

    .line 147
    .line 148
    const-wide/16 v4, 0x0

    .line 149
    .line 150
    iput-wide v4, p0, Lc5/w2;->g:J

    .line 151
    .line 152
    iget-object v4, v1, Lc5/i4;->b:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    const/4 v5, 0x1

    .line 159
    if-nez v4, :cond_5

    .line 160
    .line 161
    iget-object v4, v1, Lc5/i4;->c:Ljava/lang/String;

    .line 162
    .line 163
    const-string v8, "am"

    .line 164
    .line 165
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_5

    .line 170
    .line 171
    const/4 v4, 0x1

    .line 172
    goto :goto_5

    .line 173
    :cond_5
    const/4 v4, 0x0

    .line 174
    :goto_5
    invoke-virtual {v1}, Lc5/i4;->f()I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    packed-switch v8, :pswitch_data_0

    .line 179
    .line 180
    .line 181
    goto :goto_7

    .line 182
    :pswitch_0
    iget-object v9, v1, Lc5/i4;->j:Lc5/e3;

    .line 183
    .line 184
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 185
    .line 186
    .line 187
    const-string v10, "App measurement disabled via the global data collection setting"

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :pswitch_1
    iget-object v9, v1, Lc5/i4;->j:Lc5/e3;

    .line 191
    .line 192
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 193
    .line 194
    .line 195
    const-string v10, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 196
    .line 197
    iget-object v9, v9, Lc5/e3;->l:Lc5/c3;

    .line 198
    .line 199
    goto :goto_9

    .line 200
    :pswitch_2
    iget-object v9, v1, Lc5/i4;->j:Lc5/e3;

    .line 201
    .line 202
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 203
    .line 204
    .line 205
    const-string v10, "App measurement disabled via the init parameters"

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :pswitch_3
    iget-object v9, v1, Lc5/i4;->j:Lc5/e3;

    .line 209
    .line 210
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 211
    .line 212
    .line 213
    const-string v10, "App measurement disabled via the manifest"

    .line 214
    .line 215
    goto :goto_8

    .line 216
    :pswitch_4
    iget-object v9, v1, Lc5/i4;->j:Lc5/e3;

    .line 217
    .line 218
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 219
    .line 220
    .line 221
    const-string v10, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :pswitch_5
    iget-object v9, v1, Lc5/i4;->j:Lc5/e3;

    .line 225
    .line 226
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 227
    .line 228
    .line 229
    const-string v10, "App measurement deactivated via the init parameters"

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :pswitch_6
    iget-object v9, v1, Lc5/i4;->j:Lc5/e3;

    .line 233
    .line 234
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 235
    .line 236
    .line 237
    const-string v10, "App measurement deactivated via the manifest"

    .line 238
    .line 239
    goto :goto_8

    .line 240
    :pswitch_7
    iget-object v9, v1, Lc5/i4;->j:Lc5/e3;

    .line 241
    .line 242
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 243
    .line 244
    .line 245
    const-string v10, "App measurement collection enabled"

    .line 246
    .line 247
    :goto_6
    iget-object v9, v9, Lc5/e3;->p:Lc5/c3;

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :goto_7
    iget-object v9, v1, Lc5/i4;->j:Lc5/e3;

    .line 251
    .line 252
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 253
    .line 254
    .line 255
    const-string v10, "App measurement disabled due to denied storage consent"

    .line 256
    .line 257
    :goto_8
    iget-object v9, v9, Lc5/e3;->m:Lc5/c3;

    .line 258
    .line 259
    :goto_9
    invoke-virtual {v9, v10}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iput-object v7, p0, Lc5/w2;->l:Ljava/lang/String;

    .line 263
    .line 264
    iput-object v7, p0, Lc5/w2;->m:Ljava/lang/String;

    .line 265
    .line 266
    iput-object v7, p0, Lc5/w2;->n:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    if-eqz v4, :cond_6

    .line 272
    .line 273
    iget-object v4, v1, Lc5/i4;->b:Ljava/lang/String;

    .line 274
    .line 275
    iput-object v4, p0, Lc5/w2;->m:Ljava/lang/String;

    .line 276
    .line 277
    :cond_6
    const/4 v4, 0x0

    .line 278
    :try_start_3
    move-object v9, v0

    .line 279
    check-cast v9, Lc5/i4;

    .line 280
    .line 281
    iget-object v9, v9, Lc5/i4;->a:Landroid/content/Context;

    .line 282
    .line 283
    move-object v10, v0

    .line 284
    check-cast v10, Lc5/i4;

    .line 285
    .line 286
    iget-object v10, v10, Lc5/i4;->v:Ljava/lang/String;

    .line 287
    .line 288
    invoke-static {v9, v10}, Lb8/f;->L0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    if-eq v5, v10, :cond_7

    .line 297
    .line 298
    move-object v10, v9

    .line 299
    goto :goto_a

    .line 300
    :cond_7
    move-object v10, v7

    .line 301
    :goto_a
    iput-object v10, p0, Lc5/w2;->l:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {}, Lcom/google/android/gms/internal/measurement/xa;->b()V

    .line 304
    .line 305
    .line 306
    move-object v10, v0

    .line 307
    check-cast v10, Lc5/i4;

    .line 308
    .line 309
    iget-object v10, v10, Lc5/i4;->g:Lc5/e;

    .line 310
    .line 311
    sget-object v11, Lc5/r2;->c0:Lc5/q2;

    .line 312
    .line 313
    invoke-virtual {v10, v4, v11}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 314
    .line 315
    .line 316
    move-result v10
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 317
    const-string v11, "admob_app_id"

    .line 318
    .line 319
    if-eqz v10, :cond_b

    .line 320
    .line 321
    :try_start_4
    move-object v10, v0

    .line 322
    check-cast v10, Lc5/i4;

    .line 323
    .line 324
    iget-object v10, v10, Lc5/i4;->a:Landroid/content/Context;

    .line 325
    .line 326
    move-object v12, v0

    .line 327
    check-cast v12, Lc5/i4;

    .line 328
    .line 329
    iget-object v12, v12, Lc5/i4;->v:Ljava/lang/String;

    .line 330
    .line 331
    invoke-static {v10}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 335
    .line 336
    .line 337
    move-result-object v13

    .line 338
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 339
    .line 340
    .line 341
    move-result v14

    .line 342
    if-nez v14, :cond_8

    .line 343
    .line 344
    goto :goto_b

    .line 345
    :cond_8
    invoke-static {v10}, Lc5/d4;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v12

    .line 349
    :goto_b
    const-string v10, "ga_app_id"

    .line 350
    .line 351
    invoke-static {v13, v10, v12}, Lc5/d4;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v10

    .line 355
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 356
    .line 357
    .line 358
    move-result v14

    .line 359
    if-eq v5, v14, :cond_9

    .line 360
    .line 361
    move-object v7, v10

    .line 362
    :cond_9
    iput-object v7, p0, Lc5/w2;->n:Ljava/lang/String;

    .line 363
    .line 364
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    if-eqz v5, :cond_a

    .line 369
    .line 370
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    if-nez v5, :cond_d

    .line 375
    .line 376
    :cond_a
    invoke-static {v13, v11, v12}, Lc5/d4;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    goto :goto_d

    .line 381
    :cond_b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    if-nez v5, :cond_d

    .line 386
    .line 387
    move-object v5, v0

    .line 388
    check-cast v5, Lc5/i4;

    .line 389
    .line 390
    iget-object v5, v5, Lc5/i4;->a:Landroid/content/Context;

    .line 391
    .line 392
    move-object v7, v0

    .line 393
    check-cast v7, Lc5/i4;

    .line 394
    .line 395
    iget-object v7, v7, Lc5/i4;->v:Ljava/lang/String;

    .line 396
    .line 397
    invoke-static {v5}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 401
    .line 402
    .line 403
    move-result-object v9

    .line 404
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 405
    .line 406
    .line 407
    move-result v10

    .line 408
    if-nez v10, :cond_c

    .line 409
    .line 410
    goto :goto_c

    .line 411
    :cond_c
    invoke-static {v5}, Lc5/d4;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v7

    .line 415
    :goto_c
    invoke-static {v9, v11, v7}, Lc5/d4;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    :goto_d
    iput-object v5, p0, Lc5/w2;->m:Ljava/lang/String;

    .line 420
    .line 421
    :cond_d
    if-nez v8, :cond_f

    .line 422
    .line 423
    check-cast v0, Lc5/i4;

    .line 424
    .line 425
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 426
    .line 427
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 428
    .line 429
    .line 430
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 431
    .line 432
    const-string v5, "App measurement enabled for app package, google app id"

    .line 433
    .line 434
    iget-object v7, p0, Lc5/w2;->c:Ljava/lang/String;

    .line 435
    .line 436
    iget-object v8, p0, Lc5/w2;->l:Ljava/lang/String;

    .line 437
    .line 438
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 439
    .line 440
    .line 441
    move-result v8

    .line 442
    if-eqz v8, :cond_e

    .line 443
    .line 444
    iget-object v8, p0, Lc5/w2;->m:Ljava/lang/String;

    .line 445
    .line 446
    goto :goto_e

    .line 447
    :cond_e
    iget-object v8, p0, Lc5/w2;->l:Ljava/lang/String;

    .line 448
    .line 449
    :goto_e
    invoke-virtual {v0, v7, v5, v8}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 450
    .line 451
    .line 452
    goto :goto_f

    .line 453
    :catch_3
    move-exception v0

    .line 454
    iget-object v5, v1, Lc5/i4;->j:Lc5/e3;

    .line 455
    .line 456
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 457
    .line 458
    .line 459
    invoke-static {v2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    iget-object v5, v5, Lc5/e3;->f:Lc5/c3;

    .line 464
    .line 465
    const-string v7, "Fetching Google App Id failed with exception. appId"

    .line 466
    .line 467
    invoke-virtual {v5, v2, v7, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    :cond_f
    :goto_f
    iput-object v4, p0, Lc5/w2;->j:Ljava/util/List;

    .line 471
    .line 472
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    iget-object v0, v1, Lc5/i4;->g:Lc5/e;

    .line 476
    .line 477
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    const-string v2, "analytics.safelisted_events"

    .line 481
    .line 482
    invoke-static {v2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0}, Lc5/e;->n()Landroid/os/Bundle;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 490
    .line 491
    if-nez v5, :cond_10

    .line 492
    .line 493
    move-object v2, v0

    .line 494
    check-cast v2, Lc5/i4;

    .line 495
    .line 496
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 497
    .line 498
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 499
    .line 500
    .line 501
    const-string v5, "Failed to load metadata: Metadata bundle is null"

    .line 502
    .line 503
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 504
    .line 505
    invoke-virtual {v2, v5}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    goto :goto_10

    .line 509
    :cond_10
    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 510
    .line 511
    .line 512
    move-result v7

    .line 513
    if-nez v7, :cond_11

    .line 514
    .line 515
    :goto_10
    move-object v2, v4

    .line 516
    goto :goto_11

    .line 517
    :cond_11
    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    :goto_11
    if-eqz v2, :cond_13

    .line 526
    .line 527
    :try_start_5
    move-object v5, v0

    .line 528
    check-cast v5, Lc5/i4;

    .line 529
    .line 530
    iget-object v5, v5, Lc5/i4;->a:Landroid/content/Context;

    .line 531
    .line 532
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 533
    .line 534
    .line 535
    move-result-object v5

    .line 536
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    if-nez v2, :cond_12

    .line 545
    .line 546
    goto :goto_12

    .line 547
    :cond_12
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 548
    .line 549
    .line 550
    move-result-object v4
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 551
    goto :goto_12

    .line 552
    :catch_4
    move-exception v2

    .line 553
    check-cast v0, Lc5/i4;

    .line 554
    .line 555
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 556
    .line 557
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 558
    .line 559
    .line 560
    const-string v5, "Failed to load string array from metadata: resource not found"

    .line 561
    .line 562
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 563
    .line 564
    invoke-virtual {v0, v2, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    :cond_13
    :goto_12
    if-nez v4, :cond_14

    .line 568
    .line 569
    goto :goto_13

    .line 570
    :cond_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-nez v0, :cond_15

    .line 575
    .line 576
    iget-object v0, v1, Lc5/i4;->j:Lc5/e3;

    .line 577
    .line 578
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 579
    .line 580
    .line 581
    const-string v2, "Safelisted event list is empty. Ignoring"

    .line 582
    .line 583
    iget-object v0, v0, Lc5/e3;->l:Lc5/c3;

    .line 584
    .line 585
    invoke-virtual {v0, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    goto :goto_14

    .line 589
    :cond_15
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    if-eqz v2, :cond_17

    .line 598
    .line 599
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    check-cast v2, Ljava/lang/String;

    .line 604
    .line 605
    iget-object v5, v1, Lc5/i4;->m:Lc5/v7;

    .line 606
    .line 607
    invoke-static {v5}, Lc5/i4;->c(Lc5/y4;)V

    .line 608
    .line 609
    .line 610
    const-string v7, "safelisted event"

    .line 611
    .line 612
    invoke-virtual {v5, v7, v2}, Lc5/v7;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    if-nez v2, :cond_16

    .line 617
    .line 618
    goto :goto_14

    .line 619
    :cond_17
    :goto_13
    iput-object v4, p0, Lc5/w2;->j:Ljava/util/List;

    .line 620
    .line 621
    :goto_14
    if-eqz v3, :cond_18

    .line 622
    .line 623
    iget-object v0, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 624
    .line 625
    invoke-static {v0}, Ly3/a;->a(Landroid/content/Context;)Z

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    iput v0, p0, Lc5/w2;->k:I

    .line 630
    .line 631
    return-void

    .line 632
    :cond_18
    iput v6, p0, Lc5/w2;->k:I

    .line 633
    .line 634
    return-void

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/r3;->c()V

    iget-object v0, p0, Lc5/w2;->c:Ljava/lang/String;

    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lc5/w2;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/ia;->b:Lcom/google/android/gms/internal/measurement/ia;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ia;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/measurement/ja;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ja;->a()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 15
    .line 16
    check-cast v0, Lc5/i4;

    .line 17
    .line 18
    iget-object v0, v0, Lc5/i4;->g:Lc5/e;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    sget-object v2, Lc5/r2;->p0:Lc5/q2;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lc5/w2;->l:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lc5/w2;->l:Ljava/lang/String;

    .line 41
    .line 42
    return-object v0
.end method
