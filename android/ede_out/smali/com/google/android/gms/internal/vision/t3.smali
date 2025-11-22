.class public final Lcom/google/android/gms/internal/vision/t3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/t3$a;,
        Lcom/google/android/gms/internal/vision/t3$c;,
        Lcom/google/android/gms/internal/vision/t3$b;,
        Lcom/google/android/gms/internal/vision/t3$d;
    }
.end annotation


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/vision/t3$d;

.field public static final d:Z

.field public static final e:Z

.field public static final f:J

.field public static final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/vision/t3;->m()Lsun/misc/Unsafe;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/android/gms/internal/vision/t3;->a:Lsun/misc/Unsafe;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/vision/i0;->b()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lcom/google/android/gms/internal/vision/t3;->b:Ljava/lang/Class;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/t3;->s(Ljava/lang/Class;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/t3;->s(Ljava/lang/Class;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/i0;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_3

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    new-instance v2, Lcom/google/android/gms/internal/vision/t3$c;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/vision/t3$c;-><init>(Lsun/misc/Unsafe;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-eqz v4, :cond_2

    .line 43
    .line 44
    new-instance v2, Lcom/google/android/gms/internal/vision/t3$a;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/vision/t3$a;-><init>(Lsun/misc/Unsafe;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/vision/t3$b;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/vision/t3$b;-><init>(Lsun/misc/Unsafe;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    sput-object v2, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    .line 58
    .line 59
    const-string v2, "copyMemory"

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    const/4 v7, 0x1

    .line 63
    const-string v8, "putLong"

    .line 64
    .line 65
    const-string v9, "putInt"

    .line 66
    .line 67
    const-string v10, "getInt"

    .line 68
    .line 69
    const-string v11, "putByte"

    .line 70
    .line 71
    const-string v12, "getByte"

    .line 72
    .line 73
    const-class v13, Ljava/lang/reflect/Field;

    .line 74
    .line 75
    const-string v14, "com.google.protobuf.UnsafeUtil"

    .line 76
    .line 77
    const-string v15, "platform method missing - proto runtime falling back to safer methods: "

    .line 78
    .line 79
    const-class v16, Lcom/google/android/gms/internal/vision/t3;

    .line 80
    .line 81
    const-string v5, "objectFieldOffset"

    .line 82
    .line 83
    const-class v17, Ljava/lang/Object;

    .line 84
    .line 85
    const-string v6, "getLong"

    .line 86
    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    move-object v4, v14

    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    move-object/from16 v18, v14

    .line 97
    .line 98
    :try_start_1
    new-array v14, v7, [Ljava/lang/Class;

    .line 99
    .line 100
    aput-object v13, v14, v4

    .line 101
    .line 102
    invoke-virtual {v0, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 103
    .line 104
    .line 105
    const/4 v14, 0x2

    .line 106
    new-array v7, v14, [Ljava/lang/Class;

    .line 107
    .line 108
    aput-object v17, v7, v4

    .line 109
    .line 110
    const/4 v14, 0x1

    .line 111
    aput-object v1, v7, v14

    .line 112
    .line 113
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/google/android/gms/internal/vision/t3;->v()Ljava/lang/reflect/Field;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    if-nez v7, :cond_5

    .line 121
    .line 122
    move-object/from16 v4, v18

    .line 123
    .line 124
    goto/16 :goto_4

    .line 125
    .line 126
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/vision/i0;->a()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_6

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    const/4 v7, 0x1

    .line 134
    new-array v14, v7, [Ljava/lang/Class;

    .line 135
    .line 136
    aput-object v1, v14, v4

    .line 137
    .line 138
    invoke-virtual {v0, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 139
    .line 140
    .line 141
    const/4 v7, 0x2

    .line 142
    new-array v14, v7, [Ljava/lang/Class;

    .line 143
    .line 144
    aput-object v1, v14, v4

    .line 145
    .line 146
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 147
    .line 148
    const/4 v4, 0x1

    .line 149
    aput-object v7, v14, v4

    .line 150
    .line 151
    invoke-virtual {v0, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 152
    .line 153
    .line 154
    new-array v7, v4, [Ljava/lang/Class;

    .line 155
    .line 156
    const/4 v14, 0x0

    .line 157
    aput-object v1, v7, v14

    .line 158
    .line 159
    invoke-virtual {v0, v10, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 160
    .line 161
    .line 162
    const/4 v7, 0x2

    .line 163
    new-array v4, v7, [Ljava/lang/Class;

    .line 164
    .line 165
    aput-object v1, v4, v14

    .line 166
    .line 167
    const/4 v7, 0x1

    .line 168
    aput-object v3, v4, v7

    .line 169
    .line 170
    invoke-virtual {v0, v9, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 171
    .line 172
    .line 173
    new-array v3, v7, [Ljava/lang/Class;

    .line 174
    .line 175
    aput-object v1, v3, v14

    .line 176
    .line 177
    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 178
    .line 179
    .line 180
    const/4 v3, 0x2

    .line 181
    new-array v4, v3, [Ljava/lang/Class;

    .line 182
    .line 183
    aput-object v1, v4, v14

    .line 184
    .line 185
    aput-object v1, v4, v7

    .line 186
    .line 187
    invoke-virtual {v0, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 188
    .line 189
    .line 190
    const/4 v3, 0x3

    .line 191
    new-array v4, v3, [Ljava/lang/Class;

    .line 192
    .line 193
    aput-object v1, v4, v14

    .line 194
    .line 195
    aput-object v1, v4, v7

    .line 196
    .line 197
    const/4 v3, 0x2

    .line 198
    aput-object v1, v4, v3

    .line 199
    .line 200
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 201
    .line 202
    .line 203
    const/4 v3, 0x5

    .line 204
    new-array v3, v3, [Ljava/lang/Class;

    .line 205
    .line 206
    const/4 v4, 0x0

    .line 207
    aput-object v17, v3, v4

    .line 208
    .line 209
    const/4 v4, 0x1

    .line 210
    aput-object v1, v3, v4

    .line 211
    .line 212
    const/4 v4, 0x2

    .line 213
    aput-object v17, v3, v4

    .line 214
    .line 215
    const/4 v4, 0x3

    .line 216
    aput-object v1, v3, v4

    .line 217
    .line 218
    const/4 v4, 0x4

    .line 219
    aput-object v1, v3, v4

    .line 220
    .line 221
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .line 223
    .line 224
    :goto_2
    move-object/from16 v4, v18

    .line 225
    .line 226
    const/4 v0, 0x1

    .line 227
    goto :goto_5

    .line 228
    :catchall_0
    move-exception v0

    .line 229
    goto :goto_3

    .line 230
    :catchall_1
    move-exception v0

    .line 231
    move-object/from16 v18, v14

    .line 232
    .line 233
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 242
    .line 243
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    add-int/lit8 v3, v3, 0x47

    .line 252
    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    const-string v3, "supportsUnsafeByteBufferOperations"

    .line 269
    .line 270
    move-object/from16 v4, v18

    .line 271
    .line 272
    invoke-virtual {v1, v2, v4, v3, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :goto_4
    const/4 v0, 0x0

    .line 276
    :goto_5
    sput-boolean v0, Lcom/google/android/gms/internal/vision/t3;->d:Z

    .line 277
    .line 278
    const-class v0, Ljava/lang/Class;

    .line 279
    .line 280
    sget-object v1, Lcom/google/android/gms/internal/vision/t3;->a:Lsun/misc/Unsafe;

    .line 281
    .line 282
    if-nez v1, :cond_7

    .line 283
    .line 284
    const/4 v5, 0x0

    .line 285
    const/4 v14, 0x1

    .line 286
    goto/16 :goto_9

    .line 287
    .line 288
    :cond_7
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    const/4 v2, 0x1

    .line 293
    new-array v3, v2, [Ljava/lang/Class;

    .line 294
    .line 295
    const/4 v7, 0x0

    .line 296
    aput-object v13, v3, v7

    .line 297
    .line 298
    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 299
    .line 300
    .line 301
    const-string v3, "arrayBaseOffset"

    .line 302
    .line 303
    new-array v5, v2, [Ljava/lang/Class;

    .line 304
    .line 305
    aput-object v0, v5, v7

    .line 306
    .line 307
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 308
    .line 309
    .line 310
    const-string v3, "arrayIndexScale"

    .line 311
    .line 312
    new-array v5, v2, [Ljava/lang/Class;

    .line 313
    .line 314
    aput-object v0, v5, v7

    .line 315
    .line 316
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 317
    .line 318
    .line 319
    const/4 v2, 0x2

    .line 320
    new-array v0, v2, [Ljava/lang/Class;

    .line 321
    .line 322
    aput-object v17, v0, v7

    .line 323
    .line 324
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 325
    .line 326
    const/4 v3, 0x1

    .line 327
    aput-object v2, v0, v3

    .line 328
    .line 329
    invoke-virtual {v1, v10, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 330
    .line 331
    .line 332
    const/4 v5, 0x3

    .line 333
    new-array v0, v5, [Ljava/lang/Class;

    .line 334
    .line 335
    aput-object v17, v0, v7

    .line 336
    .line 337
    aput-object v2, v0, v3

    .line 338
    .line 339
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 340
    .line 341
    const/4 v5, 0x2

    .line 342
    aput-object v3, v0, v5

    .line 343
    .line 344
    invoke-virtual {v1, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 345
    .line 346
    .line 347
    new-array v0, v5, [Ljava/lang/Class;

    .line 348
    .line 349
    const/4 v3, 0x0

    .line 350
    aput-object v17, v0, v3

    .line 351
    .line 352
    const/4 v5, 0x1

    .line 353
    aput-object v2, v0, v5

    .line 354
    .line 355
    invoke-virtual {v1, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 356
    .line 357
    .line 358
    const/4 v6, 0x3

    .line 359
    new-array v0, v6, [Ljava/lang/Class;

    .line 360
    .line 361
    aput-object v17, v0, v3

    .line 362
    .line 363
    aput-object v2, v0, v5

    .line 364
    .line 365
    const/4 v3, 0x2

    .line 366
    aput-object v2, v0, v3

    .line 367
    .line 368
    invoke-virtual {v1, v8, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 369
    .line 370
    .line 371
    const-string v0, "getObject"

    .line 372
    .line 373
    new-array v5, v3, [Ljava/lang/Class;

    .line 374
    .line 375
    const/4 v3, 0x0

    .line 376
    aput-object v17, v5, v3

    .line 377
    .line 378
    const/4 v6, 0x1

    .line 379
    aput-object v2, v5, v6

    .line 380
    .line 381
    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 382
    .line 383
    .line 384
    const-string v0, "putObject"

    .line 385
    .line 386
    const/4 v5, 0x3

    .line 387
    new-array v7, v5, [Ljava/lang/Class;

    .line 388
    .line 389
    aput-object v17, v7, v3

    .line 390
    .line 391
    aput-object v2, v7, v6

    .line 392
    .line 393
    const/4 v3, 0x2

    .line 394
    aput-object v17, v7, v3

    .line 395
    .line 396
    invoke-virtual {v1, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 397
    .line 398
    .line 399
    invoke-static {}, Lcom/google/android/gms/internal/vision/i0;->a()Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_8

    .line 404
    .line 405
    const/4 v5, 0x0

    .line 406
    const/4 v14, 0x1

    .line 407
    goto :goto_6

    .line 408
    :cond_8
    new-array v0, v3, [Ljava/lang/Class;

    .line 409
    .line 410
    const/4 v3, 0x0

    .line 411
    aput-object v17, v0, v3

    .line 412
    .line 413
    const/4 v5, 0x1

    .line 414
    aput-object v2, v0, v5

    .line 415
    .line 416
    invoke-virtual {v1, v12, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 417
    .line 418
    .line 419
    const/4 v6, 0x3

    .line 420
    new-array v0, v6, [Ljava/lang/Class;

    .line 421
    .line 422
    aput-object v17, v0, v3

    .line 423
    .line 424
    aput-object v2, v0, v5

    .line 425
    .line 426
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 427
    .line 428
    const/4 v5, 0x2

    .line 429
    aput-object v3, v0, v5

    .line 430
    .line 431
    invoke-virtual {v1, v11, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 432
    .line 433
    .line 434
    const-string v0, "getBoolean"

    .line 435
    .line 436
    new-array v3, v5, [Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 437
    .line 438
    const/4 v5, 0x0

    .line 439
    :try_start_3
    aput-object v17, v3, v5

    .line 440
    .line 441
    const/4 v6, 0x1

    .line 442
    aput-object v2, v3, v6

    .line 443
    .line 444
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 445
    .line 446
    .line 447
    const-string v0, "putBoolean"

    .line 448
    .line 449
    const/4 v3, 0x3

    .line 450
    new-array v7, v3, [Ljava/lang/Class;

    .line 451
    .line 452
    aput-object v17, v7, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 453
    .line 454
    :try_start_4
    aput-object v2, v7, v6

    .line 455
    .line 456
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 457
    .line 458
    const/4 v5, 0x2

    .line 459
    aput-object v3, v7, v5

    .line 460
    .line 461
    invoke-virtual {v1, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 462
    .line 463
    .line 464
    const-string v0, "getFloat"

    .line 465
    .line 466
    new-array v3, v5, [Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 467
    .line 468
    const/4 v5, 0x0

    .line 469
    :try_start_5
    aput-object v17, v3, v5

    .line 470
    .line 471
    const/4 v6, 0x1

    .line 472
    aput-object v2, v3, v6

    .line 473
    .line 474
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 475
    .line 476
    .line 477
    const-string v0, "putFloat"

    .line 478
    .line 479
    const/4 v3, 0x3

    .line 480
    new-array v7, v3, [Ljava/lang/Class;

    .line 481
    .line 482
    aput-object v17, v7, v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 483
    .line 484
    :try_start_6
    aput-object v2, v7, v6

    .line 485
    .line 486
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 487
    .line 488
    const/4 v5, 0x2

    .line 489
    aput-object v3, v7, v5

    .line 490
    .line 491
    invoke-virtual {v1, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 492
    .line 493
    .line 494
    const-string v0, "getDouble"

    .line 495
    .line 496
    new-array v3, v5, [Ljava/lang/Class;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 497
    .line 498
    const/4 v5, 0x0

    .line 499
    :try_start_7
    aput-object v17, v3, v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 500
    .line 501
    const/4 v14, 0x1

    .line 502
    :try_start_8
    aput-object v2, v3, v14

    .line 503
    .line 504
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 505
    .line 506
    .line 507
    const-string v0, "putDouble"

    .line 508
    .line 509
    const/4 v3, 0x3

    .line 510
    new-array v3, v3, [Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 511
    .line 512
    const/4 v5, 0x0

    .line 513
    :try_start_9
    aput-object v17, v3, v5

    .line 514
    .line 515
    aput-object v2, v3, v14

    .line 516
    .line 517
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 518
    .line 519
    const/4 v6, 0x2

    .line 520
    aput-object v2, v3, v6

    .line 521
    .line 522
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 523
    .line 524
    .line 525
    :goto_6
    const/4 v0, 0x1

    .line 526
    goto :goto_a

    .line 527
    :catchall_2
    move-exception v0

    .line 528
    goto :goto_8

    .line 529
    :catchall_3
    move-exception v0

    .line 530
    const/4 v5, 0x0

    .line 531
    goto :goto_8

    .line 532
    :catchall_4
    move-exception v0

    .line 533
    goto :goto_7

    .line 534
    :catchall_5
    move-exception v0

    .line 535
    const/4 v5, 0x0

    .line 536
    :goto_7
    const/4 v14, 0x1

    .line 537
    :goto_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 546
    .line 547
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 552
    .line 553
    .line 554
    move-result v3

    .line 555
    add-int/lit8 v3, v3, 0x47

    .line 556
    .line 557
    new-instance v6, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    const-string v3, "supportsUnsafeArrayOperations"

    .line 573
    .line 574
    invoke-virtual {v1, v2, v4, v3, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    :goto_9
    const/4 v0, 0x0

    .line 578
    :goto_a
    sput-boolean v0, Lcom/google/android/gms/internal/vision/t3;->e:Z

    .line 579
    .line 580
    const-class v0, [B

    .line 581
    .line 582
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t3;->k(Ljava/lang/Class;)I

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    int-to-long v0, v0

    .line 587
    sput-wide v0, Lcom/google/android/gms/internal/vision/t3;->f:J

    .line 588
    .line 589
    const-class v0, [Z

    .line 590
    .line 591
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t3;->k(Ljava/lang/Class;)I

    .line 592
    .line 593
    .line 594
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t3;->n(Ljava/lang/Class;)V

    .line 595
    .line 596
    .line 597
    const-class v0, [I

    .line 598
    .line 599
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t3;->k(Ljava/lang/Class;)I

    .line 600
    .line 601
    .line 602
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t3;->n(Ljava/lang/Class;)V

    .line 603
    .line 604
    .line 605
    const-class v0, [J

    .line 606
    .line 607
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t3;->k(Ljava/lang/Class;)I

    .line 608
    .line 609
    .line 610
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t3;->n(Ljava/lang/Class;)V

    .line 611
    .line 612
    .line 613
    const-class v0, [F

    .line 614
    .line 615
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t3;->k(Ljava/lang/Class;)I

    .line 616
    .line 617
    .line 618
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t3;->n(Ljava/lang/Class;)V

    .line 619
    .line 620
    .line 621
    const-class v0, [D

    .line 622
    .line 623
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t3;->k(Ljava/lang/Class;)I

    .line 624
    .line 625
    .line 626
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t3;->n(Ljava/lang/Class;)V

    .line 627
    .line 628
    .line 629
    const-class v0, [Ljava/lang/Object;

    .line 630
    .line 631
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t3;->k(Ljava/lang/Class;)I

    .line 632
    .line 633
    .line 634
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t3;->n(Ljava/lang/Class;)V

    .line 635
    .line 636
    .line 637
    invoke-static {}, Lcom/google/android/gms/internal/vision/t3;->v()Ljava/lang/reflect/Field;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    if-eqz v0, :cond_a

    .line 642
    .line 643
    sget-object v1, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    .line 644
    .line 645
    if-nez v1, :cond_9

    .line 646
    .line 647
    goto :goto_b

    .line 648
    :cond_9
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/t3$d;->a:Lsun/misc/Unsafe;

    .line 649
    .line 650
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 651
    .line 652
    .line 653
    :cond_a
    :goto_b
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 658
    .line 659
    if-ne v0, v1, :cond_b

    .line 660
    .line 661
    const/4 v4, 0x1

    .line 662
    goto :goto_c

    .line 663
    :cond_b
    const/4 v4, 0x0

    .line 664
    :goto_c
    sput-boolean v4, Lcom/google/android/gms/internal/vision/t3;->g:Z

    .line 665
    .line 666
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J[B)B
    .locals 2

    sget-wide v0, Lcom/google/android/gms/internal/vision/t3;->f:J

    add-long/2addr v0, p0

    sget-object p0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3$d;->a(JLjava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public static b(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/vision/t3$d;->k(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/t3$d;->c(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static e(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/t3$d;->d(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static f(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/t3$d;->e(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static g(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/t3$d;->f(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static h([BJB)V
    .locals 2

    sget-wide v0, Lcom/google/android/gms/internal/vision/t3;->f:J

    add-long/2addr v0, p1

    sget-object p1, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    invoke-virtual {p1, p0, v0, v1, p3}, Lcom/google/android/gms/internal/vision/t3$d;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static i(IJLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/t3$d;->g(IJLjava/lang/Object;)V

    return-void
.end method

.method public static j(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/t3$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static k(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/vision/t3;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/t3$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static l(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/vision/t3$d;->l(JLjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static m()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/vision/v3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/v3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static n(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/vision/t3;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/t3$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static o(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    move-result v2

    long-to-int p2, p1

    not-int p1, p2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/vision/t3;->i(IJLjava/lang/Object;)V

    return-void
.end method

.method public static p(JLjava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/vision/t3$d;->h(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static q(JLjava/lang/Object;)F
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/vision/t3$d;->i(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static r(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    move-result v2

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/vision/t3;->i(IJLjava/lang/Object;)V

    return-void
.end method

.method public static s(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, [B

    invoke-static {}, Lcom/google/android/gms/internal/vision/i0;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/vision/t3;->b:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v2

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v6, v8, v7

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    aput-object v9, v8, v4

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    aput-object v9, v6, v4

    aput-object v9, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    return v2
.end method

.method public static t(JLjava/lang/Object;)D
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/vision/t3$d;->j(JLjava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static u(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/t3;->c:Lcom/google/android/gms/internal/vision/t3$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/t3$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static v()Ljava/lang/reflect/Field;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/vision/i0;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Ljava/nio/Buffer;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "effectiveDirectAddress"

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-object v0, v2

    .line 18
    :goto_0
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const-string v0, "address"

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    goto :goto_1

    .line 28
    :catchall_1
    move-object v0, v2

    .line 29
    :goto_1
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    if-ne v1, v3, :cond_1

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    return-object v2
.end method

.method public static w(JLjava/lang/Object;)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    move-result p2

    not-long p0, p0

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p1, p0

    ushr-int p0, p2, p1

    int-to-byte p0, p0

    return p0
.end method

.method public static x(JLjava/lang/Object;)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    move-result p2

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p1, p0

    ushr-int p0, p2, p1

    int-to-byte p0, p0

    return p0
.end method
