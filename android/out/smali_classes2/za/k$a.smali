.class public final Lza/k$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/k;-><init>(Lp4/g7;Lma/e;Lcb/g;ZLza/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/List<",
        "+",
        "Lma/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/k;

.field public final synthetic b:Lp4/g7;


# direct methods
.method public constructor <init>(Lp4/g7;Lza/k;)V
    .locals 0

    iput-object p2, p0, Lza/k$a;->a:Lza/k;

    iput-object p1, p0, Lza/k$a;->b:Lp4/g7;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v8, v0, Lza/k$a;->a:Lza/k;

    .line 4
    .line 5
    iget-object v1, v8, Lza/k;->o:Lcb/g;

    .line 6
    .line 7
    invoke-interface {v1}, Lcb/g;->k()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v9, 0x0

    .line 29
    iget-object v10, v8, Lza/o;->b:Lp4/g7;

    .line 30
    .line 31
    iget-object v11, v8, Lza/k;->n:Lma/e;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcb/k;

    .line 40
    .line 41
    invoke-static {v10, v3}, La6/a;->v(Lp4/g7;Lcb/d;)Lya/e;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object v5, v10, Lp4/g7;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v5, Lya/c;

    .line 48
    .line 49
    iget-object v5, v5, Lya/c;->j:Lbb/b;

    .line 50
    .line 51
    invoke-interface {v5, v3}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v11, v4, v9, v5}, Lxa/b;->X0(Lma/e;Lna/h;ZLbb/a;)Lxa/b;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v11}, Lma/e;->s()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    iget-object v6, v10, Lp4/g7;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v6, Ll9/e;

    .line 70
    .line 71
    iget-object v7, v10, Lp4/g7;->a:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v7, Lya/c;

    .line 74
    .line 75
    new-instance v12, Lya/g;

    .line 76
    .line 77
    invoke-direct {v12, v10, v4, v3, v5}, Lya/g;-><init>(Lp4/g7;Lma/j;Lcb/y;I)V

    .line 78
    .line 79
    .line 80
    new-instance v5, Lp4/g7;

    .line 81
    .line 82
    invoke-direct {v5, v7, v12, v6}, Lp4/g7;-><init>(Lya/c;Lya/j;Ll9/e;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v3}, Lcb/k;->g()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-static {v5, v4, v6}, Lza/o;->u(Lp4/g7;Lpa/x;Ljava/util/List;)Lza/o$b;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-interface {v11}, Lma/e;->s()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    const-string v10, "classDescriptor.declaredTypeParameters"

    .line 98
    .line 99
    invoke-static {v7, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    check-cast v7, Ljava/util/Collection;

    .line 103
    .line 104
    invoke-interface {v3}, Lcb/y;->getTypeParameters()Ljava/util/ArrayList;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    new-instance v12, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-static {v10}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    if-eqz v13, :cond_0

    .line 126
    .line 127
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    check-cast v13, Lcb/x;

    .line 132
    .line 133
    iget-object v14, v5, Lp4/g7;->b:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v14, Lya/j;

    .line 136
    .line 137
    invoke-interface {v14, v13}, Lya/j;->a(Lcb/x;)Lma/w0;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    invoke-static {v13}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_0
    invoke-static {v12, v7}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-interface {v3}, Lcb/r;->getVisibility()Lma/e1;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-static {v3}, Lva/c0;->a(Lma/e1;)Lma/q;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    iget-object v10, v6, Lza/o$b;->a:Ljava/util/List;

    .line 161
    .line 162
    invoke-virtual {v4, v10, v3, v7}, Lpa/l;->W0(Ljava/util/List;Lma/q;Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v9}, Lxa/b;->Q0(Z)V

    .line 166
    .line 167
    .line 168
    iget-boolean v3, v6, Lza/o$b;->b:Z

    .line 169
    .line 170
    invoke-virtual {v4, v3}, Lxa/b;->R0(Z)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v11}, Lma/e;->q()Lcc/m0;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v4, v3}, Lpa/x;->S0(Lcc/m0;)V

    .line 178
    .line 179
    .line 180
    iget-object v3, v5, Lp4/g7;->a:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v3, Lya/c;

    .line 183
    .line 184
    iget-object v3, v3, Lya/c;->g:Lwa/h;

    .line 185
    .line 186
    check-cast v3, Lwa/h$a;

    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_1
    iget-object v1, v8, Lza/k;->o:Lcb/g;

    .line 197
    .line 198
    invoke-interface {v1}, Lcb/g;->r()Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    sget-object v4, Lna/h$a;->a:Lna/h$a$a;

    .line 203
    .line 204
    const-string v7, "PROTECTED_AND_PACKAGE"

    .line 205
    .line 206
    const-string v6, "classDescriptor.visibility"

    .line 207
    .line 208
    const/4 v15, 0x2

    .line 209
    const/4 v14, 0x0

    .line 210
    const/4 v13, 0x1

    .line 211
    iget-object v12, v0, Lza/k$a;->b:Lp4/g7;

    .line 212
    .line 213
    if-eqz v3, :cond_8

    .line 214
    .line 215
    iget-object v3, v10, Lp4/g7;->a:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v3, Lya/c;

    .line 218
    .line 219
    iget-object v3, v3, Lya/c;->j:Lbb/b;

    .line 220
    .line 221
    invoke-interface {v3, v1}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-static {v11, v4, v13, v3}, Lxa/b;->X0(Lma/e;Lna/h;ZLbb/a;)Lxa/b;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-interface {v1}, Lcb/g;->m()Ljava/util/ArrayList;

    .line 230
    .line 231
    .line 232
    move-result-object v16

    .line 233
    new-instance v5, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .line 241
    .line 242
    const/4 v13, 0x6

    .line 243
    invoke-static {v15, v9, v9, v14, v13}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object v24

    .line 251
    const/16 v16, 0x0

    .line 252
    .line 253
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    if-eqz v13, :cond_3

    .line 258
    .line 259
    add-int/lit8 v25, v16, 0x1

    .line 260
    .line 261
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v13

    .line 265
    check-cast v13, Lcb/v;

    .line 266
    .line 267
    iget-object v14, v10, Lp4/g7;->e:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v14, Lab/d;

    .line 270
    .line 271
    invoke-interface {v13}, Lcb/v;->getType()Lcb/w;

    .line 272
    .line 273
    .line 274
    move-result-object v15

    .line 275
    invoke-virtual {v14, v15, v0}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 276
    .line 277
    .line 278
    move-result-object v15

    .line 279
    invoke-interface {v13}, Lcb/v;->a()Z

    .line 280
    .line 281
    .line 282
    move-result v14

    .line 283
    if-eqz v14, :cond_2

    .line 284
    .line 285
    iget-object v14, v10, Lp4/g7;->a:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v14, Lya/c;

    .line 288
    .line 289
    iget-object v14, v14, Lya/c;->o:Lma/b0;

    .line 290
    .line 291
    invoke-interface {v14}, Lma/b0;->m()Lja/k;

    .line 292
    .line 293
    .line 294
    move-result-object v14

    .line 295
    invoke-virtual {v14, v15}, Lja/k;->g(Lcc/e0;)Lcc/e0;

    .line 296
    .line 297
    .line 298
    move-result-object v14

    .line 299
    move-object/from16 v22, v14

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_2
    const/16 v22, 0x0

    .line 303
    .line 304
    :goto_3
    new-instance v14, Lpa/v0;

    .line 305
    .line 306
    const/16 v20, 0x0

    .line 307
    .line 308
    invoke-interface {v13}, Lcb/s;->getName()Llb/f;

    .line 309
    .line 310
    .line 311
    move-result-object v21

    .line 312
    const/16 v23, 0x0

    .line 313
    .line 314
    const/16 v26, 0x0

    .line 315
    .line 316
    const/16 v27, 0x0

    .line 317
    .line 318
    iget-object v9, v10, Lp4/g7;->a:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v9, Lya/c;

    .line 321
    .line 322
    iget-object v9, v9, Lya/c;->j:Lbb/b;

    .line 323
    .line 324
    invoke-interface {v9, v13}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 325
    .line 326
    .line 327
    move-result-object v9

    .line 328
    move-object v13, v12

    .line 329
    move-object v12, v14

    .line 330
    move-object/from16 v28, v0

    .line 331
    .line 332
    move-object v0, v13

    .line 333
    move-object v13, v3

    .line 334
    move-object/from16 v29, v8

    .line 335
    .line 336
    move-object v8, v14

    .line 337
    move-object/from16 v14, v20

    .line 338
    .line 339
    move-object/from16 v18, v15

    .line 340
    .line 341
    move/from16 v15, v16

    .line 342
    .line 343
    move-object/from16 v16, v4

    .line 344
    .line 345
    move-object/from16 v17, v21

    .line 346
    .line 347
    move/from16 v19, v23

    .line 348
    .line 349
    move/from16 v20, v26

    .line 350
    .line 351
    move/from16 v21, v27

    .line 352
    .line 353
    move-object/from16 v23, v9

    .line 354
    .line 355
    invoke-direct/range {v12 .. v23}, Lpa/v0;-><init>(Lma/a;Lma/a1;ILna/h;Llb/f;Lcc/e0;ZZZLcc/e0;Lma/r0;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-object v12, v0

    .line 362
    move/from16 v16, v25

    .line 363
    .line 364
    move-object/from16 v0, v28

    .line 365
    .line 366
    move-object/from16 v8, v29

    .line 367
    .line 368
    const/4 v9, 0x0

    .line 369
    const/4 v14, 0x0

    .line 370
    const/4 v15, 0x2

    .line 371
    goto :goto_2

    .line 372
    :cond_3
    move-object/from16 v29, v8

    .line 373
    .line 374
    move-object v0, v12

    .line 375
    const/4 v8, 0x0

    .line 376
    invoke-virtual {v3, v8}, Lxa/b;->R0(Z)V

    .line 377
    .line 378
    .line 379
    invoke-interface {v11}, Lma/e;->getVisibility()Lma/q;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    invoke-static {v8, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    sget-object v9, Lva/o;->b:Lva/o$b;

    .line 387
    .line 388
    invoke-static {v8, v9}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v9

    .line 392
    if-eqz v9, :cond_4

    .line 393
    .line 394
    sget-object v8, Lva/o;->c:Lva/o$c;

    .line 395
    .line 396
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    :cond_4
    invoke-virtual {v3, v5, v8}, Lpa/l;->V0(Ljava/util/List;Lma/q;)V

    .line 400
    .line 401
    .line 402
    const/4 v5, 0x0

    .line 403
    invoke-virtual {v3, v5}, Lxa/b;->Q0(Z)V

    .line 404
    .line 405
    .line 406
    invoke-interface {v11}, Lma/e;->q()Lcc/m0;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    invoke-virtual {v3, v5}, Lpa/x;->S0(Lcc/m0;)V

    .line 411
    .line 412
    .line 413
    const/4 v5, 0x2

    .line 414
    invoke-static {v3, v5}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v8

    .line 418
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 419
    .line 420
    .line 421
    move-result v9

    .line 422
    if-eqz v9, :cond_5

    .line 423
    .line 424
    goto :goto_4

    .line 425
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 426
    .line 427
    .line 428
    move-result-object v9

    .line 429
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 430
    .line 431
    .line 432
    move-result v12

    .line 433
    if-eqz v12, :cond_7

    .line 434
    .line 435
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v12

    .line 439
    check-cast v12, Lma/d;

    .line 440
    .line 441
    invoke-static {v12, v5}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v12

    .line 445
    invoke-static {v12, v8}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v12

    .line 449
    if-eqz v12, :cond_6

    .line 450
    .line 451
    const/4 v13, 0x0

    .line 452
    goto :goto_5

    .line 453
    :cond_7
    :goto_4
    const/4 v13, 0x1

    .line 454
    :goto_5
    if-eqz v13, :cond_9

    .line 455
    .line 456
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    iget-object v3, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v3, Lya/c;

    .line 462
    .line 463
    iget-object v3, v3, Lya/c;->g:Lwa/h;

    .line 464
    .line 465
    check-cast v3, Lwa/h$a;

    .line 466
    .line 467
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    goto :goto_6

    .line 471
    :cond_8
    move-object/from16 v29, v8

    .line 472
    .line 473
    move-object v0, v12

    .line 474
    const/4 v5, 0x2

    .line 475
    :cond_9
    :goto_6
    iget-object v3, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v3, Lya/c;

    .line 478
    .line 479
    iget-object v3, v3, Lya/c;->x:Ltb/d;

    .line 480
    .line 481
    invoke-interface {v3, v0, v11, v2}, Ltb/d;->g(Lp4/g7;Lma/e;Ljava/util/ArrayList;)V

    .line 482
    .line 483
    .line 484
    iget-object v3, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v3, Lya/c;

    .line 487
    .line 488
    iget-object v8, v3, Lya/c;->r:Ldb/t;

    .line 489
    .line 490
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    if-eqz v3, :cond_14

    .line 495
    .line 496
    invoke-interface {v1}, Lcb/g;->p()Z

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    invoke-interface {v1}, Lcb/g;->E()Z

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    if-nez v3, :cond_a

    .line 505
    .line 506
    invoke-interface {v1}, Lcb/g;->t()V

    .line 507
    .line 508
    .line 509
    :cond_a
    if-nez v2, :cond_b

    .line 510
    .line 511
    move-object/from16 v16, v0

    .line 512
    .line 513
    const/4 v14, 0x0

    .line 514
    goto/16 :goto_c

    .line 515
    .line 516
    :cond_b
    iget-object v3, v10, Lp4/g7;->a:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast v3, Lya/c;

    .line 519
    .line 520
    iget-object v3, v3, Lya/c;->j:Lbb/b;

    .line 521
    .line 522
    invoke-interface {v3, v1}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    const/4 v9, 0x1

    .line 527
    invoke-static {v11, v4, v9, v3}, Lxa/b;->X0(Lma/e;Lna/h;ZLbb/a;)Lxa/b;

    .line 528
    .line 529
    .line 530
    move-result-object v14

    .line 531
    if-eqz v2, :cond_11

    .line 532
    .line 533
    invoke-interface {v1}, Lcb/g;->L()Ljava/util/Collection;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    new-instance v12, Ljava/util/ArrayList;

    .line 538
    .line 539
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 544
    .line 545
    .line 546
    const/4 v2, 0x6

    .line 547
    const/4 v3, 0x0

    .line 548
    const/4 v4, 0x0

    .line 549
    invoke-static {v5, v9, v4, v3, v2}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    .line 550
    .line 551
    .line 552
    move-result-object v13

    .line 553
    check-cast v1, Ljava/lang/Iterable;

    .line 554
    .line 555
    new-instance v2, Ljava/util/ArrayList;

    .line 556
    .line 557
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .line 559
    .line 560
    new-instance v9, Ljava/util/ArrayList;

    .line 561
    .line 562
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .line 564
    .line 565
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    if-eqz v3, :cond_d

    .line 574
    .line 575
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    move-object v4, v3

    .line 580
    check-cast v4, Lcb/q;

    .line 581
    .line 582
    invoke-interface {v4}, Lcb/s;->getName()Llb/f;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    sget-object v5, Lva/x;->b:Llb/f;

    .line 587
    .line 588
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    if-eqz v4, :cond_c

    .line 593
    .line 594
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    goto :goto_7

    .line 598
    :cond_c
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    goto :goto_7

    .line 602
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 603
    .line 604
    .line 605
    invoke-static {v2}, Lm9/t;->c1(Ljava/util/List;)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    move-object v15, v1

    .line 610
    check-cast v15, Lcb/q;

    .line 611
    .line 612
    if-eqz v15, :cond_f

    .line 613
    .line 614
    invoke-interface {v15}, Lcb/q;->h()Lsa/e0;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    instance-of v2, v1, Lcb/f;

    .line 619
    .line 620
    if-eqz v2, :cond_e

    .line 621
    .line 622
    new-instance v2, Ll9/g;

    .line 623
    .line 624
    iget-object v3, v10, Lp4/g7;->e:Ljava/lang/Object;

    .line 625
    .line 626
    check-cast v3, Lab/d;

    .line 627
    .line 628
    check-cast v1, Lcb/f;

    .line 629
    .line 630
    const/4 v4, 0x1

    .line 631
    invoke-virtual {v3, v1, v13, v4}, Lab/d;->c(Lcb/f;Lab/a;Z)Lcc/s1;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    iget-object v4, v10, Lp4/g7;->e:Ljava/lang/Object;

    .line 636
    .line 637
    check-cast v4, Lab/d;

    .line 638
    .line 639
    invoke-interface {v1}, Lcb/f;->J()Lsa/e0;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    invoke-virtual {v4, v1, v13}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    invoke-direct {v2, v3, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 648
    .line 649
    .line 650
    goto :goto_8

    .line 651
    :cond_e
    new-instance v2, Ll9/g;

    .line 652
    .line 653
    iget-object v3, v10, Lp4/g7;->e:Ljava/lang/Object;

    .line 654
    .line 655
    check-cast v3, Lab/d;

    .line 656
    .line 657
    invoke-virtual {v3, v1, v13}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    const/4 v3, 0x0

    .line 662
    invoke-direct {v2, v1, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    :goto_8
    iget-object v1, v2, Ll9/g;->a:Ljava/lang/Object;

    .line 666
    .line 667
    move-object/from16 v16, v1

    .line 668
    .line 669
    check-cast v16, Lcc/e0;

    .line 670
    .line 671
    iget-object v1, v2, Ll9/g;->b:Ljava/lang/Object;

    .line 672
    .line 673
    move-object/from16 v17, v1

    .line 674
    .line 675
    check-cast v17, Lcc/e0;

    .line 676
    .line 677
    const/4 v4, 0x0

    .line 678
    move-object/from16 v1, v29

    .line 679
    .line 680
    move-object v2, v12

    .line 681
    move-object v3, v14

    .line 682
    move-object v5, v15

    .line 683
    move-object/from16 v30, v6

    .line 684
    .line 685
    move-object/from16 v6, v16

    .line 686
    .line 687
    move-object/from16 v16, v0

    .line 688
    .line 689
    move-object v0, v7

    .line 690
    move-object/from16 v7, v17

    .line 691
    .line 692
    invoke-virtual/range {v1 .. v7}, Lza/k;->x(Ljava/util/ArrayList;Lxa/b;ILcb/q;Lcc/e0;Lcc/e0;)V

    .line 693
    .line 694
    .line 695
    goto :goto_9

    .line 696
    :cond_f
    move-object/from16 v16, v0

    .line 697
    .line 698
    move-object/from16 v30, v6

    .line 699
    .line 700
    move-object v0, v7

    .line 701
    :goto_9
    if-eqz v15, :cond_10

    .line 702
    .line 703
    const/4 v15, 0x1

    .line 704
    goto :goto_a

    .line 705
    :cond_10
    const/4 v15, 0x0

    .line 706
    :goto_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 707
    .line 708
    .line 709
    move-result-object v9

    .line 710
    const/4 v1, 0x0

    .line 711
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 712
    .line 713
    .line 714
    move-result v2

    .line 715
    if-eqz v2, :cond_12

    .line 716
    .line 717
    add-int/lit8 v17, v1, 0x1

    .line 718
    .line 719
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v2

    .line 723
    move-object v5, v2

    .line 724
    check-cast v5, Lcb/q;

    .line 725
    .line 726
    iget-object v2, v10, Lp4/g7;->e:Ljava/lang/Object;

    .line 727
    .line 728
    check-cast v2, Lab/d;

    .line 729
    .line 730
    invoke-interface {v5}, Lcb/q;->h()Lsa/e0;

    .line 731
    .line 732
    .line 733
    move-result-object v3

    .line 734
    invoke-virtual {v2, v3, v13}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 735
    .line 736
    .line 737
    move-result-object v6

    .line 738
    add-int v4, v1, v15

    .line 739
    .line 740
    const/4 v7, 0x0

    .line 741
    move-object/from16 v1, v29

    .line 742
    .line 743
    move-object v2, v12

    .line 744
    move-object v3, v14

    .line 745
    invoke-virtual/range {v1 .. v7}, Lza/k;->x(Ljava/util/ArrayList;Lxa/b;ILcb/q;Lcc/e0;Lcc/e0;)V

    .line 746
    .line 747
    .line 748
    move/from16 v1, v17

    .line 749
    .line 750
    goto :goto_b

    .line 751
    :cond_11
    move-object/from16 v16, v0

    .line 752
    .line 753
    move-object/from16 v30, v6

    .line 754
    .line 755
    move-object v0, v7

    .line 756
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 757
    .line 758
    .line 759
    move-result-object v12

    .line 760
    :cond_12
    const/4 v1, 0x0

    .line 761
    invoke-virtual {v14, v1}, Lxa/b;->R0(Z)V

    .line 762
    .line 763
    .line 764
    invoke-interface {v11}, Lma/e;->getVisibility()Lma/q;

    .line 765
    .line 766
    .line 767
    move-result-object v1

    .line 768
    move-object/from16 v2, v30

    .line 769
    .line 770
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    sget-object v2, Lva/o;->b:Lva/o$b;

    .line 774
    .line 775
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    move-result v2

    .line 779
    if-eqz v2, :cond_13

    .line 780
    .line 781
    sget-object v1, Lva/o;->c:Lva/o$c;

    .line 782
    .line 783
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    :cond_13
    invoke-virtual {v14, v12, v1}, Lpa/l;->V0(Ljava/util/List;Lma/q;)V

    .line 787
    .line 788
    .line 789
    const/4 v0, 0x1

    .line 790
    invoke-virtual {v14, v0}, Lxa/b;->Q0(Z)V

    .line 791
    .line 792
    .line 793
    invoke-interface {v11}, Lma/e;->q()Lcc/m0;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    invoke-virtual {v14, v0}, Lpa/x;->S0(Lcc/m0;)V

    .line 798
    .line 799
    .line 800
    iget-object v0, v10, Lp4/g7;->a:Ljava/lang/Object;

    .line 801
    .line 802
    check-cast v0, Lya/c;

    .line 803
    .line 804
    iget-object v0, v0, Lya/c;->g:Lwa/h;

    .line 805
    .line 806
    check-cast v0, Lwa/h$a;

    .line 807
    .line 808
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 809
    .line 810
    .line 811
    :goto_c
    invoke-static {v14}, Lb8/f;->U(Ljava/lang/Object;)Ljava/util/List;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    move-object v2, v0

    .line 816
    check-cast v2, Ljava/util/Collection;

    .line 817
    .line 818
    move-object/from16 v0, v16

    .line 819
    .line 820
    :cond_14
    invoke-virtual {v8, v0, v2}, Ldb/t;->c(Lp4/g7;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    return-object v0
.end method
