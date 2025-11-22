.class public final Lva/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llb/c;

.field public static final b:Llb/c;

.field public static final c:Llb/c;

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Llb/c;

.field public static final f:Llb/c;

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Llb/c;

.field public static final i:Llb/c;

.field public static final j:Llb/c;

.field public static final k:Llb/c;

.field public static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Llb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Llb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Llb/c;",
            "Llb/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Llb/c;

    .line 2
    .line 3
    const-string v1, "org.jspecify.nullness.Nullable"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lva/y;->a:Llb/c;

    .line 9
    .line 10
    new-instance v1, Llb/c;

    .line 11
    .line 12
    const-string v2, "org.jspecify.nullness.NullnessUnspecified"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lva/y;->b:Llb/c;

    .line 18
    .line 19
    new-instance v2, Llb/c;

    .line 20
    .line 21
    const-string v3, "org.jspecify.nullness.NullMarked"

    .line 22
    .line 23
    invoke-direct {v2, v3}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v2, Lva/y;->c:Llb/c;

    .line 27
    .line 28
    const/16 v3, 0xe

    .line 29
    .line 30
    new-array v3, v3, [Llb/c;

    .line 31
    .line 32
    sget-object v4, Lva/x;->i:Llb/c;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    aput-object v4, v3, v5

    .line 36
    .line 37
    new-instance v4, Llb/c;

    .line 38
    .line 39
    const-string v6, "androidx.annotation.Nullable"

    .line 40
    .line 41
    invoke-direct {v4, v6}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    aput-object v4, v3, v7

    .line 46
    .line 47
    new-instance v4, Llb/c;

    .line 48
    .line 49
    invoke-direct {v4, v6}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v6, 0x2

    .line 53
    aput-object v4, v3, v6

    .line 54
    .line 55
    new-instance v4, Llb/c;

    .line 56
    .line 57
    const-string v8, "android.annotation.Nullable"

    .line 58
    .line 59
    invoke-direct {v4, v8}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 v8, 0x3

    .line 63
    aput-object v4, v3, v8

    .line 64
    .line 65
    new-instance v4, Llb/c;

    .line 66
    .line 67
    const-string v9, "com.android.annotations.Nullable"

    .line 68
    .line 69
    invoke-direct {v4, v9}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 v9, 0x4

    .line 73
    aput-object v4, v3, v9

    .line 74
    .line 75
    new-instance v4, Llb/c;

    .line 76
    .line 77
    const-string v10, "org.eclipse.jdt.annotation.Nullable"

    .line 78
    .line 79
    invoke-direct {v4, v10}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 v10, 0x5

    .line 83
    aput-object v4, v3, v10

    .line 84
    .line 85
    new-instance v4, Llb/c;

    .line 86
    .line 87
    const-string v11, "org.checkerframework.checker.nullness.qual.Nullable"

    .line 88
    .line 89
    invoke-direct {v4, v11}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 v11, 0x6

    .line 93
    aput-object v4, v3, v11

    .line 94
    .line 95
    new-instance v4, Llb/c;

    .line 96
    .line 97
    const-string v12, "javax.annotation.Nullable"

    .line 98
    .line 99
    invoke-direct {v4, v12}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 v12, 0x7

    .line 103
    aput-object v4, v3, v12

    .line 104
    .line 105
    new-instance v4, Llb/c;

    .line 106
    .line 107
    const-string v13, "javax.annotation.CheckForNull"

    .line 108
    .line 109
    invoke-direct {v4, v13}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/16 v14, 0x8

    .line 113
    .line 114
    aput-object v4, v3, v14

    .line 115
    .line 116
    new-instance v4, Llb/c;

    .line 117
    .line 118
    const-string v15, "edu.umd.cs.findbugs.annotations.CheckForNull"

    .line 119
    .line 120
    invoke-direct {v4, v15}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const/16 v15, 0x9

    .line 124
    .line 125
    aput-object v4, v3, v15

    .line 126
    .line 127
    new-instance v4, Llb/c;

    .line 128
    .line 129
    const-string v15, "edu.umd.cs.findbugs.annotations.Nullable"

    .line 130
    .line 131
    invoke-direct {v4, v15}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const/16 v15, 0xa

    .line 135
    .line 136
    aput-object v4, v3, v15

    .line 137
    .line 138
    new-instance v4, Llb/c;

    .line 139
    .line 140
    const-string v15, "edu.umd.cs.findbugs.annotations.PossiblyNull"

    .line 141
    .line 142
    invoke-direct {v4, v15}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const/16 v15, 0xb

    .line 146
    .line 147
    aput-object v4, v3, v15

    .line 148
    .line 149
    new-instance v4, Llb/c;

    .line 150
    .line 151
    const-string v14, "io.reactivex.annotations.Nullable"

    .line 152
    .line 153
    invoke-direct {v4, v14}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const/16 v14, 0xc

    .line 157
    .line 158
    aput-object v4, v3, v14

    .line 159
    .line 160
    new-instance v4, Llb/c;

    .line 161
    .line 162
    const-string v14, "io.reactivex.rxjava3.annotations.Nullable"

    .line 163
    .line 164
    invoke-direct {v4, v14}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/16 v14, 0xd

    .line 168
    .line 169
    aput-object v4, v3, v14

    .line 170
    .line 171
    invoke-static {v3}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    sput-object v3, Lva/y;->d:Ljava/util/List;

    .line 176
    .line 177
    new-instance v4, Llb/c;

    .line 178
    .line 179
    const-string v14, "javax.annotation.Nonnull"

    .line 180
    .line 181
    invoke-direct {v4, v14}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sput-object v4, Lva/y;->e:Llb/c;

    .line 185
    .line 186
    new-instance v14, Llb/c;

    .line 187
    .line 188
    invoke-direct {v14, v13}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    sput-object v14, Lva/y;->f:Llb/c;

    .line 192
    .line 193
    new-array v13, v15, [Llb/c;

    .line 194
    .line 195
    sget-object v14, Lva/x;->h:Llb/c;

    .line 196
    .line 197
    aput-object v14, v13, v5

    .line 198
    .line 199
    new-instance v14, Llb/c;

    .line 200
    .line 201
    const-string v15, "edu.umd.cs.findbugs.annotations.NonNull"

    .line 202
    .line 203
    invoke-direct {v14, v15}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    aput-object v14, v13, v7

    .line 207
    .line 208
    new-instance v14, Llb/c;

    .line 209
    .line 210
    const-string v15, "androidx.annotation.NonNull"

    .line 211
    .line 212
    invoke-direct {v14, v15}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    aput-object v14, v13, v6

    .line 216
    .line 217
    new-instance v14, Llb/c;

    .line 218
    .line 219
    invoke-direct {v14, v15}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    aput-object v14, v13, v8

    .line 223
    .line 224
    new-instance v14, Llb/c;

    .line 225
    .line 226
    const-string v15, "android.annotation.NonNull"

    .line 227
    .line 228
    invoke-direct {v14, v15}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    aput-object v14, v13, v9

    .line 232
    .line 233
    new-instance v14, Llb/c;

    .line 234
    .line 235
    const-string v15, "com.android.annotations.NonNull"

    .line 236
    .line 237
    invoke-direct {v14, v15}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    aput-object v14, v13, v10

    .line 241
    .line 242
    new-instance v10, Llb/c;

    .line 243
    .line 244
    const-string v14, "org.eclipse.jdt.annotation.NonNull"

    .line 245
    .line 246
    invoke-direct {v10, v14}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    aput-object v10, v13, v11

    .line 250
    .line 251
    new-instance v10, Llb/c;

    .line 252
    .line 253
    const-string v11, "org.checkerframework.checker.nullness.qual.NonNull"

    .line 254
    .line 255
    invoke-direct {v10, v11}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    aput-object v10, v13, v12

    .line 259
    .line 260
    new-instance v10, Llb/c;

    .line 261
    .line 262
    const-string v11, "lombok.NonNull"

    .line 263
    .line 264
    invoke-direct {v10, v11}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const/16 v11, 0x8

    .line 268
    .line 269
    aput-object v10, v13, v11

    .line 270
    .line 271
    new-instance v10, Llb/c;

    .line 272
    .line 273
    const-string v11, "io.reactivex.annotations.NonNull"

    .line 274
    .line 275
    invoke-direct {v10, v11}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    const/16 v11, 0x9

    .line 279
    .line 280
    aput-object v10, v13, v11

    .line 281
    .line 282
    new-instance v10, Llb/c;

    .line 283
    .line 284
    const-string v11, "io.reactivex.rxjava3.annotations.NonNull"

    .line 285
    .line 286
    invoke-direct {v10, v11}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const/16 v11, 0xa

    .line 290
    .line 291
    aput-object v10, v13, v11

    .line 292
    .line 293
    invoke-static {v13}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    sput-object v10, Lva/y;->g:Ljava/util/List;

    .line 298
    .line 299
    new-instance v11, Llb/c;

    .line 300
    .line 301
    const-string v12, "org.checkerframework.checker.nullness.compatqual.NullableDecl"

    .line 302
    .line 303
    invoke-direct {v11, v12}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    sput-object v11, Lva/y;->h:Llb/c;

    .line 307
    .line 308
    new-instance v12, Llb/c;

    .line 309
    .line 310
    const-string v13, "org.checkerframework.checker.nullness.compatqual.NonNullDecl"

    .line 311
    .line 312
    invoke-direct {v12, v13}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    sput-object v12, Lva/y;->i:Llb/c;

    .line 316
    .line 317
    new-instance v13, Llb/c;

    .line 318
    .line 319
    const-string v14, "androidx.annotation.RecentlyNullable"

    .line 320
    .line 321
    invoke-direct {v13, v14}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    sput-object v13, Lva/y;->j:Llb/c;

    .line 325
    .line 326
    new-instance v14, Llb/c;

    .line 327
    .line 328
    const-string v15, "androidx.annotation.RecentlyNonNull"

    .line 329
    .line 330
    invoke-direct {v14, v15}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    sput-object v14, Lva/y;->k:Llb/c;

    .line 334
    .line 335
    new-instance v15, Ljava/util/LinkedHashSet;

    .line 336
    .line 337
    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    .line 338
    .line 339
    .line 340
    check-cast v3, Ljava/lang/Iterable;

    .line 341
    .line 342
    invoke-static {v15, v3}, Lm9/g0;->F(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-static {v3, v4}, Lm9/g0;->G(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    check-cast v10, Ljava/lang/Iterable;

    .line 351
    .line 352
    invoke-static {v3, v10}, Lm9/g0;->F(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-static {v3, v11}, Lm9/g0;->G(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-static {v3, v12}, Lm9/g0;->G(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-static {v3, v13}, Lm9/g0;->G(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-static {v3, v14}, Lm9/g0;->G(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-static {v3, v0}, Lm9/g0;->G(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-static {v0, v1}, Lm9/g0;->G(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-static {v0, v2}, Lm9/g0;->G(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 381
    .line 382
    .line 383
    new-array v0, v6, [Llb/c;

    .line 384
    .line 385
    sget-object v1, Lva/x;->k:Llb/c;

    .line 386
    .line 387
    aput-object v1, v0, v5

    .line 388
    .line 389
    sget-object v1, Lva/x;->l:Llb/c;

    .line 390
    .line 391
    aput-object v1, v0, v7

    .line 392
    .line 393
    invoke-static {v0}, Lx5/a;->s([Ljava/lang/Object;)Ljava/util/Set;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    sput-object v0, Lva/y;->l:Ljava/util/Set;

    .line 398
    .line 399
    new-array v0, v6, [Llb/c;

    .line 400
    .line 401
    sget-object v1, Lva/x;->j:Llb/c;

    .line 402
    .line 403
    aput-object v1, v0, v5

    .line 404
    .line 405
    sget-object v1, Lva/x;->m:Llb/c;

    .line 406
    .line 407
    aput-object v1, v0, v7

    .line 408
    .line 409
    invoke-static {v0}, Lx5/a;->s([Ljava/lang/Object;)Ljava/util/Set;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    sput-object v0, Lva/y;->m:Ljava/util/Set;

    .line 414
    .line 415
    new-array v0, v9, [Ll9/g;

    .line 416
    .line 417
    sget-object v1, Lva/x;->c:Llb/c;

    .line 418
    .line 419
    sget-object v2, Lja/o$a;->t:Llb/c;

    .line 420
    .line 421
    new-instance v3, Ll9/g;

    .line 422
    .line 423
    invoke-direct {v3, v1, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    aput-object v3, v0, v5

    .line 427
    .line 428
    sget-object v1, Lva/x;->d:Llb/c;

    .line 429
    .line 430
    sget-object v2, Lja/o$a;->w:Llb/c;

    .line 431
    .line 432
    new-instance v3, Ll9/g;

    .line 433
    .line 434
    invoke-direct {v3, v1, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    aput-object v3, v0, v7

    .line 438
    .line 439
    sget-object v1, Lva/x;->e:Llb/c;

    .line 440
    .line 441
    sget-object v2, Lja/o$a;->m:Llb/c;

    .line 442
    .line 443
    new-instance v3, Ll9/g;

    .line 444
    .line 445
    invoke-direct {v3, v1, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    aput-object v3, v0, v6

    .line 449
    .line 450
    sget-object v1, Lva/x;->f:Llb/c;

    .line 451
    .line 452
    sget-object v2, Lja/o$a;->x:Llb/c;

    .line 453
    .line 454
    new-instance v3, Ll9/g;

    .line 455
    .line 456
    invoke-direct {v3, v1, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    aput-object v3, v0, v8

    .line 460
    .line 461
    invoke-static {v0}, Lm9/e0;->R0([Ll9/g;)Ljava/util/Map;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    sput-object v0, Lva/y;->n:Ljava/util/Map;

    .line 466
    .line 467
    return-void
.end method
