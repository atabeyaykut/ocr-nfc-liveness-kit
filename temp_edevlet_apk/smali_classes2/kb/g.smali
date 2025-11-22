.class public Lkb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/c;


# static fields
.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljb/a$d$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v1, v0, [Ljava/lang/Character;

    .line 3
    .line 4
    const/16 v2, 0x6b

    .line 5
    .line 6
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 12
    .line 13
    const/16 v2, 0x6f

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v4, 0x1

    .line 20
    aput-object v2, v1, v4

    .line 21
    .line 22
    const/16 v2, 0x74

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v5, 0x2

    .line 29
    aput-object v2, v1, v5

    .line 30
    .line 31
    const/16 v2, 0x6c

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v6, 0x3

    .line 38
    aput-object v2, v1, v6

    .line 39
    .line 40
    const/16 v2, 0x69

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v7, 0x4

    .line 47
    aput-object v2, v1, v7

    .line 48
    .line 49
    const/16 v2, 0x6e

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v8, 0x5

    .line 56
    aput-object v2, v1, v8

    .line 57
    .line 58
    invoke-static {v1}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v9, v1

    .line 63
    check-cast v9, Ljava/lang/Iterable;

    .line 64
    .line 65
    const-string v10, ""

    .line 66
    .line 67
    const/4 v11, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/16 v14, 0x3e

    .line 71
    .line 72
    invoke-static/range {v9 .. v14}, Lm9/t;->g1(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/16 v2, 0x2c

    .line 77
    .line 78
    new-array v2, v2, [Ljava/lang/String;

    .line 79
    .line 80
    const-string v9, "/Any"

    .line 81
    .line 82
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    aput-object v9, v2, v3

    .line 87
    .line 88
    const-string v3, "/Nothing"

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    aput-object v3, v2, v4

    .line 95
    .line 96
    const-string v3, "/Unit"

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    aput-object v3, v2, v5

    .line 103
    .line 104
    const-string v3, "/Throwable"

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    aput-object v3, v2, v6

    .line 111
    .line 112
    const-string v3, "/Number"

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    aput-object v3, v2, v7

    .line 119
    .line 120
    const-string v3, "/Byte"

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    aput-object v3, v2, v8

    .line 127
    .line 128
    const-string v3, "/Double"

    .line 129
    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    aput-object v3, v2, v0

    .line 135
    .line 136
    const-string v0, "/Float"

    .line 137
    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const/4 v3, 0x7

    .line 143
    aput-object v0, v2, v3

    .line 144
    .line 145
    const-string v0, "/Int"

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const/16 v3, 0x8

    .line 152
    .line 153
    aput-object v0, v2, v3

    .line 154
    .line 155
    const-string v0, "/Long"

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const/16 v3, 0x9

    .line 162
    .line 163
    aput-object v0, v2, v3

    .line 164
    .line 165
    const-string v0, "/Short"

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const/16 v3, 0xa

    .line 172
    .line 173
    aput-object v0, v2, v3

    .line 174
    .line 175
    const-string v0, "/Boolean"

    .line 176
    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const/16 v3, 0xb

    .line 182
    .line 183
    aput-object v0, v2, v3

    .line 184
    .line 185
    const-string v0, "/Char"

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const/16 v3, 0xc

    .line 192
    .line 193
    aput-object v0, v2, v3

    .line 194
    .line 195
    const-string v0, "/CharSequence"

    .line 196
    .line 197
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const/16 v3, 0xd

    .line 202
    .line 203
    aput-object v0, v2, v3

    .line 204
    .line 205
    const-string v0, "/String"

    .line 206
    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const/16 v3, 0xe

    .line 212
    .line 213
    aput-object v0, v2, v3

    .line 214
    .line 215
    const-string v0, "/Comparable"

    .line 216
    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const/16 v3, 0xf

    .line 222
    .line 223
    aput-object v0, v2, v3

    .line 224
    .line 225
    const-string v0, "/Enum"

    .line 226
    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const/16 v3, 0x10

    .line 232
    .line 233
    aput-object v0, v2, v3

    .line 234
    .line 235
    const-string v0, "/Array"

    .line 236
    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const/16 v4, 0x11

    .line 242
    .line 243
    aput-object v0, v2, v4

    .line 244
    .line 245
    const-string v0, "/ByteArray"

    .line 246
    .line 247
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const/16 v4, 0x12

    .line 252
    .line 253
    aput-object v0, v2, v4

    .line 254
    .line 255
    const-string v0, "/DoubleArray"

    .line 256
    .line 257
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    const/16 v4, 0x13

    .line 262
    .line 263
    aput-object v0, v2, v4

    .line 264
    .line 265
    const-string v0, "/FloatArray"

    .line 266
    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    const/16 v4, 0x14

    .line 272
    .line 273
    aput-object v0, v2, v4

    .line 274
    .line 275
    const-string v0, "/IntArray"

    .line 276
    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    const/16 v4, 0x15

    .line 282
    .line 283
    aput-object v0, v2, v4

    .line 284
    .line 285
    const-string v0, "/LongArray"

    .line 286
    .line 287
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const/16 v4, 0x16

    .line 292
    .line 293
    aput-object v0, v2, v4

    .line 294
    .line 295
    const-string v0, "/ShortArray"

    .line 296
    .line 297
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    const/16 v4, 0x17

    .line 302
    .line 303
    aput-object v0, v2, v4

    .line 304
    .line 305
    const-string v0, "/BooleanArray"

    .line 306
    .line 307
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    const/16 v4, 0x18

    .line 312
    .line 313
    aput-object v0, v2, v4

    .line 314
    .line 315
    const-string v0, "/CharArray"

    .line 316
    .line 317
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    const/16 v4, 0x19

    .line 322
    .line 323
    aput-object v0, v2, v4

    .line 324
    .line 325
    const-string v0, "/Cloneable"

    .line 326
    .line 327
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    const/16 v4, 0x1a

    .line 332
    .line 333
    aput-object v0, v2, v4

    .line 334
    .line 335
    const-string v0, "/Annotation"

    .line 336
    .line 337
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    const/16 v4, 0x1b

    .line 342
    .line 343
    aput-object v0, v2, v4

    .line 344
    .line 345
    const-string v0, "/collections/Iterable"

    .line 346
    .line 347
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    const/16 v4, 0x1c

    .line 352
    .line 353
    aput-object v0, v2, v4

    .line 354
    .line 355
    const-string v0, "/collections/MutableIterable"

    .line 356
    .line 357
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const/16 v4, 0x1d

    .line 362
    .line 363
    aput-object v0, v2, v4

    .line 364
    .line 365
    const-string v0, "/collections/Collection"

    .line 366
    .line 367
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    const/16 v4, 0x1e

    .line 372
    .line 373
    aput-object v0, v2, v4

    .line 374
    .line 375
    const-string v0, "/collections/MutableCollection"

    .line 376
    .line 377
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    const/16 v4, 0x1f

    .line 382
    .line 383
    aput-object v0, v2, v4

    .line 384
    .line 385
    const-string v0, "/collections/List"

    .line 386
    .line 387
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    const/16 v4, 0x20

    .line 392
    .line 393
    aput-object v0, v2, v4

    .line 394
    .line 395
    const-string v0, "/collections/MutableList"

    .line 396
    .line 397
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    const/16 v4, 0x21

    .line 402
    .line 403
    aput-object v0, v2, v4

    .line 404
    .line 405
    const-string v0, "/collections/Set"

    .line 406
    .line 407
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    const/16 v4, 0x22

    .line 412
    .line 413
    aput-object v0, v2, v4

    .line 414
    .line 415
    const-string v0, "/collections/MutableSet"

    .line 416
    .line 417
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    const/16 v4, 0x23

    .line 422
    .line 423
    aput-object v0, v2, v4

    .line 424
    .line 425
    const-string v0, "/collections/Map"

    .line 426
    .line 427
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    const/16 v4, 0x24

    .line 432
    .line 433
    aput-object v0, v2, v4

    .line 434
    .line 435
    const-string v0, "/collections/MutableMap"

    .line 436
    .line 437
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    const/16 v4, 0x25

    .line 442
    .line 443
    aput-object v0, v2, v4

    .line 444
    .line 445
    const-string v0, "/collections/Map.Entry"

    .line 446
    .line 447
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    const/16 v4, 0x26

    .line 452
    .line 453
    aput-object v0, v2, v4

    .line 454
    .line 455
    const-string v0, "/collections/MutableMap.MutableEntry"

    .line 456
    .line 457
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    const/16 v4, 0x27

    .line 462
    .line 463
    aput-object v0, v2, v4

    .line 464
    .line 465
    const-string v0, "/collections/Iterator"

    .line 466
    .line 467
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    const/16 v4, 0x28

    .line 472
    .line 473
    aput-object v0, v2, v4

    .line 474
    .line 475
    const-string v0, "/collections/MutableIterator"

    .line 476
    .line 477
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    const/16 v4, 0x29

    .line 482
    .line 483
    aput-object v0, v2, v4

    .line 484
    .line 485
    const-string v0, "/collections/ListIterator"

    .line 486
    .line 487
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    const/16 v4, 0x2a

    .line 492
    .line 493
    aput-object v0, v2, v4

    .line 494
    .line 495
    const-string v0, "/collections/MutableListIterator"

    .line 496
    .line 497
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    const/16 v1, 0x2b

    .line 502
    .line 503
    aput-object v0, v2, v1

    .line 504
    .line 505
    invoke-static {v2}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    sput-object v0, Lkb/g;->d:Ljava/util/List;

    .line 510
    .line 511
    check-cast v0, Ljava/lang/Iterable;

    .line 512
    .line 513
    invoke-static {v0}, Lm9/t;->z1(Ljava/lang/Iterable;)Lm9/z;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    invoke-static {v1}, Lb8/f;->V(I)I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-ge v1, v3, :cond_0

    .line 526
    .line 527
    goto :goto_0

    .line 528
    :cond_0
    move v3, v1

    .line 529
    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 530
    .line 531
    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0}, Lm9/z;->iterator()Ljava/util/Iterator;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    :goto_1
    move-object v2, v0

    .line 539
    check-cast v2, Lm9/a0;

    .line 540
    .line 541
    invoke-virtual {v2}, Lm9/a0;->hasNext()Z

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    if-eqz v3, :cond_1

    .line 546
    .line 547
    invoke-virtual {v2}, Lm9/a0;->next()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    check-cast v2, Lm9/y;

    .line 552
    .line 553
    iget-object v3, v2, Lm9/y;->b:Ljava/lang/Object;

    .line 554
    .line 555
    check-cast v3, Ljava/lang/String;

    .line 556
    .line 557
    iget v2, v2, Lm9/y;->a:I

    .line 558
    .line 559
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    goto :goto_1

    .line 567
    :cond_1
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/Set;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkb/g;->a:[Ljava/lang/String;

    iput-object p2, p0, Lkb/g;->b:Ljava/util/Set;

    iput-object p3, p0, Lkb/g;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lkb/g;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Z
    .locals 1

    iget-object v0, p0, Lkb/g;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lkb/g;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljb/a$d$c;

    .line 8
    .line 9
    iget v1, v0, Ljb/a$d$c;->b:I

    .line 10
    .line 11
    and-int/lit8 v2, v1, 0x4

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x4

    .line 16
    if-ne v2, v5, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    const/4 v5, 0x2

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    iget-object p1, v0, Ljb/a$d$c;->e:Ljava/lang/Object;

    .line 25
    .line 26
    instance-of v1, p1, Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    check-cast p1, Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_1
    check-cast p1, Lmb/c;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-virtual {p1}, Lmb/c;->E()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    invoke-virtual {p1}, Lmb/c;->x()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iput-object v1, v0, Ljb/a$d$c;->e:Ljava/lang/Object;

    .line 49
    .line 50
    :cond_2
    move-object p1, v1

    .line 51
    goto :goto_3

    .line 52
    :catch_0
    move-exception p1

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    const-string v1, "UTF-8 not supported?"

    .line 56
    .line 57
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_3
    and-int/2addr v1, v5

    .line 62
    if-ne v1, v5, :cond_4

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    const/4 v1, 0x0

    .line 67
    :goto_1
    if-eqz v1, :cond_6

    .line 68
    .line 69
    sget-object v1, Lkb/g;->d:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iget v6, v0, Ljb/a$d$c;->d:I

    .line 76
    .line 77
    if-ltz v6, :cond_5

    .line 78
    .line 79
    if-ge v6, v2, :cond_5

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    goto :goto_2

    .line 83
    :cond_5
    const/4 v2, 0x0

    .line 84
    :goto_2
    if-eqz v2, :cond_6

    .line 85
    .line 86
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Ljava/lang/String;

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_6
    iget-object v1, p0, Lkb/g;->a:[Ljava/lang/String;

    .line 94
    .line 95
    aget-object p1, v1, p1

    .line 96
    .line 97
    :goto_3
    iget-object v1, v0, Ljb/a$d$c;->g:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 104
    .line 105
    if-lt v1, v5, :cond_7

    .line 106
    .line 107
    iget-object v1, v0, Ljb/a$d$c;->g:Ljava/util/List;

    .line 108
    .line 109
    const-string v6, "substringIndexList"

    .line 110
    .line 111
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Ljava/lang/Integer;

    .line 125
    .line 126
    const-string v7, "begin"

    .line 127
    .line 128
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-ltz v7, :cond_7

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    const-string v8, "end"

    .line 142
    .line 143
    invoke-static {v1, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-gt v7, v8, :cond_7

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-gt v7, v8, :cond_7

    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    iget-object v1, v0, Ljb/a$d$c;->j:Ljava/util/List;

    .line 178
    .line 179
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    const-string v6, "string"

    .line 184
    .line 185
    if-lt v1, v5, :cond_8

    .line 186
    .line 187
    iget-object v1, v0, Ljb/a$d$c;->j:Ljava/util/List;

    .line 188
    .line 189
    const-string v7, "replaceCharList"

    .line 190
    .line 191
    invoke-static {v1, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Ljava/lang/Integer;

    .line 199
    .line 200
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-static {p1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    int-to-char v4, v4

    .line 214
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    int-to-char v1, v1

    .line 219
    invoke-static {p1, v4, v1}, Lmc/j;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    :cond_8
    iget-object v0, v0, Ljb/a$d$c;->f:Ljb/a$d$c$c;

    .line 224
    .line 225
    if-nez v0, :cond_9

    .line 226
    .line 227
    sget-object v0, Ljb/a$d$c$c;->b:Ljb/a$d$c$c;

    .line 228
    .line 229
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    const/16 v1, 0x2e

    .line 234
    .line 235
    const/16 v4, 0x24

    .line 236
    .line 237
    if-eq v0, v3, :cond_b

    .line 238
    .line 239
    if-eq v0, v5, :cond_a

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-lt v0, v5, :cond_c

    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    sub-int/2addr v0, v3

    .line 253
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_b
    invoke-static {p1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_c
    :goto_4
    invoke-static {p1, v4, v1}, Lmc/j;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    :goto_5
    invoke-static {p1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    return-object p1
.end method
