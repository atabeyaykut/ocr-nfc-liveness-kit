.class public final Led/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led/j0;


# instance fields
.field public a:B

.field public final b:Led/d0;

.field public final c:Ljava/util/zip/Inflater;

.field public final d:Led/q;

.field public final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Led/j0;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Led/d0;

    invoke-direct {v0, p1}, Led/d0;-><init>(Led/j0;)V

    iput-object v0, p0, Led/p;->b:Led/d0;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Led/p;->c:Ljava/util/zip/Inflater;

    new-instance v1, Led/q;

    invoke-direct {v1, v0, p1}, Led/q;-><init>(Led/d0;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Led/p;->d:Led/q;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Led/p;->e:Ljava/util/zip/CRC32;

    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .locals 4

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, p1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.String.format(this, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(JJLed/e;)V
    .locals 5

    iget-object p5, p5, Led/e;->a:Led/e0;

    :goto_0
    invoke-static {p5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    iget v0, p5, Led/e0;->c:I

    iget v1, p5, Led/e0;->b:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p1, v0

    iget-object p5, p5, Led/e0;->f:Led/e0;

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    iget v2, p5, Led/e0;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int p1, v2

    iget p2, p5, Led/e0;->c:I

    sub-int/2addr p2, p1

    int-to-long v2, p2

    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p2, v2

    iget-object v2, p0, Led/p;->e:Ljava/util/zip/CRC32;

    iget-object v3, p5, Led/e0;->a:[B

    invoke-virtual {v2, v3, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p1, p2

    sub-long/2addr p3, p1

    iget-object p5, p5, Led/e0;->f:Led/e0;

    invoke-static {p5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    move-wide p1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Led/p;->d:Led/q;

    invoke-virtual {v0}, Led/q;->close()V

    return-void
.end method

.method public final h()Led/k0;
    .locals 1

    iget-object v0, p0, Led/p;->b:Led/d0;

    invoke-virtual {v0}, Led/d0;->h()Led/k0;

    move-result-object v0

    return-object v0
.end method

.method public final w(Led/e;J)J
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-wide/from16 v8, p2

    .line 6
    .line 7
    const-string v0, "sink"

    .line 8
    .line 9
    invoke-static {v7, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v11, 0x1

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long v2, v8, v0

    .line 16
    .line 17
    if-ltz v2, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-eqz v3, :cond_16

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    return-wide v0

    .line 27
    :cond_1
    iget-byte v0, v6, Led/p;->a:B

    .line 28
    .line 29
    iget-object v12, v6, Led/p;->e:Ljava/util/zip/CRC32;

    .line 30
    .line 31
    const-wide/16 v13, -0x1

    .line 32
    .line 33
    iget-object v15, v6, Led/p;->b:Led/d0;

    .line 34
    .line 35
    if-nez v0, :cond_11

    .line 36
    .line 37
    const-wide/16 v0, 0xa

    .line 38
    .line 39
    invoke-virtual {v15, v0, v1}, Led/d0;->l0(J)V

    .line 40
    .line 41
    .line 42
    iget-object v5, v15, Led/d0;->b:Led/e;

    .line 43
    .line 44
    const-wide/16 v0, 0x3

    .line 45
    .line 46
    invoke-virtual {v5, v0, v1}, Led/e;->f(J)B

    .line 47
    .line 48
    .line 49
    move-result v21

    .line 50
    shr-int/lit8 v0, v21, 0x1

    .line 51
    .line 52
    and-int/2addr v0, v11

    .line 53
    if-ne v0, v11, :cond_2

    .line 54
    .line 55
    const/16 v22, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/16 v22, 0x0

    .line 59
    .line 60
    :goto_1
    if-eqz v22, :cond_3

    .line 61
    .line 62
    iget-object v3, v15, Led/d0;->b:Led/e;

    .line 63
    .line 64
    const-wide/16 v1, 0x0

    .line 65
    .line 66
    const-wide/16 v16, 0xa

    .line 67
    .line 68
    move-object/from16 v0, p0

    .line 69
    .line 70
    move-object/from16 v18, v3

    .line 71
    .line 72
    move-wide/from16 v3, v16

    .line 73
    .line 74
    move-object/from16 v16, v5

    .line 75
    .line 76
    move-object/from16 v5, v18

    .line 77
    .line 78
    invoke-virtual/range {v0 .. v5}, Led/p;->b(JJLed/e;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    move-object/from16 v16, v5

    .line 83
    .line 84
    :goto_2
    invoke-virtual {v15}, Led/d0;->readShort()S

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const-string v1, "ID1ID2"

    .line 89
    .line 90
    const/16 v2, 0x1f8b

    .line 91
    .line 92
    invoke-static {v2, v0, v1}, Led/p;->a(IILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-wide/16 v0, 0x8

    .line 96
    .line 97
    invoke-virtual {v15, v0, v1}, Led/d0;->skip(J)V

    .line 98
    .line 99
    .line 100
    shr-int/lit8 v0, v21, 0x2

    .line 101
    .line 102
    and-int/2addr v0, v11

    .line 103
    if-ne v0, v11, :cond_4

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    const/4 v0, 0x0

    .line 108
    :goto_3
    if-eqz v0, :cond_7

    .line 109
    .line 110
    const-wide/16 v0, 0x2

    .line 111
    .line 112
    invoke-virtual {v15, v0, v1}, Led/d0;->l0(J)V

    .line 113
    .line 114
    .line 115
    if-eqz v22, :cond_5

    .line 116
    .line 117
    iget-object v5, v15, Led/d0;->b:Led/e;

    .line 118
    .line 119
    const-wide/16 v1, 0x0

    .line 120
    .line 121
    const-wide/16 v3, 0x2

    .line 122
    .line 123
    move-object/from16 v0, p0

    .line 124
    .line 125
    invoke-virtual/range {v0 .. v5}, Led/p;->b(JJLed/e;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    invoke-virtual/range {v16 .. v16}, Led/e;->p()S

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    int-to-long v3, v0

    .line 133
    invoke-virtual {v15, v3, v4}, Led/d0;->l0(J)V

    .line 134
    .line 135
    .line 136
    if-eqz v22, :cond_6

    .line 137
    .line 138
    iget-object v5, v15, Led/d0;->b:Led/e;

    .line 139
    .line 140
    const-wide/16 v1, 0x0

    .line 141
    .line 142
    move-object/from16 v0, p0

    .line 143
    .line 144
    move-wide/from16 v16, v3

    .line 145
    .line 146
    invoke-virtual/range {v0 .. v5}, Led/p;->b(JJLed/e;)V

    .line 147
    .line 148
    .line 149
    move-wide/from16 v0, v16

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    move-wide v0, v3

    .line 153
    :goto_4
    invoke-virtual {v15, v0, v1}, Led/d0;->skip(J)V

    .line 154
    .line 155
    .line 156
    :cond_7
    shr-int/lit8 v0, v21, 0x3

    .line 157
    .line 158
    and-int/2addr v0, v11

    .line 159
    if-ne v0, v11, :cond_8

    .line 160
    .line 161
    const/4 v0, 0x1

    .line 162
    goto :goto_5

    .line 163
    :cond_8
    const/4 v0, 0x0

    .line 164
    :goto_5
    const-wide/16 v23, 0x1

    .line 165
    .line 166
    if-eqz v0, :cond_b

    .line 167
    .line 168
    const/16 v16, 0x0

    .line 169
    .line 170
    const-wide/16 v17, 0x0

    .line 171
    .line 172
    const-wide v19, 0x7fffffffffffffffL

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    move-object v5, v15

    .line 178
    invoke-virtual/range {v15 .. v20}, Led/d0;->a(BJJ)J

    .line 179
    .line 180
    .line 181
    move-result-wide v15

    .line 182
    cmp-long v0, v15, v13

    .line 183
    .line 184
    if-eqz v0, :cond_a

    .line 185
    .line 186
    if-eqz v22, :cond_9

    .line 187
    .line 188
    iget-object v3, v5, Led/d0;->b:Led/e;

    .line 189
    .line 190
    const-wide/16 v1, 0x0

    .line 191
    .line 192
    add-long v17, v15, v23

    .line 193
    .line 194
    move-object/from16 v0, p0

    .line 195
    .line 196
    move-object/from16 v19, v3

    .line 197
    .line 198
    move-wide/from16 v3, v17

    .line 199
    .line 200
    move-object v10, v5

    .line 201
    move-object/from16 v5, v19

    .line 202
    .line 203
    invoke-virtual/range {v0 .. v5}, Led/p;->b(JJLed/e;)V

    .line 204
    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_9
    move-object v10, v5

    .line 208
    :goto_6
    add-long v0, v15, v23

    .line 209
    .line 210
    invoke-virtual {v10, v0, v1}, Led/d0;->skip(J)V

    .line 211
    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    .line 215
    .line 216
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :cond_b
    move-object v10, v15

    .line 221
    :goto_7
    shr-int/lit8 v0, v21, 0x4

    .line 222
    .line 223
    and-int/2addr v0, v11

    .line 224
    if-ne v0, v11, :cond_c

    .line 225
    .line 226
    const/16 v17, 0x1

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_c
    const/16 v17, 0x0

    .line 230
    .line 231
    :goto_8
    if-eqz v17, :cond_f

    .line 232
    .line 233
    const/16 v16, 0x0

    .line 234
    .line 235
    const-wide/16 v17, 0x0

    .line 236
    .line 237
    const-wide v19, 0x7fffffffffffffffL

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    move-object v15, v10

    .line 243
    invoke-virtual/range {v15 .. v20}, Led/d0;->a(BJJ)J

    .line 244
    .line 245
    .line 246
    move-result-wide v15

    .line 247
    cmp-long v0, v15, v13

    .line 248
    .line 249
    if-eqz v0, :cond_e

    .line 250
    .line 251
    if-eqz v22, :cond_d

    .line 252
    .line 253
    iget-object v5, v10, Led/d0;->b:Led/e;

    .line 254
    .line 255
    const-wide/16 v1, 0x0

    .line 256
    .line 257
    add-long v3, v15, v23

    .line 258
    .line 259
    move-object/from16 v0, p0

    .line 260
    .line 261
    invoke-virtual/range {v0 .. v5}, Led/p;->b(JJLed/e;)V

    .line 262
    .line 263
    .line 264
    :cond_d
    add-long v0, v15, v23

    .line 265
    .line 266
    invoke-virtual {v10, v0, v1}, Led/d0;->skip(J)V

    .line 267
    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_e
    new-instance v0, Ljava/io/EOFException;

    .line 271
    .line 272
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 273
    .line 274
    .line 275
    throw v0

    .line 276
    :cond_f
    :goto_9
    if-eqz v22, :cond_10

    .line 277
    .line 278
    invoke-virtual {v10}, Led/d0;->b()S

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    invoke-virtual {v12}, Ljava/util/zip/CRC32;->getValue()J

    .line 283
    .line 284
    .line 285
    move-result-wide v1

    .line 286
    long-to-int v2, v1

    .line 287
    int-to-short v1, v2

    .line 288
    const-string v2, "FHCRC"

    .line 289
    .line 290
    invoke-static {v0, v1, v2}, Led/p;->a(IILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v12}, Ljava/util/zip/CRC32;->reset()V

    .line 294
    .line 295
    .line 296
    :cond_10
    iput-byte v11, v6, Led/p;->a:B

    .line 297
    .line 298
    goto :goto_a

    .line 299
    :cond_11
    move-object v10, v15

    .line 300
    :goto_a
    iget-byte v0, v6, Led/p;->a:B

    .line 301
    .line 302
    const/4 v1, 0x2

    .line 303
    if-ne v0, v11, :cond_13

    .line 304
    .line 305
    iget-wide v2, v7, Led/e;->b:J

    .line 306
    .line 307
    iget-object v0, v6, Led/p;->d:Led/q;

    .line 308
    .line 309
    invoke-virtual {v0, v7, v8, v9}, Led/q;->w(Led/e;J)J

    .line 310
    .line 311
    .line 312
    move-result-wide v8

    .line 313
    cmp-long v0, v8, v13

    .line 314
    .line 315
    if-eqz v0, :cond_12

    .line 316
    .line 317
    move-object/from16 v0, p0

    .line 318
    .line 319
    move-wide v1, v2

    .line 320
    move-wide v3, v8

    .line 321
    move-object/from16 v5, p1

    .line 322
    .line 323
    invoke-virtual/range {v0 .. v5}, Led/p;->b(JJLed/e;)V

    .line 324
    .line 325
    .line 326
    return-wide v8

    .line 327
    :cond_12
    iput-byte v1, v6, Led/p;->a:B

    .line 328
    .line 329
    :cond_13
    iget-byte v0, v6, Led/p;->a:B

    .line 330
    .line 331
    if-ne v0, v1, :cond_15

    .line 332
    .line 333
    invoke-virtual {v10}, Led/d0;->b0()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    invoke-virtual {v12}, Ljava/util/zip/CRC32;->getValue()J

    .line 338
    .line 339
    .line 340
    move-result-wide v1

    .line 341
    long-to-int v2, v1

    .line 342
    const-string v1, "CRC"

    .line 343
    .line 344
    invoke-static {v0, v2, v1}, Led/p;->a(IILjava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v10}, Led/d0;->b0()I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    iget-object v1, v6, Led/p;->c:Ljava/util/zip/Inflater;

    .line 352
    .line 353
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    .line 354
    .line 355
    .line 356
    move-result-wide v1

    .line 357
    long-to-int v2, v1

    .line 358
    const-string v1, "ISIZE"

    .line 359
    .line 360
    invoke-static {v0, v2, v1}, Led/p;->a(IILjava/lang/String;)V

    .line 361
    .line 362
    .line 363
    const/4 v0, 0x3

    .line 364
    iput-byte v0, v6, Led/p;->a:B

    .line 365
    .line 366
    invoke-virtual {v10}, Led/d0;->I()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_14

    .line 371
    .line 372
    goto :goto_b

    .line 373
    :cond_14
    new-instance v0, Ljava/io/IOException;

    .line 374
    .line 375
    const-string v1, "gzip finished without exhausting source"

    .line 376
    .line 377
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v0

    .line 381
    :cond_15
    :goto_b
    return-wide v13

    .line 382
    :cond_16
    const-string v0, "byteCount < 0: "

    .line 383
    .line 384
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    throw v1
.end method
