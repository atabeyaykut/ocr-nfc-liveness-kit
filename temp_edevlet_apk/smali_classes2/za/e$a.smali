.class public final Lza/e$a;
.super Lcc/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lza/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final c:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lza/e;


# direct methods
.method public constructor <init>(Lza/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lza/e$a;->d:Lza/e;

    .line 2
    .line 3
    iget-object v0, p1, Lza/e;->l:Lp4/g7;

    .line 4
    .line 5
    invoke-virtual {v0}, Lp4/g7;->b()Lbc/l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcc/b;-><init>(Lbc/l;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lza/e;->l:Lp4/g7;

    .line 13
    .line 14
    invoke-virtual {v0}, Lp4/g7;->b()Lbc/l;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lza/e$a$a;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lza/e$a$a;-><init>(Lza/e;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lza/e$a;->c:Lbc/i;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final d()Ljava/util/Collection;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lza/e$a;->d:Lza/e;

    .line 4
    .line 5
    iget-object v2, v1, Lza/e;->j:Lcb/g;

    .line 6
    .line 7
    invoke-interface {v2}, Lcb/g;->l()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sget-object v6, Lva/x;->n:Llb/c;

    .line 27
    .line 28
    const-string v7, "PURELY_IMPLEMENTS_ANNOTATION"

    .line 29
    .line 30
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v7, v1, Lza/e;->y:Lya/e;

    .line 34
    .line 35
    invoke-virtual {v7, v6}, Lya/e;->n(Llb/c;)Lna/c;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x1

    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :cond_0
    invoke-interface {v6}, Lna/c;->a()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Ljava/lang/Iterable;

    .line 54
    .line 55
    invoke-static {v6}, Lm9/t;->q1(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    instance-of v9, v6, Lqb/w;

    .line 60
    .line 61
    if-eqz v9, :cond_1

    .line 62
    .line 63
    check-cast v6, Lqb/w;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move-object v6, v7

    .line 67
    :goto_0
    if-eqz v6, :cond_b

    .line 68
    .line 69
    iget-object v6, v6, Lqb/g;->a:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v6, Ljava/lang/String;

    .line 72
    .line 73
    if-nez v6, :cond_2

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_2
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x1

    .line 78
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    const/4 v12, 0x3

    .line 83
    if-ge v9, v11, :cond_8

    .line 84
    .line 85
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    invoke-static {v10}, Lg/d;->c(I)I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    const/4 v14, 0x2

    .line 94
    if-eqz v13, :cond_5

    .line 95
    .line 96
    if-eq v13, v8, :cond_3

    .line 97
    .line 98
    if-eq v13, v14, :cond_5

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/16 v13, 0x2e

    .line 102
    .line 103
    if-ne v11, v13, :cond_4

    .line 104
    .line 105
    const/4 v10, 0x3

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-static {v11}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    if-nez v11, :cond_7

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    invoke-static {v11}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-nez v10, :cond_6

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    const/4 v10, 0x2

    .line 122
    :cond_7
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_8
    if-eq v10, v12, :cond_9

    .line 126
    .line 127
    const/4 v9, 0x1

    .line 128
    goto :goto_4

    .line 129
    :cond_9
    :goto_3
    const/4 v9, 0x0

    .line 130
    :goto_4
    if-nez v9, :cond_a

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_a
    new-instance v9, Llb/c;

    .line 134
    .line 135
    invoke-direct {v9, v6}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_b
    :goto_5
    move-object v9, v7

    .line 140
    :goto_6
    if-eqz v9, :cond_d

    .line 141
    .line 142
    invoke-virtual {v9}, Llb/c;->d()Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-nez v6, :cond_c

    .line 147
    .line 148
    sget-object v6, Lja/o;->j:Llb/f;

    .line 149
    .line 150
    invoke-virtual {v9, v6}, Llb/c;->h(Llb/f;)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_c

    .line 155
    .line 156
    const/4 v6, 0x1

    .line 157
    goto :goto_7

    .line 158
    :cond_c
    const/4 v6, 0x0

    .line 159
    :goto_7
    if-eqz v6, :cond_d

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_d
    move-object v9, v7

    .line 163
    :goto_8
    sget-object v6, Lcc/t1;->c:Lcc/t1;

    .line 164
    .line 165
    iget-object v15, v1, Lza/e;->l:Lp4/g7;

    .line 166
    .line 167
    if-nez v9, :cond_e

    .line 168
    .line 169
    sget-object v10, Lva/k;->a:Ljava/util/LinkedHashMap;

    .line 170
    .line 171
    invoke-static {v1}, Lsb/b;->g(Lma/j;)Llb/c;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    sget-object v11, Lva/k;->b:Ljava/util/Map;

    .line 176
    .line 177
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    check-cast v10, Llb/c;

    .line 182
    .line 183
    if-nez v10, :cond_f

    .line 184
    .line 185
    goto/16 :goto_c

    .line 186
    .line 187
    :cond_e
    move-object v10, v9

    .line 188
    :cond_f
    invoke-virtual {v15}, Lp4/g7;->a()Lma/b0;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    sget-object v12, Lua/c;->h:Lua/c;

    .line 193
    .line 194
    sget v13, Lsb/b;->a:I

    .line 195
    .line 196
    const-string v13, "<this>"

    .line 197
    .line 198
    invoke-static {v11, v13}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v10}, Llb/c;->d()Z

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10}, Llb/c;->e()Llb/c;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    const-string v14, "topLevelClassFqName.parent()"

    .line 209
    .line 210
    invoke-static {v13, v14}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v11, v13}, Lma/b0;->I0(Llb/c;)Lma/i0;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    invoke-interface {v11}, Lma/i0;->o()Lvb/i;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    invoke-virtual {v10}, Llb/c;->f()Llb/f;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    const-string v13, "topLevelClassFqName.shortName()"

    .line 226
    .line 227
    invoke-static {v10, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v11, v10, v12}, Lvb/l;->e(Llb/f;Lua/c;)Lma/g;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    instance-of v11, v10, Lma/e;

    .line 235
    .line 236
    if-eqz v11, :cond_10

    .line 237
    .line 238
    check-cast v10, Lma/e;

    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_10
    move-object v10, v7

    .line 242
    :goto_9
    if-nez v10, :cond_11

    .line 243
    .line 244
    goto/16 :goto_c

    .line 245
    .line 246
    :cond_11
    invoke-interface {v10}, Lma/g;->i()Lcc/c1;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    invoke-interface {v11}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 255
    .line 256
    .line 257
    move-result v11

    .line 258
    iget-object v12, v1, Lza/e;->s:Lza/e$a;

    .line 259
    .line 260
    invoke-virtual {v12}, Lza/e$a;->getParameters()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    const-string v13, "getTypeConstructor().parameters"

    .line 265
    .line 266
    invoke-static {v12, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 270
    .line 271
    .line 272
    move-result v13

    .line 273
    if-ne v13, v11, :cond_12

    .line 274
    .line 275
    check-cast v12, Ljava/lang/Iterable;

    .line 276
    .line 277
    new-instance v9, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-static {v12}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 280
    .line 281
    .line 282
    move-result v11

    .line 283
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    .line 285
    .line 286
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v12

    .line 294
    if-eqz v12, :cond_14

    .line 295
    .line 296
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v12

    .line 300
    check-cast v12, Lma/w0;

    .line 301
    .line 302
    new-instance v13, Lcc/k1;

    .line 303
    .line 304
    invoke-interface {v12}, Lma/g;->q()Lcc/m0;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    invoke-direct {v13, v12, v6}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    goto :goto_a

    .line 315
    :cond_12
    if-ne v13, v8, :cond_15

    .line 316
    .line 317
    if-le v11, v8, :cond_15

    .line 318
    .line 319
    if-nez v9, :cond_15

    .line 320
    .line 321
    new-instance v9, Lcc/k1;

    .line 322
    .line 323
    invoke-static {v12}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v12

    .line 327
    check-cast v12, Lma/w0;

    .line 328
    .line 329
    invoke-interface {v12}, Lma/g;->q()Lcc/m0;

    .line 330
    .line 331
    .line 332
    move-result-object v12

    .line 333
    invoke-direct {v9, v12, v6}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 334
    .line 335
    .line 336
    new-instance v12, Lca/d;

    .line 337
    .line 338
    invoke-direct {v12, v8, v11}, Lca/d;-><init>(II)V

    .line 339
    .line 340
    .line 341
    new-instance v11, Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-static {v12}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 344
    .line 345
    .line 346
    move-result v13

    .line 347
    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v12}, Lca/b;->iterator()Ljava/util/Iterator;

    .line 351
    .line 352
    .line 353
    move-result-object v12

    .line 354
    :goto_b
    move-object v13, v12

    .line 355
    check-cast v13, Lca/c;

    .line 356
    .line 357
    iget-boolean v13, v13, Lca/c;->c:Z

    .line 358
    .line 359
    if-eqz v13, :cond_13

    .line 360
    .line 361
    move-object v13, v12

    .line 362
    check-cast v13, Lm9/b0;

    .line 363
    .line 364
    invoke-virtual {v13}, Lm9/b0;->nextInt()I

    .line 365
    .line 366
    .line 367
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    goto :goto_b

    .line 371
    :cond_13
    move-object v9, v11

    .line 372
    :cond_14
    sget-object v11, Lcc/a1;->b:Lcc/a1$a;

    .line 373
    .line 374
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    sget-object v11, Lcc/a1;->c:Lcc/a1;

    .line 378
    .line 379
    invoke-static {v11, v10, v9}, Lcc/f0;->e(Lcc/a1;Lma/e;Ljava/util/List;)Lcc/m0;

    .line 380
    .line 381
    .line 382
    move-result-object v9

    .line 383
    goto :goto_d

    .line 384
    :cond_15
    :goto_c
    move-object v9, v7

    .line 385
    :goto_d
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 390
    .line 391
    .line 392
    move-result v10

    .line 393
    if-eqz v10, :cond_1b

    .line 394
    .line 395
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v10

    .line 399
    move-object v14, v10

    .line 400
    check-cast v14, Lcb/j;

    .line 401
    .line 402
    iget-object v10, v15, Lp4/g7;->e:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v10, Lab/d;

    .line 405
    .line 406
    const/4 v11, 0x7

    .line 407
    invoke-static {v8, v5, v5, v7, v11}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    .line 408
    .line 409
    .line 410
    move-result-object v11

    .line 411
    invoke-virtual {v10, v14, v11}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 412
    .line 413
    .line 414
    move-result-object v22

    .line 415
    iget-object v10, v15, Lp4/g7;->a:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v10, Lya/c;

    .line 418
    .line 419
    iget-object v13, v10, Lya/c;->r:Ldb/t;

    .line 420
    .line 421
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    new-instance v17, Ldb/v;

    .line 425
    .line 426
    const/4 v11, 0x0

    .line 427
    const/4 v12, 0x0

    .line 428
    sget-object v16, Lva/c;->e:Lva/c;

    .line 429
    .line 430
    const/16 v18, 0x1

    .line 431
    .line 432
    move-object/from16 v10, v17

    .line 433
    .line 434
    move-object/from16 v19, v13

    .line 435
    .line 436
    move-object v13, v15

    .line 437
    move-object v5, v14

    .line 438
    move-object/from16 v14, v16

    .line 439
    .line 440
    move-object v7, v15

    .line 441
    move/from16 v15, v18

    .line 442
    .line 443
    invoke-direct/range {v10 .. v15}, Ldb/v;-><init>(Lna/a;ZLp4/g7;Lva/c;Z)V

    .line 444
    .line 445
    .line 446
    sget-object v10, Lm9/v;->a:Lm9/v;

    .line 447
    .line 448
    const/16 v20, 0x0

    .line 449
    .line 450
    const/16 v21, 0x0

    .line 451
    .line 452
    move-object/from16 v16, v19

    .line 453
    .line 454
    move-object/from16 v18, v22

    .line 455
    .line 456
    move-object/from16 v19, v10

    .line 457
    .line 458
    invoke-virtual/range {v16 .. v21}, Ldb/t;->a(Ldb/v;Lcc/e0;Ljava/util/List;Ldb/w;Z)Lcc/e0;

    .line 459
    .line 460
    .line 461
    move-result-object v10

    .line 462
    if-nez v10, :cond_16

    .line 463
    .line 464
    move-object/from16 v10, v22

    .line 465
    .line 466
    :cond_16
    invoke-virtual {v10}, Lcc/e0;->M0()Lcc/c1;

    .line 467
    .line 468
    .line 469
    move-result-object v11

    .line 470
    invoke-interface {v11}, Lcc/c1;->n()Lma/g;

    .line 471
    .line 472
    .line 473
    move-result-object v11

    .line 474
    instance-of v11, v11, Lma/d0$b;

    .line 475
    .line 476
    if-eqz v11, :cond_17

    .line 477
    .line 478
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    :cond_17
    invoke-virtual {v10}, Lcc/e0;->M0()Lcc/c1;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    if-eqz v9, :cond_18

    .line 486
    .line 487
    invoke-virtual {v9}, Lcc/e0;->M0()Lcc/c1;

    .line 488
    .line 489
    .line 490
    move-result-object v11

    .line 491
    goto :goto_f

    .line 492
    :cond_18
    const/4 v11, 0x0

    .line 493
    :goto_f
    invoke-static {v5, v11}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    if-eqz v5, :cond_19

    .line 498
    .line 499
    goto :goto_10

    .line 500
    :cond_19
    invoke-static {v10}, Lja/k;->x(Lcc/e0;)Z

    .line 501
    .line 502
    .line 503
    move-result v5

    .line 504
    if-nez v5, :cond_1a

    .line 505
    .line 506
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    :cond_1a
    :goto_10
    move-object v15, v7

    .line 510
    const/4 v5, 0x0

    .line 511
    const/4 v7, 0x0

    .line 512
    goto :goto_e

    .line 513
    :cond_1b
    move-object v7, v15

    .line 514
    iget-object v2, v1, Lza/e;->k:Lma/e;

    .line 515
    .line 516
    if-eqz v2, :cond_1c

    .line 517
    .line 518
    invoke-static {v2, v1}, Lla/v;->a(Lma/e;Lpa/b;)Lcc/d1;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    invoke-static {v5}, Lcc/p1;->e(Lcc/l1;)Lcc/p1;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    invoke-interface {v2}, Lma/e;->q()Lcc/m0;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    invoke-virtual {v5, v2, v6}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    goto :goto_11

    .line 535
    :cond_1c
    const/4 v2, 0x0

    .line 536
    :goto_11
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/clearcut/d0;->f(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 537
    .line 538
    .line 539
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/clearcut/d0;->f(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    xor-int/2addr v2, v8

    .line 547
    if-eqz v2, :cond_1e

    .line 548
    .line 549
    iget-object v2, v7, Lp4/g7;->a:Ljava/lang/Object;

    .line 550
    .line 551
    check-cast v2, Lya/c;

    .line 552
    .line 553
    iget-object v2, v2, Lya/c;->f:Lyb/u;

    .line 554
    .line 555
    new-instance v5, Ljava/util/ArrayList;

    .line 556
    .line 557
    invoke-static {v4}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 558
    .line 559
    .line 560
    move-result v6

    .line 561
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 569
    .line 570
    .line 571
    move-result v6

    .line 572
    if-eqz v6, :cond_1d

    .line 573
    .line 574
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v6

    .line 578
    check-cast v6, Lcb/w;

    .line 579
    .line 580
    const-string v9, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.structure.JavaClassifierType"

    .line 581
    .line 582
    invoke-static {v6, v9}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    check-cast v6, Lcb/j;

    .line 586
    .line 587
    invoke-interface {v6}, Lcb/j;->j()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v6

    .line 591
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    goto :goto_12

    .line 595
    :cond_1d
    invoke-interface {v2, v1, v5}, Lyb/u;->h(Lpa/b;Ljava/util/ArrayList;)V

    .line 596
    .line 597
    .line 598
    :cond_1e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    xor-int/2addr v1, v8

    .line 603
    if-eqz v1, :cond_1f

    .line 604
    .line 605
    invoke-static {v3}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    goto :goto_13

    .line 610
    :cond_1f
    invoke-virtual {v7}, Lp4/g7;->a()Lma/b0;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    invoke-interface {v1}, Lma/b0;->m()Lja/k;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    invoke-virtual {v1}, Lja/k;->f()Lcc/m0;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    invoke-static {v1}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    :goto_13
    check-cast v1, Ljava/util/Collection;

    .line 627
    .line 628
    return-object v1
.end method

.method public final g()Lma/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Lza/e$a;->d:Lza/e;

    .line 2
    .line 3
    iget-object v0, v0, Lza/e;->l:Lp4/g7;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lya/c;

    .line 8
    .line 9
    iget-object v0, v0, Lya/c;->m:Lma/u0;

    .line 10
    .line 11
    return-object v0
.end method

.method public final getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lza/e$a;->c:Lbc/i;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final n()Lma/g;
    .locals 1

    iget-object v0, p0, Lza/e$a;->d:Lza/e;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p()Lma/e;
    .locals 1

    iget-object v0, p0, Lza/e$a;->d:Lza/e;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lza/e$a;->d:Lza/e;

    invoke-virtual {v0}, Lpa/b;->getName()Llb/f;

    move-result-object v0

    invoke-virtual {v0}, Llb/f;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
