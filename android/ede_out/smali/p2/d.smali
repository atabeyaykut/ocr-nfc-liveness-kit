.class public final Lp2/d;
.super Lp2/a;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lp2/a;-><init>(Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "activity.intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v0, "extra.max_width"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lp2/d;->b:I

    const-string v0, "extra.max_height"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lp2/d;->c:I

    const-string v0, "extra.image_max_size"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lp2/d;->d:J

    const-string v0, "extra.save_directory"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp2/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lp2/d;->e:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final d(Ljava/io/File;I)Ljava/io/File;
    .locals 6

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [[I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [I

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v0, v3

    .line 13
    .line 14
    new-array v2, v1, [I

    .line 15
    .line 16
    fill-array-data v2, :array_1

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    aput-object v2, v0, v4

    .line 21
    .line 22
    new-array v2, v1, [I

    .line 23
    .line 24
    fill-array-data v2, :array_2

    .line 25
    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    new-array v2, v1, [I

    .line 30
    .line 31
    fill-array-data v2, :array_3

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    aput-object v2, v0, v5

    .line 36
    .line 37
    new-array v2, v1, [I

    .line 38
    .line 39
    fill-array-data v2, :array_4

    .line 40
    .line 41
    .line 42
    const/4 v5, 0x4

    .line 43
    aput-object v2, v0, v5

    .line 44
    .line 45
    new-array v2, v1, [I

    .line 46
    .line 47
    fill-array-data v2, :array_5

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x5

    .line 51
    aput-object v2, v0, v5

    .line 52
    .line 53
    new-array v2, v1, [I

    .line 54
    .line 55
    fill-array-data v2, :array_6

    .line 56
    .line 57
    .line 58
    const/4 v5, 0x6

    .line 59
    aput-object v2, v0, v5

    .line 60
    .line 61
    new-array v2, v1, [I

    .line 62
    .line 63
    fill-array-data v2, :array_7

    .line 64
    .line 65
    .line 66
    const/4 v5, 0x7

    .line 67
    aput-object v2, v0, v5

    .line 68
    .line 69
    new-array v2, v1, [I

    .line 70
    .line 71
    fill-array-data v2, :array_8

    .line 72
    .line 73
    .line 74
    const/16 v5, 0x8

    .line 75
    .line 76
    aput-object v2, v0, v5

    .line 77
    .line 78
    new-array v2, v1, [I

    .line 79
    .line 80
    fill-array-data v2, :array_9

    .line 81
    .line 82
    .line 83
    const/16 v5, 0x9

    .line 84
    .line 85
    aput-object v2, v0, v5

    .line 86
    .line 87
    new-array v2, v1, [I

    .line 88
    .line 89
    fill-array-data v2, :array_a

    .line 90
    .line 91
    .line 92
    const/16 v5, 0xa

    .line 93
    .line 94
    aput-object v2, v0, v5

    .line 95
    .line 96
    new-array v2, v1, [I

    .line 97
    .line 98
    fill-array-data v2, :array_b

    .line 99
    .line 100
    .line 101
    const/16 v5, 0xb

    .line 102
    .line 103
    aput-object v2, v0, v5

    .line 104
    .line 105
    new-array v2, v1, [I

    .line 106
    .line 107
    fill-array-data v2, :array_c

    .line 108
    .line 109
    .line 110
    const/16 v5, 0xc

    .line 111
    .line 112
    aput-object v2, v0, v5

    .line 113
    .line 114
    new-array v2, v1, [I

    .line 115
    .line 116
    fill-array-data v2, :array_d

    .line 117
    .line 118
    .line 119
    const/16 v5, 0xd

    .line 120
    .line 121
    aput-object v2, v0, v5

    .line 122
    .line 123
    new-array v1, v1, [I

    .line 124
    .line 125
    fill-array-data v1, :array_e

    .line 126
    .line 127
    .line 128
    const/16 v2, 0xe

    .line 129
    .line 130
    aput-object v1, v0, v2

    .line 131
    .line 132
    invoke-static {v0}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const/4 v2, 0x0

    .line 141
    if-lt p2, v1, :cond_0

    .line 142
    .line 143
    return-object v2

    .line 144
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, [I

    .line 149
    .line 150
    aget v0, p2, v3

    .line 151
    .line 152
    aget p2, p2, v4

    .line 153
    .line 154
    iget v1, p0, Lp2/d;->b:I

    .line 155
    .line 156
    if-lez v1, :cond_2

    .line 157
    .line 158
    iget v4, p0, Lp2/d;->c:I

    .line 159
    .line 160
    if-lez v4, :cond_2

    .line 161
    .line 162
    if-gt v0, v1, :cond_1

    .line 163
    .line 164
    if-le p2, v4, :cond_2

    .line 165
    .line 166
    :cond_1
    move v0, v1

    .line 167
    move p2, v4

    .line 168
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    const-string v5, "file.absolutePath"

    .line 175
    .line 176
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v5, ".png"

    .line 180
    .line 181
    invoke-static {v4, v5, v3}, Lmc/j;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_3

    .line 186
    .line 187
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 188
    .line 189
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    const-string v4, "Uri.fromFile(file)"

    .line 194
    .line 195
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v3}, Lc5/w;->q(Landroid/net/Uri;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    iget-object v4, p0, Lp2/d;->e:Ljava/io/File;

    .line 203
    .line 204
    invoke-static {v4, v3}, Lc5/w;->r(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    if-eqz v3, :cond_7

    .line 209
    .line 210
    int-to-float v0, v0

    .line 211
    int-to-float p2, p2

    .line 212
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    const-string v4, "compressFile.absolutePath"

    .line 217
    .line 218
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v4, "compressFormat"

    .line 222
    .line 223
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance v4, Ljava/io/File;

    .line 227
    .line 228
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    if-eqz v4, :cond_4

    .line 236
    .line 237
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-nez v5, :cond_4

    .line 242
    .line 243
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 244
    .line 245
    .line 246
    :cond_4
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    .line 247
    .line 248
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 249
    .line 250
    .line 251
    :try_start_1
    invoke-static {p1, v0, p2}, Lq2/b;->a(Ljava/io/File;FF)Landroid/graphics/Bitmap;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    if-eqz p1, :cond_5

    .line 256
    .line 257
    const/16 p2, 0x64

    .line 258
    .line 259
    invoke-virtual {p1, v1, p2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .line 261
    .line 262
    :cond_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 266
    .line 267
    .line 268
    new-instance v2, Ljava/io/File;

    .line 269
    .line 270
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto :goto_1

    .line 274
    :catchall_0
    move-exception p1

    .line 275
    move-object v2, v4

    .line 276
    goto :goto_0

    .line 277
    :catchall_1
    move-exception p1

    .line 278
    :goto_0
    if-eqz v2, :cond_6

    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 284
    .line 285
    .line 286
    :cond_6
    throw p1

    .line 287
    :cond_7
    :goto_1
    return-object v2

    .line 288
    nop

    .line 289
    :array_0
    .array-data 4
        0x990
        0xcc0
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_1
    .array-data 4
        0x7d8
        0xbd8
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :array_2
    .array-data 4
        0x798
        0xa14
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_3
    .array-data 4
        0x690
        0x8c0
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_4
    .array-data 4
        0x600
        0x800
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_5
    .array-data 4
        0x4b0
        0x640
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_6
    .array-data 4
        0x400
        0x570
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_7
    .array-data 4
        0x3c0
        0x500
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :array_8
    .array-data 4
        0x300
        0x400
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :array_9
    .array-data 4
        0x258
        0x320
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_a
    .array-data 4
        0x1e0
        0x280
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_b
    .array-data 4
        0xf0
        0x140
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_c
    .array-data 4
        0x78
        0xa0
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    :array_d
    .array-data 4
        0x3c
        0x50
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :array_e
    .array-data 4
        0x1e
        0x28
    .end array-data
.end method

.method public final e(Landroid/net/Uri;)Z
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iget-wide v2, p0, Lp2/d;->d:J

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x1

    .line 7
    cmp-long v6, v2, v0

    .line 8
    .line 9
    if-lez v6, :cond_0

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v6, 0x0

    .line 14
    :goto_0
    const/4 v7, 0x0

    .line 15
    if-eqz v6, :cond_4

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    const-string v8, "file"

    .line 22
    .line 23
    invoke-static {v8, v6}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_2

    .line 28
    .line 29
    invoke-static {p0, p1}, Lc5/v;->t(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    new-instance v8, Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v8}, Landroidx/documentfile/provider/DocumentFile;->fromFile(Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object v6, v7

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    :goto_1
    if-eqz v6, :cond_3

    .line 52
    .line 53
    invoke-virtual {v6}, Landroidx/documentfile/provider/DocumentFile;->length()J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move-wide v8, v0

    .line 59
    :goto_2
    sub-long/2addr v8, v2

    .line 60
    cmp-long v2, v8, v0

    .line 61
    .line 62
    if-lez v2, :cond_4

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/4 v0, 0x0

    .line 67
    :goto_3
    if-nez v0, :cond_7

    .line 68
    .line 69
    iget v1, p0, Lp2/d;->b:I

    .line 70
    .line 71
    if-lez v1, :cond_7

    .line 72
    .line 73
    iget v2, p0, Lp2/d;->c:I

    .line 74
    .line 75
    if-lez v2, :cond_7

    .line 76
    .line 77
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 78
    .line 79
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1, v7, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 93
    .line 94
    .line 95
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 96
    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 102
    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-gt p1, v1, :cond_5

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-le p1, v2, :cond_6

    .line 118
    .line 119
    :cond_5
    const/4 v4, 0x1

    .line 120
    :cond_6
    return v4

    .line 121
    :cond_7
    return v0
.end method
