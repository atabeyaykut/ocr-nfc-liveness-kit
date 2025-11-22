.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/lang/Throwable;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$d;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "File Info "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$d;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

    .line 13
    .line 14
    iget-object v2, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->s:Ljava/io/File;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v2, v3

    .line 25
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x0

    .line 33
    new-array v4, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p1, v0, v4}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->s:Ljava/io/File;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-string v0, "fromFile(compressedImageFile)"

    .line 45
    .line 46
    invoke-static {v6, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->f:Landroid/content/Context;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v0, v3

    .line 59
    :goto_1
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move-object v0, v3

    .line 67
    :goto_2
    const/4 v4, 0x1

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_3

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    const/4 v5, 0x0

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    :goto_3
    const/4 v5, 0x1

    .line 80
    :goto_4
    const-string v7, "png"

    .line 81
    .line 82
    const-string v8, "IMAGE_PNG"

    .line 83
    .line 84
    if-eqz v5, :cond_5

    .line 85
    .line 86
    const-string v0, "v1"

    .line 87
    .line 88
    new-array v5, v2, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-virtual {p1, v0, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Ll9/g;

    .line 94
    .line 95
    invoke-direct {p1, v8, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_5
    const-string v5, "image/jpeg"

    .line 100
    .line 101
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_6

    .line 106
    .line 107
    const-string v0, "v2"

    .line 108
    .line 109
    new-array v5, v2, [Ljava/lang/Object;

    .line 110
    .line 111
    invoke-virtual {p1, v0, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    new-instance p1, Ll9/g;

    .line 115
    .line 116
    const-string v0, "IMAGE_JPEG"

    .line 117
    .line 118
    const-string v5, "jpeg"

    .line 119
    .line 120
    invoke-direct {p1, v0, v5}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_6
    const-string v5, "image/jpg"

    .line 125
    .line 126
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    const-string v0, "v3"

    .line 133
    .line 134
    new-array v5, v2, [Ljava/lang/Object;

    .line 135
    .line 136
    invoke-virtual {p1, v0, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    new-instance p1, Ll9/g;

    .line 140
    .line 141
    const-string v0, "IMAGE_JPG"

    .line 142
    .line 143
    const-string v5, "jpg"

    .line 144
    .line 145
    invoke-direct {p1, v0, v5}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_7
    const-string v0, "v4"

    .line 150
    .line 151
    new-array v5, v2, [Ljava/lang/Object;

    .line 152
    .line 153
    invoke-virtual {p1, v0, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    new-instance p1, Ll9/g;

    .line 157
    .line 158
    invoke-direct {p1, v8, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :goto_5
    iget-object v0, p1, Ll9/g;->a:Ljava/lang/Object;

    .line 162
    .line 163
    move-object v7, v0

    .line 164
    check-cast v7, Ljava/lang/String;

    .line 165
    .line 166
    iget-object p1, p1, Ll9/g;->b:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast p1, Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_8

    .line 175
    .line 176
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_8
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 180
    .line 181
    :goto_6
    iget-object v5, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->f:Landroid/content/Context;

    .line 182
    .line 183
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    const-string v9, "file"

    .line 191
    .line 192
    invoke-static {v9, v8}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-eqz v8, :cond_a

    .line 197
    .line 198
    invoke-static {v5, v6}, Lc5/v;->t(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    if-eqz v5, :cond_9

    .line 203
    .line 204
    new-instance v8, Ljava/io/File;

    .line 205
    .line 206
    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v8}, Landroidx/documentfile/provider/DocumentFile;->fromFile(Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    goto :goto_7

    .line 214
    :cond_9
    move-object v5, v3

    .line 215
    goto :goto_7

    .line 216
    :cond_a
    invoke-static {v5, v6}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    :goto_7
    if-nez v5, :cond_b

    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_b
    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->length()J

    .line 224
    .line 225
    .line 226
    move-result-wide v8

    .line 227
    const/high16 v5, 0x100000

    .line 228
    .line 229
    int-to-long v10, v5

    .line 230
    div-long v10, v8, v10

    .line 231
    .line 232
    const/16 v5, 0x400

    .line 233
    .line 234
    int-to-long v12, v5

    .line 235
    div-long/2addr v8, v12

    .line 236
    const-wide/16 v8, 0x1

    .line 237
    .line 238
    cmp-long v5, v10, v8

    .line 239
    .line 240
    if-lez v5, :cond_d

    .line 241
    .line 242
    const-wide/16 v8, 0x5

    .line 243
    .line 244
    cmp-long v5, v10, v8

    .line 245
    .line 246
    if-gtz v5, :cond_c

    .line 247
    .line 248
    goto :goto_9

    .line 249
    :cond_c
    :goto_8
    const/4 v5, 0x0

    .line 250
    goto :goto_a

    .line 251
    :cond_d
    :goto_9
    const/4 v5, 0x1

    .line 252
    :goto_a
    if-eqz v5, :cond_14

    .line 253
    .line 254
    iget-object v5, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->f:Landroid/content/Context;

    .line 255
    .line 256
    if-eqz v5, :cond_e

    .line 257
    .line 258
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    if-eqz v5, :cond_e

    .line 263
    .line 264
    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    goto :goto_b

    .line 269
    :cond_e
    move-object v5, v3

    .line 270
    :goto_b
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    const-string v8, "selectedImage"

    .line 275
    .line 276
    invoke-static {v5, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 280
    .line 281
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    .line 283
    .line 284
    const/16 v9, 0x3c

    .line 285
    .line 286
    invoke-virtual {v5, v0, v9, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 287
    .line 288
    .line 289
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    const/4 v5, 0x2

    .line 294
    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    if-eqz v9, :cond_10

    .line 299
    .line 300
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_f

    .line 305
    .line 306
    goto :goto_c

    .line 307
    :cond_f
    const/4 v4, 0x0

    .line 308
    :cond_10
    :goto_c
    if-nez v4, :cond_13

    .line 309
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v4, "accident_photo_"

    .line 313
    .line 314
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 318
    .line 319
    .line 320
    move-result-wide v4

    .line 321
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const/16 v4, 0x2e

    .line 325
    .line 326
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    new-instance p1, Lhh/i;

    .line 337
    .line 338
    const/4 v8, 0x0

    .line 339
    move-object v4, p1

    .line 340
    invoke-direct/range {v4 .. v9}, Lhh/i;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZLjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->h:Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    iget-object v2, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->g:Ljava/util/ArrayList;

    .line 349
    .line 350
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    const/16 v2, 0x9

    .line 358
    .line 359
    if-ne p1, v2, :cond_11

    .line 360
    .line 361
    const/16 p1, 0x8

    .line 362
    .line 363
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    :cond_11
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;

    .line 367
    .line 368
    if-eqz p1, :cond_12

    .line 369
    .line 370
    invoke-virtual {p1, v0, v3}, Lcom/airbnb/epoxy/Typed2EpoxyController;->setData(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->e:Lv/e;

    .line 374
    .line 375
    if-eqz p1, :cond_16

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_12
    const-string p1, "mServiceListController"

    .line 379
    .line 380
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v3

    .line 384
    :cond_13
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->e:Lv/e;

    .line 385
    .line 386
    if-eqz p1, :cond_16

    .line 387
    .line 388
    :goto_d
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 389
    .line 390
    .line 391
    goto :goto_e

    .line 392
    :cond_14
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->e:Lv/e;

    .line 393
    .line 394
    if-eqz p1, :cond_15

    .line 395
    .line 396
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 397
    .line 398
    .line 399
    :cond_15
    const p1, 0x7f130107

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->H(I)V

    .line 403
    .line 404
    .line 405
    :cond_16
    :goto_e
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 406
    .line 407
    return-object p1
.end method
