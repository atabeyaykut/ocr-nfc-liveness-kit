.class public final Lcom/bumptech/glide/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/bumptech/glide/b;Ljava/util/List;)Lcom/bumptech/glide/k;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/b;->a:Ly0/c;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/h;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v2, v2, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/i;

    .line 12
    .line 13
    new-instance v4, Lcom/bumptech/glide/k;

    .line 14
    .line 15
    invoke-direct {v4}, Lcom/bumptech/glide/k;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v5, Le1/k;

    .line 19
    .line 20
    invoke-direct {v5}, Le1/k;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v6, v4, Lcom/bumptech/glide/k;->g:Ll1/b;

    .line 24
    .line 25
    monitor-enter v6

    .line 26
    :try_start_0
    iget-object v7, v6, Ll1/b;->a:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit v6

    .line 32
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v6, 0x1b

    .line 35
    .line 36
    if-lt v5, v6, :cond_0

    .line 37
    .line 38
    new-instance v6, Le1/p;

    .line 39
    .line 40
    invoke-direct {v6}, Le1/p;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v6}, Lcom/bumptech/glide/k;->i(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v4}, Lcom/bumptech/glide/k;->f()Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    new-instance v8, Li1/a;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/bumptech/glide/b;->d:Ly0/b;

    .line 57
    .line 58
    invoke-direct {v8, v3, v7, v1, v0}, Li1/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ly0/c;Ly0/b;)V

    .line 59
    .line 60
    .line 61
    new-instance v9, Le1/b0;

    .line 62
    .line 63
    new-instance v10, Le1/b0$g;

    .line 64
    .line 65
    invoke-direct {v10}, Le1/b0$g;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-direct {v9, v1, v10}, Le1/b0;-><init>(Ly0/c;Le1/b0$f;)V

    .line 69
    .line 70
    .line 71
    new-instance v10, Le1/m;

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/bumptech/glide/k;->f()Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    invoke-direct {v10, v11, v12, v1, v0}, Le1/m;-><init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Ly0/c;Ly0/b;)V

    .line 82
    .line 83
    .line 84
    const/16 v11, 0x1c

    .line 85
    .line 86
    if-lt v5, v11, :cond_1

    .line 87
    .line 88
    const-class v12, Lcom/bumptech/glide/d;

    .line 89
    .line 90
    iget-object v2, v2, Lcom/bumptech/glide/i;->a:Ljava/util/Map;

    .line 91
    .line 92
    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    new-instance v2, Le1/t;

    .line 99
    .line 100
    invoke-direct {v2}, Le1/t;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v12, Le1/h;

    .line 104
    .line 105
    invoke-direct {v12}, Le1/h;-><init>()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    new-instance v12, Le1/g;

    .line 110
    .line 111
    invoke-direct {v12, v10}, Le1/g;-><init>(Le1/m;)V

    .line 112
    .line 113
    .line 114
    new-instance v2, Le1/x;

    .line 115
    .line 116
    invoke-direct {v2, v10, v0}, Le1/x;-><init>(Le1/m;Ly0/b;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    const-string v13, "Animation"

    .line 120
    .line 121
    const-class v14, Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    const-class v15, Ljava/nio/ByteBuffer;

    .line 124
    .line 125
    move-object/from16 v16, v8

    .line 126
    .line 127
    const-class v8, Ljava/io/InputStream;

    .line 128
    .line 129
    if-lt v5, v11, :cond_2

    .line 130
    .line 131
    new-instance v11, Lg1/a$c;

    .line 132
    .line 133
    move/from16 v17, v5

    .line 134
    .line 135
    new-instance v5, Lg1/a;

    .line 136
    .line 137
    invoke-direct {v5, v7, v0}, Lg1/a;-><init>(Ljava/util/ArrayList;Ly0/b;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {v11, v5}, Lg1/a$c;-><init>(Lg1/a;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v11, v8, v14, v13}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance v5, Lg1/a$b;

    .line 147
    .line 148
    new-instance v11, Lg1/a;

    .line 149
    .line 150
    invoke-direct {v11, v7, v0}, Lg1/a;-><init>(Ljava/util/ArrayList;Ly0/b;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {v5, v11}, Lg1/a$b;-><init>(Lg1/a;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v5, v15, v14, v13}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    move/from16 v17, v5

    .line 161
    .line 162
    :goto_1
    new-instance v5, Lg1/f;

    .line 163
    .line 164
    invoke-direct {v5, v3}, Lg1/f;-><init>(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    new-instance v11, Lb1/t$c;

    .line 168
    .line 169
    invoke-direct {v11, v6}, Lb1/t$c;-><init>(Landroid/content/res/Resources;)V

    .line 170
    .line 171
    .line 172
    move-object/from16 p0, v11

    .line 173
    .line 174
    new-instance v11, Lb1/t$d;

    .line 175
    .line 176
    invoke-direct {v11, v6}, Lb1/t$d;-><init>(Landroid/content/res/Resources;)V

    .line 177
    .line 178
    .line 179
    move-object/from16 v18, v11

    .line 180
    .line 181
    new-instance v11, Lb1/t$b;

    .line 182
    .line 183
    invoke-direct {v11, v6}, Lb1/t$b;-><init>(Landroid/content/res/Resources;)V

    .line 184
    .line 185
    .line 186
    move-object/from16 v19, v11

    .line 187
    .line 188
    new-instance v11, Lb1/t$a;

    .line 189
    .line 190
    invoke-direct {v11, v6}, Lb1/t$a;-><init>(Landroid/content/res/Resources;)V

    .line 191
    .line 192
    .line 193
    move-object/from16 v20, v11

    .line 194
    .line 195
    new-instance v11, Le1/c;

    .line 196
    .line 197
    invoke-direct {v11, v0}, Le1/c;-><init>(Ly0/b;)V

    .line 198
    .line 199
    .line 200
    move-object/from16 v21, v5

    .line 201
    .line 202
    new-instance v5, Lj1/a;

    .line 203
    .line 204
    invoke-direct {v5}, Lj1/a;-><init>()V

    .line 205
    .line 206
    .line 207
    move-object/from16 v22, v5

    .line 208
    .line 209
    new-instance v5, Lj1/d;

    .line 210
    .line 211
    invoke-direct {v5}, Lj1/d;-><init>()V

    .line 212
    .line 213
    .line 214
    move-object/from16 v23, v5

    .line 215
    .line 216
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    move-object/from16 v24, v5

    .line 221
    .line 222
    new-instance v5, Lb1/c;

    .line 223
    .line 224
    invoke-direct {v5}, Lb1/c;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v15, v5}, Lcom/bumptech/glide/k;->b(Ljava/lang/Class;Lv0/d;)V

    .line 228
    .line 229
    .line 230
    new-instance v5, Lb1/u;

    .line 231
    .line 232
    invoke-direct {v5, v0}, Lb1/u;-><init>(Ly0/b;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v8, v5}, Lcom/bumptech/glide/k;->b(Ljava/lang/Class;Lv0/d;)V

    .line 236
    .line 237
    .line 238
    const-class v5, Landroid/graphics/Bitmap;

    .line 239
    .line 240
    move-object/from16 v25, v3

    .line 241
    .line 242
    const-string v3, "Bitmap"

    .line 243
    .line 244
    invoke-virtual {v4, v12, v15, v5, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v2, v8, v5, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    move-object/from16 v26, v14

    .line 251
    .line 252
    const-string v14, "robolectric"

    .line 253
    .line 254
    move-object/from16 v27, v13

    .line 255
    .line 256
    sget-object v13, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v14

    .line 262
    xor-int/lit8 v14, v14, 0x1

    .line 263
    .line 264
    move-object/from16 v28, v13

    .line 265
    .line 266
    const-class v13, Landroid/os/ParcelFileDescriptor;

    .line 267
    .line 268
    if-eqz v14, :cond_3

    .line 269
    .line 270
    new-instance v14, Le1/v;

    .line 271
    .line 272
    invoke-direct {v14, v10}, Le1/v;-><init>(Le1/m;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v14, v13, v5, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :cond_3
    invoke-virtual {v4, v9, v13, v5, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    new-instance v10, Le1/b0;

    .line 282
    .line 283
    new-instance v14, Le1/b0$c;

    .line 284
    .line 285
    invoke-direct {v14}, Le1/b0$c;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-direct {v10, v1, v14}, Le1/b0;-><init>(Ly0/c;Le1/b0$f;)V

    .line 289
    .line 290
    .line 291
    const-class v14, Landroid/content/res/AssetFileDescriptor;

    .line 292
    .line 293
    invoke-virtual {v4, v10, v14, v5, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    sget-object v10, Lb1/w$a;->a:Lb1/w$a;

    .line 297
    .line 298
    invoke-virtual {v4, v5, v5, v10}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 299
    .line 300
    .line 301
    move-object/from16 v29, v14

    .line 302
    .line 303
    new-instance v14, Le1/z;

    .line 304
    .line 305
    invoke-direct {v14}, Le1/z;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4, v14, v5, v5, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v5, v11}, Lcom/bumptech/glide/k;->c(Ljava/lang/Class;Lv0/k;)V

    .line 312
    .line 313
    .line 314
    new-instance v14, Le1/a;

    .line 315
    .line 316
    invoke-direct {v14, v6, v12}, Le1/a;-><init>(Landroid/content/res/Resources;Lv0/j;)V

    .line 317
    .line 318
    .line 319
    const-class v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 320
    .line 321
    move-object/from16 v30, v3

    .line 322
    .line 323
    const-string v3, "BitmapDrawable"

    .line 324
    .line 325
    invoke-virtual {v4, v14, v15, v12, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    new-instance v14, Le1/a;

    .line 329
    .line 330
    invoke-direct {v14, v6, v2}, Le1/a;-><init>(Landroid/content/res/Resources;Lv0/j;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4, v14, v8, v12, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    new-instance v2, Le1/a;

    .line 337
    .line 338
    invoke-direct {v2, v6, v9}, Le1/a;-><init>(Landroid/content/res/Resources;Lv0/j;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4, v2, v13, v12, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    new-instance v2, Le1/b;

    .line 345
    .line 346
    invoke-direct {v2, v1, v11}, Le1/b;-><init>(Ly0/c;Le1/c;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4, v12, v2}, Lcom/bumptech/glide/k;->c(Ljava/lang/Class;Lv0/k;)V

    .line 350
    .line 351
    .line 352
    new-instance v2, Li1/j;

    .line 353
    .line 354
    move-object/from16 v3, v16

    .line 355
    .line 356
    invoke-direct {v2, v7, v3, v0}, Li1/j;-><init>(Ljava/util/ArrayList;Li1/a;Ly0/b;)V

    .line 357
    .line 358
    .line 359
    const-class v7, Li1/c;

    .line 360
    .line 361
    move-object/from16 v9, v27

    .line 362
    .line 363
    invoke-virtual {v4, v2, v8, v7, v9}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4, v3, v15, v7, v9}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    new-instance v2, Li1/d;

    .line 370
    .line 371
    invoke-direct {v2}, Li1/d;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v4, v7, v2}, Lcom/bumptech/glide/k;->c(Ljava/lang/Class;Lv0/k;)V

    .line 375
    .line 376
    .line 377
    const-class v2, Lu0/a;

    .line 378
    .line 379
    invoke-virtual {v4, v2, v2, v10}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 380
    .line 381
    .line 382
    new-instance v3, Li1/h;

    .line 383
    .line 384
    invoke-direct {v3, v1}, Li1/h;-><init>(Ly0/c;)V

    .line 385
    .line 386
    .line 387
    move-object/from16 v9, v30

    .line 388
    .line 389
    invoke-virtual {v4, v3, v2, v5, v9}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    const-class v2, Landroid/net/Uri;

    .line 393
    .line 394
    const-string v3, "legacy_append"

    .line 395
    .line 396
    move-object/from16 v11, v21

    .line 397
    .line 398
    move-object/from16 v9, v26

    .line 399
    .line 400
    invoke-virtual {v4, v11, v2, v9, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    new-instance v14, Le1/a;

    .line 404
    .line 405
    invoke-direct {v14, v11, v1}, Le1/a;-><init>(Lg1/f;Ly0/c;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v4, v14, v2, v5, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    new-instance v11, Lf1/a$a;

    .line 412
    .line 413
    invoke-direct {v11}, Lf1/a$a;-><init>()V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4, v11}, Lcom/bumptech/glide/k;->j(Lcom/bumptech/glide/load/data/e$a;)V

    .line 417
    .line 418
    .line 419
    new-instance v11, Lb1/d$b;

    .line 420
    .line 421
    invoke-direct {v11}, Lb1/d$b;-><init>()V

    .line 422
    .line 423
    .line 424
    const-class v14, Ljava/io/File;

    .line 425
    .line 426
    invoke-virtual {v4, v14, v15, v11}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 427
    .line 428
    .line 429
    new-instance v11, Lb1/f$e;

    .line 430
    .line 431
    invoke-direct {v11}, Lb1/f$e;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4, v14, v8, v11}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 435
    .line 436
    .line 437
    new-instance v11, Lh1/a;

    .line 438
    .line 439
    invoke-direct {v11}, Lh1/a;-><init>()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4, v11, v14, v14, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    new-instance v11, Lb1/f$b;

    .line 446
    .line 447
    invoke-direct {v11}, Lb1/f$b;-><init>()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v4, v14, v13, v11}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v4, v14, v14, v10}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 454
    .line 455
    .line 456
    new-instance v11, Lcom/bumptech/glide/load/data/k$a;

    .line 457
    .line 458
    invoke-direct {v11, v0}, Lcom/bumptech/glide/load/data/k$a;-><init>(Ly0/b;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4, v11}, Lcom/bumptech/glide/k;->j(Lcom/bumptech/glide/load/data/e$a;)V

    .line 462
    .line 463
    .line 464
    const-string v0, "robolectric"

    .line 465
    .line 466
    move-object/from16 v11, v28

    .line 467
    .line 468
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    xor-int/lit8 v0, v0, 0x1

    .line 473
    .line 474
    if-eqz v0, :cond_4

    .line 475
    .line 476
    new-instance v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a;

    .line 477
    .line 478
    invoke-direct {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a;-><init>()V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v4, v0}, Lcom/bumptech/glide/k;->j(Lcom/bumptech/glide/load/data/e$a;)V

    .line 482
    .line 483
    .line 484
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 485
    .line 486
    move-object/from16 v11, p0

    .line 487
    .line 488
    invoke-virtual {v4, v0, v8, v11}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 489
    .line 490
    .line 491
    move-object/from16 p0, v7

    .line 492
    .line 493
    move-object/from16 v7, v19

    .line 494
    .line 495
    invoke-virtual {v4, v0, v13, v7}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 496
    .line 497
    .line 498
    move-object/from16 v16, v1

    .line 499
    .line 500
    const-class v1, Ljava/lang/Integer;

    .line 501
    .line 502
    invoke-virtual {v4, v1, v8, v11}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v4, v1, v13, v7}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 506
    .line 507
    .line 508
    move-object/from16 v7, v18

    .line 509
    .line 510
    invoke-virtual {v4, v1, v2, v7}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 511
    .line 512
    .line 513
    move-object/from16 v18, v5

    .line 514
    .line 515
    move-object/from16 v11, v20

    .line 516
    .line 517
    move-object/from16 v5, v29

    .line 518
    .line 519
    invoke-virtual {v4, v0, v5, v11}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v4, v1, v5, v11}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v4, v0, v2, v7}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 526
    .line 527
    .line 528
    new-instance v0, Lb1/e$c;

    .line 529
    .line 530
    invoke-direct {v0}, Lb1/e$c;-><init>()V

    .line 531
    .line 532
    .line 533
    const-class v1, Ljava/lang/String;

    .line 534
    .line 535
    invoke-virtual {v4, v1, v8, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 536
    .line 537
    .line 538
    new-instance v0, Lb1/e$c;

    .line 539
    .line 540
    invoke-direct {v0}, Lb1/e$c;-><init>()V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v4, v2, v8, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 544
    .line 545
    .line 546
    new-instance v0, Lb1/v$c;

    .line 547
    .line 548
    invoke-direct {v0}, Lb1/v$c;-><init>()V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v4, v1, v8, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 552
    .line 553
    .line 554
    new-instance v0, Lb1/v$b;

    .line 555
    .line 556
    invoke-direct {v0}, Lb1/v$b;-><init>()V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v4, v1, v13, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 560
    .line 561
    .line 562
    new-instance v0, Lb1/v$a;

    .line 563
    .line 564
    invoke-direct {v0}, Lb1/v$a;-><init>()V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v4, v1, v5, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 568
    .line 569
    .line 570
    new-instance v0, Lb1/a$c;

    .line 571
    .line 572
    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-direct {v0, v1}, Lb1/a$c;-><init>(Landroid/content/res/AssetManager;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v4, v2, v8, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 580
    .line 581
    .line 582
    new-instance v0, Lb1/a$b;

    .line 583
    .line 584
    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    invoke-direct {v0, v1}, Lb1/a$b;-><init>(Landroid/content/res/AssetManager;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v4, v2, v5, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 592
    .line 593
    .line 594
    new-instance v0, Lc1/b$a;

    .line 595
    .line 596
    move-object/from16 v1, v25

    .line 597
    .line 598
    invoke-direct {v0, v1}, Lc1/b$a;-><init>(Landroid/content/Context;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v4, v2, v8, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 602
    .line 603
    .line 604
    new-instance v0, Lc1/c$a;

    .line 605
    .line 606
    invoke-direct {v0, v1}, Lc1/c$a;-><init>(Landroid/content/Context;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v4, v2, v8, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 610
    .line 611
    .line 612
    const/16 v0, 0x1d

    .line 613
    .line 614
    move/from16 v7, v17

    .line 615
    .line 616
    if-lt v7, v0, :cond_5

    .line 617
    .line 618
    new-instance v0, Lc1/d$c;

    .line 619
    .line 620
    invoke-direct {v0, v1}, Lc1/d$c;-><init>(Landroid/content/Context;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v4, v2, v8, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 624
    .line 625
    .line 626
    new-instance v0, Lc1/d$b;

    .line 627
    .line 628
    invoke-direct {v0, v1}, Lc1/d$b;-><init>(Landroid/content/Context;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v4, v2, v13, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 632
    .line 633
    .line 634
    :cond_5
    new-instance v0, Lb1/x$d;

    .line 635
    .line 636
    move-object/from16 v11, v24

    .line 637
    .line 638
    invoke-direct {v0, v11}, Lb1/x$d;-><init>(Landroid/content/ContentResolver;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v4, v2, v8, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 642
    .line 643
    .line 644
    new-instance v0, Lb1/x$b;

    .line 645
    .line 646
    invoke-direct {v0, v11}, Lb1/x$b;-><init>(Landroid/content/ContentResolver;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v4, v2, v13, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 650
    .line 651
    .line 652
    new-instance v0, Lb1/x$a;

    .line 653
    .line 654
    invoke-direct {v0, v11}, Lb1/x$a;-><init>(Landroid/content/ContentResolver;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v4, v2, v5, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 658
    .line 659
    .line 660
    new-instance v0, Lb1/y$a;

    .line 661
    .line 662
    invoke-direct {v0}, Lb1/y$a;-><init>()V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v4, v2, v8, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 666
    .line 667
    .line 668
    new-instance v0, Lc1/e$a;

    .line 669
    .line 670
    invoke-direct {v0}, Lc1/e$a;-><init>()V

    .line 671
    .line 672
    .line 673
    const-class v5, Ljava/net/URL;

    .line 674
    .line 675
    invoke-virtual {v4, v5, v8, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 676
    .line 677
    .line 678
    new-instance v0, Lb1/k$a;

    .line 679
    .line 680
    invoke-direct {v0, v1}, Lb1/k$a;-><init>(Landroid/content/Context;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v4, v2, v14, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 684
    .line 685
    .line 686
    new-instance v0, Lc1/a$a;

    .line 687
    .line 688
    invoke-direct {v0}, Lc1/a$a;-><init>()V

    .line 689
    .line 690
    .line 691
    const-class v1, Lb1/g;

    .line 692
    .line 693
    invoke-virtual {v4, v1, v8, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 694
    .line 695
    .line 696
    new-instance v0, Lb1/b$a;

    .line 697
    .line 698
    invoke-direct {v0}, Lb1/b$a;-><init>()V

    .line 699
    .line 700
    .line 701
    const-class v1, [B

    .line 702
    .line 703
    invoke-virtual {v4, v1, v15, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 704
    .line 705
    .line 706
    new-instance v0, Lb1/b$d;

    .line 707
    .line 708
    invoke-direct {v0}, Lb1/b$d;-><init>()V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v4, v1, v8, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v4, v2, v2, v10}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v4, v9, v9, v10}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;Ljava/lang/Class;Lb1/p;)V

    .line 718
    .line 719
    .line 720
    new-instance v0, Lg1/g;

    .line 721
    .line 722
    invoke-direct {v0}, Lg1/g;-><init>()V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v4, v0, v9, v9, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    new-instance v0, Lj1/b;

    .line 729
    .line 730
    invoke-direct {v0, v6}, Lj1/b;-><init>(Landroid/content/res/Resources;)V

    .line 731
    .line 732
    .line 733
    move-object/from16 v2, v18

    .line 734
    .line 735
    invoke-virtual {v4, v2, v12, v0}, Lcom/bumptech/glide/k;->k(Ljava/lang/Class;Ljava/lang/Class;Lj1/e;)V

    .line 736
    .line 737
    .line 738
    move-object/from16 v0, v22

    .line 739
    .line 740
    invoke-virtual {v4, v2, v1, v0}, Lcom/bumptech/glide/k;->k(Ljava/lang/Class;Ljava/lang/Class;Lj1/e;)V

    .line 741
    .line 742
    .line 743
    new-instance v3, Lj1/c;

    .line 744
    .line 745
    move-object/from16 v5, v16

    .line 746
    .line 747
    move-object/from16 v8, v23

    .line 748
    .line 749
    invoke-direct {v3, v5, v0, v8}, Lj1/c;-><init>(Ly0/c;Lj1/a;Lj1/d;)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v4, v9, v1, v3}, Lcom/bumptech/glide/k;->k(Ljava/lang/Class;Ljava/lang/Class;Lj1/e;)V

    .line 753
    .line 754
    .line 755
    move-object/from16 v0, p0

    .line 756
    .line 757
    invoke-virtual {v4, v0, v1, v8}, Lcom/bumptech/glide/k;->k(Ljava/lang/Class;Ljava/lang/Class;Lj1/e;)V

    .line 758
    .line 759
    .line 760
    const/16 v0, 0x17

    .line 761
    .line 762
    if-lt v7, v0, :cond_6

    .line 763
    .line 764
    new-instance v0, Le1/b0;

    .line 765
    .line 766
    new-instance v1, Le1/b0$d;

    .line 767
    .line 768
    invoke-direct {v1}, Le1/b0$d;-><init>()V

    .line 769
    .line 770
    .line 771
    invoke-direct {v0, v5, v1}, Le1/b0;-><init>(Ly0/c;Le1/b0$f;)V

    .line 772
    .line 773
    .line 774
    const-class v1, Ljava/nio/ByteBuffer;

    .line 775
    .line 776
    const-string v3, "legacy_append"

    .line 777
    .line 778
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    new-instance v1, Le1/a;

    .line 782
    .line 783
    invoke-direct {v1, v6, v0}, Le1/a;-><init>(Landroid/content/res/Resources;Lv0/j;)V

    .line 784
    .line 785
    .line 786
    const-class v0, Ljava/nio/ByteBuffer;

    .line 787
    .line 788
    const-string v2, "legacy_append"

    .line 789
    .line 790
    invoke-virtual {v4, v1, v0, v12, v2}, Lcom/bumptech/glide/k;->d(Lv0/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 798
    .line 799
    .line 800
    move-result v1

    .line 801
    if-eqz v1, :cond_7

    .line 802
    .line 803
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    check-cast v1, Lk1/c;

    .line 808
    .line 809
    :try_start_1
    invoke-interface {v1}, Lk1/f;->a()V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 810
    .line 811
    .line 812
    goto :goto_2

    .line 813
    :catch_0
    move-exception v0

    .line 814
    move-object v2, v0

    .line 815
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 816
    .line 817
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v1

    .line 825
    const-string v3, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    .line 826
    .line 827
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 832
    .line 833
    .line 834
    throw v0

    .line 835
    :cond_7
    return-object v4

    .line 836
    :catchall_0
    move-exception v0

    .line 837
    monitor-exit v6

    .line 838
    throw v0
.end method
