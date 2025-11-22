.class public final Lcc/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/f1$a;
    }
.end annotation


# instance fields
.field public final a:Lc5/v;

.field public final b:Lx5/a;

.field public final c:Ll9/j;

.field public final d:Lbc/c$k;


# direct methods
.method public constructor <init>(Lab/f;)V
    .locals 1

    .line 1
    new-instance v0, Lx5/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lx5/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcc/f1;->a:Lc5/v;

    .line 10
    .line 11
    iput-object v0, p0, Lcc/f1;->b:Lx5/a;

    .line 12
    .line 13
    new-instance p1, Lbc/c;

    .line 14
    .line 15
    const-string v0, "Type parameter upper bound erasure results"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lbc/c;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcc/g1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcc/g1;-><init>(Lcc/f1;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lc5/y;->w(Lx9/a;)Ll9/j;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcc/f1;->c:Ll9/j;

    .line 30
    .line 31
    new-instance v0, Lcc/h1;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcc/h1;-><init>(Lcc/f1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lbc/c;->g(Lx9/l;)Lbc/c$k;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcc/f1;->d:Lbc/c$k;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lma/w0;Lcc/x;)Lcc/e0;
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAttr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcc/f1$a;

    invoke-direct {v0, p1, p2}, Lcc/f1$a;-><init>(Lma/w0;Lcc/x;)V

    iget-object p1, p0, Lcc/f1;->d:Lbc/c$k;

    invoke-virtual {p1, v0}, Lbc/c$k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getErasedUpperBound(Data\u2026typeParameter, typeAttr))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcc/e0;

    return-object p1
.end method

.method public final b(Lcc/p1;Ljava/util/List;Lcc/x;)Ln9/f;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ln9/f;

    .line 6
    .line 7
    invoke-direct {v2}, Ln9/f;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_1a

    .line 19
    .line 20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcc/e0;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcc/e0;->M0()Lcc/c1;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {v4}, Lcc/c1;->n()Lma/g;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    instance-of v6, v4, Lma/e;

    .line 35
    .line 36
    iget-object v8, v0, Lcc/f1;->b:Lx5/a;

    .line 37
    .line 38
    if-eqz v6, :cond_14

    .line 39
    .line 40
    invoke-virtual/range {p3 .. p3}, Lcc/x;->c()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcc/e0;->P0()Lcc/s1;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    instance-of v9, v6, Lcc/y;

    .line 52
    .line 53
    const-string v12, "argument.type"

    .line 54
    .line 55
    const-string v13, "constructor.parameters"

    .line 56
    .line 57
    if-eqz v9, :cond_c

    .line 58
    .line 59
    move-object v9, v6

    .line 60
    check-cast v9, Lcc/y;

    .line 61
    .line 62
    iget-object v14, v9, Lcc/y;->b:Lcc/m0;

    .line 63
    .line 64
    invoke-virtual {v14}, Lcc/e0;->M0()Lcc/c1;

    .line 65
    .line 66
    .line 67
    move-result-object v15

    .line 68
    invoke-interface {v15}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v15

    .line 72
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v15

    .line 76
    if-nez v15, :cond_5

    .line 77
    .line 78
    invoke-virtual {v14}, Lcc/e0;->M0()Lcc/c1;

    .line 79
    .line 80
    .line 81
    move-result-object v15

    .line 82
    invoke-interface {v15}, Lcc/c1;->n()Lma/g;

    .line 83
    .line 84
    .line 85
    move-result-object v15

    .line 86
    if-nez v15, :cond_0

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_0
    invoke-virtual {v14}, Lcc/e0;->M0()Lcc/c1;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    invoke-interface {v15}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    invoke-static {v15, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    check-cast v15, Ljava/lang/Iterable;

    .line 101
    .line 102
    new-instance v7, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-static {v15}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v15

    .line 119
    if-eqz v15, :cond_4

    .line 120
    .line 121
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    check-cast v15, Lma/w0;

    .line 126
    .line 127
    invoke-virtual {v3}, Lcc/e0;->K0()Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-interface {v15}, Lma/w0;->getIndex()I

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    invoke-static {v11, v10}, Lm9/t;->d1(ILjava/util/List;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    check-cast v10, Lcc/i1;

    .line 140
    .line 141
    if-eqz v4, :cond_1

    .line 142
    .line 143
    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    if-eqz v11, :cond_1

    .line 148
    .line 149
    const/4 v11, 0x1

    .line 150
    goto :goto_1

    .line 151
    :cond_1
    const/4 v11, 0x0

    .line 152
    :goto_1
    if-eqz v10, :cond_2

    .line 153
    .line 154
    if-nez v11, :cond_2

    .line 155
    .line 156
    invoke-virtual/range {p1 .. p1}, Lcc/p1;->g()Lcc/l1;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    move-object/from16 v16, v5

    .line 161
    .line 162
    invoke-interface {v10}, Lcc/i1;->getType()Lcc/e0;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-static {v5, v12}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11, v5}, Lcc/l1;->d(Lcc/e0;)Lcc/i1;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    if-nez v5, :cond_3

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_2
    move-object/from16 v16, v5

    .line 177
    .line 178
    :goto_2
    new-instance v10, Lcc/s0;

    .line 179
    .line 180
    invoke-direct {v10, v15}, Lcc/s0;-><init>(Lma/w0;)V

    .line 181
    .line 182
    .line 183
    :cond_3
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-object/from16 v5, v16

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_4
    const/4 v5, 0x0

    .line 190
    const/4 v10, 0x2

    .line 191
    invoke-static {v14, v7, v5, v10}, Lcc/n1;->d(Lcc/m0;Ljava/util/List;Lcc/a1;I)Lcc/m0;

    .line 192
    .line 193
    .line 194
    move-result-object v14

    .line 195
    :cond_5
    :goto_3
    iget-object v5, v9, Lcc/y;->c:Lcc/m0;

    .line 196
    .line 197
    invoke-virtual {v5}, Lcc/e0;->M0()Lcc/c1;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-interface {v7}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    if-nez v7, :cond_b

    .line 210
    .line 211
    invoke-virtual {v5}, Lcc/e0;->M0()Lcc/c1;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-interface {v7}, Lcc/c1;->n()Lma/g;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    if-nez v7, :cond_6

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_6
    invoke-virtual {v5}, Lcc/e0;->M0()Lcc/c1;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    invoke-interface {v7}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-static {v7, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    check-cast v7, Ljava/lang/Iterable;

    .line 234
    .line 235
    new-instance v9, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-static {v7}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 238
    .line 239
    .line 240
    move-result v10

    .line 241
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    if-eqz v10, :cond_a

    .line 253
    .line 254
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    check-cast v10, Lma/w0;

    .line 259
    .line 260
    invoke-virtual {v3}, Lcc/e0;->K0()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    invoke-interface {v10}, Lma/w0;->getIndex()I

    .line 265
    .line 266
    .line 267
    move-result v13

    .line 268
    invoke-static {v13, v11}, Lm9/t;->d1(ILjava/util/List;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    check-cast v11, Lcc/i1;

    .line 273
    .line 274
    if-eqz v4, :cond_7

    .line 275
    .line 276
    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v13

    .line 280
    if-eqz v13, :cond_7

    .line 281
    .line 282
    const/4 v13, 0x1

    .line 283
    goto :goto_5

    .line 284
    :cond_7
    const/4 v13, 0x0

    .line 285
    :goto_5
    if-eqz v11, :cond_8

    .line 286
    .line 287
    if-nez v13, :cond_8

    .line 288
    .line 289
    invoke-virtual/range {p1 .. p1}, Lcc/p1;->g()Lcc/l1;

    .line 290
    .line 291
    .line 292
    move-result-object v13

    .line 293
    invoke-interface {v11}, Lcc/i1;->getType()Lcc/e0;

    .line 294
    .line 295
    .line 296
    move-result-object v15

    .line 297
    invoke-static {v15, v12}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v13, v15}, Lcc/l1;->d(Lcc/e0;)Lcc/i1;

    .line 301
    .line 302
    .line 303
    move-result-object v13

    .line 304
    if-nez v13, :cond_9

    .line 305
    .line 306
    :cond_8
    new-instance v11, Lcc/s0;

    .line 307
    .line 308
    invoke-direct {v11, v10}, Lcc/s0;-><init>(Lma/w0;)V

    .line 309
    .line 310
    .line 311
    :cond_9
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_a
    const/4 v10, 0x0

    .line 316
    const/4 v11, 0x2

    .line 317
    invoke-static {v5, v9, v10, v11}, Lcc/n1;->d(Lcc/m0;Ljava/util/List;Lcc/a1;I)Lcc/m0;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    :cond_b
    :goto_6
    invoke-static {v14, v5}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    goto/16 :goto_a

    .line 326
    .line 327
    :cond_c
    instance-of v5, v6, Lcc/m0;

    .line 328
    .line 329
    if-eqz v5, :cond_13

    .line 330
    .line 331
    move-object v5, v6

    .line 332
    check-cast v5, Lcc/m0;

    .line 333
    .line 334
    invoke-virtual {v5}, Lcc/e0;->M0()Lcc/c1;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    invoke-interface {v7}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    if-nez v7, :cond_12

    .line 347
    .line 348
    invoke-virtual {v5}, Lcc/e0;->M0()Lcc/c1;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    invoke-interface {v7}, Lcc/c1;->n()Lma/g;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    if-nez v7, :cond_d

    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_d
    invoke-virtual {v5}, Lcc/e0;->M0()Lcc/c1;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    invoke-interface {v7}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    invoke-static {v7, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    check-cast v7, Ljava/lang/Iterable;

    .line 371
    .line 372
    new-instance v9, Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-static {v7}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 375
    .line 376
    .line 377
    move-result v10

    .line 378
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    .line 380
    .line 381
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 386
    .line 387
    .line 388
    move-result v10

    .line 389
    if-eqz v10, :cond_11

    .line 390
    .line 391
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    check-cast v10, Lma/w0;

    .line 396
    .line 397
    invoke-virtual {v3}, Lcc/e0;->K0()Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object v11

    .line 401
    invoke-interface {v10}, Lma/w0;->getIndex()I

    .line 402
    .line 403
    .line 404
    move-result v13

    .line 405
    invoke-static {v13, v11}, Lm9/t;->d1(ILjava/util/List;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v11

    .line 409
    check-cast v11, Lcc/i1;

    .line 410
    .line 411
    if-eqz v4, :cond_e

    .line 412
    .line 413
    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v13

    .line 417
    if-eqz v13, :cond_e

    .line 418
    .line 419
    const/4 v13, 0x1

    .line 420
    goto :goto_8

    .line 421
    :cond_e
    const/4 v13, 0x0

    .line 422
    :goto_8
    if-eqz v11, :cond_f

    .line 423
    .line 424
    if-nez v13, :cond_f

    .line 425
    .line 426
    invoke-virtual/range {p1 .. p1}, Lcc/p1;->g()Lcc/l1;

    .line 427
    .line 428
    .line 429
    move-result-object v13

    .line 430
    invoke-interface {v11}, Lcc/i1;->getType()Lcc/e0;

    .line 431
    .line 432
    .line 433
    move-result-object v14

    .line 434
    invoke-static {v14, v12}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v13, v14}, Lcc/l1;->d(Lcc/e0;)Lcc/i1;

    .line 438
    .line 439
    .line 440
    move-result-object v13

    .line 441
    if-nez v13, :cond_10

    .line 442
    .line 443
    :cond_f
    new-instance v11, Lcc/s0;

    .line 444
    .line 445
    invoke-direct {v11, v10}, Lcc/s0;-><init>(Lma/w0;)V

    .line 446
    .line 447
    .line 448
    :cond_10
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    goto :goto_7

    .line 452
    :cond_11
    const/4 v10, 0x0

    .line 453
    const/4 v11, 0x2

    .line 454
    invoke-static {v5, v9, v10, v11}, Lcc/n1;->d(Lcc/m0;Ljava/util/List;Lcc/a1;I)Lcc/m0;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    goto :goto_a

    .line 459
    :cond_12
    :goto_9
    move-object v3, v5

    .line 460
    :goto_a
    invoke-static {v3, v6}, Lc5/v;->v(Lcc/s1;Lcc/e0;)Lcc/s1;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    sget-object v4, Lcc/t1;->e:Lcc/t1;

    .line 465
    .line 466
    invoke-virtual {v1, v3, v4}, Lcc/p1;->i(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    goto :goto_c

    .line 471
    :cond_13
    new-instance v1, Lj7/p;

    .line 472
    .line 473
    invoke-direct {v1}, Lj7/p;-><init>()V

    .line 474
    .line 475
    .line 476
    throw v1

    .line 477
    :cond_14
    instance-of v3, v4, Lma/w0;

    .line 478
    .line 479
    if-eqz v3, :cond_19

    .line 480
    .line 481
    invoke-virtual/range {p3 .. p3}, Lcc/x;->c()Ljava/util/Set;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    if-eqz v3, :cond_15

    .line 486
    .line 487
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    const/4 v5, 0x1

    .line 492
    if-ne v3, v5, :cond_15

    .line 493
    .line 494
    const/4 v7, 0x1

    .line 495
    goto :goto_b

    .line 496
    :cond_15
    const/4 v7, 0x0

    .line 497
    :goto_b
    if-eqz v7, :cond_18

    .line 498
    .line 499
    invoke-virtual/range {p3 .. p3}, Lcc/x;->a()Lcc/m0;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    if-eqz v1, :cond_16

    .line 504
    .line 505
    invoke-static {v1}, Lc5/y;->A(Lcc/e0;)Lcc/s1;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    if-nez v1, :cond_17

    .line 510
    .line 511
    :cond_16
    iget-object v1, v0, Lcc/f1;->c:Ll9/j;

    .line 512
    .line 513
    invoke-virtual {v1}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    check-cast v1, Lec/f;

    .line 518
    .line 519
    :cond_17
    :goto_c
    invoke-virtual {v2, v1}, Ln9/f;->add(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    goto :goto_d

    .line 523
    :cond_18
    check-cast v4, Lma/w0;

    .line 524
    .line 525
    invoke-interface {v4}, Lma/w0;->getUpperBounds()Ljava/util/List;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    const-string v4, "declaration.upperBounds"

    .line 530
    .line 531
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    move-object/from16 v4, p3

    .line 535
    .line 536
    invoke-virtual {v0, v1, v3, v4}, Lcc/f1;->b(Lcc/p1;Ljava/util/List;Lcc/x;)Ln9/f;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v2, v1}, Ln9/f;->addAll(Ljava/util/Collection;)Z

    .line 541
    .line 542
    .line 543
    :cond_19
    :goto_d
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    :cond_1a
    iget-object v1, v2, Ln9/f;->a:Ln9/b;

    .line 547
    .line 548
    invoke-virtual {v1}, Ln9/b;->b()V

    .line 549
    .line 550
    .line 551
    const/4 v3, 0x1

    .line 552
    iput-boolean v3, v1, Ln9/b;->m:Z

    .line 553
    .line 554
    return-object v2
.end method
