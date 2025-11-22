.class public final Lr8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr8/d$a;
    }
.end annotation


# static fields
.field public static final b:[B

.field public static final c:[I


# instance fields
.field public final a:Lr8/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lr8/d;->b:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lr8/d;->c:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr8/d$a;

    invoke-direct {v0, p1}, Lr8/d$a;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lr8/d;->a:Lr8/d$a;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lr8/d;->a:Lr8/d$a;

    .line 4
    .line 5
    iget-object v2, v1, Lr8/d$a;->a:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    shl-int/lit8 v3, v3, 0x8

    .line 12
    .line 13
    const v4, 0xff00

    .line 14
    .line 15
    .line 16
    and-int/2addr v3, v4

    .line 17
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v5, 0xff

    .line 22
    .line 23
    and-int/2addr v2, v5

    .line 24
    or-int/2addr v2, v3

    .line 25
    const v3, 0xffd8

    .line 26
    .line 27
    .line 28
    and-int v6, v2, v3

    .line 29
    .line 30
    const/16 v7, 0x4949

    .line 31
    .line 32
    const/16 v9, 0x4d4d

    .line 33
    .line 34
    if-eq v6, v3, :cond_1

    .line 35
    .line 36
    if-eq v2, v9, :cond_1

    .line 37
    .line 38
    if-ne v2, v7, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v3, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 44
    :goto_1
    const/4 v6, -0x1

    .line 45
    const/4 v10, 0x3

    .line 46
    const-string v11, "ImageHeaderParser"

    .line 47
    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v3, "Parser doesn\'t handle magic number: "

    .line 59
    .line 60
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_2
    return v6

    .line 74
    :cond_3
    :goto_2
    iget-object v2, v1, Lr8/d$a;->a:Ljava/io/InputStream;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    and-int/2addr v2, v5

    .line 81
    int-to-short v2, v2

    .line 82
    if-eq v2, v5, :cond_4

    .line 83
    .line 84
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_b

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v4, "Unknown segmentId="

    .line 93
    .line 94
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :cond_4
    iget-object v2, v1, Lr8/d$a;->a:Ljava/io/InputStream;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    and-int/2addr v3, v5

    .line 109
    int-to-short v3, v3

    .line 110
    const/16 v12, 0xda

    .line 111
    .line 112
    if-ne v3, v12, :cond_5

    .line 113
    .line 114
    goto :goto_9

    .line 115
    :cond_5
    const/16 v12, 0xd9

    .line 116
    .line 117
    if-ne v3, v12, :cond_6

    .line 118
    .line 119
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_b

    .line 124
    .line 125
    const-string v2, "Found MARKER_EOI in exif segment"

    .line 126
    .line 127
    goto :goto_8

    .line 128
    :cond_6
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    shl-int/lit8 v12, v12, 0x8

    .line 133
    .line 134
    and-int/2addr v4, v12

    .line 135
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    and-int/2addr v5, v12

    .line 140
    or-int/2addr v4, v5

    .line 141
    add-int/lit8 v4, v4, -0x2

    .line 142
    .line 143
    const/16 v5, 0xe1

    .line 144
    .line 145
    if-eq v3, v5, :cond_d

    .line 146
    .line 147
    int-to-long v12, v4

    .line 148
    const-wide/16 v14, 0x0

    .line 149
    .line 150
    cmp-long v5, v12, v14

    .line 151
    .line 152
    if-gez v5, :cond_7

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_7
    move-wide v7, v12

    .line 156
    :goto_3
    cmp-long v16, v7, v14

    .line 157
    .line 158
    if-lez v16, :cond_a

    .line 159
    .line 160
    invoke-virtual {v2, v7, v8}, Ljava/io/InputStream;->skip(J)J

    .line 161
    .line 162
    .line 163
    move-result-wide v16

    .line 164
    cmp-long v18, v16, v14

    .line 165
    .line 166
    if-lez v18, :cond_8

    .line 167
    .line 168
    move-wide/from16 v17, v16

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_8
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-ne v5, v6, :cond_9

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_9
    const-wide/16 v17, 0x1

    .line 179
    .line 180
    :goto_4
    sub-long v7, v7, v17

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_a
    :goto_5
    sub-long v14, v12, v7

    .line 184
    .line 185
    :goto_6
    cmp-long v2, v14, v12

    .line 186
    .line 187
    if-eqz v2, :cond_c

    .line 188
    .line 189
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_b

    .line 194
    .line 195
    const-string v2, "Unable to skip enough data, type: "

    .line 196
    .line 197
    const-string v5, ", wanted to skip: "

    .line 198
    .line 199
    const-string v7, ", but actually skipped: "

    .line 200
    .line 201
    invoke-static {v2, v3, v5, v4, v7}, Landroidx/constraintlayout/core/a;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    :goto_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    :goto_8
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    :cond_b
    :goto_9
    const/4 v4, -0x1

    .line 216
    goto :goto_a

    .line 217
    :cond_c
    const v4, 0xff00

    .line 218
    .line 219
    .line 220
    const/16 v5, 0xff

    .line 221
    .line 222
    const/16 v7, 0x4949

    .line 223
    .line 224
    goto/16 :goto_2

    .line 225
    .line 226
    :cond_d
    :goto_a
    if-ne v4, v6, :cond_f

    .line 227
    .line 228
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_e

    .line 233
    .line 234
    const-string v1, "Failed to parse exif segment length, or exif segment not found"

    .line 235
    .line 236
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    :cond_e
    return v6

    .line 240
    :cond_f
    new-array v2, v4, [B

    .line 241
    .line 242
    move v3, v4

    .line 243
    :goto_b
    if-lez v3, :cond_10

    .line 244
    .line 245
    iget-object v5, v1, Lr8/d$a;->a:Ljava/io/InputStream;

    .line 246
    .line 247
    sub-int v7, v4, v3

    .line 248
    .line 249
    invoke-virtual {v5, v2, v7, v3}, Ljava/io/InputStream;->read([BII)I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    if-eq v5, v6, :cond_11

    .line 254
    .line 255
    sub-int/2addr v3, v5

    .line 256
    goto :goto_b

    .line 257
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    :cond_11
    sub-int v1, v4, v3

    .line 261
    .line 262
    if-eq v1, v4, :cond_12

    .line 263
    .line 264
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_25

    .line 269
    .line 270
    const-string v2, "Unable to read exif segment data, length: "

    .line 271
    .line 272
    const-string v3, ", actually read: "

    .line 273
    .line 274
    invoke-static {v2, v4, v3, v1}, Landroidx/constraintlayout/core/a;->c(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    goto/16 :goto_17

    .line 279
    .line 280
    :cond_12
    sget-object v1, Lr8/d;->b:[B

    .line 281
    .line 282
    array-length v3, v1

    .line 283
    if-le v4, v3, :cond_13

    .line 284
    .line 285
    const/4 v3, 0x1

    .line 286
    goto :goto_c

    .line 287
    :cond_13
    const/4 v3, 0x0

    .line 288
    :goto_c
    if-eqz v3, :cond_15

    .line 289
    .line 290
    const/4 v5, 0x0

    .line 291
    :goto_d
    array-length v7, v1

    .line 292
    if-ge v5, v7, :cond_15

    .line 293
    .line 294
    aget-byte v7, v2, v5

    .line 295
    .line 296
    aget-byte v8, v1, v5

    .line 297
    .line 298
    if-eq v7, v8, :cond_14

    .line 299
    .line 300
    const/4 v3, 0x0

    .line 301
    goto :goto_e

    .line 302
    :cond_14
    add-int/lit8 v5, v5, 0x1

    .line 303
    .line 304
    goto :goto_d

    .line 305
    :cond_15
    :goto_e
    if-eqz v3, :cond_24

    .line 306
    .line 307
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 312
    .line 313
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 322
    .line 323
    const/4 v3, 0x6

    .line 324
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    if-ne v4, v9, :cond_16

    .line 329
    .line 330
    goto :goto_f

    .line 331
    :cond_16
    const/16 v5, 0x4949

    .line 332
    .line 333
    if-ne v4, v5, :cond_17

    .line 334
    .line 335
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 336
    .line 337
    goto :goto_f

    .line 338
    :cond_17
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    if-eqz v5, :cond_18

    .line 343
    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v7, "Unknown endianness = "

    .line 347
    .line 348
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    :cond_18
    :goto_f
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 362
    .line 363
    .line 364
    const/16 v2, 0xa

    .line 365
    .line 366
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    add-int/2addr v2, v3

    .line 371
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    const/4 v4, 0x0

    .line 376
    :goto_10
    if-ge v4, v3, :cond_25

    .line 377
    .line 378
    add-int/lit8 v5, v2, 0x2

    .line 379
    .line 380
    mul-int/lit8 v7, v4, 0xc

    .line 381
    .line 382
    add-int/2addr v7, v5

    .line 383
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    const/16 v8, 0x112

    .line 388
    .line 389
    if-eq v5, v8, :cond_19

    .line 390
    .line 391
    const/4 v9, 0x1

    .line 392
    goto/16 :goto_16

    .line 393
    .line 394
    :cond_19
    add-int/lit8 v8, v7, 0x2

    .line 395
    .line 396
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    const/4 v9, 0x1

    .line 401
    if-lt v8, v9, :cond_22

    .line 402
    .line 403
    const/16 v12, 0xc

    .line 404
    .line 405
    if-le v8, v12, :cond_1a

    .line 406
    .line 407
    goto/16 :goto_13

    .line 408
    .line 409
    :cond_1a
    add-int/lit8 v12, v7, 0x4

    .line 410
    .line 411
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 412
    .line 413
    .line 414
    move-result v12

    .line 415
    if-gez v12, :cond_1b

    .line 416
    .line 417
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-eqz v5, :cond_23

    .line 422
    .line 423
    const-string v5, "Negative tiff component count"

    .line 424
    .line 425
    goto/16 :goto_15

    .line 426
    .line 427
    :cond_1b
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 428
    .line 429
    .line 430
    move-result v13

    .line 431
    const-string v14, " tagType="

    .line 432
    .line 433
    if-eqz v13, :cond_1c

    .line 434
    .line 435
    const-string v13, "Got tagIndex="

    .line 436
    .line 437
    const-string v15, " formatCode="

    .line 438
    .line 439
    invoke-static {v13, v4, v14, v5, v15}, Landroidx/constraintlayout/core/a;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    move-result-object v13

    .line 443
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v15, " componentCount="

    .line 447
    .line 448
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v13

    .line 458
    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    :cond_1c
    sget-object v13, Lr8/d;->c:[I

    .line 462
    .line 463
    aget v13, v13, v8

    .line 464
    .line 465
    add-int/2addr v12, v13

    .line 466
    const/4 v13, 0x4

    .line 467
    if-le v12, v13, :cond_1d

    .line 468
    .line 469
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 470
    .line 471
    .line 472
    move-result v5

    .line 473
    if-eqz v5, :cond_23

    .line 474
    .line 475
    new-instance v5, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    const-string v7, "Got byte count > 4, not orientation, continuing, formatCode="

    .line 478
    .line 479
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    goto :goto_14

    .line 483
    :cond_1d
    add-int/lit8 v7, v7, 0x8

    .line 484
    .line 485
    if-ltz v7, :cond_21

    .line 486
    .line 487
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 488
    .line 489
    .line 490
    move-result v8

    .line 491
    if-le v7, v8, :cond_1e

    .line 492
    .line 493
    goto :goto_12

    .line 494
    :cond_1e
    if-ltz v12, :cond_20

    .line 495
    .line 496
    add-int/2addr v12, v7

    .line 497
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 498
    .line 499
    .line 500
    move-result v8

    .line 501
    if-le v12, v8, :cond_1f

    .line 502
    .line 503
    goto :goto_11

    .line 504
    :cond_1f
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 505
    .line 506
    .line 507
    move-result v6

    .line 508
    goto :goto_18

    .line 509
    :cond_20
    :goto_11
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 510
    .line 511
    .line 512
    move-result v7

    .line 513
    if-eqz v7, :cond_23

    .line 514
    .line 515
    const-string v7, "Illegal number of bytes for TI tag data tagType="

    .line 516
    .line 517
    invoke-static {v7, v5}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    goto :goto_15

    .line 522
    :cond_21
    :goto_12
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 523
    .line 524
    .line 525
    move-result v8

    .line 526
    if-eqz v8, :cond_23

    .line 527
    .line 528
    const-string v8, "Illegal tagValueOffset="

    .line 529
    .line 530
    invoke-static {v8, v7, v14, v5}, Landroidx/constraintlayout/core/a;->c(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    goto :goto_15

    .line 535
    :cond_22
    :goto_13
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 536
    .line 537
    .line 538
    move-result v5

    .line 539
    if-eqz v5, :cond_23

    .line 540
    .line 541
    new-instance v5, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    const-string v7, "Got invalid format code = "

    .line 544
    .line 545
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    :goto_14
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    :goto_15
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    :cond_23
    :goto_16
    add-int/lit8 v4, v4, 0x1

    .line 559
    .line 560
    goto/16 :goto_10

    .line 561
    .line 562
    :cond_24
    invoke-static {v11, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    if-eqz v1, :cond_25

    .line 567
    .line 568
    const-string v1, "Missing jpeg exif preamble"

    .line 569
    .line 570
    :goto_17
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    :cond_25
    :goto_18
    return v6
.end method
