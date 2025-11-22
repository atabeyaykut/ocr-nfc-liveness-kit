.class public final Ldb/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ldb/h;

.field public static final b:Ldb/h;

.field public static final c:Ldb/h;

.field public static final d:Ljava/util/LinkedHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ldb/h;

    .line 2
    .line 3
    sget-object v1, Ldb/k;->b:Ldb/k;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ldb/h;-><init>(Ldb/k;Z)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ldb/m;->a:Ldb/h;

    .line 10
    .line 11
    new-instance v0, Ldb/h;

    .line 12
    .line 13
    sget-object v1, Ldb/k;->c:Ldb/k;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ldb/h;-><init>(Ldb/k;Z)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Ldb/m;->b:Ldb/h;

    .line 19
    .line 20
    new-instance v0, Ldb/h;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v0, v1, v2}, Ldb/h;-><init>(Ldb/k;Z)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Ldb/m;->c:Ldb/h;

    .line 27
    .line 28
    const-string v0, "java/lang/"

    .line 29
    .line 30
    const-string v1, "Object"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "java/util/function/"

    .line 37
    .line 38
    const-string v3, "Predicate"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "Function"

    .line 45
    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const-string v5, "Consumer"

    .line 51
    .line 52
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v6, "BiFunction"

    .line 57
    .line 58
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const-string v7, "BiConsumer"

    .line 63
    .line 64
    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    const-string v8, "UnaryOperator"

    .line 69
    .line 70
    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    const-string v9, "java/util/"

    .line 75
    .line 76
    const-string v10, "stream/Stream"

    .line 77
    .line 78
    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    const-string v11, "Optional"

    .line 83
    .line 84
    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    new-instance v12, Ldb/u;

    .line 89
    .line 90
    invoke-direct {v12}, Ldb/u;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v13, "Iterator"

    .line 94
    .line 95
    invoke-virtual {v9, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    new-instance v14, Ldb/u$a;

    .line 100
    .line 101
    invoke-direct {v14, v12, v13}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v13, Ldb/m$a;

    .line 105
    .line 106
    invoke-direct {v13, v5}, Ldb/m$a;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v15, "forEachRemaining"

    .line 110
    .line 111
    invoke-virtual {v14, v15, v13}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 112
    .line 113
    .line 114
    const-string v13, "Iterable"

    .line 115
    .line 116
    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    new-instance v14, Ldb/u$a;

    .line 121
    .line 122
    invoke-direct {v14, v12, v13}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v13, Ldb/m$g;

    .line 126
    .line 127
    invoke-direct {v13}, Ldb/m$g;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v15, "spliterator"

    .line 131
    .line 132
    invoke-virtual {v14, v15, v13}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 133
    .line 134
    .line 135
    const-string v13, "Collection"

    .line 136
    .line 137
    invoke-virtual {v9, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    new-instance v14, Ldb/u$a;

    .line 142
    .line 143
    invoke-direct {v14, v12, v13}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance v13, Ldb/m$h;

    .line 147
    .line 148
    invoke-direct {v13, v3}, Ldb/m$h;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v15, "removeIf"

    .line 152
    .line 153
    invoke-virtual {v14, v15, v13}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 154
    .line 155
    .line 156
    new-instance v13, Ldb/m$i;

    .line 157
    .line 158
    invoke-direct {v13, v10}, Ldb/m$i;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v15, "stream"

    .line 162
    .line 163
    invoke-virtual {v14, v15, v13}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 164
    .line 165
    .line 166
    new-instance v13, Ldb/m$j;

    .line 167
    .line 168
    invoke-direct {v13, v10}, Ldb/m$j;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v10, "parallelStream"

    .line 172
    .line 173
    invoke-virtual {v14, v10, v13}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 174
    .line 175
    .line 176
    const-string v10, "List"

    .line 177
    .line 178
    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    new-instance v13, Ldb/u$a;

    .line 183
    .line 184
    invoke-direct {v13, v12, v10}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance v10, Ldb/m$k;

    .line 188
    .line 189
    invoke-direct {v10, v8}, Ldb/m$k;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v8, "replaceAll"

    .line 193
    .line 194
    invoke-virtual {v13, v8, v10}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 195
    .line 196
    .line 197
    const-string v10, "Map"

    .line 198
    .line 199
    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    new-instance v10, Ldb/u$a;

    .line 204
    .line 205
    invoke-direct {v10, v12, v9}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    new-instance v9, Ldb/m$l;

    .line 209
    .line 210
    invoke-direct {v9, v7}, Ldb/m$l;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const-string v13, "forEach"

    .line 214
    .line 215
    invoke-virtual {v10, v13, v9}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 216
    .line 217
    .line 218
    new-instance v9, Ldb/m$m;

    .line 219
    .line 220
    invoke-direct {v9, v1}, Ldb/m$m;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string v13, "putIfAbsent"

    .line 224
    .line 225
    invoke-virtual {v10, v13, v9}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 226
    .line 227
    .line 228
    new-instance v9, Ldb/m$n;

    .line 229
    .line 230
    invoke-direct {v9, v1}, Ldb/m$n;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const-string v13, "replace"

    .line 234
    .line 235
    invoke-virtual {v10, v13, v9}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 236
    .line 237
    .line 238
    new-instance v9, Ldb/m$o;

    .line 239
    .line 240
    invoke-direct {v9, v1}, Ldb/m$o;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v10, v13, v9}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 244
    .line 245
    .line 246
    new-instance v9, Ldb/m$p;

    .line 247
    .line 248
    invoke-direct {v9, v6}, Ldb/m$p;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v10, v8, v9}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 252
    .line 253
    .line 254
    new-instance v8, Ldb/m$q;

    .line 255
    .line 256
    invoke-direct {v8, v1, v6}, Ldb/m$q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string v9, "compute"

    .line 260
    .line 261
    invoke-virtual {v10, v9, v8}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 262
    .line 263
    .line 264
    new-instance v8, Ldb/m$r;

    .line 265
    .line 266
    invoke-direct {v8, v1, v4}, Ldb/m$r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const-string v9, "computeIfAbsent"

    .line 270
    .line 271
    invoke-virtual {v10, v9, v8}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 272
    .line 273
    .line 274
    new-instance v8, Ldb/m$s;

    .line 275
    .line 276
    invoke-direct {v8, v1, v6}, Ldb/m$s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    const-string v9, "computeIfPresent"

    .line 280
    .line 281
    invoke-virtual {v10, v9, v8}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 282
    .line 283
    .line 284
    new-instance v8, Ldb/m$t;

    .line 285
    .line 286
    invoke-direct {v8, v1, v6}, Ldb/m$t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const-string v9, "merge"

    .line 290
    .line 291
    invoke-virtual {v10, v9, v8}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 292
    .line 293
    .line 294
    new-instance v8, Ldb/u$a;

    .line 295
    .line 296
    invoke-direct {v8, v12, v11}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    new-instance v9, Ldb/m$u;

    .line 300
    .line 301
    invoke-direct {v9, v11}, Ldb/m$u;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string v10, "empty"

    .line 305
    .line 306
    invoke-virtual {v8, v10, v9}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 307
    .line 308
    .line 309
    new-instance v9, Ldb/m$v;

    .line 310
    .line 311
    invoke-direct {v9, v1, v11}, Ldb/m$v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const-string v10, "of"

    .line 315
    .line 316
    invoke-virtual {v8, v10, v9}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 317
    .line 318
    .line 319
    new-instance v9, Ldb/m$w;

    .line 320
    .line 321
    invoke-direct {v9, v1, v11}, Ldb/m$w;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const-string v10, "ofNullable"

    .line 325
    .line 326
    invoke-virtual {v8, v10, v9}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 327
    .line 328
    .line 329
    new-instance v9, Ldb/m$x;

    .line 330
    .line 331
    invoke-direct {v9, v1}, Ldb/m$x;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string v10, "get"

    .line 335
    .line 336
    invoke-virtual {v8, v10, v9}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 337
    .line 338
    .line 339
    new-instance v9, Ldb/m$y;

    .line 340
    .line 341
    invoke-direct {v9, v5}, Ldb/m$y;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string v11, "ifPresent"

    .line 345
    .line 346
    invoke-virtual {v8, v11, v9}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 347
    .line 348
    .line 349
    const-string v8, "ref/Reference"

    .line 350
    .line 351
    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    new-instance v8, Ldb/u$a;

    .line 356
    .line 357
    invoke-direct {v8, v12, v0}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    new-instance v0, Ldb/m$z;

    .line 361
    .line 362
    invoke-direct {v0, v1}, Ldb/m$z;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v8, v10, v0}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 366
    .line 367
    .line 368
    new-instance v0, Ldb/u$a;

    .line 369
    .line 370
    invoke-direct {v0, v12, v3}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    new-instance v3, Ldb/m$a0;

    .line 374
    .line 375
    invoke-direct {v3, v1}, Ldb/m$a0;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    const-string v8, "test"

    .line 379
    .line 380
    invoke-virtual {v0, v8, v3}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 381
    .line 382
    .line 383
    const-string v0, "BiPredicate"

    .line 384
    .line 385
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    new-instance v3, Ldb/u$a;

    .line 390
    .line 391
    invoke-direct {v3, v12, v0}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    new-instance v0, Ldb/m$b0;

    .line 395
    .line 396
    invoke-direct {v0, v1}, Ldb/m$b0;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3, v8, v0}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 400
    .line 401
    .line 402
    new-instance v0, Ldb/u$a;

    .line 403
    .line 404
    invoke-direct {v0, v12, v5}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    new-instance v3, Ldb/m$b;

    .line 408
    .line 409
    invoke-direct {v3, v1}, Ldb/m$b;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    const-string v5, "accept"

    .line 413
    .line 414
    invoke-virtual {v0, v5, v3}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 415
    .line 416
    .line 417
    new-instance v0, Ldb/u$a;

    .line 418
    .line 419
    invoke-direct {v0, v12, v7}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    new-instance v3, Ldb/m$c;

    .line 423
    .line 424
    invoke-direct {v3, v1}, Ldb/m$c;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v5, v3}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 428
    .line 429
    .line 430
    new-instance v0, Ldb/u$a;

    .line 431
    .line 432
    invoke-direct {v0, v12, v4}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    new-instance v3, Ldb/m$d;

    .line 436
    .line 437
    invoke-direct {v3, v1}, Ldb/m$d;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    const-string v4, "apply"

    .line 441
    .line 442
    invoke-virtual {v0, v4, v3}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 443
    .line 444
    .line 445
    new-instance v0, Ldb/u$a;

    .line 446
    .line 447
    invoke-direct {v0, v12, v6}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    new-instance v3, Ldb/m$e;

    .line 451
    .line 452
    invoke-direct {v3, v1}, Ldb/m$e;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0, v4, v3}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 456
    .line 457
    .line 458
    const-string v0, "Supplier"

    .line 459
    .line 460
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    new-instance v2, Ldb/u$a;

    .line 465
    .line 466
    invoke-direct {v2, v12, v0}, Ldb/u$a;-><init>(Ldb/u;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    new-instance v0, Ldb/m$f;

    .line 470
    .line 471
    invoke-direct {v0, v1}, Ldb/m$f;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2, v10, v0}, Ldb/u$a;->a(Ljava/lang/String;Lx9/l;)V

    .line 475
    .line 476
    .line 477
    iget-object v0, v12, Ldb/u;->a:Ljava/util/LinkedHashMap;

    .line 478
    .line 479
    sput-object v0, Ldb/m;->d:Ljava/util/LinkedHashMap;

    .line 480
    .line 481
    return-void
.end method
