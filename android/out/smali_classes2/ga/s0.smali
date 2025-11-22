.class public final Lga/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lga/s0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lra/h;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lra/h;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p0 .. p0}, Lsa/d;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lga/a1;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lga/a1;-><init>(Ljava/lang/ClassLoader;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lga/s0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lra/h;

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    return-object v4

    .line 36
    :cond_0
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    new-instance v3, Lra/f;

    .line 40
    .line 41
    move-object v8, v3

    .line 42
    invoke-direct {v3, v0}, Lra/f;-><init>(Ljava/lang/ClassLoader;)V

    .line 43
    .line 44
    .line 45
    new-instance v4, Lra/f;

    .line 46
    .line 47
    const-class v5, Ll9/m;

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-string v6, "Unit::class.java.classLoader"

    .line 54
    .line 55
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v4, v5}, Lra/f;-><init>(Ljava/lang/ClassLoader;)V

    .line 59
    .line 60
    .line 61
    new-instance v5, Lra/d;

    .line 62
    .line 63
    move-object v7, v5

    .line 64
    invoke-direct {v5, v0}, Lra/d;-><init>(Ljava/lang/ClassLoader;)V

    .line 65
    .line 66
    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v6, "runtime module for "

    .line 70
    .line 71
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v28, Lc5/v;->e:Lc5/v;

    .line 82
    .line 83
    move-object/from16 v11, v28

    .line 84
    .line 85
    sget-object v14, Lra/i;->a:Lra/i;

    .line 86
    .line 87
    const-string v5, "moduleName"

    .line 88
    .line 89
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v13, Lbc/c;

    .line 93
    .line 94
    move-object v6, v13

    .line 95
    const-string v5, "DeserializationComponentsForJava.ModuleData"

    .line 96
    .line 97
    invoke-direct {v13, v5}, Lbc/c;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v12, Lla/g;

    .line 101
    .line 102
    invoke-direct {v12, v13}, Lla/g;-><init>(Lbc/c;)V

    .line 103
    .line 104
    .line 105
    new-instance v10, Lpa/g0;

    .line 106
    .line 107
    move-object/from16 v19, v10

    .line 108
    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v9, "<"

    .line 112
    .line 113
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const/16 v0, 0x3e

    .line 120
    .line 121
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Llb/f;->v(Ljava/lang/String;)Llb/f;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const/16 v5, 0x38

    .line 133
    .line 134
    invoke-direct {v10, v0, v13, v12, v5}, Lpa/g0;-><init>(Llb/f;Lbc/l;Lja/k;I)V

    .line 135
    .line 136
    .line 137
    new-instance v0, Lja/j;

    .line 138
    .line 139
    invoke-direct {v0, v12, v10}, Lja/j;-><init>(Lla/g;Lpa/g0;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v13, v0}, Lbc/c;->j(Lja/j;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    new-instance v0, Lla/j;

    .line 146
    .line 147
    invoke-direct {v0, v10}, Lla/j;-><init>(Lpa/g0;)V

    .line 148
    .line 149
    .line 150
    iput-object v0, v12, Lla/g;->f:Lx9/a;

    .line 151
    .line 152
    new-instance v0, Leb/k;

    .line 153
    .line 154
    move-object v9, v0

    .line 155
    invoke-direct {v0}, Leb/k;-><init>()V

    .line 156
    .line 157
    .line 158
    new-instance v5, Lya/i;

    .line 159
    .line 160
    move-object v15, v5

    .line 161
    invoke-direct {v5}, Lya/i;-><init>()V

    .line 162
    .line 163
    .line 164
    move-object/from16 p0, v1

    .line 165
    .line 166
    new-instance v1, Lma/d0;

    .line 167
    .line 168
    invoke-direct {v1, v13, v10}, Lma/d0;-><init>(Lbc/l;Lma/b0;)V

    .line 169
    .line 170
    .line 171
    sget-object v16, Leb/x$a;->a:Leb/x$a;

    .line 172
    .line 173
    move-object/from16 v29, v4

    .line 174
    .line 175
    new-instance v4, Lya/c;

    .line 176
    .line 177
    move-object/from16 v30, v2

    .line 178
    .line 179
    move-object v2, v5

    .line 180
    move-object v5, v4

    .line 181
    sget-object v17, Lwa/k;->a:Lwa/k$a;

    .line 182
    .line 183
    move-object/from16 v31, v2

    .line 184
    .line 185
    move-object v2, v10

    .line 186
    move-object/from16 v10, v17

    .line 187
    .line 188
    sget-object v17, Lwa/g$a;->a:Lwa/g$a;

    .line 189
    .line 190
    move-object/from16 v32, v12

    .line 191
    .line 192
    move-object/from16 v12, v17

    .line 193
    .line 194
    move-object/from16 v33, v0

    .line 195
    .line 196
    new-instance v0, Lub/b;

    .line 197
    .line 198
    move-object/from16 v34, v3

    .line 199
    .line 200
    move-object v3, v13

    .line 201
    move-object v13, v0

    .line 202
    sget-object v35, Lm9/v;->a:Lm9/v;

    .line 203
    .line 204
    invoke-direct {v0, v3}, Lub/b;-><init>(Lbc/l;)V

    .line 205
    .line 206
    .line 207
    sget-object v17, Lma/u0$a;->a:Lma/u0$a;

    .line 208
    .line 209
    sget-object v18, Lua/b$a;->a:Lua/b$a;

    .line 210
    .line 211
    new-instance v0, Lja/m;

    .line 212
    .line 213
    move-object/from16 v20, v0

    .line 214
    .line 215
    invoke-direct {v0, v2, v1}, Lja/m;-><init>(Lpa/g0;Lma/d0;)V

    .line 216
    .line 217
    .line 218
    new-instance v0, Lva/e;

    .line 219
    .line 220
    move-object/from16 v21, v0

    .line 221
    .line 222
    move-object/from16 v36, v1

    .line 223
    .line 224
    sget-object v1, Lva/s;->d:Lva/s;

    .line 225
    .line 226
    move-object/from16 v26, v1

    .line 227
    .line 228
    invoke-direct {v0, v1}, Lva/e;-><init>(Lva/s;)V

    .line 229
    .line 230
    .line 231
    new-instance v0, Ldb/t;

    .line 232
    .line 233
    move-object/from16 v22, v0

    .line 234
    .line 235
    new-instance v1, Ldb/g;

    .line 236
    .line 237
    sget-object v24, Lya/d$a;->a:Lya/d$a;

    .line 238
    .line 239
    invoke-direct {v1}, Ldb/g;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-direct {v0, v1}, Ldb/t;-><init>(Ldb/g;)V

    .line 243
    .line 244
    .line 245
    sget-object v23, Lva/m$a;->a:Lva/m$a;

    .line 246
    .line 247
    sget-object v0, Ldc/l;->b:Ldc/l$a;

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    sget-object v0, Ldc/l$a;->b:Ldc/m;

    .line 253
    .line 254
    move-object/from16 v25, v0

    .line 255
    .line 256
    new-instance v1, Lb0/a;

    .line 257
    .line 258
    move-object/from16 v27, v1

    .line 259
    .line 260
    invoke-direct {v1}, Lb0/a;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-direct/range {v5 .. v27}, Lya/c;-><init>(Lbc/l;Lva/l;Leb/q;Leb/k;Lwa/k;Lyb/u;Lwa/g;Lub/a;Lbb/b;Lya/h;Leb/x;Lma/u0;Lua/b;Lma/b0;Lja/m;Lva/e;Ldb/t;Lva/m;Lya/d;Ldc/l;Lva/s;Lva/p;)V

    .line 264
    .line 265
    .line 266
    new-instance v1, Lya/f;

    .line 267
    .line 268
    invoke-direct {v1, v4}, Lya/f;-><init>(Lya/c;)V

    .line 269
    .line 270
    .line 271
    new-instance v12, Leb/l;

    .line 272
    .line 273
    move-object/from16 v7, v33

    .line 274
    .line 275
    move-object/from16 v8, v34

    .line 276
    .line 277
    invoke-direct {v12, v8, v7}, Leb/l;-><init>(Lra/f;Leb/k;)V

    .line 278
    .line 279
    .line 280
    new-instance v13, Leb/h;

    .line 281
    .line 282
    move-object/from16 v6, v36

    .line 283
    .line 284
    invoke-direct {v13, v2, v6, v3, v8}, Leb/h;-><init>(Lpa/g0;Lma/d0;Lbc/c;Lra/f;)V

    .line 285
    .line 286
    .line 287
    sget-object v4, Lcc/p;->a:Lcc/p;

    .line 288
    .line 289
    invoke-static {v4}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v24

    .line 293
    iget-object v4, v2, Lpa/g0;->d:Lja/k;

    .line 294
    .line 295
    instance-of v5, v4, Lla/g;

    .line 296
    .line 297
    if-eqz v5, :cond_2

    .line 298
    .line 299
    check-cast v4, Lla/g;

    .line 300
    .line 301
    goto :goto_0

    .line 302
    :cond_2
    const/4 v4, 0x0

    .line 303
    :goto_0
    new-instance v5, Lyb/l;

    .line 304
    .line 305
    sget-object v16, Leb/m;->a:Leb/m;

    .line 306
    .line 307
    if-eqz v4, :cond_3

    .line 308
    .line 309
    invoke-virtual {v4}, Lla/g;->L()Lla/k;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    if-eqz v9, :cond_3

    .line 314
    .line 315
    goto :goto_1

    .line 316
    :cond_3
    sget-object v9, Loa/a$a;->a:Loa/a$a;

    .line 317
    .line 318
    :goto_1
    move-object/from16 v19, v9

    .line 319
    .line 320
    if-eqz v4, :cond_4

    .line 321
    .line 322
    invoke-virtual {v4}, Lla/g;->L()Lla/k;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    if-eqz v4, :cond_4

    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_4
    sget-object v4, Loa/c$b;->a:Loa/c$b;

    .line 330
    .line 331
    :goto_2
    move-object/from16 v20, v4

    .line 332
    .line 333
    sget-object v21, Lkb/h;->a:Lmb/f;

    .line 334
    .line 335
    new-instance v4, Lub/b;

    .line 336
    .line 337
    move-object/from16 v23, v4

    .line 338
    .line 339
    invoke-direct {v4, v3}, Lub/b;-><init>(Lbc/l;)V

    .line 340
    .line 341
    .line 342
    const/high16 v25, 0x40000

    .line 343
    .line 344
    move-object v9, v5

    .line 345
    move-object v10, v3

    .line 346
    move-object v11, v2

    .line 347
    move-object v14, v1

    .line 348
    move-object/from16 v15, v28

    .line 349
    .line 350
    move-object/from16 v17, v35

    .line 351
    .line 352
    move-object/from16 v18, v6

    .line 353
    .line 354
    move-object/from16 v22, v0

    .line 355
    .line 356
    invoke-direct/range {v9 .. v25}, Lyb/l;-><init>(Lbc/l;Lma/b0;Lyb/i;Lyb/d;Lma/f0;Lyb/u;Lyb/v;Ljava/lang/Iterable;Lma/d0;Loa/a;Loa/c;Lmb/f;Ldc/m;Lub/b;Ljava/util/List;I)V

    .line 357
    .line 358
    .line 359
    iput-object v5, v7, Leb/k;->a:Lyb/l;

    .line 360
    .line 361
    new-instance v4, Lcom/google/android/gms/internal/clearcut/b0;

    .line 362
    .line 363
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/clearcut/b0;-><init>(Lya/f;)V

    .line 364
    .line 365
    .line 366
    move-object/from16 v9, v31

    .line 367
    .line 368
    iput-object v4, v9, Lya/i;->a:Lcom/google/android/gms/internal/clearcut/b0;

    .line 369
    .line 370
    new-instance v13, Lla/t;

    .line 371
    .line 372
    invoke-virtual/range {v32 .. v32}, Lla/g;->L()Lla/k;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    invoke-virtual/range {v32 .. v32}, Lla/g;->L()Lla/k;

    .line 377
    .line 378
    .line 379
    move-result-object v10

    .line 380
    new-instance v12, Lub/b;

    .line 381
    .line 382
    invoke-direct {v12, v3}, Lub/b;-><init>(Lbc/l;)V

    .line 383
    .line 384
    .line 385
    move-object/from16 v11, v29

    .line 386
    .line 387
    move-object v4, v13

    .line 388
    move-object v14, v5

    .line 389
    move-object v5, v3

    .line 390
    move-object v3, v6

    .line 391
    move-object v6, v11

    .line 392
    move-object v15, v7

    .line 393
    move-object v7, v2

    .line 394
    move-object v11, v8

    .line 395
    move-object v8, v3

    .line 396
    move-object v3, v11

    .line 397
    move-object v11, v0

    .line 398
    invoke-direct/range {v4 .. v12}, Lla/t;-><init>(Lbc/c;Lra/f;Lpa/g0;Lma/d0;Lla/k;Lla/k;Ldc/m;Lub/b;)V

    .line 399
    .line 400
    .line 401
    const/4 v0, 0x1

    .line 402
    new-array v4, v0, [Lpa/g0;

    .line 403
    .line 404
    const/4 v5, 0x0

    .line 405
    aput-object v2, v4, v5

    .line 406
    .line 407
    invoke-static {v4}, Lm9/k;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    new-instance v6, Lpa/d0;

    .line 412
    .line 413
    invoke-direct {v6, v4}, Lpa/d0;-><init>(Ljava/util/List;)V

    .line 414
    .line 415
    .line 416
    iput-object v6, v2, Lpa/g0;->g:Lpa/c0;

    .line 417
    .line 418
    new-instance v4, Lpa/o;

    .line 419
    .line 420
    const/4 v6, 0x2

    .line 421
    new-array v6, v6, [Lma/h0;

    .line 422
    .line 423
    aput-object v1, v6, v5

    .line 424
    .line 425
    aput-object v13, v6, v0

    .line 426
    .line 427
    invoke-static {v6}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    const-string v5, "CompositeProvider@RuntimeModuleData for "

    .line 434
    .line 435
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-direct {v4, v0, v1}, Lpa/o;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    iput-object v4, v2, Lpa/g0;->h:Lma/f0;

    .line 449
    .line 450
    new-instance v0, Lra/h;

    .line 451
    .line 452
    new-instance v1, Lra/a;

    .line 453
    .line 454
    invoke-direct {v1, v15, v3}, Lra/a;-><init>(Leb/k;Lra/f;)V

    .line 455
    .line 456
    .line 457
    invoke-direct {v0, v14, v1}, Lra/h;-><init>(Lyb/l;Lra/a;)V

    .line 458
    .line 459
    .line 460
    :goto_3
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 461
    .line 462
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    move-object/from16 v2, p0

    .line 466
    .line 467
    move-object/from16 v3, v30

    .line 468
    .line 469
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 474
    .line 475
    if-nez v1, :cond_5

    .line 476
    .line 477
    return-object v0

    .line 478
    :cond_5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    check-cast v4, Lra/h;

    .line 483
    .line 484
    if-eqz v4, :cond_6

    .line 485
    .line 486
    return-object v4

    .line 487
    :cond_6
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    .line 489
    .line 490
    move-object/from16 p0, v2

    .line 491
    .line 492
    move-object/from16 v30, v3

    .line 493
    .line 494
    goto :goto_3

    .line 495
    :catchall_0
    move-exception v0

    .line 496
    throw v0
.end method
