.class public final Lzh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzh/a$b;,
        Lzh/a$c;,
        Lzh/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

.field public c:Landroid/hardware/Camera;

.field public d:I

.field public e:I

.field public f:Lq3/a;

.field public final g:F

.field public final h:I

.field public final i:I

.field public final j:Z

.field public k:Ljava/lang/Thread;

.field public final l:Lzh/a$b;

.field public final m:Ljava/lang/Object;

.field public n:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;

.field public final o:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzh/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lzh/a;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    const/4 p1, 0x0

    iput p1, p0, Lzh/a;->d:I

    const/high16 p1, 0x41a00000    # 20.0f

    iput p1, p0, Lzh/a;->g:F

    const/16 p1, 0x500

    iput p1, p0, Lzh/a;->h:I

    const/16 p1, 0x3c0

    iput p1, p0, Lzh/a;->i:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lzh/a;->j:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzh/a;->m:Ljava/lang/Object;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lzh/a;->o:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;->a()V

    new-instance p1, Lzh/a$b;

    invoke-direct {p1, p0}, Lzh/a$b;-><init>(Lzh/a;)V

    iput-object p1, p0, Lzh/a;->l:Lzh/a$b;

    return-void
.end method


# virtual methods
.method public final a()Landroid/hardware/Camera;
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lzh/a;->d:I

    .line 2
    .line 3
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    const/4 v5, -0x1

    .line 15
    if-ge v4, v2, :cond_1

    .line 16
    .line 17
    invoke-static {v4, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 18
    .line 19
    .line 20
    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 21
    .line 22
    if-ne v6, v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v4, -0x1

    .line 29
    :goto_1
    if-eq v4, v5, :cond_14

    .line 30
    .line 31
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "camera"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v5, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_4

    .line 66
    .line 67
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    check-cast v7, Landroid/hardware/Camera$Size;

    .line 72
    .line 73
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    .line 74
    .line 75
    int-to-float v8, v8

    .line 76
    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    .line 77
    .line 78
    int-to-float v9, v9

    .line 79
    div-float/2addr v8, v9

    .line 80
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-eqz v10, :cond_2

    .line 89
    .line 90
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    check-cast v10, Landroid/hardware/Camera$Size;

    .line 95
    .line 96
    iget v11, v10, Landroid/hardware/Camera$Size;->width:I

    .line 97
    .line 98
    int-to-float v11, v11

    .line 99
    iget v12, v10, Landroid/hardware/Camera$Size;->height:I

    .line 100
    .line 101
    int-to-float v12, v12

    .line 102
    div-float/2addr v11, v12

    .line 103
    sub-float v11, v8, v11

    .line 104
    .line 105
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    const v12, 0x3c23d70a    # 0.01f

    .line 110
    .line 111
    .line 112
    cmpg-float v11, v11, v12

    .line 113
    .line 114
    if-gez v11, :cond_3

    .line 115
    .line 116
    new-instance v8, Lzh/a$c;

    .line 117
    .line 118
    invoke-direct {v8, v7, v10}, Lzh/a$c;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const/4 v6, 0x0

    .line 130
    const-string v7, "MIDemoApp:CameraSource"

    .line 131
    .line 132
    if-nez v1, :cond_5

    .line 133
    .line 134
    const-string v1, "No preview sizes have a corresponding same-aspect-ratio picture size"

    .line 135
    .line 136
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Landroid/hardware/Camera$Size;

    .line 154
    .line 155
    new-instance v8, Lzh/a$c;

    .line 156
    .line 157
    const-string v9, "previewSize"

    .line 158
    .line 159
    invoke-static {v2, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {v8, v2, v6}, Lzh/a$c;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const v2, 0x7fffffff

    .line 174
    .line 175
    .line 176
    move-object v5, v6

    .line 177
    const v8, 0x7fffffff

    .line 178
    .line 179
    .line 180
    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-eqz v9, :cond_7

    .line 185
    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    check-cast v9, Lzh/a$c;

    .line 191
    .line 192
    iget-object v10, v9, Lzh/a$c;->a:Lq3/a;

    .line 193
    .line 194
    iget v11, v10, Lq3/a;->a:I

    .line 195
    .line 196
    iget v12, p0, Lzh/a;->h:I

    .line 197
    .line 198
    sub-int/2addr v11, v12

    .line 199
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 200
    .line 201
    .line 202
    move-result v11

    .line 203
    iget v10, v10, Lq3/a;->b:I

    .line 204
    .line 205
    iget v12, p0, Lzh/a;->i:I

    .line 206
    .line 207
    sub-int/2addr v10, v12

    .line 208
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    add-int/2addr v10, v11

    .line 213
    if-ge v10, v8, :cond_6

    .line 214
    .line 215
    move-object v5, v9

    .line 216
    move v8, v10

    .line 217
    goto :goto_4

    .line 218
    :cond_7
    if-eqz v5, :cond_13

    .line 219
    .line 220
    iget-object v1, v5, Lzh/a$c;->a:Lq3/a;

    .line 221
    .line 222
    iput-object v1, p0, Lzh/a;->f:Lq3/a;

    .line 223
    .line 224
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 225
    .line 226
    iget v8, p0, Lzh/a;->g:F

    .line 227
    .line 228
    mul-float v8, v8, v1

    .line 229
    .line 230
    float-to-int v1, v8

    .line 231
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    :cond_8
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    const/4 v10, 0x1

    .line 248
    if-eqz v9, :cond_9

    .line 249
    .line 250
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    check-cast v9, [I

    .line 255
    .line 256
    aget v11, v9, v3

    .line 257
    .line 258
    sub-int v11, v1, v11

    .line 259
    .line 260
    aget v10, v9, v10

    .line 261
    .line 262
    sub-int v10, v1, v10

    .line 263
    .line 264
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 269
    .line 270
    .line 271
    move-result v10

    .line 272
    add-int/2addr v10, v11

    .line 273
    if-ge v10, v2, :cond_8

    .line 274
    .line 275
    move-object v6, v9

    .line 276
    move v2, v10

    .line 277
    goto :goto_5

    .line 278
    :cond_9
    if-eqz v6, :cond_12

    .line 279
    .line 280
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    iget-object v2, v5, Lzh/a$c;->b:Lq3/a;

    .line 285
    .line 286
    if-eqz v2, :cond_a

    .line 287
    .line 288
    iget v5, v2, Lq3/a;->a:I

    .line 289
    .line 290
    iget v2, v2, Lq3/a;->b:I

    .line 291
    .line 292
    invoke-virtual {v1, v5, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 293
    .line 294
    .line 295
    :cond_a
    iget-object v2, p0, Lzh/a;->f:Lq3/a;

    .line 296
    .line 297
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    iget-object v5, p0, Lzh/a;->f:Lq3/a;

    .line 301
    .line 302
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    iget v2, v2, Lq3/a;->a:I

    .line 306
    .line 307
    iget v5, v5, Lq3/a;->b:I

    .line 308
    .line 309
    invoke-virtual {v1, v2, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 310
    .line 311
    .line 312
    aget v2, v6, v3

    .line 313
    .line 314
    aget v5, v6, v10

    .line 315
    .line 316
    invoke-virtual {v1, v2, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 317
    .line 318
    .line 319
    const/16 v2, 0x11

    .line 320
    .line 321
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 322
    .line 323
    .line 324
    iget-object v2, p0, Lzh/a;->a:Landroid/app/Activity;

    .line 325
    .line 326
    const-string v5, "window"

    .line 327
    .line 328
    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    const-string v5, "null cannot be cast to non-null type android.view.WindowManager"

    .line 333
    .line 334
    invoke-static {v2, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    check-cast v2, Landroid/view/WindowManager;

    .line 338
    .line 339
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-eqz v2, :cond_e

    .line 348
    .line 349
    if-eq v2, v10, :cond_d

    .line 350
    .line 351
    const/4 v5, 0x2

    .line 352
    if-eq v2, v5, :cond_c

    .line 353
    .line 354
    const/4 v5, 0x3

    .line 355
    if-eq v2, v5, :cond_b

    .line 356
    .line 357
    new-instance v5, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string v6, "Bad rotation value: "

    .line 360
    .line 361
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_b
    const/16 v3, 0x10e

    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_c
    const/16 v3, 0xb4

    .line 379
    .line 380
    goto :goto_6

    .line 381
    :cond_d
    const/16 v3, 0x5a

    .line 382
    .line 383
    :cond_e
    :goto_6
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    .line 384
    .line 385
    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-static {v4, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 389
    .line 390
    .line 391
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 392
    .line 393
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 394
    .line 395
    if-ne v4, v10, :cond_f

    .line 396
    .line 397
    add-int/2addr v2, v3

    .line 398
    rem-int/lit16 v2, v2, 0x168

    .line 399
    .line 400
    rsub-int v3, v2, 0x168

    .line 401
    .line 402
    rem-int/lit16 v3, v3, 0x168

    .line 403
    .line 404
    goto :goto_7

    .line 405
    :cond_f
    sub-int/2addr v2, v3

    .line 406
    add-int/lit16 v2, v2, 0x168

    .line 407
    .line 408
    rem-int/lit16 v2, v2, 0x168

    .line 409
    .line 410
    move v3, v2

    .line 411
    :goto_7
    iput v2, p0, Lzh/a;->e:I

    .line 412
    .line 413
    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 417
    .line 418
    .line 419
    iget-boolean v2, p0, Lzh/a;->j:Z

    .line 420
    .line 421
    if-eqz v2, :cond_11

    .line 422
    .line 423
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    const-string v3, "continuous-video"

    .line 428
    .line 429
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    if-eqz v2, :cond_10

    .line 434
    .line 435
    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    goto :goto_8

    .line 439
    :cond_10
    const-string v2, "Camera auto focus is not supported on this device."

    .line 440
    .line 441
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    :cond_11
    :goto_8
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 445
    .line 446
    .line 447
    new-instance v1, Lzh/a$a;

    .line 448
    .line 449
    invoke-direct {v1, p0}, Lzh/a$a;-><init>(Lzh/a;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 453
    .line 454
    .line 455
    iget-object v1, p0, Lzh/a;->f:Lq3/a;

    .line 456
    .line 457
    invoke-virtual {p0, v1}, Lzh/a;->b(Lq3/a;)[B

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 462
    .line 463
    .line 464
    iget-object v1, p0, Lzh/a;->f:Lq3/a;

    .line 465
    .line 466
    invoke-virtual {p0, v1}, Lzh/a;->b(Lq3/a;)[B

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 471
    .line 472
    .line 473
    iget-object v1, p0, Lzh/a;->f:Lq3/a;

    .line 474
    .line 475
    invoke-virtual {p0, v1}, Lzh/a;->b(Lq3/a;)[B

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 480
    .line 481
    .line 482
    iget-object v1, p0, Lzh/a;->f:Lq3/a;

    .line 483
    .line 484
    invoke-virtual {p0, v1}, Lzh/a;->b(Lq3/a;)[B

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 489
    .line 490
    .line 491
    return-object v0

    .line 492
    :cond_12
    new-instance v0, Ljava/io/IOException;

    .line 493
    .line 494
    const-string v1, "Could not find suitable preview frames per second range."

    .line 495
    .line 496
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    throw v0

    .line 500
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 501
    .line 502
    const-string v1, "Could not find suitable preview size."

    .line 503
    .line 504
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    throw v0

    .line 508
    :cond_14
    new-instance v0, Ljava/io/IOException;

    .line 509
    .line 510
    const-string v1, "Could not find requested camera."

    .line 511
    .line 512
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    throw v0
.end method

.method public final b(Lq3/a;)[B
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    iget v1, p1, Lq3/a;->b:I

    int-to-long v1, v1

    iget p1, p1, Lq3/a;->a:I

    int-to-long v3, p1

    mul-long v1, v1, v3

    int-to-long v3, v0

    mul-long v1, v1, v3

    long-to-double v0, v1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    new-array p1, p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lzh/a;->o:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to create valid buffer for camera source."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzh/a;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lzh/a;->e()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lzh/a;->l:Lzh/a$b;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lzh/a;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 13
    .line 14
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;->a()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lzh/a;->n:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;->b:Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;

    .line 22
    .line 23
    invoke-interface {v1}, Lc8/c;->close()V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0

    .line 32
    throw v1
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lzh/a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 5

    const-string v0, "Failed to clear camera preview: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lzh/a;->l:Lzh/a$b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lzh/a$b;->a(Z)V

    iget-object v1, p0, Lzh/a;->k:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "MIDemoApp:CameraSource"

    const-string v3, "Frame processing thread interrupted on release."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v2, p0, Lzh/a;->k:Ljava/lang/Thread;

    :cond_0
    iget-object v1, p0, Lzh/a;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v1, p0, Lzh/a;->c:Landroid/hardware/Camera;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lzh/a;->c:Landroid/hardware/Camera;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "MIDemoApp:CameraSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lzh/a;->c:Landroid/hardware/Camera;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v2, p0, Lzh/a;->c:Landroid/hardware/Camera;

    :cond_1
    iget-object v0, p0, Lzh/a;->o:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
