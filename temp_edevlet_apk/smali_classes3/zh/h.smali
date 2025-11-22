.class public final Lzh/h;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lc8/a;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;Lzh/d;Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;)V
    .locals 0

    iput-object p1, p0, Lzh/h;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;

    iput-object p3, p0, Lzh/h;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    check-cast v0, Lc8/a;

    .line 6
    .line 7
    iget-object v2, v1, Lzh/h;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;

    .line 8
    .line 9
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Lzh/h;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;

    .line 16
    .line 17
    const-string v4, "results"

    .line 18
    .line 19
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v4, v1, Lzh/h;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;->a()V

    .line 28
    .line 29
    .line 30
    const-string v4, ""

    .line 31
    .line 32
    iput-object v4, v2, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;->c:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, v0, Lc8/a;->a:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v0, "results.textBlocks"

    .line 41
    .line 42
    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const/4 v6, 0x0

    .line 50
    :goto_0
    if-ge v6, v5, :cond_f

    .line 51
    .line 52
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    move-object v7, v0

    .line 57
    check-cast v7, Lc8/a$d;

    .line 58
    .line 59
    monitor-enter v7

    .line 60
    :try_start_0
    iget-object v8, v7, Lc8/a$d;->c:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    monitor-exit v7

    .line 63
    const-string v0, "blocks[i].lines"

    .line 64
    .line 65
    invoke-static {v8, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    const/4 v9, 0x0

    .line 73
    :goto_1
    if-ge v9, v7, :cond_e

    .line 74
    .line 75
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lc8/a$b;

    .line 80
    .line 81
    invoke-virtual {v0}, Lc8/a$b;->b()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    const-string v0, "lines[j].elements"

    .line 86
    .line 87
    invoke-static {v10, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    const/4 v12, 0x0

    .line 95
    :goto_2
    if-ge v12, v11, :cond_d

    .line 96
    .line 97
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v13, "elements[k]"

    .line 102
    .line 103
    invoke-static {v0, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    check-cast v0, Lc8/a$a;

    .line 107
    .line 108
    new-instance v13, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v14, v2, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;->c:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lc8/a$c;->a()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;->c:Ljava/lang/String;

    .line 130
    .line 131
    const-string v0, "([A|C|I][A-Z0-9<]{1})([A-Z]{3})([A-Z0-9<]{31})"

    .line 132
    .line 133
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v13, v2, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;->c:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v13, "([0-9]{6})([0-9]{1})([M|F|X|<]{1})([0-9]{6})([0-9]{1})([A-Z]{3})([A-Z0-9<]{11})([0-9]{1})"

    .line 144
    .line 145
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    iget-object v14, v2, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;->c:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    if-eqz v14, :cond_c

    .line 160
    .line 161
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    if-eqz v14, :cond_c

    .line 166
    .line 167
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v13, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v13}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v13

    .line 183
    const-string v14, "I<"

    .line 184
    .line 185
    const/4 v15, 0x6

    .line 186
    invoke-static {v0, v14, v3, v3, v15}, Lmc/n;->N(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 187
    .line 188
    .line 189
    move-result v14

    .line 190
    if-lez v14, :cond_c

    .line 191
    .line 192
    const-string v14, "I<"

    .line 193
    .line 194
    invoke-static {v0, v14, v3, v3, v15}, Lmc/n;->N(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v14, "this as java.lang.String).substring(startIndex)"

    .line 203
    .line 204
    invoke-static {v0, v14}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const/4 v14, 0x5

    .line 208
    const/16 v3, 0xe

    .line 209
    .line 210
    invoke-virtual {v0, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const-string v14, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 215
    .line 216
    invoke-static {v0, v14}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const-string v3, "this as java.lang.String).toCharArray()"

    .line 224
    .line 225
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    array-length v3, v0

    .line 229
    const/4 v15, 0x0

    .line 230
    :goto_3
    if-ge v15, v3, :cond_9

    .line 231
    .line 232
    if-eqz v15, :cond_4

    .line 233
    .line 234
    const/4 v1, 0x3

    .line 235
    if-eq v15, v1, :cond_4

    .line 236
    .line 237
    aget-char v1, v0, v15

    .line 238
    .line 239
    move/from16 v16, v3

    .line 240
    .line 241
    const/16 v3, 0x4f

    .line 242
    .line 243
    if-ne v1, v3, :cond_0

    .line 244
    .line 245
    const/16 v1, 0x30

    .line 246
    .line 247
    aput-char v1, v0, v15

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_0
    const/16 v1, 0x30

    .line 251
    .line 252
    :goto_4
    aget-char v3, v0, v15

    .line 253
    .line 254
    move-object/from16 v17, v4

    .line 255
    .line 256
    const/16 v4, 0x44

    .line 257
    .line 258
    if-ne v3, v4, :cond_1

    .line 259
    .line 260
    aput-char v1, v0, v15

    .line 261
    .line 262
    :cond_1
    aget-char v1, v0, v15

    .line 263
    .line 264
    const/16 v3, 0x49

    .line 265
    .line 266
    if-ne v1, v3, :cond_2

    .line 267
    .line 268
    const/16 v1, 0x31

    .line 269
    .line 270
    aput-char v1, v0, v15

    .line 271
    .line 272
    :cond_2
    aget-char v1, v0, v15

    .line 273
    .line 274
    const/16 v3, 0x53

    .line 275
    .line 276
    if-ne v1, v3, :cond_3

    .line 277
    .line 278
    const/16 v1, 0x35

    .line 279
    .line 280
    aput-char v1, v0, v15

    .line 281
    .line 282
    :cond_3
    aget-char v1, v0, v15

    .line 283
    .line 284
    const/16 v3, 0x5a

    .line 285
    .line 286
    if-ne v1, v3, :cond_8

    .line 287
    .line 288
    const/16 v1, 0x32

    .line 289
    .line 290
    aput-char v1, v0, v15

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_4
    move/from16 v16, v3

    .line 294
    .line 295
    move-object/from16 v17, v4

    .line 296
    .line 297
    aget-char v1, v0, v15

    .line 298
    .line 299
    const/16 v3, 0x30

    .line 300
    .line 301
    if-ne v1, v3, :cond_5

    .line 302
    .line 303
    const/16 v1, 0x4f

    .line 304
    .line 305
    aput-char v1, v0, v15

    .line 306
    .line 307
    :cond_5
    aget-char v1, v0, v15

    .line 308
    .line 309
    const/16 v3, 0x31

    .line 310
    .line 311
    if-ne v1, v3, :cond_6

    .line 312
    .line 313
    const/16 v1, 0x49

    .line 314
    .line 315
    aput-char v1, v0, v15

    .line 316
    .line 317
    :cond_6
    aget-char v1, v0, v15

    .line 318
    .line 319
    const/16 v3, 0x32

    .line 320
    .line 321
    if-ne v1, v3, :cond_7

    .line 322
    .line 323
    const/16 v1, 0x5a

    .line 324
    .line 325
    aput-char v1, v0, v15

    .line 326
    .line 327
    :cond_7
    aget-char v1, v0, v15

    .line 328
    .line 329
    const/16 v3, 0x35

    .line 330
    .line 331
    if-ne v1, v3, :cond_8

    .line 332
    .line 333
    const/16 v1, 0x53

    .line 334
    .line 335
    aput-char v1, v0, v15

    .line 336
    .line 337
    :cond_8
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 338
    .line 339
    move-object/from16 v1, p0

    .line 340
    .line 341
    move/from16 v3, v16

    .line 342
    .line 343
    move-object/from16 v4, v17

    .line 344
    .line 345
    goto :goto_3

    .line 346
    :cond_9
    move-object/from16 v17, v4

    .line 347
    .line 348
    new-instance v1, Ljava/lang/String;

    .line 349
    .line 350
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 351
    .line 352
    .line 353
    const/4 v3, 0x6

    .line 354
    const/4 v4, 0x0

    .line 355
    invoke-virtual {v13, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v0, v14}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    const/16 v3, 0x8

    .line 363
    .line 364
    const/16 v4, 0xe

    .line 365
    .line 366
    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    invoke-static {v4, v14}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    const/4 v13, 0x1

    .line 374
    :try_start_1
    new-instance v14, Lorg/jmrtd/lds/icao/MRZInfo;

    .line 375
    .line 376
    const-string v19, "P"

    .line 377
    .line 378
    const-string v20, "NNN"

    .line 379
    .line 380
    const-string v21, ""

    .line 381
    .line 382
    const-string v22, ""

    .line 383
    .line 384
    const-string v24, "NNN"

    .line 385
    .line 386
    sget-object v26, Lnet/sf/scuba/data/Gender;->UNSPECIFIED:Lnet/sf/scuba/data/Gender;

    .line 387
    .line 388
    const-string v28, ""

    .line 389
    .line 390
    move-object/from16 v18, v14

    .line 391
    .line 392
    move-object/from16 v23, v1

    .line 393
    .line 394
    move-object/from16 v25, v0

    .line 395
    .line 396
    move-object/from16 v27, v4

    .line 397
    .line 398
    invoke-direct/range {v18 .. v28}, Lorg/jmrtd/lds/icao/MRZInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 399
    .line 400
    .line 401
    goto :goto_6

    .line 402
    :catch_0
    move-exception v0

    .line 403
    sget-object v1, Lyd/a;->a:Lyd/a$a;

    .line 404
    .line 405
    new-array v4, v13, [Ljava/lang/Object;

    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    const/4 v14, 0x0

    .line 412
    aput-object v0, v4, v14

    .line 413
    .line 414
    const-string v0, "MRZInfo error : %s"

    .line 415
    .line 416
    invoke-virtual {v1, v0, v4}, Lyd/a$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    const/4 v14, 0x0

    .line 420
    :goto_6
    if-eqz v14, :cond_b

    .line 421
    .line 422
    :try_start_2
    invoke-virtual {v14}, Lorg/jmrtd/lds/icao/MRZInfo;->getDocumentNumber()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    if-eqz v0, :cond_a

    .line 427
    .line 428
    invoke-virtual {v14}, Lorg/jmrtd/lds/icao/MRZInfo;->getDocumentNumber()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-lt v0, v3, :cond_a

    .line 437
    .line 438
    invoke-virtual {v14}, Lorg/jmrtd/lds/icao/MRZInfo;->getDateOfBirth()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    if-eqz v0, :cond_a

    .line 443
    .line 444
    invoke-virtual {v14}, Lorg/jmrtd/lds/icao/MRZInfo;->getDateOfBirth()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    const/4 v1, 0x6

    .line 453
    if-ne v0, v1, :cond_a

    .line 454
    .line 455
    invoke-virtual {v14}, Lorg/jmrtd/lds/icao/MRZInfo;->getDateOfExpiry()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    if-eqz v0, :cond_a

    .line 460
    .line 461
    invoke-virtual {v14}, Lorg/jmrtd/lds/icao/MRZInfo;->getDateOfExpiry()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-ne v0, v1, :cond_a

    .line 470
    .line 471
    const/4 v4, 0x1

    .line 472
    goto :goto_7

    .line 473
    :cond_a
    const/4 v4, 0x0

    .line 474
    :goto_7
    if-eqz v4, :cond_b

    .line 475
    .line 476
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b$a;

    .line 477
    .line 478
    invoke-interface {v0, v14}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b$a;->b(Lorg/jmrtd/lds/icao/MRZInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 479
    .line 480
    .line 481
    goto :goto_8

    .line 482
    :catch_1
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 483
    .line 484
    const-string v1, "MRZ DATA is not valid"

    .line 485
    .line 486
    const/4 v3, 0x0

    .line 487
    new-array v4, v3, [Ljava/lang/Object;

    .line 488
    .line 489
    invoke-virtual {v0, v1, v4}, Lyd/a$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    goto :goto_9

    .line 493
    :cond_b
    :goto_8
    const/4 v3, 0x0

    .line 494
    goto :goto_9

    .line 495
    :cond_c
    move-object/from16 v17, v4

    .line 496
    .line 497
    :goto_9
    add-int/lit8 v12, v12, 0x1

    .line 498
    .line 499
    move-object/from16 v1, p0

    .line 500
    .line 501
    move-object/from16 v4, v17

    .line 502
    .line 503
    goto/16 :goto_2

    .line 504
    .line 505
    :cond_d
    move-object/from16 v17, v4

    .line 506
    .line 507
    add-int/lit8 v9, v9, 0x1

    .line 508
    .line 509
    move-object/from16 v1, p0

    .line 510
    .line 511
    goto/16 :goto_1

    .line 512
    .line 513
    :cond_e
    move-object/from16 v17, v4

    .line 514
    .line 515
    add-int/lit8 v6, v6, 0x1

    .line 516
    .line 517
    move-object/from16 v1, p0

    .line 518
    .line 519
    goto/16 :goto_0

    .line 520
    .line 521
    :catchall_0
    move-exception v0

    .line 522
    move-object v1, v0

    .line 523
    monitor-exit v7

    .line 524
    throw v1

    .line 525
    :cond_f
    sget-object v0, Ll9/m;->a:Ll9/m;

    .line 526
    .line 527
    return-object v0
.end method
