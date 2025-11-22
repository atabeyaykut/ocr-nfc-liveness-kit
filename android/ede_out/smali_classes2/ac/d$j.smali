.class public final Lac/d$j;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lac/d;-><init>(Lyb/n;Lgb/b;Lib/c;Lib/a;Lma/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lma/y0<",
        "Lcc/m0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lac/d;


# direct methods
.method public constructor <init>(Lac/d;)V
    .locals 0

    iput-object p1, p0, Lac/d$j;->a:Lac/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lac/d$j;->a:Lac/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lac/d;->isInline()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-object v5, v0, Lac/d;->m:Lyb/n;

    .line 14
    .line 15
    iget-object v6, v0, Lac/d;->e:Lgb/b;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lac/d;->F()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_0
    invoke-virtual {v0}, Lac/d;->F()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/16 v8, 0x20

    .line 32
    .line 33
    const/16 v9, 0x10

    .line 34
    .line 35
    const/16 v10, 0x8

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    iget v1, v6, Lgb/b;->c:I

    .line 40
    .line 41
    and-int/lit8 v11, v1, 0x8

    .line 42
    .line 43
    if-ne v11, v10, :cond_1

    .line 44
    .line 45
    const/4 v11, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v11, 0x0

    .line 48
    :goto_0
    if-nez v11, :cond_4

    .line 49
    .line 50
    and-int/lit8 v11, v1, 0x10

    .line 51
    .line 52
    if-ne v11, v9, :cond_2

    .line 53
    .line 54
    const/4 v11, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v11, 0x0

    .line 57
    :goto_1
    if-nez v11, :cond_4

    .line 58
    .line 59
    and-int/2addr v1, v8

    .line 60
    if-ne v1, v8, :cond_3

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    const/4 v1, 0x0

    .line 65
    :goto_2
    if-nez v1, :cond_4

    .line 66
    .line 67
    iget-object v1, v6, Lgb/b;->C:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-lez v1, :cond_4

    .line 74
    .line 75
    :goto_3
    move-object v3, v7

    .line 76
    goto/16 :goto_c

    .line 77
    .line 78
    :cond_4
    iget v1, v6, Lgb/b;->c:I

    .line 79
    .line 80
    and-int/2addr v1, v10

    .line 81
    if-ne v1, v10, :cond_5

    .line 82
    .line 83
    const/4 v1, 0x1

    .line 84
    goto :goto_4

    .line 85
    :cond_5
    const/4 v1, 0x0

    .line 86
    :goto_4
    if-eqz v1, :cond_6

    .line 87
    .line 88
    iget-object v1, v5, Lyb/n;->b:Lib/c;

    .line 89
    .line 90
    iget v10, v6, Lgb/b;->z:I

    .line 91
    .line 92
    invoke-static {v1, v10}, La6/a;->o(Lib/c;I)Llb/f;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    goto :goto_5

    .line 97
    :cond_6
    iget-object v1, v0, Lac/d;->f:Lib/a;

    .line 98
    .line 99
    const/4 v10, 0x5

    .line 100
    invoke-virtual {v1, v2, v10, v2}, Lib/a;->a(III)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_22

    .line 105
    .line 106
    invoke-virtual {v0}, Lac/d;->M()Lma/d;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_21

    .line 111
    .line 112
    invoke-interface {v1}, Lma/a;->g()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string v10, "constructor.valueParameters"

    .line 117
    .line 118
    invoke-static {v1, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Lm9/t;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Lma/a1;

    .line 126
    .line 127
    invoke-interface {v1}, Lma/j;->getName()Llb/f;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v10, "{\n                // Bef\u2026irst().name\n            }"

    .line 132
    .line 133
    invoke-static {v1, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :goto_5
    iget-object v10, v5, Lyb/n;->d:Lib/g;

    .line 137
    .line 138
    const-string v11, "typeTable"

    .line 139
    .line 140
    invoke-static {v10, v11}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget v11, v6, Lgb/b;->c:I

    .line 144
    .line 145
    and-int/lit8 v12, v11, 0x10

    .line 146
    .line 147
    if-ne v12, v9, :cond_7

    .line 148
    .line 149
    const/4 v9, 0x1

    .line 150
    goto :goto_6

    .line 151
    :cond_7
    const/4 v9, 0x0

    .line 152
    :goto_6
    if-eqz v9, :cond_8

    .line 153
    .line 154
    iget-object v8, v6, Lgb/b;->A:Lgb/p;

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_8
    and-int/lit8 v9, v11, 0x20

    .line 158
    .line 159
    if-ne v9, v8, :cond_9

    .line 160
    .line 161
    const/4 v8, 0x1

    .line 162
    goto :goto_7

    .line 163
    :cond_9
    const/4 v8, 0x0

    .line 164
    :goto_7
    if-eqz v8, :cond_a

    .line 165
    .line 166
    iget v8, v6, Lgb/b;->B:I

    .line 167
    .line 168
    invoke-virtual {v10, v8}, Lib/g;->a(I)Lgb/p;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    goto :goto_8

    .line 173
    :cond_a
    move-object v8, v7

    .line 174
    :goto_8
    if-eqz v8, :cond_b

    .line 175
    .line 176
    iget-object v9, v5, Lyb/n;->h:Lyb/k0;

    .line 177
    .line 178
    invoke-virtual {v9, v8, v2}, Lyb/k0;->d(Lgb/p;Z)Lcc/m0;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    if-nez v8, :cond_11

    .line 183
    .line 184
    :cond_b
    invoke-virtual {v0}, Lac/d;->K0()Lac/d$a;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    sget-object v9, Lua/c;->g:Lua/c;

    .line 189
    .line 190
    invoke-virtual {v8, v1, v9}, Lac/d$a;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    check-cast v8, Ljava/lang/Iterable;

    .line 195
    .line 196
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    move-object v10, v7

    .line 201
    const/4 v9, 0x0

    .line 202
    :cond_c
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    if-eqz v11, :cond_f

    .line 207
    .line 208
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    move-object v12, v11

    .line 213
    check-cast v12, Lma/l0;

    .line 214
    .line 215
    invoke-interface {v12}, Lma/a;->h0()Lma/o0;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    if-nez v12, :cond_d

    .line 220
    .line 221
    const/4 v12, 0x1

    .line 222
    goto :goto_a

    .line 223
    :cond_d
    const/4 v12, 0x0

    .line 224
    :goto_a
    if-eqz v12, :cond_c

    .line 225
    .line 226
    if-eqz v9, :cond_e

    .line 227
    .line 228
    goto :goto_b

    .line 229
    :cond_e
    move-object v10, v11

    .line 230
    const/4 v9, 0x1

    .line 231
    goto :goto_9

    .line 232
    :cond_f
    if-nez v9, :cond_10

    .line 233
    .line 234
    :goto_b
    move-object v10, v7

    .line 235
    :cond_10
    check-cast v10, Lma/l0;

    .line 236
    .line 237
    if-eqz v10, :cond_20

    .line 238
    .line 239
    invoke-interface {v10}, Lma/z0;->getType()Lcc/e0;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    const-string v8, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    .line 244
    .line 245
    invoke-static {v3, v8}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    move-object v8, v3

    .line 249
    check-cast v8, Lcc/m0;

    .line 250
    .line 251
    :cond_11
    new-instance v3, Lma/v;

    .line 252
    .line 253
    invoke-direct {v3, v1, v8}, Lma/v;-><init>(Llb/f;Lfc/i;)V

    .line 254
    .line 255
    .line 256
    :goto_c
    iget-object v1, v6, Lgb/b;->C:Ljava/util/List;

    .line 257
    .line 258
    const-string v8, "classProto.multiFieldValueClassUnderlyingNameList"

    .line 259
    .line 260
    invoke-static {v1, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    check-cast v1, Ljava/lang/Iterable;

    .line 264
    .line 265
    new-instance v8, Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .line 273
    .line 274
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    const-string v10, "it"

    .line 283
    .line 284
    if-eqz v9, :cond_12

    .line 285
    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    check-cast v9, Ljava/lang/Integer;

    .line 291
    .line 292
    iget-object v11, v5, Lyb/n;->b:Lib/c;

    .line 293
    .line 294
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    invoke-static {v11, v9}, La6/a;->o(Lib/c;I)Llb/f;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    goto :goto_d

    .line 309
    :cond_12
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    xor-int/2addr v1, v2

    .line 314
    if-eqz v1, :cond_13

    .line 315
    .line 316
    goto :goto_e

    .line 317
    :cond_13
    move-object v8, v7

    .line 318
    :goto_e
    if-nez v8, :cond_14

    .line 319
    .line 320
    goto/16 :goto_11

    .line 321
    .line 322
    :cond_14
    invoke-virtual {v0}, Lac/d;->F()Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_1f

    .line 327
    .line 328
    iget-object v1, v6, Lgb/b;->F:Ljava/util/List;

    .line 329
    .line 330
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    iget-object v7, v6, Lgb/b;->E:Ljava/util/List;

    .line 335
    .line 336
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    new-instance v9, Ll9/g;

    .line 349
    .line 350
    invoke-direct {v9, v1, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    new-instance v7, Ll9/g;

    .line 362
    .line 363
    invoke-direct {v7, v1, v4}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    invoke-static {v9, v7}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-eqz v1, :cond_15

    .line 371
    .line 372
    iget-object v1, v6, Lgb/b;->F:Ljava/util/List;

    .line 373
    .line 374
    const-string v4, "classProto.multiFieldVal\u2026ClassUnderlyingTypeIdList"

    .line 375
    .line 376
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    check-cast v1, Ljava/lang/Iterable;

    .line 380
    .line 381
    new-instance v4, Ljava/util/ArrayList;

    .line 382
    .line 383
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    .line 389
    .line 390
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 395
    .line 396
    .line 397
    move-result v6

    .line 398
    if-eqz v6, :cond_16

    .line 399
    .line 400
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    check-cast v6, Ljava/lang/Integer;

    .line 405
    .line 406
    iget-object v7, v5, Lyb/n;->d:Lib/g;

    .line 407
    .line 408
    invoke-static {v6, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    invoke-virtual {v7, v6}, Lib/g;->a(I)Lgb/p;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    goto :goto_f

    .line 423
    :cond_15
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    new-instance v7, Ll9/g;

    .line 432
    .line 433
    invoke-direct {v7, v4, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    invoke-static {v9, v7}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    if-eqz v1, :cond_1e

    .line 441
    .line 442
    iget-object v4, v6, Lgb/b;->E:Ljava/util/List;

    .line 443
    .line 444
    :cond_16
    const-string v1, "when (typeIdCount to typ\u2026tation: $this\")\n        }"

    .line 445
    .line 446
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    check-cast v4, Ljava/lang/Iterable;

    .line 450
    .line 451
    new-instance v1, Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-static {v4}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 454
    .line 455
    .line 456
    move-result v6

    .line 457
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 458
    .line 459
    .line 460
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v6

    .line 468
    if-eqz v6, :cond_17

    .line 469
    .line 470
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v6

    .line 474
    check-cast v6, Lgb/p;

    .line 475
    .line 476
    iget-object v7, v5, Lyb/n;->h:Lyb/k0;

    .line 477
    .line 478
    invoke-static {v6, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v7, v6, v2}, Lyb/k0;->d(Lgb/p;Z)Lcc/m0;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    goto :goto_10

    .line 489
    :cond_17
    new-instance v7, Lma/c0;

    .line 490
    .line 491
    invoke-static {v8, v1}, Lm9/t;->A1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-direct {v7, v1}, Lma/c0;-><init>(Ljava/util/ArrayList;)V

    .line 496
    .line 497
    .line 498
    :goto_11
    if-eqz v3, :cond_19

    .line 499
    .line 500
    if-nez v7, :cond_18

    .line 501
    .line 502
    goto :goto_12

    .line 503
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 504
    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    const-string v3, "Class cannot have both inline class representation and multi field class representation: "

    .line 508
    .line 509
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    throw v1

    .line 523
    :cond_19
    :goto_12
    invoke-virtual {v0}, Lac/d;->F()Z

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    if-nez v1, :cond_1a

    .line 528
    .line 529
    invoke-virtual {v0}, Lac/d;->isInline()Z

    .line 530
    .line 531
    .line 532
    move-result v1

    .line 533
    if-eqz v1, :cond_1c

    .line 534
    .line 535
    :cond_1a
    if-nez v3, :cond_1c

    .line 536
    .line 537
    if-eqz v7, :cond_1b

    .line 538
    .line 539
    goto :goto_13

    .line 540
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 541
    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    .line 543
    .line 544
    const-string v3, "Value class has no value class representation: "

    .line 545
    .line 546
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    throw v1

    .line 560
    :cond_1c
    :goto_13
    if-eqz v3, :cond_1d

    .line 561
    .line 562
    goto :goto_14

    .line 563
    :cond_1d
    move-object v3, v7

    .line 564
    :goto_14
    return-object v3

    .line 565
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 566
    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    const-string v3, "Illegal multi-field value class representation: "

    .line 570
    .line 571
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    throw v1

    .line 589
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    const-string v2, "Not a value class: "

    .line 592
    .line 593
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 604
    .line 605
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    throw v1

    .line 613
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 614
    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    .line 616
    .line 617
    const-string v3, "Value class has no underlying property: "

    .line 618
    .line 619
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    throw v1

    .line 637
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 638
    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    const-string v3, "Inline class has no primary constructor: "

    .line 642
    .line 643
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    throw v1

    .line 661
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 662
    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    const-string v3, "Inline class has no underlying property name in metadata: "

    .line 666
    .line 667
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    throw v1
.end method
