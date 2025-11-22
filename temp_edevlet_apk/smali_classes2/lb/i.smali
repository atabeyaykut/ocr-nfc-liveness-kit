.class public final Llb/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llb/c;

.field public static final b:Llb/c;

.field public static final c:Llb/c;

.field public static final d:Llb/c;

.field public static final e:Llb/c;

.field public static final f:Llb/c;

.field public static final g:Llb/c;

.field public static final h:Llb/b;

.field public static final i:Llb/b;

.field public static final j:Llb/b;

.field public static final k:Llb/b;

.field public static final l:Llb/b;

.field public static final m:Llb/b;

.field public static final n:Llb/b;

.field public static final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Llb/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Llb/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Llb/b;

.field public static final r:Llb/b;

.field public static final s:Llb/b;

.field public static final t:Llb/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Llb/c;

    .line 2
    .line 3
    const-string v1, "kotlin"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Llb/i;->a:Llb/c;

    .line 9
    .line 10
    const-string v1, "reflect"

    .line 11
    .line 12
    invoke-static {v1}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Llb/c;->c(Llb/f;)Llb/c;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Llb/i;->b:Llb/c;

    .line 21
    .line 22
    const-string v2, "collections"

    .line 23
    .line 24
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Llb/c;->c(Llb/f;)Llb/c;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sput-object v2, Llb/i;->c:Llb/c;

    .line 33
    .line 34
    const-string v3, "ranges"

    .line 35
    .line 36
    invoke-static {v3}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v3}, Llb/c;->c(Llb/f;)Llb/c;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    sput-object v3, Llb/i;->d:Llb/c;

    .line 45
    .line 46
    const-string v4, "jvm"

    .line 47
    .line 48
    invoke-static {v4}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v0, v4}, Llb/c;->c(Llb/f;)Llb/c;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const-string v5, "internal"

    .line 57
    .line 58
    invoke-static {v5}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v4, v6}, Llb/c;->c(Llb/f;)Llb/c;

    .line 63
    .line 64
    .line 65
    const-string v4, "annotation"

    .line 66
    .line 67
    invoke-static {v4}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v0, v4}, Llb/c;->c(Llb/f;)Llb/c;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    sput-object v4, Llb/i;->e:Llb/c;

    .line 76
    .line 77
    invoke-static {v5}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v0, v5}, Llb/c;->c(Llb/f;)Llb/c;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    const-string v6, "ir"

    .line 86
    .line 87
    invoke-static {v6}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v5, v6}, Llb/c;->c(Llb/f;)Llb/c;

    .line 92
    .line 93
    .line 94
    const-string v6, "coroutines"

    .line 95
    .line 96
    invoke-static {v6}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v0, v6}, Llb/c;->c(Llb/f;)Llb/c;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    sput-object v6, Llb/i;->f:Llb/c;

    .line 105
    .line 106
    const-string v7, "enums"

    .line 107
    .line 108
    invoke-static {v7}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v0, v7}, Llb/c;->c(Llb/f;)Llb/c;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    sput-object v7, Llb/i;->g:Llb/c;

    .line 117
    .line 118
    const/4 v7, 0x7

    .line 119
    new-array v7, v7, [Llb/c;

    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    aput-object v0, v7, v8

    .line 123
    .line 124
    const/4 v0, 0x1

    .line 125
    aput-object v2, v7, v0

    .line 126
    .line 127
    const/4 v2, 0x2

    .line 128
    aput-object v3, v7, v2

    .line 129
    .line 130
    const/4 v3, 0x3

    .line 131
    aput-object v4, v7, v3

    .line 132
    .line 133
    const/4 v4, 0x4

    .line 134
    aput-object v1, v7, v4

    .line 135
    .line 136
    const/4 v1, 0x5

    .line 137
    aput-object v5, v7, v1

    .line 138
    .line 139
    const/4 v5, 0x6

    .line 140
    aput-object v6, v7, v5

    .line 141
    .line 142
    invoke-static {v7}, Lx5/a;->s([Ljava/lang/Object;)Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    const-string v6, "Nothing"

    .line 146
    .line 147
    invoke-static {v6}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 148
    .line 149
    .line 150
    const-string v6, "Unit"

    .line 151
    .line 152
    invoke-static {v6}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 153
    .line 154
    .line 155
    const-string v6, "Any"

    .line 156
    .line 157
    invoke-static {v6}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 158
    .line 159
    .line 160
    const-string v6, "Enum"

    .line 161
    .line 162
    invoke-static {v6}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 163
    .line 164
    .line 165
    const-string v6, "Annotation"

    .line 166
    .line 167
    invoke-static {v6}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 168
    .line 169
    .line 170
    const-string v6, "Array"

    .line 171
    .line 172
    invoke-static {v6}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    sput-object v6, Llb/i;->h:Llb/b;

    .line 177
    .line 178
    const-string v6, "Boolean"

    .line 179
    .line 180
    invoke-static {v6}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    const-string v7, "Char"

    .line 185
    .line 186
    invoke-static {v7}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    const-string v9, "Byte"

    .line 191
    .line 192
    invoke-static {v9}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    const-string v10, "Short"

    .line 197
    .line 198
    invoke-static {v10}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    const-string v11, "Int"

    .line 203
    .line 204
    invoke-static {v11}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    const-string v12, "Long"

    .line 209
    .line 210
    invoke-static {v12}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    const-string v13, "Float"

    .line 215
    .line 216
    invoke-static {v13}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    const-string v14, "Double"

    .line 221
    .line 222
    invoke-static {v14}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 223
    .line 224
    .line 225
    move-result-object v14

    .line 226
    invoke-static {v9}, Llb/j;->g(Llb/b;)Llb/b;

    .line 227
    .line 228
    .line 229
    move-result-object v15

    .line 230
    sput-object v15, Llb/i;->i:Llb/b;

    .line 231
    .line 232
    invoke-static {v10}, Llb/j;->g(Llb/b;)Llb/b;

    .line 233
    .line 234
    .line 235
    move-result-object v15

    .line 236
    sput-object v15, Llb/i;->j:Llb/b;

    .line 237
    .line 238
    invoke-static {v11}, Llb/j;->g(Llb/b;)Llb/b;

    .line 239
    .line 240
    .line 241
    move-result-object v15

    .line 242
    sput-object v15, Llb/i;->k:Llb/b;

    .line 243
    .line 244
    invoke-static {v12}, Llb/j;->g(Llb/b;)Llb/b;

    .line 245
    .line 246
    .line 247
    move-result-object v15

    .line 248
    sput-object v15, Llb/i;->l:Llb/b;

    .line 249
    .line 250
    const-string v15, "String"

    .line 251
    .line 252
    invoke-static {v15}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 253
    .line 254
    .line 255
    move-result-object v15

    .line 256
    sput-object v15, Llb/i;->m:Llb/b;

    .line 257
    .line 258
    const-string v15, "Throwable"

    .line 259
    .line 260
    invoke-static {v15}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 261
    .line 262
    .line 263
    const-string v15, "Cloneable"

    .line 264
    .line 265
    invoke-static {v15}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 266
    .line 267
    .line 268
    const-string v15, "KProperty"

    .line 269
    .line 270
    invoke-static {v15}, Llb/j;->f(Ljava/lang/String;)Llb/b;

    .line 271
    .line 272
    .line 273
    const-string v15, "KMutableProperty"

    .line 274
    .line 275
    invoke-static {v15}, Llb/j;->f(Ljava/lang/String;)Llb/b;

    .line 276
    .line 277
    .line 278
    const-string v15, "KProperty0"

    .line 279
    .line 280
    invoke-static {v15}, Llb/j;->f(Ljava/lang/String;)Llb/b;

    .line 281
    .line 282
    .line 283
    const-string v15, "KMutableProperty0"

    .line 284
    .line 285
    invoke-static {v15}, Llb/j;->f(Ljava/lang/String;)Llb/b;

    .line 286
    .line 287
    .line 288
    const-string v15, "KProperty1"

    .line 289
    .line 290
    invoke-static {v15}, Llb/j;->f(Ljava/lang/String;)Llb/b;

    .line 291
    .line 292
    .line 293
    const-string v15, "KMutableProperty1"

    .line 294
    .line 295
    invoke-static {v15}, Llb/j;->f(Ljava/lang/String;)Llb/b;

    .line 296
    .line 297
    .line 298
    const-string v15, "KProperty2"

    .line 299
    .line 300
    invoke-static {v15}, Llb/j;->f(Ljava/lang/String;)Llb/b;

    .line 301
    .line 302
    .line 303
    const-string v15, "KMutableProperty2"

    .line 304
    .line 305
    invoke-static {v15}, Llb/j;->f(Ljava/lang/String;)Llb/b;

    .line 306
    .line 307
    .line 308
    const-string v15, "KFunction"

    .line 309
    .line 310
    invoke-static {v15}, Llb/j;->f(Ljava/lang/String;)Llb/b;

    .line 311
    .line 312
    .line 313
    move-result-object v15

    .line 314
    sput-object v15, Llb/i;->n:Llb/b;

    .line 315
    .line 316
    const-string v15, "KClass"

    .line 317
    .line 318
    invoke-static {v15}, Llb/j;->f(Ljava/lang/String;)Llb/b;

    .line 319
    .line 320
    .line 321
    const-string v15, "KCallable"

    .line 322
    .line 323
    invoke-static {v15}, Llb/j;->f(Ljava/lang/String;)Llb/b;

    .line 324
    .line 325
    .line 326
    const-string v15, "Comparable"

    .line 327
    .line 328
    invoke-static {v15}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 329
    .line 330
    .line 331
    const-string v15, "Number"

    .line 332
    .line 333
    invoke-static {v15}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 334
    .line 335
    .line 336
    const-string v15, "Function"

    .line 337
    .line 338
    invoke-static {v15}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 339
    .line 340
    .line 341
    const/16 v15, 0x8

    .line 342
    .line 343
    new-array v15, v15, [Llb/b;

    .line 344
    .line 345
    aput-object v6, v15, v8

    .line 346
    .line 347
    aput-object v7, v15, v0

    .line 348
    .line 349
    aput-object v9, v15, v2

    .line 350
    .line 351
    aput-object v10, v15, v3

    .line 352
    .line 353
    aput-object v11, v15, v4

    .line 354
    .line 355
    aput-object v12, v15, v1

    .line 356
    .line 357
    aput-object v13, v15, v5

    .line 358
    .line 359
    const/4 v1, 0x7

    .line 360
    aput-object v14, v15, v1

    .line 361
    .line 362
    invoke-static {v15}, Lx5/a;->s([Ljava/lang/Object;)Ljava/util/Set;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    sput-object v1, Llb/i;->o:Ljava/util/Set;

    .line 367
    .line 368
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 369
    .line 370
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 371
    .line 372
    .line 373
    move-result v6

    .line 374
    invoke-static {v6}, Lb8/f;->V(I)I

    .line 375
    .line 376
    .line 377
    move-result v6

    .line 378
    const/16 v7, 0x10

    .line 379
    .line 380
    if-ge v6, v7, :cond_0

    .line 381
    .line 382
    const/16 v6, 0x10

    .line 383
    .line 384
    :cond_0
    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 392
    .line 393
    .line 394
    move-result v6

    .line 395
    const-string v9, "id.shortClassName"

    .line 396
    .line 397
    if-eqz v6, :cond_1

    .line 398
    .line 399
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    move-object v10, v6

    .line 404
    check-cast v10, Llb/b;

    .line 405
    .line 406
    invoke-virtual {v10}, Llb/b;->j()Llb/f;

    .line 407
    .line 408
    .line 409
    move-result-object v10

    .line 410
    invoke-static {v10, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-static {v10}, Llb/j;->d(Llb/f;)Llb/b;

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    invoke-interface {v5, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    goto :goto_0

    .line 421
    :cond_1
    invoke-static {v5}, Llb/j;->c(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 422
    .line 423
    .line 424
    new-array v1, v4, [Llb/b;

    .line 425
    .line 426
    sget-object v4, Llb/i;->i:Llb/b;

    .line 427
    .line 428
    aput-object v4, v1, v8

    .line 429
    .line 430
    sget-object v4, Llb/i;->j:Llb/b;

    .line 431
    .line 432
    aput-object v4, v1, v0

    .line 433
    .line 434
    sget-object v0, Llb/i;->k:Llb/b;

    .line 435
    .line 436
    aput-object v0, v1, v2

    .line 437
    .line 438
    sget-object v0, Llb/i;->l:Llb/b;

    .line 439
    .line 440
    aput-object v0, v1, v3

    .line 441
    .line 442
    invoke-static {v1}, Lx5/a;->s([Ljava/lang/Object;)Ljava/util/Set;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    sput-object v0, Llb/i;->p:Ljava/util/Set;

    .line 447
    .line 448
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 449
    .line 450
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    invoke-static {v2}, Lb8/f;->V(I)I

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-ge v2, v7, :cond_2

    .line 459
    .line 460
    goto :goto_1

    .line 461
    :cond_2
    move v7, v2

    .line 462
    :goto_1
    invoke-direct {v1, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 463
    .line 464
    .line 465
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    if-eqz v2, :cond_3

    .line 474
    .line 475
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    move-object v4, v2

    .line 480
    check-cast v4, Llb/b;

    .line 481
    .line 482
    invoke-virtual {v4}, Llb/b;->j()Llb/f;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-static {v4, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-static {v4}, Llb/j;->d(Llb/f;)Llb/b;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    goto :goto_2

    .line 497
    :cond_3
    invoke-static {v1}, Llb/j;->c(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 498
    .line 499
    .line 500
    sget-object v0, Llb/i;->o:Ljava/util/Set;

    .line 501
    .line 502
    sget-object v1, Llb/i;->p:Ljava/util/Set;

    .line 503
    .line 504
    invoke-static {v0, v1}, Lm9/g0;->F(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    sget-object v1, Llb/i;->m:Llb/b;

    .line 509
    .line 510
    invoke-static {v0, v1}, Lm9/g0;->G(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 511
    .line 512
    .line 513
    sget-object v0, Llb/i;->f:Llb/c;

    .line 514
    .line 515
    const-string v1, "Continuation"

    .line 516
    .line 517
    invoke-static {v1}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    const/4 v2, 0x0

    .line 522
    if-eqz v0, :cond_5

    .line 523
    .line 524
    invoke-static {v1}, Llb/c;->j(Llb/f;)Llb/c;

    .line 525
    .line 526
    .line 527
    const-string v0, "Iterator"

    .line 528
    .line 529
    invoke-static {v0}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 530
    .line 531
    .line 532
    const-string v0, "Iterable"

    .line 533
    .line 534
    invoke-static {v0}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 535
    .line 536
    .line 537
    const-string v0, "Collection"

    .line 538
    .line 539
    invoke-static {v0}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 540
    .line 541
    .line 542
    const-string v0, "List"

    .line 543
    .line 544
    invoke-static {v0}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 545
    .line 546
    .line 547
    const-string v0, "ListIterator"

    .line 548
    .line 549
    invoke-static {v0}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 550
    .line 551
    .line 552
    const-string v0, "Set"

    .line 553
    .line 554
    invoke-static {v0}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 555
    .line 556
    .line 557
    const-string v0, "Map"

    .line 558
    .line 559
    invoke-static {v0}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    const-string v1, "MutableIterator"

    .line 564
    .line 565
    invoke-static {v1}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 566
    .line 567
    .line 568
    const-string v1, "MutableIterable"

    .line 569
    .line 570
    invoke-static {v1}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 571
    .line 572
    .line 573
    const-string v1, "MutableCollection"

    .line 574
    .line 575
    invoke-static {v1}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 576
    .line 577
    .line 578
    const-string v1, "MutableList"

    .line 579
    .line 580
    invoke-static {v1}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    sput-object v1, Llb/i;->q:Llb/b;

    .line 585
    .line 586
    const-string v1, "MutableListIterator"

    .line 587
    .line 588
    invoke-static {v1}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 589
    .line 590
    .line 591
    const-string v1, "MutableSet"

    .line 592
    .line 593
    invoke-static {v1}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    sput-object v1, Llb/i;->r:Llb/b;

    .line 598
    .line 599
    const-string v1, "MutableMap"

    .line 600
    .line 601
    invoke-static {v1}, Llb/j;->b(Ljava/lang/String;)Llb/b;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    sput-object v1, Llb/i;->s:Llb/b;

    .line 606
    .line 607
    const-string v4, "Entry"

    .line 608
    .line 609
    invoke-static {v4}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 610
    .line 611
    .line 612
    move-result-object v4

    .line 613
    invoke-virtual {v0, v4}, Llb/b;->d(Llb/f;)Llb/b;

    .line 614
    .line 615
    .line 616
    const-string v0, "MutableEntry"

    .line 617
    .line 618
    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-virtual {v1, v0}, Llb/b;->d(Llb/f;)Llb/b;

    .line 623
    .line 624
    .line 625
    const-string v0, "Result"

    .line 626
    .line 627
    invoke-static {v0}, Llb/j;->a(Ljava/lang/String;)Llb/b;

    .line 628
    .line 629
    .line 630
    const-string v0, "IntRange"

    .line 631
    .line 632
    invoke-static {v0}, Llb/j;->e(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    const-string v0, "LongRange"

    .line 636
    .line 637
    invoke-static {v0}, Llb/j;->e(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    const-string v0, "CharRange"

    .line 641
    .line 642
    invoke-static {v0}, Llb/j;->e(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    sget-object v0, Llb/i;->e:Llb/c;

    .line 646
    .line 647
    const-string v1, "AnnotationRetention"

    .line 648
    .line 649
    invoke-static {v1}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    if-eqz v0, :cond_4

    .line 654
    .line 655
    invoke-static {v1}, Llb/c;->j(Llb/f;)Llb/c;

    .line 656
    .line 657
    .line 658
    const-string v0, "AnnotationTarget"

    .line 659
    .line 660
    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    invoke-static {v0}, Llb/c;->j(Llb/f;)Llb/c;

    .line 665
    .line 666
    .line 667
    new-instance v0, Llb/b;

    .line 668
    .line 669
    sget-object v1, Llb/i;->g:Llb/c;

    .line 670
    .line 671
    const-string v2, "EnumEntries"

    .line 672
    .line 673
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    invoke-direct {v0, v1, v2}, Llb/b;-><init>(Llb/c;Llb/f;)V

    .line 678
    .line 679
    .line 680
    sput-object v0, Llb/i;->t:Llb/b;

    .line 681
    .line 682
    return-void

    .line 683
    :cond_4
    invoke-static {v3}, Llb/b;->a(I)V

    .line 684
    .line 685
    .line 686
    throw v2

    .line 687
    :cond_5
    invoke-static {v3}, Llb/b;->a(I)V

    .line 688
    .line 689
    .line 690
    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
