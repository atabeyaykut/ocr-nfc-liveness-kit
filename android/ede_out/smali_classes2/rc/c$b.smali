.class public final Lrc/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lrc/q;)Lrc/c;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "headers"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lrc/q;->a:[Ljava/lang/String;

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    div-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v10, 0x0

    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, -0x1

    .line 19
    const/4 v13, -0x1

    .line 20
    const/4 v14, 0x0

    .line 21
    const/4 v15, 0x0

    .line 22
    const/16 v16, 0x0

    .line 23
    .line 24
    const/16 v17, -0x1

    .line 25
    .line 26
    const/16 v18, -0x1

    .line 27
    .line 28
    const/16 v19, 0x0

    .line 29
    .line 30
    const/16 v20, 0x0

    .line 31
    .line 32
    const/16 v21, 0x0

    .line 33
    .line 34
    :goto_0
    if-ge v6, v1, :cond_18

    .line 35
    .line 36
    invoke-virtual {v0, v6}, Lrc/q;->o(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-virtual {v0, v6}, Lrc/q;->w(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const-string v5, "Cache-Control"

    .line 45
    .line 46
    invoke-static {v9, v5}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    if-eqz v8, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    move-object v8, v4

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    const-string v5, "Pragma"

    .line 58
    .line 59
    invoke-static {v9, v5}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_17

    .line 64
    .line 65
    :goto_1
    const/4 v7, 0x0

    .line 66
    :goto_2
    const/4 v5, 0x0

    .line 67
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-ge v5, v9, :cond_17

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    move v3, v5

    .line 78
    :goto_4
    if-ge v3, v9, :cond_3

    .line 79
    .line 80
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const-string v0, "=,;"

    .line 85
    .line 86
    invoke-static {v0, v2}, Lmc/n;->H(Ljava/lang/CharSequence;C)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    move-object/from16 v0, p0

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    :goto_5
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    .line 107
    .line 108
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lmc/n;->i0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eq v3, v5, :cond_a

    .line 124
    .line 125
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    const/16 v9, 0x2c

    .line 130
    .line 131
    if-eq v5, v9, :cond_a

    .line 132
    .line 133
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    const/16 v9, 0x3b

    .line 138
    .line 139
    if-ne v5, v9, :cond_4

    .line 140
    .line 141
    goto/16 :goto_a

    .line 142
    .line 143
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 144
    .line 145
    sget-object v5, Lsc/c;->a:[B

    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    :goto_6
    if-ge v3, v5, :cond_6

    .line 152
    .line 153
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    move/from16 v23, v1

    .line 158
    .line 159
    const/16 v1, 0x20

    .line 160
    .line 161
    if-eq v9, v1, :cond_5

    .line 162
    .line 163
    const/16 v1, 0x9

    .line 164
    .line 165
    if-eq v9, v1, :cond_5

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 169
    .line 170
    move/from16 v1, v23

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_6
    move/from16 v23, v1

    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    :goto_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-ge v3, v1, :cond_7

    .line 184
    .line 185
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    const/16 v5, 0x22

    .line 190
    .line 191
    if-ne v1, v5, :cond_7

    .line 192
    .line 193
    add-int/lit8 v3, v3, 0x1

    .line 194
    .line 195
    const/4 v1, 0x4

    .line 196
    const/4 v9, 0x0

    .line 197
    invoke-static {v4, v5, v3, v9, v1}, Lmc/n;->M(Ljava/lang/CharSequence;CIZI)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-static {v3, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const/4 v5, 0x1

    .line 209
    add-int/2addr v1, v5

    .line 210
    move v5, v1

    .line 211
    goto :goto_b

    .line 212
    :cond_7
    const/4 v5, 0x1

    .line 213
    const/4 v9, 0x0

    .line 214
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    move v5, v3

    .line 219
    :goto_8
    if-ge v5, v1, :cond_9

    .line 220
    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    move/from16 v24, v1

    .line 226
    .line 227
    const-string v1, ",;"

    .line 228
    .line 229
    invoke-static {v1, v9}, Lmc/n;->H(Ljava/lang/CharSequence;C)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_8

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 237
    .line 238
    move/from16 v1, v24

    .line 239
    .line 240
    const/4 v9, 0x0

    .line 241
    goto :goto_8

    .line 242
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    :goto_9
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v1}, Lmc/n;->i0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    goto :goto_b

    .line 262
    :cond_a
    :goto_a
    move/from16 v23, v1

    .line 263
    .line 264
    add-int/lit8 v3, v3, 0x1

    .line 265
    .line 266
    move v5, v3

    .line 267
    const/4 v3, 0x0

    .line 268
    :goto_b
    const-string v1, "no-cache"

    .line 269
    .line 270
    invoke-static {v1, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_b

    .line 275
    .line 276
    const/4 v1, -0x1

    .line 277
    const/4 v10, 0x1

    .line 278
    goto/16 :goto_c

    .line 279
    .line 280
    :cond_b
    const-string v1, "no-store"

    .line 281
    .line 282
    invoke-static {v1, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_c

    .line 287
    .line 288
    const/4 v1, -0x1

    .line 289
    const/4 v11, 0x1

    .line 290
    goto/16 :goto_c

    .line 291
    .line 292
    :cond_c
    const-string v1, "max-age"

    .line 293
    .line 294
    invoke-static {v1, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_d

    .line 299
    .line 300
    const/4 v1, -0x1

    .line 301
    invoke-static {v1, v3}, Lsc/c;->w(ILjava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v12

    .line 305
    goto/16 :goto_c

    .line 306
    .line 307
    :cond_d
    const/4 v1, -0x1

    .line 308
    const-string v2, "s-maxage"

    .line 309
    .line 310
    invoke-static {v2, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-eqz v2, :cond_e

    .line 315
    .line 316
    invoke-static {v1, v3}, Lsc/c;->w(ILjava/lang/String;)I

    .line 317
    .line 318
    .line 319
    move-result v13

    .line 320
    goto :goto_c

    .line 321
    :cond_e
    const-string v1, "private"

    .line 322
    .line 323
    invoke-static {v1, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_f

    .line 328
    .line 329
    const/4 v1, -0x1

    .line 330
    const/4 v14, 0x1

    .line 331
    goto :goto_c

    .line 332
    :cond_f
    const-string v1, "public"

    .line 333
    .line 334
    invoke-static {v1, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-eqz v1, :cond_10

    .line 339
    .line 340
    const/4 v1, -0x1

    .line 341
    const/4 v15, 0x1

    .line 342
    goto :goto_c

    .line 343
    :cond_10
    const-string v1, "must-revalidate"

    .line 344
    .line 345
    invoke-static {v1, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_11

    .line 350
    .line 351
    const/4 v1, -0x1

    .line 352
    const/16 v16, 0x1

    .line 353
    .line 354
    goto :goto_c

    .line 355
    :cond_11
    const-string v1, "max-stale"

    .line 356
    .line 357
    invoke-static {v1, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-eqz v1, :cond_12

    .line 362
    .line 363
    const v0, 0x7fffffff

    .line 364
    .line 365
    .line 366
    invoke-static {v0, v3}, Lsc/c;->w(ILjava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v17

    .line 370
    const/4 v1, -0x1

    .line 371
    goto :goto_c

    .line 372
    :cond_12
    const-string v1, "min-fresh"

    .line 373
    .line 374
    invoke-static {v1, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_13

    .line 379
    .line 380
    const/4 v1, -0x1

    .line 381
    invoke-static {v1, v3}, Lsc/c;->w(ILjava/lang/String;)I

    .line 382
    .line 383
    .line 384
    move-result v18

    .line 385
    goto :goto_c

    .line 386
    :cond_13
    const/4 v1, -0x1

    .line 387
    const-string v2, "only-if-cached"

    .line 388
    .line 389
    invoke-static {v2, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    if-eqz v2, :cond_14

    .line 394
    .line 395
    const/16 v19, 0x1

    .line 396
    .line 397
    goto :goto_c

    .line 398
    :cond_14
    const-string v2, "no-transform"

    .line 399
    .line 400
    invoke-static {v2, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    if-eqz v2, :cond_15

    .line 405
    .line 406
    const/16 v20, 0x1

    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_15
    const-string v2, "immutable"

    .line 410
    .line 411
    invoke-static {v2, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-eqz v0, :cond_16

    .line 416
    .line 417
    const/16 v21, 0x1

    .line 418
    .line 419
    :cond_16
    :goto_c
    move-object/from16 v0, p0

    .line 420
    .line 421
    move/from16 v1, v23

    .line 422
    .line 423
    goto/16 :goto_3

    .line 424
    .line 425
    :cond_17
    move/from16 v23, v1

    .line 426
    .line 427
    const/4 v1, -0x1

    .line 428
    add-int/lit8 v6, v6, 0x1

    .line 429
    .line 430
    move-object/from16 v0, p0

    .line 431
    .line 432
    move/from16 v1, v23

    .line 433
    .line 434
    goto/16 :goto_0

    .line 435
    .line 436
    :cond_18
    if-nez v7, :cond_19

    .line 437
    .line 438
    const/16 v22, 0x0

    .line 439
    .line 440
    goto :goto_d

    .line 441
    :cond_19
    move-object/from16 v22, v8

    .line 442
    .line 443
    :goto_d
    new-instance v0, Lrc/c;

    .line 444
    .line 445
    move-object v9, v0

    .line 446
    invoke-direct/range {v9 .. v22}, Lrc/c;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    .line 447
    .line 448
    .line 449
    return-object v0
.end method
