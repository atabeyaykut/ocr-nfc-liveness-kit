.class public final Ls2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls2/b$a;,
        Ls2/b$b;
    }
.end annotation


# instance fields
.field public final a:Lv6/d;

.field public final b:Landroid/net/ConnectivityManager;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/net/URL;

.field public final e:Ld3/a;

.field public final f:Ld3/a;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld3/a;Ld3/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv6/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lv6/e;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lt2/b;->a:Lt2/b;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lt2/b;->a(Lu6/a;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lv6/e;->d:Z

    .line 16
    .line 17
    new-instance v1, Lv6/d;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lv6/d;-><init>(Lv6/e;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Ls2/b;->a:Lv6/d;

    .line 23
    .line 24
    iput-object p1, p0, Ls2/b;->c:Landroid/content/Context;

    .line 25
    .line 26
    const-string v0, "connectivity"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 33
    .line 34
    iput-object p1, p0, Ls2/b;->b:Landroid/net/ConnectivityManager;

    .line 35
    .line 36
    sget-object p1, Ls2/a;->c:Ljava/lang/String;

    .line 37
    .line 38
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Ls2/b;->d:Ljava/net/URL;

    .line 44
    .line 45
    iput-object p3, p0, Ls2/b;->e:Ld3/a;

    .line 46
    .line 47
    iput-object p2, p0, Ls2/b;->f:Ld3/a;

    .line 48
    .line 49
    const p1, 0x9c40

    .line 50
    .line 51
    .line 52
    iput p1, p0, Ls2/b;->g:I

    .line 53
    .line 54
    return-void

    .line 55
    :catch_0
    move-exception p2

    .line 56
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string v0, "Invalid url: "

    .line 59
    .line 60
    invoke-static {v0, p1}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p3, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p3
.end method


# virtual methods
.method public final a(Lv2/a;)Lv2/b;
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    new-instance v2, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lv2/a;->a:Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lu2/n;

    .line 27
    .line 28
    invoke-virtual {v4}, Lu2/n;->g()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_0

    .line 37
    .line 38
    new-instance v6, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const-string v5, "CctTransportBackend"

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    if-eqz v4, :cond_e

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Ljava/util/Map$Entry;

    .line 87
    .line 88
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    check-cast v7, Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Lu2/n;

    .line 99
    .line 100
    sget-object v16, Lt2/p;->a:Lt2/p;

    .line 101
    .line 102
    iget-object v7, v1, Ls2/b;->f:Ld3/a;

    .line 103
    .line 104
    invoke-interface {v7}, Ld3/a;->a()J

    .line 105
    .line 106
    .line 107
    move-result-wide v7

    .line 108
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    iget-object v8, v1, Ls2/b;->e:Ld3/a;

    .line 113
    .line 114
    invoke-interface {v8}, Ld3/a;->a()J

    .line 115
    .line 116
    .line 117
    move-result-wide v8

    .line 118
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    sget-object v9, Lt2/k$a;->a:Lt2/k$a;

    .line 123
    .line 124
    const-string v10, "sdk-version"

    .line 125
    .line 126
    invoke-virtual {v6, v10}, Lu2/n;->f(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v18

    .line 134
    const-string v10, "model"

    .line 135
    .line 136
    invoke-virtual {v6, v10}, Lu2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v19

    .line 140
    const-string v10, "hardware"

    .line 141
    .line 142
    invoke-virtual {v6, v10}, Lu2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v20

    .line 146
    const-string v10, "device"

    .line 147
    .line 148
    invoke-virtual {v6, v10}, Lu2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v21

    .line 152
    const-string v10, "product"

    .line 153
    .line 154
    invoke-virtual {v6, v10}, Lu2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v22

    .line 158
    const-string v10, "os-uild"

    .line 159
    .line 160
    invoke-virtual {v6, v10}, Lu2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v23

    .line 164
    const-string v10, "manufacturer"

    .line 165
    .line 166
    invoke-virtual {v6, v10}, Lu2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v24

    .line 170
    const-string v10, "fingerprint"

    .line 171
    .line 172
    invoke-virtual {v6, v10}, Lu2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v25

    .line 176
    const-string v10, "country"

    .line 177
    .line 178
    invoke-virtual {v6, v10}, Lu2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v27

    .line 182
    const-string v10, "locale"

    .line 183
    .line 184
    invoke-virtual {v6, v10}, Lu2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v26

    .line 188
    const-string v10, "mcc_mnc"

    .line 189
    .line 190
    invoke-virtual {v6, v10}, Lu2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v28

    .line 194
    const-string v10, "application_build"

    .line 195
    .line 196
    invoke-virtual {v6, v10}, Lu2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v29

    .line 200
    new-instance v6, Lt2/c;

    .line 201
    .line 202
    move-object/from16 v17, v6

    .line 203
    .line 204
    invoke-direct/range {v17 .. v29}, Lt2/c;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    new-instance v12, Lt2/e;

    .line 208
    .line 209
    invoke-direct {v12, v9, v6}, Lt2/e;-><init>(Lt2/k$a;Lt2/a;)V

    .line 210
    .line 211
    .line 212
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    check-cast v6, Ljava/lang/String;

    .line 217
    .line 218
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const/4 v9, 0x0

    .line 227
    move-object v13, v6

    .line 228
    move-object v14, v9

    .line 229
    goto :goto_2

    .line 230
    :catch_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    check-cast v6, Ljava/lang/String;

    .line 235
    .line 236
    const/4 v9, 0x0

    .line 237
    move-object v14, v6

    .line 238
    move-object v13, v9

    .line 239
    :goto_2
    new-instance v15, Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    check-cast v4, Ljava/util/List;

    .line 249
    .line 250
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    const-string v9, "Missing required properties:"

    .line 259
    .line 260
    const-string v10, ""

    .line 261
    .line 262
    if-eqz v6, :cond_a

    .line 263
    .line 264
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    check-cast v6, Lu2/n;

    .line 269
    .line 270
    invoke-virtual {v6}, Lu2/n;->d()Lu2/m;

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    move-object/from16 v17, v2

    .line 275
    .line 276
    iget-object v2, v11, Lu2/m;->a:Lr2/b;

    .line 277
    .line 278
    move-object/from16 v18, v4

    .line 279
    .line 280
    new-instance v4, Lr2/b;

    .line 281
    .line 282
    move-object/from16 v19, v10

    .line 283
    .line 284
    const-string v10, "proto"

    .line 285
    .line 286
    invoke-direct {v4, v10}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, v4}, Lr2/b;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    iget-object v10, v11, Lu2/m;->b:[B

    .line 294
    .line 295
    if-eqz v4, :cond_2

    .line 296
    .line 297
    new-instance v2, Lt2/f$a;

    .line 298
    .line 299
    invoke-direct {v2}, Lt2/f$a;-><init>()V

    .line 300
    .line 301
    .line 302
    iput-object v10, v2, Lt2/f$a;->d:[B

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_2
    new-instance v4, Lr2/b;

    .line 306
    .line 307
    const-string v11, "json"

    .line 308
    .line 309
    invoke-direct {v4, v11}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v4}, Lr2/b;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    if-eqz v4, :cond_9

    .line 317
    .line 318
    new-instance v2, Ljava/lang/String;

    .line 319
    .line 320
    const-string v4, "UTF-8"

    .line 321
    .line 322
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-direct {v2, v10, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 327
    .line 328
    .line 329
    new-instance v4, Lt2/f$a;

    .line 330
    .line 331
    invoke-direct {v4}, Lt2/f$a;-><init>()V

    .line 332
    .line 333
    .line 334
    iput-object v2, v4, Lt2/f$a;->e:Ljava/lang/String;

    .line 335
    .line 336
    move-object v2, v4

    .line 337
    :goto_4
    invoke-virtual {v6}, Lu2/n;->e()J

    .line 338
    .line 339
    .line 340
    move-result-wide v10

    .line 341
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    iput-object v4, v2, Lt2/f$a;->a:Ljava/lang/Long;

    .line 346
    .line 347
    invoke-virtual {v6}, Lu2/n;->h()J

    .line 348
    .line 349
    .line 350
    move-result-wide v10

    .line 351
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    iput-object v4, v2, Lt2/f$a;->c:Ljava/lang/Long;

    .line 356
    .line 357
    invoke-virtual {v6}, Lu2/n;->b()Ljava/util/Map;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    const-string v10, "tz-offset"

    .line 362
    .line 363
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    check-cast v4, Ljava/lang/String;

    .line 368
    .line 369
    if-nez v4, :cond_3

    .line 370
    .line 371
    const-wide/16 v10, 0x0

    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_3
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 379
    .line 380
    .line 381
    move-result-wide v10

    .line 382
    :goto_5
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    iput-object v4, v2, Lt2/f$a;->f:Ljava/lang/Long;

    .line 387
    .line 388
    const-string v4, "net-type"

    .line 389
    .line 390
    invoke-virtual {v6, v4}, Lu2/n;->f(Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    sget-object v10, Lt2/o$b;->a:Landroid/util/SparseArray;

    .line 395
    .line 396
    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    check-cast v4, Lt2/o$b;

    .line 401
    .line 402
    const-string v10, "mobile-subtype"

    .line 403
    .line 404
    invoke-virtual {v6, v10}, Lu2/n;->f(Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    move-result v10

    .line 408
    sget-object v11, Lt2/o$a;->a:Landroid/util/SparseArray;

    .line 409
    .line 410
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v10

    .line 414
    check-cast v10, Lt2/o$a;

    .line 415
    .line 416
    new-instance v11, Lt2/i;

    .line 417
    .line 418
    invoke-direct {v11, v4, v10}, Lt2/i;-><init>(Lt2/o$b;Lt2/o$a;)V

    .line 419
    .line 420
    .line 421
    iput-object v11, v2, Lt2/f$a;->g:Lt2/o;

    .line 422
    .line 423
    invoke-virtual {v6}, Lu2/n;->c()Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    if-eqz v4, :cond_4

    .line 428
    .line 429
    invoke-virtual {v6}, Lu2/n;->c()Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    iput-object v4, v2, Lt2/f$a;->b:Ljava/lang/Integer;

    .line 434
    .line 435
    :cond_4
    iget-object v4, v2, Lt2/f$a;->a:Ljava/lang/Long;

    .line 436
    .line 437
    if-nez v4, :cond_5

    .line 438
    .line 439
    const-string v10, " eventTimeMs"

    .line 440
    .line 441
    goto :goto_6

    .line 442
    :cond_5
    move-object/from16 v10, v19

    .line 443
    .line 444
    :goto_6
    iget-object v4, v2, Lt2/f$a;->c:Ljava/lang/Long;

    .line 445
    .line 446
    if-nez v4, :cond_6

    .line 447
    .line 448
    const-string v4, " eventUptimeMs"

    .line 449
    .line 450
    invoke-virtual {v10, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v10

    .line 454
    :cond_6
    iget-object v4, v2, Lt2/f$a;->f:Ljava/lang/Long;

    .line 455
    .line 456
    if-nez v4, :cond_7

    .line 457
    .line 458
    const-string v4, " timezoneOffsetSeconds"

    .line 459
    .line 460
    invoke-static {v10, v4}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v10

    .line 464
    :cond_7
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 465
    .line 466
    .line 467
    move-result v4

    .line 468
    if-eqz v4, :cond_8

    .line 469
    .line 470
    new-instance v4, Lt2/f;

    .line 471
    .line 472
    iget-object v6, v2, Lt2/f$a;->a:Ljava/lang/Long;

    .line 473
    .line 474
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 475
    .line 476
    .line 477
    move-result-wide v20

    .line 478
    iget-object v6, v2, Lt2/f$a;->b:Ljava/lang/Integer;

    .line 479
    .line 480
    iget-object v9, v2, Lt2/f$a;->c:Ljava/lang/Long;

    .line 481
    .line 482
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 483
    .line 484
    .line 485
    move-result-wide v23

    .line 486
    iget-object v9, v2, Lt2/f$a;->d:[B

    .line 487
    .line 488
    iget-object v10, v2, Lt2/f$a;->e:Ljava/lang/String;

    .line 489
    .line 490
    iget-object v11, v2, Lt2/f$a;->f:Ljava/lang/Long;

    .line 491
    .line 492
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 493
    .line 494
    .line 495
    move-result-wide v27

    .line 496
    iget-object v2, v2, Lt2/f$a;->g:Lt2/o;

    .line 497
    .line 498
    move-object/from16 v19, v4

    .line 499
    .line 500
    move-object/from16 v22, v6

    .line 501
    .line 502
    move-object/from16 v25, v9

    .line 503
    .line 504
    move-object/from16 v26, v10

    .line 505
    .line 506
    move-object/from16 v29, v2

    .line 507
    .line 508
    invoke-direct/range {v19 .. v29}, Lt2/f;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLt2/o;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    goto :goto_7

    .line 515
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 516
    .line 517
    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    throw v0

    .line 525
    :cond_9
    invoke-static {v5}, Lc5/w;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    const/4 v6, 0x1

    .line 530
    new-array v6, v6, [Ljava/lang/Object;

    .line 531
    .line 532
    const/4 v9, 0x0

    .line 533
    aput-object v2, v6, v9

    .line 534
    .line 535
    const-string v2, "Received event of unsupported encoding %s. Skipping..."

    .line 536
    .line 537
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    :goto_7
    move-object/from16 v2, v17

    .line 545
    .line 546
    move-object/from16 v4, v18

    .line 547
    .line 548
    goto/16 :goto_3

    .line 549
    .line 550
    :cond_a
    move-object/from16 v17, v2

    .line 551
    .line 552
    move-object/from16 v19, v10

    .line 553
    .line 554
    if-nez v7, :cond_b

    .line 555
    .line 556
    const-string v10, " requestTimeMs"

    .line 557
    .line 558
    goto :goto_8

    .line 559
    :cond_b
    move-object/from16 v10, v19

    .line 560
    .line 561
    :goto_8
    if-nez v8, :cond_c

    .line 562
    .line 563
    const-string v2, " requestUptimeMs"

    .line 564
    .line 565
    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v10

    .line 569
    :cond_c
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 570
    .line 571
    .line 572
    move-result v2

    .line 573
    if-eqz v2, :cond_d

    .line 574
    .line 575
    new-instance v2, Lt2/g;

    .line 576
    .line 577
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 578
    .line 579
    .line 580
    move-result-wide v4

    .line 581
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 582
    .line 583
    .line 584
    move-result-wide v10

    .line 585
    move-object v7, v2

    .line 586
    move-wide v8, v4

    .line 587
    invoke-direct/range {v7 .. v16}, Lt2/g;-><init>(JJLt2/k;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lt2/p;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-object/from16 v2, v17

    .line 594
    .line 595
    goto/16 :goto_1

    .line 596
    .line 597
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 598
    .line 599
    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    throw v0

    .line 607
    :cond_e
    new-instance v2, Lt2/d;

    .line 608
    .line 609
    invoke-direct {v2, v3}, Lt2/d;-><init>(Ljava/util/ArrayList;)V

    .line 610
    .line 611
    .line 612
    const/4 v3, 0x3

    .line 613
    const-wide/16 v6, -0x1

    .line 614
    .line 615
    iget-object v0, v0, Lv2/a;->b:[B

    .line 616
    .line 617
    iget-object v4, v1, Ls2/b;->d:Ljava/net/URL;

    .line 618
    .line 619
    if-eqz v0, :cond_10

    .line 620
    .line 621
    :try_start_1
    invoke-static {v0}, Ls2/a;->a([B)Ls2/a;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    iget-object v8, v0, Ls2/a;->b:Ljava/lang/String;

    .line 626
    .line 627
    if-eqz v8, :cond_f

    .line 628
    .line 629
    goto :goto_9

    .line 630
    :cond_f
    const/4 v8, 0x0

    .line 631
    :goto_9
    iget-object v9, v0, Ls2/a;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 632
    .line 633
    if-eqz v9, :cond_11

    .line 634
    .line 635
    :try_start_2
    new-instance v4, Ljava/net/URL;

    .line 636
    .line 637
    invoke-direct {v4, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 638
    .line 639
    .line 640
    goto :goto_a

    .line 641
    :catch_1
    move-exception v0

    .line 642
    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 643
    .line 644
    new-instance v4, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    const-string v5, "Invalid url: "

    .line 647
    .line 648
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    invoke-direct {v2, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 659
    .line 660
    .line 661
    throw v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 662
    :catch_2
    new-instance v0, Lv2/b;

    .line 663
    .line 664
    invoke-direct {v0, v3, v6, v7}, Lv2/b;-><init>(IJ)V

    .line 665
    .line 666
    .line 667
    return-object v0

    .line 668
    :cond_10
    const/4 v8, 0x0

    .line 669
    :cond_11
    :goto_a
    :try_start_4
    new-instance v0, Ls2/b$a;

    .line 670
    .line 671
    invoke-direct {v0, v4, v2, v8}, Ls2/b$a;-><init>(Ljava/net/URL;Lt2/j;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    new-instance v2, Lt1/e;

    .line 675
    .line 676
    const/4 v3, 0x1

    .line 677
    invoke-direct {v2, v3, v1}, Lt1/e;-><init>(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 678
    .line 679
    .line 680
    const/4 v3, 0x5

    .line 681
    move-object v3, v0

    .line 682
    const/4 v4, 0x5

    .line 683
    :cond_12
    iget-object v6, v3, Ls2/b$a;->b:Lt2/j;

    .line 684
    .line 685
    iget-object v0, v3, Ls2/b$a;->a:Ljava/net/URL;

    .line 686
    .line 687
    :try_start_5
    iget-object v7, v2, Lt1/e;->b:Ljava/lang/Object;

    .line 688
    .line 689
    check-cast v7, Ls2/b;

    .line 690
    .line 691
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 692
    .line 693
    .line 694
    const-string v8, "Making request to: %s"

    .line 695
    .line 696
    invoke-static {v0, v5, v8}, Lc5/w;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 704
    .line 705
    const/16 v8, 0x7530

    .line 706
    .line 707
    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 708
    .line 709
    .line 710
    iget v8, v7, Ls2/b;->g:I

    .line 711
    .line 712
    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 713
    .line 714
    .line 715
    const/4 v8, 0x1

    .line 716
    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 717
    .line 718
    .line 719
    const/4 v9, 0x0

    .line 720
    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 721
    .line 722
    .line 723
    const-string v9, "POST"

    .line 724
    .line 725
    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    new-array v8, v8, [Ljava/lang/Object;

    .line 729
    .line 730
    const-string v9, "3.1.0"

    .line 731
    .line 732
    const/4 v10, 0x0

    .line 733
    aput-object v9, v8, v10

    .line 734
    .line 735
    const-string v9, "datatransport/%s android/"

    .line 736
    .line 737
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v8

    .line 741
    const-string v9, "User-Agent"

    .line 742
    .line 743
    invoke-virtual {v0, v9, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    const-string v8, "Content-Encoding"

    .line 747
    .line 748
    const-string v9, "gzip"

    .line 749
    .line 750
    invoke-virtual {v0, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    const-string v10, "Content-Type"

    .line 754
    .line 755
    const-string v11, "application/json"

    .line 756
    .line 757
    invoke-virtual {v0, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    const-string v11, "Accept-Encoding"

    .line 761
    .line 762
    invoke-virtual {v0, v11, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    iget-object v11, v3, Ls2/b$a;->c:Ljava/lang/String;

    .line 766
    .line 767
    if-eqz v11, :cond_13

    .line 768
    .line 769
    const-string v12, "X-Goog-Api-Key"

    .line 770
    .line 771
    invoke-virtual {v0, v12, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 772
    .line 773
    .line 774
    :cond_13
    const/16 v11, 0xc8

    .line 775
    .line 776
    :try_start_6
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 777
    .line 778
    .line 779
    move-result-object v12
    :try_end_6
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lt6/b; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 780
    :try_start_7
    new-instance v13, Ljava/util/zip/GZIPOutputStream;

    .line 781
    .line 782
    invoke-direct {v13, v12}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 783
    .line 784
    .line 785
    :try_start_8
    iget-object v7, v7, Ls2/b;->a:Lv6/d;

    .line 786
    .line 787
    new-instance v14, Ljava/io/BufferedWriter;

    .line 788
    .line 789
    new-instance v15, Ljava/io/OutputStreamWriter;

    .line 790
    .line 791
    invoke-direct {v15, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 792
    .line 793
    .line 794
    invoke-direct {v14, v15}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v7, v6, v14}, Lv6/d;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 798
    .line 799
    .line 800
    :try_start_9
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 801
    .line 802
    .line 803
    if-eqz v12, :cond_14

    .line 804
    .line 805
    :try_start_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/net/ConnectException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lt6/b; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 806
    .line 807
    .line 808
    :cond_14
    :try_start_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 809
    .line 810
    .line 811
    move-result v7

    .line 812
    new-instance v12, Ljava/lang/StringBuilder;

    .line 813
    .line 814
    const-string v13, "Status Code: "

    .line 815
    .line 816
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v12

    .line 826
    invoke-static {v5}, Lc5/w;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v13

    .line 830
    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    .line 832
    .line 833
    new-instance v12, Ljava/lang/StringBuilder;

    .line 834
    .line 835
    const-string v13, "Content-Type: "

    .line 836
    .line 837
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v0, v10}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v10

    .line 844
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v10

    .line 851
    invoke-static {v5}, Lc5/w;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v12

    .line 855
    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .line 857
    .line 858
    new-instance v10, Ljava/lang/StringBuilder;

    .line 859
    .line 860
    const-string v12, "Content-Encoding: "

    .line 861
    .line 862
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v12

    .line 869
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v10

    .line 876
    invoke-static {v5}, Lc5/w;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v12

    .line 880
    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    .line 882
    .line 883
    const/16 v10, 0x12e

    .line 884
    .line 885
    if-eq v7, v10, :cond_1b

    .line 886
    .line 887
    const/16 v10, 0x12d

    .line 888
    .line 889
    if-eq v7, v10, :cond_1b

    .line 890
    .line 891
    const/16 v10, 0x133

    .line 892
    .line 893
    if-ne v7, v10, :cond_15

    .line 894
    .line 895
    goto :goto_e

    .line 896
    :cond_15
    if-eq v7, v11, :cond_16

    .line 897
    .line 898
    new-instance v0, Ls2/b$b;

    .line 899
    .line 900
    const/4 v8, 0x0

    .line 901
    const-wide/16 v9, 0x0

    .line 902
    .line 903
    invoke-direct {v0, v7, v8, v9, v10}, Ls2/b$b;-><init>(ILjava/net/URL;J)V

    .line 904
    .line 905
    .line 906
    goto/16 :goto_12

    .line 907
    .line 908
    :cond_16
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 909
    .line 910
    .line 911
    move-result-object v10
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 912
    :try_start_c
    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    move-result v0

    .line 920
    if-eqz v0, :cond_17

    .line 921
    .line 922
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 923
    .line 924
    invoke-direct {v0, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 925
    .line 926
    .line 927
    move-object v8, v0

    .line 928
    goto :goto_b

    .line 929
    :cond_17
    move-object v8, v10

    .line 930
    :goto_b
    :try_start_d
    new-instance v0, Ljava/io/BufferedReader;

    .line 931
    .line 932
    new-instance v9, Ljava/io/InputStreamReader;

    .line 933
    .line 934
    invoke-direct {v9, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 935
    .line 936
    .line 937
    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 938
    .line 939
    .line 940
    invoke-static {v0}, Lt2/n;->a(Ljava/io/BufferedReader;)Lt2/h;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    iget-wide v12, v0, Lt2/h;->a:J

    .line 945
    .line 946
    new-instance v0, Ls2/b$b;

    .line 947
    .line 948
    const/4 v9, 0x0

    .line 949
    invoke-direct {v0, v7, v9, v12, v13}, Ls2/b$b;-><init>(ILjava/net/URL;J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 950
    .line 951
    .line 952
    if-eqz v8, :cond_18

    .line 953
    .line 954
    :try_start_e
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 955
    .line 956
    .line 957
    :cond_18
    if-eqz v10, :cond_1d

    .line 958
    .line 959
    :try_start_f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 960
    .line 961
    .line 962
    goto/16 :goto_12

    .line 963
    .line 964
    :catchall_0
    move-exception v0

    .line 965
    move-object v2, v0

    .line 966
    if-eqz v8, :cond_19

    .line 967
    .line 968
    :try_start_10
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 969
    .line 970
    .line 971
    goto :goto_c

    .line 972
    :catchall_1
    move-exception v0

    .line 973
    move-object v3, v0

    .line 974
    :try_start_11
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 975
    .line 976
    .line 977
    :cond_19
    :goto_c
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 978
    :catchall_2
    move-exception v0

    .line 979
    move-object v2, v0

    .line 980
    if-eqz v10, :cond_1a

    .line 981
    .line 982
    :try_start_12
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 983
    .line 984
    .line 985
    goto :goto_d

    .line 986
    :catchall_3
    move-exception v0

    .line 987
    move-object v3, v0

    .line 988
    :try_start_13
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 989
    .line 990
    .line 991
    :cond_1a
    :goto_d
    throw v2

    .line 992
    :cond_1b
    :goto_e
    const-string v8, "Location"

    .line 993
    .line 994
    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    new-instance v8, Ls2/b$b;

    .line 999
    .line 1000
    new-instance v9, Ljava/net/URL;

    .line 1001
    .line 1002
    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    const-wide/16 v12, 0x0

    .line 1006
    .line 1007
    invoke-direct {v8, v7, v9, v12, v13}, Ls2/b$b;-><init>(ILjava/net/URL;J)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    .line 1008
    .line 1009
    .line 1010
    move-object v0, v8

    .line 1011
    goto :goto_12

    .line 1012
    :catchall_4
    move-exception v0

    .line 1013
    move-object v7, v0

    .line 1014
    :try_start_14
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 1015
    .line 1016
    .line 1017
    goto :goto_f

    .line 1018
    :catchall_5
    move-exception v0

    .line 1019
    move-object v8, v0

    .line 1020
    :try_start_15
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1021
    .line 1022
    .line 1023
    :goto_f
    throw v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 1024
    :catchall_6
    move-exception v0

    .line 1025
    move-object v7, v0

    .line 1026
    if-eqz v12, :cond_1c

    .line 1027
    .line 1028
    :try_start_16
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 1029
    .line 1030
    .line 1031
    goto :goto_10

    .line 1032
    :catchall_7
    move-exception v0

    .line 1033
    move-object v8, v0

    .line 1034
    :try_start_17
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1035
    .line 1036
    .line 1037
    :cond_1c
    :goto_10
    throw v7
    :try_end_17
    .catch Ljava/net/ConnectException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Lt6/b; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3

    .line 1038
    :catch_3
    move-exception v0

    .line 1039
    goto :goto_11

    .line 1040
    :catch_4
    move-exception v0

    .line 1041
    :goto_11
    :try_start_18
    invoke-static {v5}, Lc5/w;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v7

    .line 1045
    const-string v8, "Couldn\'t encode request, returning with 400"

    .line 1046
    .line 1047
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1048
    .line 1049
    .line 1050
    new-instance v0, Ls2/b$b;

    .line 1051
    .line 1052
    const/16 v7, 0x190

    .line 1053
    .line 1054
    const/4 v8, 0x0

    .line 1055
    const-wide/16 v9, 0x0

    .line 1056
    .line 1057
    invoke-direct {v0, v7, v8, v9, v10}, Ls2/b$b;-><init>(ILjava/net/URL;J)V

    .line 1058
    .line 1059
    .line 1060
    :cond_1d
    :goto_12
    const/4 v7, 0x0

    .line 1061
    goto :goto_14

    .line 1062
    :catch_5
    move-exception v0

    .line 1063
    goto :goto_13

    .line 1064
    :catch_6
    move-exception v0

    .line 1065
    :goto_13
    invoke-static {v5}, Lc5/w;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v7

    .line 1069
    const-string v8, "Couldn\'t open connection, returning with 500"

    .line 1070
    .line 1071
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1072
    .line 1073
    .line 1074
    new-instance v0, Ls2/b$b;

    .line 1075
    .line 1076
    const/16 v7, 0x1f4

    .line 1077
    .line 1078
    const/4 v8, 0x0

    .line 1079
    const-wide/16 v9, 0x0

    .line 1080
    .line 1081
    invoke-direct {v0, v7, v8, v9, v10}, Ls2/b$b;-><init>(ILjava/net/URL;J)V

    .line 1082
    .line 1083
    .line 1084
    move-object v7, v8

    .line 1085
    :goto_14
    iget-object v8, v0, Ls2/b$b;->b:Ljava/net/URL;

    .line 1086
    .line 1087
    if-eqz v8, :cond_1e

    .line 1088
    .line 1089
    const-string v7, "Following redirect to: %s"

    .line 1090
    .line 1091
    invoke-static {v8, v5, v7}, Lc5/w;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    new-instance v7, Ls2/b$a;

    .line 1095
    .line 1096
    iget-object v3, v3, Ls2/b$a;->c:Ljava/lang/String;

    .line 1097
    .line 1098
    invoke-direct {v7, v8, v6, v3}, Ls2/b$a;-><init>(Ljava/net/URL;Lt2/j;Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    :cond_1e
    move-object v3, v7

    .line 1102
    if-eqz v3, :cond_1f

    .line 1103
    .line 1104
    add-int/lit8 v4, v4, -0x1

    .line 1105
    .line 1106
    const/4 v6, 0x1

    .line 1107
    if-ge v4, v6, :cond_12

    .line 1108
    .line 1109
    :cond_1f
    iget v2, v0, Ls2/b$b;->a:I

    .line 1110
    .line 1111
    if-ne v2, v11, :cond_20

    .line 1112
    .line 1113
    iget-wide v2, v0, Ls2/b$b;->c:J

    .line 1114
    .line 1115
    new-instance v0, Lv2/b;

    .line 1116
    .line 1117
    const/4 v4, 0x1

    .line 1118
    invoke-direct {v0, v4, v2, v3}, Lv2/b;-><init>(IJ)V

    .line 1119
    .line 1120
    .line 1121
    return-object v0

    .line 1122
    :cond_20
    const/16 v0, 0x1f4

    .line 1123
    .line 1124
    if-ge v2, v0, :cond_23

    .line 1125
    .line 1126
    const/16 v0, 0x194

    .line 1127
    .line 1128
    if-ne v2, v0, :cond_21

    .line 1129
    .line 1130
    goto :goto_15

    .line 1131
    :cond_21
    const/16 v0, 0x190

    .line 1132
    .line 1133
    if-ne v2, v0, :cond_22

    .line 1134
    .line 1135
    new-instance v0, Lv2/b;

    .line 1136
    .line 1137
    const/4 v2, 0x4

    .line 1138
    const-wide/16 v3, -0x1

    .line 1139
    .line 1140
    invoke-direct {v0, v2, v3, v4}, Lv2/b;-><init>(IJ)V

    .line 1141
    .line 1142
    .line 1143
    return-object v0

    .line 1144
    :cond_22
    const-wide/16 v2, -0x1

    .line 1145
    .line 1146
    new-instance v0, Lv2/b;

    .line 1147
    .line 1148
    const/4 v4, 0x3

    .line 1149
    invoke-direct {v0, v4, v2, v3}, Lv2/b;-><init>(IJ)V

    .line 1150
    .line 1151
    .line 1152
    return-object v0

    .line 1153
    :cond_23
    :goto_15
    new-instance v0, Lv2/b;

    .line 1154
    .line 1155
    const/4 v2, 0x2

    .line 1156
    const-wide/16 v3, -0x1

    .line 1157
    .line 1158
    invoke-direct {v0, v2, v3, v4}, Lv2/b;-><init>(IJ)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_7

    .line 1159
    .line 1160
    .line 1161
    return-object v0

    .line 1162
    :catch_7
    move-exception v0

    .line 1163
    invoke-static {v5}, Lc5/w;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v2

    .line 1167
    const-string v3, "Could not make request to the backend"

    .line 1168
    .line 1169
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    .line 1171
    .line 1172
    new-instance v0, Lv2/b;

    .line 1173
    .line 1174
    const/4 v2, 0x2

    .line 1175
    const-wide/16 v3, -0x1

    .line 1176
    .line 1177
    invoke-direct {v0, v2, v3, v4}, Lv2/b;-><init>(IJ)V

    .line 1178
    .line 1179
    .line 1180
    return-object v0
.end method

.method public final b(Lu2/n;)Lu2/h;
    .locals 6

    .line 1
    iget-object v0, p0, Ls2/b;->b:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lu2/n;->i()Lu2/h$a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    iget-object v2, p1, Lu2/h$a;->f:Ljava/util/Map;

    .line 14
    .line 15
    const-string v3, "Property \"autoMetadata\" has not been set"

    .line 16
    .line 17
    if-eqz v2, :cond_7

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v4, "sdk-version"

    .line 24
    .line 25
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string v1, "model"

    .line 29
    .line 30
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v1, v2}, Lu2/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "hardware"

    .line 36
    .line 37
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v1, v2}, Lu2/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "device"

    .line 43
    .line 44
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v1, v2}, Lu2/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "product"

    .line 50
    .line 51
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v1, v2}, Lu2/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "os-uild"

    .line 57
    .line 58
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v1, v2}, Lu2/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "manufacturer"

    .line 64
    .line 65
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, v1, v2}, Lu2/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v1, "fingerprint"

    .line 71
    .line 72
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, v1, v2}, Lu2/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    invoke-virtual {v1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    div-int/lit16 v1, v1, 0x3e8

    .line 97
    .line 98
    int-to-long v1, v1

    .line 99
    iget-object v4, p1, Lu2/h$a;->f:Ljava/util/Map;

    .line 100
    .line 101
    if-eqz v4, :cond_6

    .line 102
    .line 103
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v2, "tz-offset"

    .line 108
    .line 109
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const/4 v1, -0x1

    .line 113
    if-nez v0, :cond_0

    .line 114
    .line 115
    sget-object v2, Lt2/o$b;->a:Landroid/util/SparseArray;

    .line 116
    .line 117
    const/4 v2, -0x1

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    :goto_0
    iget-object v4, p1, Lu2/h$a;->f:Ljava/util/Map;

    .line 124
    .line 125
    if-eqz v4, :cond_5

    .line 126
    .line 127
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const-string v5, "net-type"

    .line 132
    .line 133
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    if-nez v0, :cond_1

    .line 138
    .line 139
    sget-object v0, Lt2/o$a;->a:Landroid/util/SparseArray;

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-ne v0, v1, :cond_2

    .line 147
    .line 148
    sget-object v0, Lt2/o$a;->a:Landroid/util/SparseArray;

    .line 149
    .line 150
    const/16 v0, 0x64

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_2
    sget-object v4, Lt2/o$a;->a:Landroid/util/SparseArray;

    .line 154
    .line 155
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    check-cast v4, Lt2/o$a;

    .line 160
    .line 161
    if-eqz v4, :cond_3

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 165
    :goto_2
    iget-object v4, p1, Lu2/h$a;->f:Ljava/util/Map;

    .line 166
    .line 167
    if-eqz v4, :cond_4

    .line 168
    .line 169
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v3, "mobile-subtype"

    .line 174
    .line 175
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const-string v3, "country"

    .line 187
    .line 188
    invoke-virtual {p1, v3, v0}, Lu2/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const-string v3, "locale"

    .line 200
    .line 201
    invoke-virtual {p1, v3, v0}, Lu2/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Ls2/b;->c:Landroid/content/Context;

    .line 205
    .line 206
    const-string v3, "phone"

    .line 207
    .line 208
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 213
    .line 214
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    const-string v4, "mcc_mnc"

    .line 219
    .line 220
    invoke-virtual {p1, v4, v3}, Lu2/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :catch_0
    move-exception v0

    .line 239
    const-string v2, "CctTransportBackend"

    .line 240
    .line 241
    invoke-static {v2}, Lc5/w;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    const-string v3, "Unable to find version code for package"

    .line 246
    .line 247
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .line 249
    .line 250
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const-string v1, "application_build"

    .line 255
    .line 256
    invoke-virtual {p1, v1, v0}, Lu2/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lu2/h$a;->b()Lu2/h;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    return-object p1

    .line 264
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 265
    .line 266
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p1

    .line 270
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 271
    .line 272
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw p1

    .line 276
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 277
    .line 278
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p1

    .line 282
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 283
    .line 284
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw p1
.end method
