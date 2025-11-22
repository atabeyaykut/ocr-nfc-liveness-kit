.class public final Lic/s;
.super Lic/b;
.source "SourceFile"


# static fields
.field public static final a:Lic/s;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lic/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lic/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lic/s;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lic/s;->a:Lic/s;

    .line 7
    .line 8
    const/16 v0, 0x13

    .line 9
    .line 10
    new-array v0, v0, [Lic/k;

    .line 11
    .line 12
    new-instance v1, Lic/k;

    .line 13
    .line 14
    sget-object v2, Lic/t;->i:Llb/f;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    new-array v4, v3, [Lic/f;

    .line 18
    .line 19
    sget-object v5, Lic/n$b;->b:Lic/n$b;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    aput-object v5, v4, v6

    .line 23
    .line 24
    new-instance v7, Lic/v$a;

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    invoke-direct {v7, v8}, Lic/v$a;-><init>(I)V

    .line 28
    .line 29
    .line 30
    aput-object v7, v4, v8

    .line 31
    .line 32
    invoke-direct {v1, v2, v4}, Lic/k;-><init>(Llb/f;[Lic/f;)V

    .line 33
    .line 34
    .line 35
    aput-object v1, v0, v6

    .line 36
    .line 37
    new-instance v1, Lic/k;

    .line 38
    .line 39
    sget-object v2, Lic/t;->j:Llb/f;

    .line 40
    .line 41
    new-array v4, v3, [Lic/f;

    .line 42
    .line 43
    aput-object v5, v4, v6

    .line 44
    .line 45
    new-instance v7, Lic/v$a;

    .line 46
    .line 47
    invoke-direct {v7, v3}, Lic/v$a;-><init>(I)V

    .line 48
    .line 49
    .line 50
    aput-object v7, v4, v8

    .line 51
    .line 52
    sget-object v7, Lic/s$a;->a:Lic/s$a;

    .line 53
    .line 54
    invoke-direct {v1, v2, v4, v7}, Lic/k;-><init>(Llb/f;[Lic/f;Lx9/l;)V

    .line 55
    .line 56
    .line 57
    aput-object v1, v0, v8

    .line 58
    .line 59
    new-instance v1, Lic/k;

    .line 60
    .line 61
    sget-object v2, Lic/t;->a:Llb/f;

    .line 62
    .line 63
    const/4 v4, 0x4

    .line 64
    new-array v7, v4, [Lic/f;

    .line 65
    .line 66
    aput-object v5, v7, v6

    .line 67
    .line 68
    sget-object v9, Lic/p;->a:Lic/p;

    .line 69
    .line 70
    aput-object v9, v7, v8

    .line 71
    .line 72
    new-instance v10, Lic/v$a;

    .line 73
    .line 74
    invoke-direct {v10, v3}, Lic/v$a;-><init>(I)V

    .line 75
    .line 76
    .line 77
    aput-object v10, v7, v3

    .line 78
    .line 79
    sget-object v10, Lic/m;->a:Lic/m;

    .line 80
    .line 81
    const/4 v11, 0x3

    .line 82
    aput-object v10, v7, v11

    .line 83
    .line 84
    invoke-direct {v1, v2, v7}, Lic/k;-><init>(Llb/f;[Lic/f;)V

    .line 85
    .line 86
    .line 87
    aput-object v1, v0, v3

    .line 88
    .line 89
    new-instance v1, Lic/k;

    .line 90
    .line 91
    sget-object v2, Lic/t;->b:Llb/f;

    .line 92
    .line 93
    new-array v7, v4, [Lic/f;

    .line 94
    .line 95
    aput-object v5, v7, v6

    .line 96
    .line 97
    aput-object v9, v7, v8

    .line 98
    .line 99
    new-instance v12, Lic/v$a;

    .line 100
    .line 101
    invoke-direct {v12, v11}, Lic/v$a;-><init>(I)V

    .line 102
    .line 103
    .line 104
    aput-object v12, v7, v3

    .line 105
    .line 106
    aput-object v10, v7, v11

    .line 107
    .line 108
    invoke-direct {v1, v2, v7}, Lic/k;-><init>(Llb/f;[Lic/f;)V

    .line 109
    .line 110
    .line 111
    aput-object v1, v0, v11

    .line 112
    .line 113
    new-instance v1, Lic/k;

    .line 114
    .line 115
    sget-object v2, Lic/t;->c:Llb/f;

    .line 116
    .line 117
    new-array v7, v4, [Lic/f;

    .line 118
    .line 119
    aput-object v5, v7, v6

    .line 120
    .line 121
    aput-object v9, v7, v8

    .line 122
    .line 123
    new-instance v12, Lic/v$b;

    .line 124
    .line 125
    invoke-direct {v12}, Lic/v$b;-><init>()V

    .line 126
    .line 127
    .line 128
    aput-object v12, v7, v3

    .line 129
    .line 130
    aput-object v10, v7, v11

    .line 131
    .line 132
    invoke-direct {v1, v2, v7}, Lic/k;-><init>(Llb/f;[Lic/f;)V

    .line 133
    .line 134
    .line 135
    aput-object v1, v0, v4

    .line 136
    .line 137
    new-instance v1, Lic/k;

    .line 138
    .line 139
    sget-object v2, Lic/t;->g:Llb/f;

    .line 140
    .line 141
    new-array v7, v8, [Lic/f;

    .line 142
    .line 143
    aput-object v5, v7, v6

    .line 144
    .line 145
    invoke-direct {v1, v2, v7}, Lic/k;-><init>(Llb/f;[Lic/f;)V

    .line 146
    .line 147
    .line 148
    const/4 v2, 0x5

    .line 149
    aput-object v1, v0, v2

    .line 150
    .line 151
    new-instance v1, Lic/k;

    .line 152
    .line 153
    sget-object v2, Lic/t;->f:Llb/f;

    .line 154
    .line 155
    new-array v7, v4, [Lic/f;

    .line 156
    .line 157
    aput-object v5, v7, v6

    .line 158
    .line 159
    sget-object v10, Lic/v$d;->b:Lic/v$d;

    .line 160
    .line 161
    aput-object v10, v7, v8

    .line 162
    .line 163
    aput-object v9, v7, v3

    .line 164
    .line 165
    sget-object v12, Lic/u$a;->c:Lic/u$a;

    .line 166
    .line 167
    aput-object v12, v7, v11

    .line 168
    .line 169
    invoke-direct {v1, v2, v7}, Lic/k;-><init>(Llb/f;[Lic/f;)V

    .line 170
    .line 171
    .line 172
    const/4 v2, 0x6

    .line 173
    aput-object v1, v0, v2

    .line 174
    .line 175
    new-instance v1, Lic/k;

    .line 176
    .line 177
    sget-object v2, Lic/t;->h:Llb/f;

    .line 178
    .line 179
    new-array v7, v3, [Lic/f;

    .line 180
    .line 181
    aput-object v5, v7, v6

    .line 182
    .line 183
    sget-object v13, Lic/v$c;->b:Lic/v$c;

    .line 184
    .line 185
    aput-object v13, v7, v8

    .line 186
    .line 187
    invoke-direct {v1, v2, v7}, Lic/k;-><init>(Llb/f;[Lic/f;)V

    .line 188
    .line 189
    .line 190
    const/4 v2, 0x7

    .line 191
    aput-object v1, v0, v2

    .line 192
    .line 193
    new-instance v1, Lic/k;

    .line 194
    .line 195
    sget-object v2, Lic/t;->k:Llb/f;

    .line 196
    .line 197
    new-array v7, v3, [Lic/f;

    .line 198
    .line 199
    aput-object v5, v7, v6

    .line 200
    .line 201
    aput-object v13, v7, v8

    .line 202
    .line 203
    invoke-direct {v1, v2, v7}, Lic/k;-><init>(Llb/f;[Lic/f;)V

    .line 204
    .line 205
    .line 206
    const/16 v2, 0x8

    .line 207
    .line 208
    aput-object v1, v0, v2

    .line 209
    .line 210
    new-instance v1, Lic/k;

    .line 211
    .line 212
    sget-object v2, Lic/t;->l:Llb/f;

    .line 213
    .line 214
    new-array v7, v11, [Lic/f;

    .line 215
    .line 216
    aput-object v5, v7, v6

    .line 217
    .line 218
    aput-object v13, v7, v8

    .line 219
    .line 220
    aput-object v12, v7, v3

    .line 221
    .line 222
    invoke-direct {v1, v2, v7}, Lic/k;-><init>(Llb/f;[Lic/f;)V

    .line 223
    .line 224
    .line 225
    const/16 v2, 0x9

    .line 226
    .line 227
    aput-object v1, v0, v2

    .line 228
    .line 229
    new-instance v1, Lic/k;

    .line 230
    .line 231
    sget-object v2, Lic/t;->p:Llb/f;

    .line 232
    .line 233
    new-array v7, v11, [Lic/f;

    .line 234
    .line 235
    aput-object v5, v7, v6

    .line 236
    .line 237
    aput-object v10, v7, v8

    .line 238
    .line 239
    aput-object v9, v7, v3

    .line 240
    .line 241
    invoke-direct {v1, v2, v7}, Lic/k;-><init>(Llb/f;[Lic/f;)V

    .line 242
    .line 243
    .line 244
    const/16 v2, 0xa

    .line 245
    .line 246
    aput-object v1, v0, v2

    .line 247
    .line 248
    new-instance v1, Lic/k;

    .line 249
    .line 250
    sget-object v2, Lic/t;->q:Llb/f;

    .line 251
    .line 252
    new-array v7, v11, [Lic/f;

    .line 253
    .line 254
    aput-object v5, v7, v6

    .line 255
    .line 256
    aput-object v10, v7, v8

    .line 257
    .line 258
    aput-object v9, v7, v3

    .line 259
    .line 260
    invoke-direct {v1, v2, v7}, Lic/k;-><init>(Llb/f;[Lic/f;)V

    .line 261
    .line 262
    .line 263
    const/16 v2, 0xb

    .line 264
    .line 265
    aput-object v1, v0, v2

    .line 266
    .line 267
    new-instance v1, Lic/k;

    .line 268
    .line 269
    sget-object v2, Lic/t;->d:Llb/f;

    .line 270
    .line 271
    new-array v7, v8, [Lic/f;

    .line 272
    .line 273
    sget-object v12, Lic/n$a;->b:Lic/n$a;

    .line 274
    .line 275
    aput-object v12, v7, v6

    .line 276
    .line 277
    sget-object v12, Lic/s$b;->a:Lic/s$b;

    .line 278
    .line 279
    invoke-direct {v1, v2, v7, v12}, Lic/k;-><init>(Llb/f;[Lic/f;Lx9/l;)V

    .line 280
    .line 281
    .line 282
    const/16 v2, 0xc

    .line 283
    .line 284
    aput-object v1, v0, v2

    .line 285
    .line 286
    new-instance v1, Lic/k;

    .line 287
    .line 288
    sget-object v2, Lic/t;->e:Llb/f;

    .line 289
    .line 290
    new-array v7, v4, [Lic/f;

    .line 291
    .line 292
    aput-object v5, v7, v6

    .line 293
    .line 294
    sget-object v12, Lic/u$b;->c:Lic/u$b;

    .line 295
    .line 296
    aput-object v12, v7, v8

    .line 297
    .line 298
    aput-object v10, v7, v3

    .line 299
    .line 300
    aput-object v9, v7, v11

    .line 301
    .line 302
    invoke-direct {v1, v2, v7}, Lic/k;-><init>(Llb/f;[Lic/f;)V

    .line 303
    .line 304
    .line 305
    const/16 v2, 0xd

    .line 306
    .line 307
    aput-object v1, v0, v2

    .line 308
    .line 309
    new-instance v1, Lic/k;

    .line 310
    .line 311
    sget-object v2, Lic/t;->s:Ljava/util/Set;

    .line 312
    .line 313
    new-array v7, v11, [Lic/f;

    .line 314
    .line 315
    aput-object v5, v7, v6

    .line 316
    .line 317
    aput-object v10, v7, v8

    .line 318
    .line 319
    aput-object v9, v7, v3

    .line 320
    .line 321
    invoke-direct {v1, v2, v7}, Lic/k;-><init>(Ljava/util/Set;[Lic/f;)V

    .line 322
    .line 323
    .line 324
    const/16 v2, 0xe

    .line 325
    .line 326
    aput-object v1, v0, v2

    .line 327
    .line 328
    new-instance v1, Lic/k;

    .line 329
    .line 330
    sget-object v2, Lic/t;->r:Ljava/util/Set;

    .line 331
    .line 332
    new-array v7, v3, [Lic/f;

    .line 333
    .line 334
    aput-object v5, v7, v6

    .line 335
    .line 336
    aput-object v13, v7, v8

    .line 337
    .line 338
    invoke-direct {v1, v2, v7}, Lic/k;-><init>(Ljava/util/Set;[Lic/f;)V

    .line 339
    .line 340
    .line 341
    const/16 v2, 0xf

    .line 342
    .line 343
    aput-object v1, v0, v2

    .line 344
    .line 345
    new-instance v1, Lic/k;

    .line 346
    .line 347
    new-array v2, v3, [Llb/f;

    .line 348
    .line 349
    sget-object v7, Lic/t;->n:Llb/f;

    .line 350
    .line 351
    aput-object v7, v2, v6

    .line 352
    .line 353
    sget-object v7, Lic/t;->o:Llb/f;

    .line 354
    .line 355
    aput-object v7, v2, v8

    .line 356
    .line 357
    invoke-static {v2}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    check-cast v2, Ljava/util/Collection;

    .line 362
    .line 363
    new-array v7, v8, [Lic/f;

    .line 364
    .line 365
    aput-object v5, v7, v6

    .line 366
    .line 367
    sget-object v12, Lic/s$c;->a:Lic/s$c;

    .line 368
    .line 369
    invoke-direct {v1, v2, v7, v12}, Lic/k;-><init>(Ljava/util/Collection;[Lic/f;Lx9/l;)V

    .line 370
    .line 371
    .line 372
    const/16 v2, 0x10

    .line 373
    .line 374
    aput-object v1, v0, v2

    .line 375
    .line 376
    new-instance v1, Lic/k;

    .line 377
    .line 378
    sget-object v2, Lic/t;->t:Ljava/util/Set;

    .line 379
    .line 380
    new-array v4, v4, [Lic/f;

    .line 381
    .line 382
    aput-object v5, v4, v6

    .line 383
    .line 384
    sget-object v7, Lic/u$c;->c:Lic/u$c;

    .line 385
    .line 386
    aput-object v7, v4, v8

    .line 387
    .line 388
    aput-object v10, v4, v3

    .line 389
    .line 390
    aput-object v9, v4, v11

    .line 391
    .line 392
    invoke-direct {v1, v2, v4}, Lic/k;-><init>(Ljava/util/Set;[Lic/f;)V

    .line 393
    .line 394
    .line 395
    const/16 v2, 0x11

    .line 396
    .line 397
    aput-object v1, v0, v2

    .line 398
    .line 399
    new-instance v1, Lic/k;

    .line 400
    .line 401
    sget-object v2, Lic/t;->m:Lmc/d;

    .line 402
    .line 403
    new-array v4, v3, [Lic/f;

    .line 404
    .line 405
    aput-object v5, v4, v6

    .line 406
    .line 407
    aput-object v13, v4, v8

    .line 408
    .line 409
    sget-object v5, Lic/i;->a:Lic/i;

    .line 410
    .line 411
    const-string v6, "regex"

    .line 412
    .line 413
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    const-string v6, "additionalChecks"

    .line 417
    .line 418
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const/4 v15, 0x0

    .line 422
    const/16 v17, 0x0

    .line 423
    .line 424
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    move-object/from16 v19, v3

    .line 429
    .line 430
    check-cast v19, [Lic/f;

    .line 431
    .line 432
    move-object v14, v1

    .line 433
    move-object/from16 v16, v2

    .line 434
    .line 435
    move-object/from16 v18, v5

    .line 436
    .line 437
    invoke-direct/range {v14 .. v19}, Lic/k;-><init>(Llb/f;Lmc/d;Ljava/util/Collection;Lx9/l;[Lic/f;)V

    .line 438
    .line 439
    .line 440
    const/16 v2, 0x12

    .line 441
    .line 442
    aput-object v1, v0, v2

    .line 443
    .line 444
    invoke-static {v0}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    sput-object v0, Lic/s;->b:Ljava/util/List;

    .line 449
    .line 450
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lic/b;-><init>()V

    return-void
.end method
