.class public final Lc5/f8;
.super Lc5/e8;
.source "SourceFile"


# instance fields
.field public final g:Lcom/google/android/gms/internal/measurement/o2;

.field public final synthetic h:Lc5/g8;


# direct methods
.method public constructor <init>(Lc5/g8;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/o2;)V
    .locals 0

    iput-object p1, p0, Lc5/f8;->h:Lc5/g8;

    invoke-direct {p0, p2, p3}, Lc5/e8;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lc5/f8;->g:Lcom/google/android/gms/internal/measurement/o2;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lc5/f8;->g:Lcom/google/android/gms/internal/measurement/o2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/o2;->r()I

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/a4;Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lc5/f8;->h:Lc5/g8;

    .line 7
    .line 8
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 9
    .line 10
    check-cast v2, Lc5/i4;

    .line 11
    .line 12
    iget-object v2, v2, Lc5/i4;->g:Lc5/e;

    .line 13
    .line 14
    iget-object v3, v0, Lc5/e8;->a:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v4, Lc5/r2;->W:Lc5/q2;

    .line 17
    .line 18
    invoke-virtual {v2, v3, v4}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, v0, Lc5/f8;->g:Lcom/google/android/gms/internal/measurement/o2;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/o2;->x()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/o2;->y()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/o2;->z()Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x1

    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    if-nez v5, :cond_1

    .line 41
    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v4, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 48
    :goto_1
    const/4 v5, 0x0

    .line 49
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 50
    .line 51
    if-eqz p4, :cond_3

    .line 52
    .line 53
    if-nez v4, :cond_3

    .line 54
    .line 55
    check-cast v1, Lc5/i4;

    .line 56
    .line 57
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 58
    .line 59
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 60
    .line 61
    .line 62
    iget v2, v0, Lc5/e8;->b:I

    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/o2;->A()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/o2;->r()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    :cond_2
    const-string v3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 83
    .line 84
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 85
    .line 86
    invoke-virtual {v1, v2, v3, v5}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return v8

    .line 90
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/o2;->s()Lcom/google/android/gms/internal/measurement/j2;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/j2;->x()Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->H()Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    const-wide/16 v12, 0x0

    .line 103
    .line 104
    if-eqz v11, :cond_5

    .line 105
    .line 106
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/j2;->z()Z

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    if-nez v11, :cond_4

    .line 111
    .line 112
    move-object v9, v1

    .line 113
    check-cast v9, Lc5/i4;

    .line 114
    .line 115
    iget-object v9, v9, Lc5/i4;->j:Lc5/e3;

    .line 116
    .line 117
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 118
    .line 119
    .line 120
    move-object v10, v1

    .line 121
    check-cast v10, Lc5/i4;

    .line 122
    .line 123
    iget-object v10, v10, Lc5/i4;->n:Lc5/z2;

    .line 124
    .line 125
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->w()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-virtual {v10, v11}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    iget-object v9, v9, Lc5/e3;->j:Lc5/c3;

    .line 134
    .line 135
    const-string v11, "No number filter for long property. property"

    .line 136
    .line 137
    goto/16 :goto_3

    .line 138
    .line 139
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->s()J

    .line 140
    .line 141
    .line 142
    move-result-wide v14

    .line 143
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/j2;->t()Lcom/google/android/gms/internal/measurement/m2;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    :try_start_0
    new-instance v11, Ljava/math/BigDecimal;

    .line 148
    .line 149
    invoke-direct {v11, v14, v15}, Ljava/math/BigDecimal;-><init>(J)V

    .line 150
    .line 151
    .line 152
    invoke-static {v11, v9, v12, v13}, Lc5/e8;->d(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/m2;D)Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto/16 :goto_2

    .line 157
    .line 158
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->G()Z

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    if-eqz v11, :cond_7

    .line 163
    .line 164
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/j2;->z()Z

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    if-nez v11, :cond_6

    .line 169
    .line 170
    move-object v9, v1

    .line 171
    check-cast v9, Lc5/i4;

    .line 172
    .line 173
    iget-object v9, v9, Lc5/i4;->j:Lc5/e3;

    .line 174
    .line 175
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 176
    .line 177
    .line 178
    move-object v10, v1

    .line 179
    check-cast v10, Lc5/i4;

    .line 180
    .line 181
    iget-object v10, v10, Lc5/i4;->n:Lc5/z2;

    .line 182
    .line 183
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->w()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    invoke-virtual {v10, v11}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    iget-object v9, v9, Lc5/e3;->j:Lc5/c3;

    .line 192
    .line 193
    const-string v11, "No number filter for double property. property"

    .line 194
    .line 195
    goto/16 :goto_3

    .line 196
    .line 197
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->r()D

    .line 198
    .line 199
    .line 200
    move-result-wide v11

    .line 201
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/j2;->t()Lcom/google/android/gms/internal/measurement/m2;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    :try_start_1
    new-instance v13, Ljava/math/BigDecimal;

    .line 206
    .line 207
    invoke-direct {v13, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    .line 208
    .line 209
    .line 210
    invoke-static {v11, v12}, Ljava/lang/Math;->ulp(D)D

    .line 211
    .line 212
    .line 213
    move-result-wide v11

    .line 214
    invoke-static {v13, v9, v11, v12}, Lc5/e8;->d(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/m2;D)Ljava/lang/Boolean;

    .line 215
    .line 216
    .line 217
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->J()Z

    .line 221
    .line 222
    .line 223
    move-result v11

    .line 224
    if-eqz v11, :cond_c

    .line 225
    .line 226
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/j2;->B()Z

    .line 227
    .line 228
    .line 229
    move-result v11

    .line 230
    if-nez v11, :cond_b

    .line 231
    .line 232
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/j2;->z()Z

    .line 233
    .line 234
    .line 235
    move-result v11

    .line 236
    if-nez v11, :cond_8

    .line 237
    .line 238
    move-object v9, v1

    .line 239
    check-cast v9, Lc5/i4;

    .line 240
    .line 241
    iget-object v9, v9, Lc5/i4;->j:Lc5/e3;

    .line 242
    .line 243
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 244
    .line 245
    .line 246
    move-object v10, v1

    .line 247
    check-cast v10, Lc5/i4;

    .line 248
    .line 249
    iget-object v10, v10, Lc5/i4;->n:Lc5/z2;

    .line 250
    .line 251
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->w()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    invoke-virtual {v10, v11}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    iget-object v9, v9, Lc5/e3;->j:Lc5/c3;

    .line 260
    .line 261
    const-string v11, "No string or number filter defined. property"

    .line 262
    .line 263
    goto/16 :goto_3

    .line 264
    .line 265
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->x()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    invoke-static {v11}, Lc5/q7;->K(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    if-eqz v11, :cond_a

    .line 274
    .line 275
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->x()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/j2;->t()Lcom/google/android/gms/internal/measurement/m2;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    invoke-static {v11}, Lc5/q7;->K(Ljava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    move-result v14

    .line 287
    if-nez v14, :cond_9

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_9
    :try_start_2
    new-instance v14, Ljava/math/BigDecimal;

    .line 291
    .line 292
    invoke-direct {v14, v11}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-static {v14, v9, v12, v13}, Lc5/e8;->d(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/m2;D)Ljava/lang/Boolean;

    .line 296
    .line 297
    .line 298
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 299
    goto :goto_2

    .line 300
    :cond_a
    move-object v9, v1

    .line 301
    check-cast v9, Lc5/i4;

    .line 302
    .line 303
    iget-object v9, v9, Lc5/i4;->j:Lc5/e3;

    .line 304
    .line 305
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 306
    .line 307
    .line 308
    move-object v10, v1

    .line 309
    check-cast v10, Lc5/i4;

    .line 310
    .line 311
    iget-object v10, v10, Lc5/i4;->n:Lc5/z2;

    .line 312
    .line 313
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->w()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v11

    .line 317
    invoke-virtual {v10, v11}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->x()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v11

    .line 325
    iget-object v9, v9, Lc5/e3;->j:Lc5/c3;

    .line 326
    .line 327
    const-string v12, "Invalid user property value for Numeric number filter. property, value"

    .line 328
    .line 329
    invoke-virtual {v9, v10, v12, v11}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->x()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/j2;->u()Lcom/google/android/gms/internal/measurement/r2;

    .line 338
    .line 339
    .line 340
    move-result-object v9

    .line 341
    move-object v11, v1

    .line 342
    check-cast v11, Lc5/i4;

    .line 343
    .line 344
    iget-object v11, v11, Lc5/i4;->j:Lc5/e3;

    .line 345
    .line 346
    invoke-static {v11}, Lc5/i4;->e(Lc5/y4;)V

    .line 347
    .line 348
    .line 349
    invoke-static {v5, v9, v11}, Lc5/e8;->e(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/r2;Lc5/e3;)Ljava/lang/Boolean;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    :catch_0
    :goto_2
    invoke-static {v5, v10}, Lc5/e8;->f(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    goto :goto_4

    .line 358
    :cond_c
    move-object v9, v1

    .line 359
    check-cast v9, Lc5/i4;

    .line 360
    .line 361
    iget-object v9, v9, Lc5/i4;->j:Lc5/e3;

    .line 362
    .line 363
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 364
    .line 365
    .line 366
    move-object v10, v1

    .line 367
    check-cast v10, Lc5/i4;

    .line 368
    .line 369
    iget-object v10, v10, Lc5/i4;->n:Lc5/z2;

    .line 370
    .line 371
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->w()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v11

    .line 375
    invoke-virtual {v10, v11}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v10

    .line 379
    iget-object v9, v9, Lc5/e3;->j:Lc5/c3;

    .line 380
    .line 381
    const-string v11, "User property has no value, property"

    .line 382
    .line 383
    :goto_3
    invoke-virtual {v9, v10, v11}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    :goto_4
    check-cast v1, Lc5/i4;

    .line 387
    .line 388
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 389
    .line 390
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 391
    .line 392
    .line 393
    if-nez v5, :cond_d

    .line 394
    .line 395
    const-string v9, "null"

    .line 396
    .line 397
    goto :goto_5

    .line 398
    :cond_d
    move-object v9, v5

    .line 399
    :goto_5
    const-string v10, "Property filter result"

    .line 400
    .line 401
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 402
    .line 403
    invoke-virtual {v1, v9, v10}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    if-nez v5, :cond_e

    .line 407
    .line 408
    return v7

    .line 409
    :cond_e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 410
    .line 411
    iput-object v1, v0, Lc5/e8;->c:Ljava/lang/Boolean;

    .line 412
    .line 413
    if-eqz v6, :cond_10

    .line 414
    .line 415
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-eqz v1, :cond_f

    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_f
    return v8

    .line 423
    :cond_10
    :goto_6
    if-eqz p4, :cond_11

    .line 424
    .line 425
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/o2;->x()Z

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    if-eqz v1, :cond_12

    .line 430
    .line 431
    :cond_11
    iput-object v5, v0, Lc5/e8;->d:Ljava/lang/Boolean;

    .line 432
    .line 433
    :cond_12
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_16

    .line 438
    .line 439
    if-eqz v4, :cond_16

    .line 440
    .line 441
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->I()Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-eqz v1, :cond_16

    .line 446
    .line 447
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/a4;->t()J

    .line 448
    .line 449
    .line 450
    move-result-wide v4

    .line 451
    if-eqz p1, :cond_13

    .line 452
    .line 453
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    .line 454
    .line 455
    .line 456
    move-result-wide v4

    .line 457
    :cond_13
    if-eqz v2, :cond_14

    .line 458
    .line 459
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/o2;->x()Z

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    if-eqz v1, :cond_14

    .line 464
    .line 465
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/o2;->y()Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-nez v1, :cond_14

    .line 470
    .line 471
    if-eqz p2, :cond_14

    .line 472
    .line 473
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    .line 474
    .line 475
    .line 476
    move-result-wide v4

    .line 477
    :cond_14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/o2;->y()Z

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    if-eqz v1, :cond_15

    .line 482
    .line 483
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    iput-object v1, v0, Lc5/e8;->f:Ljava/lang/Long;

    .line 488
    .line 489
    goto :goto_7

    .line 490
    :cond_15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    iput-object v1, v0, Lc5/e8;->e:Ljava/lang/Long;

    .line 495
    .line 496
    :cond_16
    :goto_7
    return v8
.end method
