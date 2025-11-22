.class public final Lcom/google/android/gms/internal/clearcut/g3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/clearcut/g3$a;,
        Lcom/google/android/gms/internal/clearcut/g3$b;,
        Lcom/google/android/gms/internal/clearcut/g3$c;,
        Lcom/google/android/gms/internal/clearcut/g3$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Lsun/misc/Unsafe;

.field public static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/internal/clearcut/g3$d;

.field public static final e:Z

.field public static final f:Z

.field public static final g:J

.field public static final h:J

.field public static final i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    const-class v0, Lcom/google/android/gms/internal/clearcut/g3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/clearcut/g3;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/g3;->l()Lsun/misc/Unsafe;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/gms/internal/clearcut/g3;->b:Lsun/misc/Unsafe;

    .line 18
    .line 19
    sget-object v1, Lcom/google/android/gms/internal/clearcut/r;->a:Ljava/lang/Class;

    .line 20
    .line 21
    sput-object v1, Lcom/google/android/gms/internal/clearcut/g3;->c:Ljava/lang/Class;

    .line 22
    .line 23
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/g3;->q(Ljava/lang/Class;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/g3;->q(Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/r;->a()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_3

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    new-instance v2, Lcom/google/android/gms/internal/clearcut/g3$b;

    .line 47
    .line 48
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/clearcut/g3$b;-><init>(Lsun/misc/Unsafe;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    if-eqz v4, :cond_2

    .line 53
    .line 54
    new-instance v2, Lcom/google/android/gms/internal/clearcut/g3$a;

    .line 55
    .line 56
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/clearcut/g3$a;-><init>(Lsun/misc/Unsafe;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/clearcut/g3$c;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/clearcut/g3$c;-><init>(Lsun/misc/Unsafe;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    sput-object v2, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    .line 68
    .line 69
    const-string v2, "copyMemory"

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v8, 0x1

    .line 73
    const-string v9, "putLong"

    .line 74
    .line 75
    const-string v10, "putInt"

    .line 76
    .line 77
    const-string v11, "getInt"

    .line 78
    .line 79
    const-string v12, "putByte"

    .line 80
    .line 81
    const-string v13, "getByte"

    .line 82
    .line 83
    const-class v14, Ljava/lang/reflect/Field;

    .line 84
    .line 85
    const-string v15, "com.google.protobuf.UnsafeUtil"

    .line 86
    .line 87
    const-string v5, "platform method missing - proto runtime falling back to safer methods: "

    .line 88
    .line 89
    const-string v6, "objectFieldOffset"

    .line 90
    .line 91
    const-class v16, Ljava/lang/Object;

    .line 92
    .line 93
    const-string v7, "getLong"

    .line 94
    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    move-object/from16 v17, v15

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    move-object/from16 v17, v15

    .line 105
    .line 106
    :try_start_1
    new-array v15, v8, [Ljava/lang/Class;

    .line 107
    .line 108
    aput-object v14, v15, v4

    .line 109
    .line 110
    invoke-virtual {v0, v6, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 111
    .line 112
    .line 113
    const/4 v15, 0x2

    .line 114
    new-array v8, v15, [Ljava/lang/Class;

    .line 115
    .line 116
    aput-object v16, v8, v4

    .line 117
    .line 118
    const/4 v15, 0x1

    .line 119
    aput-object v1, v8, v15

    .line 120
    .line 121
    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/g3;->m()Ljava/lang/reflect/Field;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    if-nez v8, :cond_5

    .line 129
    .line 130
    :goto_2
    move-object/from16 v4, v17

    .line 131
    .line 132
    goto/16 :goto_5

    .line 133
    .line 134
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/r;->a()Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-eqz v8, :cond_6

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    const/4 v8, 0x1

    .line 142
    new-array v15, v8, [Ljava/lang/Class;

    .line 143
    .line 144
    aput-object v1, v15, v4

    .line 145
    .line 146
    invoke-virtual {v0, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 147
    .line 148
    .line 149
    const/4 v8, 0x2

    .line 150
    new-array v15, v8, [Ljava/lang/Class;

    .line 151
    .line 152
    aput-object v1, v15, v4

    .line 153
    .line 154
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 155
    .line 156
    const/4 v4, 0x1

    .line 157
    aput-object v8, v15, v4

    .line 158
    .line 159
    invoke-virtual {v0, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 160
    .line 161
    .line 162
    new-array v8, v4, [Ljava/lang/Class;

    .line 163
    .line 164
    const/4 v15, 0x0

    .line 165
    aput-object v1, v8, v15

    .line 166
    .line 167
    invoke-virtual {v0, v11, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 168
    .line 169
    .line 170
    const/4 v8, 0x2

    .line 171
    new-array v4, v8, [Ljava/lang/Class;

    .line 172
    .line 173
    aput-object v1, v4, v15

    .line 174
    .line 175
    const/4 v8, 0x1

    .line 176
    aput-object v3, v4, v8

    .line 177
    .line 178
    invoke-virtual {v0, v10, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 179
    .line 180
    .line 181
    new-array v3, v8, [Ljava/lang/Class;

    .line 182
    .line 183
    aput-object v1, v3, v15

    .line 184
    .line 185
    invoke-virtual {v0, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 186
    .line 187
    .line 188
    const/4 v3, 0x2

    .line 189
    new-array v4, v3, [Ljava/lang/Class;

    .line 190
    .line 191
    aput-object v1, v4, v15

    .line 192
    .line 193
    aput-object v1, v4, v8

    .line 194
    .line 195
    invoke-virtual {v0, v9, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 196
    .line 197
    .line 198
    const/4 v3, 0x3

    .line 199
    new-array v4, v3, [Ljava/lang/Class;

    .line 200
    .line 201
    aput-object v1, v4, v15

    .line 202
    .line 203
    aput-object v1, v4, v8

    .line 204
    .line 205
    const/4 v3, 0x2

    .line 206
    aput-object v1, v4, v3

    .line 207
    .line 208
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 209
    .line 210
    .line 211
    const/4 v3, 0x5

    .line 212
    new-array v3, v3, [Ljava/lang/Class;

    .line 213
    .line 214
    const/4 v4, 0x0

    .line 215
    aput-object v16, v3, v4

    .line 216
    .line 217
    const/4 v4, 0x1

    .line 218
    aput-object v1, v3, v4

    .line 219
    .line 220
    const/4 v4, 0x2

    .line 221
    aput-object v16, v3, v4

    .line 222
    .line 223
    const/4 v4, 0x3

    .line 224
    aput-object v1, v3, v4

    .line 225
    .line 226
    const/4 v4, 0x4

    .line 227
    aput-object v1, v3, v4

    .line 228
    .line 229
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .line 231
    .line 232
    :goto_3
    move-object/from16 v4, v17

    .line 233
    .line 234
    const/4 v0, 0x1

    .line 235
    goto :goto_6

    .line 236
    :catchall_0
    move-exception v0

    .line 237
    goto :goto_4

    .line 238
    :catchall_1
    move-exception v0

    .line 239
    move-object/from16 v17, v15

    .line 240
    .line 241
    :goto_4
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

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
    move-result v2

    .line 251
    add-int/lit8 v2, v2, 0x47

    .line 252
    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    sget-object v2, Lcom/google/android/gms/internal/clearcut/g3;->a:Ljava/util/logging/Logger;

    .line 269
    .line 270
    const-string v3, "supportsUnsafeByteBufferOperations"

    .line 271
    .line 272
    move-object/from16 v4, v17

    .line 273
    .line 274
    invoke-virtual {v2, v1, v4, v3, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :goto_5
    const/4 v0, 0x0

    .line 278
    :goto_6
    sput-boolean v0, Lcom/google/android/gms/internal/clearcut/g3;->e:Z

    .line 279
    .line 280
    const-class v0, Ljava/lang/Class;

    .line 281
    .line 282
    sget-object v1, Lcom/google/android/gms/internal/clearcut/g3;->b:Lsun/misc/Unsafe;

    .line 283
    .line 284
    if-nez v1, :cond_7

    .line 285
    .line 286
    const/4 v7, 0x0

    .line 287
    goto/16 :goto_9

    .line 288
    .line 289
    :cond_7
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    const/4 v2, 0x1

    .line 294
    new-array v3, v2, [Ljava/lang/Class;

    .line 295
    .line 296
    const/4 v8, 0x0

    .line 297
    aput-object v14, v3, v8

    .line 298
    .line 299
    invoke-virtual {v1, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 300
    .line 301
    .line 302
    const-string v3, "arrayBaseOffset"

    .line 303
    .line 304
    new-array v6, v2, [Ljava/lang/Class;

    .line 305
    .line 306
    aput-object v0, v6, v8

    .line 307
    .line 308
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 309
    .line 310
    .line 311
    const-string v3, "arrayIndexScale"

    .line 312
    .line 313
    new-array v6, v2, [Ljava/lang/Class;

    .line 314
    .line 315
    aput-object v0, v6, v8

    .line 316
    .line 317
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 318
    .line 319
    .line 320
    const/4 v2, 0x2

    .line 321
    new-array v0, v2, [Ljava/lang/Class;

    .line 322
    .line 323
    aput-object v16, v0, v8

    .line 324
    .line 325
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 326
    .line 327
    const/4 v3, 0x1

    .line 328
    aput-object v2, v0, v3

    .line 329
    .line 330
    invoke-virtual {v1, v11, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 331
    .line 332
    .line 333
    const/4 v6, 0x3

    .line 334
    new-array v0, v6, [Ljava/lang/Class;

    .line 335
    .line 336
    aput-object v16, v0, v8

    .line 337
    .line 338
    aput-object v2, v0, v3

    .line 339
    .line 340
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 341
    .line 342
    const/4 v6, 0x2

    .line 343
    aput-object v3, v0, v6

    .line 344
    .line 345
    invoke-virtual {v1, v10, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 346
    .line 347
    .line 348
    new-array v0, v6, [Ljava/lang/Class;

    .line 349
    .line 350
    const/4 v3, 0x0

    .line 351
    aput-object v16, v0, v3

    .line 352
    .line 353
    const/4 v6, 0x1

    .line 354
    aput-object v2, v0, v6

    .line 355
    .line 356
    invoke-virtual {v1, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 357
    .line 358
    .line 359
    const/4 v7, 0x3

    .line 360
    new-array v0, v7, [Ljava/lang/Class;

    .line 361
    .line 362
    aput-object v16, v0, v3

    .line 363
    .line 364
    aput-object v2, v0, v6

    .line 365
    .line 366
    const/4 v3, 0x2

    .line 367
    aput-object v2, v0, v3

    .line 368
    .line 369
    invoke-virtual {v1, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 370
    .line 371
    .line 372
    const-string v0, "getObject"

    .line 373
    .line 374
    new-array v6, v3, [Ljava/lang/Class;

    .line 375
    .line 376
    const/4 v3, 0x0

    .line 377
    aput-object v16, v6, v3

    .line 378
    .line 379
    const/4 v7, 0x1

    .line 380
    aput-object v2, v6, v7

    .line 381
    .line 382
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 383
    .line 384
    .line 385
    const-string v0, "putObject"

    .line 386
    .line 387
    const/4 v6, 0x3

    .line 388
    new-array v8, v6, [Ljava/lang/Class;

    .line 389
    .line 390
    aput-object v16, v8, v3

    .line 391
    .line 392
    aput-object v2, v8, v7

    .line 393
    .line 394
    const/4 v3, 0x2

    .line 395
    aput-object v16, v8, v3

    .line 396
    .line 397
    invoke-virtual {v1, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 398
    .line 399
    .line 400
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/r;->a()Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-eqz v0, :cond_8

    .line 405
    .line 406
    const/4 v7, 0x0

    .line 407
    goto :goto_7

    .line 408
    :cond_8
    new-array v0, v3, [Ljava/lang/Class;

    .line 409
    .line 410
    const/4 v3, 0x0

    .line 411
    aput-object v16, v0, v3

    .line 412
    .line 413
    const/4 v6, 0x1

    .line 414
    aput-object v2, v0, v6

    .line 415
    .line 416
    invoke-virtual {v1, v13, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 417
    .line 418
    .line 419
    const/4 v7, 0x3

    .line 420
    new-array v0, v7, [Ljava/lang/Class;

    .line 421
    .line 422
    aput-object v16, v0, v3

    .line 423
    .line 424
    aput-object v2, v0, v6

    .line 425
    .line 426
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 427
    .line 428
    const/4 v6, 0x2

    .line 429
    aput-object v3, v0, v6

    .line 430
    .line 431
    invoke-virtual {v1, v12, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 432
    .line 433
    .line 434
    const-string v0, "getBoolean"

    .line 435
    .line 436
    new-array v3, v6, [Ljava/lang/Class;

    .line 437
    .line 438
    const/4 v6, 0x0

    .line 439
    aput-object v16, v3, v6

    .line 440
    .line 441
    const/4 v7, 0x1

    .line 442
    aput-object v2, v3, v7

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
    new-array v8, v3, [Ljava/lang/Class;

    .line 451
    .line 452
    aput-object v16, v8, v6

    .line 453
    .line 454
    aput-object v2, v8, v7

    .line 455
    .line 456
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 457
    .line 458
    const/4 v6, 0x2

    .line 459
    aput-object v3, v8, v6

    .line 460
    .line 461
    invoke-virtual {v1, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 462
    .line 463
    .line 464
    const-string v0, "getFloat"

    .line 465
    .line 466
    new-array v3, v6, [Ljava/lang/Class;

    .line 467
    .line 468
    const/4 v6, 0x0

    .line 469
    aput-object v16, v3, v6

    .line 470
    .line 471
    const/4 v7, 0x1

    .line 472
    aput-object v2, v3, v7

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
    new-array v8, v3, [Ljava/lang/Class;

    .line 481
    .line 482
    aput-object v16, v8, v6

    .line 483
    .line 484
    aput-object v2, v8, v7

    .line 485
    .line 486
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 487
    .line 488
    const/4 v6, 0x2

    .line 489
    aput-object v3, v8, v6

    .line 490
    .line 491
    invoke-virtual {v1, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 492
    .line 493
    .line 494
    const-string v0, "getDouble"

    .line 495
    .line 496
    new-array v3, v6, [Ljava/lang/Class;

    .line 497
    .line 498
    const/4 v6, 0x0

    .line 499
    aput-object v16, v3, v6

    .line 500
    .line 501
    const/4 v6, 0x1

    .line 502
    aput-object v2, v3, v6

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 511
    .line 512
    const/4 v7, 0x0

    .line 513
    :try_start_3
    aput-object v16, v3, v7

    .line 514
    .line 515
    aput-object v2, v3, v6

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 523
    .line 524
    .line 525
    :goto_7
    const/4 v15, 0x1

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
    const/4 v7, 0x0

    .line 531
    :goto_8
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 532
    .line 533
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    add-int/lit8 v2, v2, 0x47

    .line 542
    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    sget-object v2, Lcom/google/android/gms/internal/clearcut/g3;->a:Ljava/util/logging/Logger;

    .line 559
    .line 560
    const-string v3, "supportsUnsafeArrayOperations"

    .line 561
    .line 562
    invoke-virtual {v2, v1, v4, v3, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    :goto_9
    const/4 v15, 0x0

    .line 566
    :goto_a
    sput-boolean v15, Lcom/google/android/gms/internal/clearcut/g3;->f:Z

    .line 567
    .line 568
    const-class v0, [B

    .line 569
    .line 570
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/g3;->o(Ljava/lang/Class;)I

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    int-to-long v0, v0

    .line 575
    sput-wide v0, Lcom/google/android/gms/internal/clearcut/g3;->g:J

    .line 576
    .line 577
    const-class v0, [Z

    .line 578
    .line 579
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/g3;->o(Ljava/lang/Class;)I

    .line 580
    .line 581
    .line 582
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/g3;->p(Ljava/lang/Class;)V

    .line 583
    .line 584
    .line 585
    const-class v0, [I

    .line 586
    .line 587
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/g3;->o(Ljava/lang/Class;)I

    .line 588
    .line 589
    .line 590
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/g3;->p(Ljava/lang/Class;)V

    .line 591
    .line 592
    .line 593
    const-class v0, [J

    .line 594
    .line 595
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/g3;->o(Ljava/lang/Class;)I

    .line 596
    .line 597
    .line 598
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/g3;->p(Ljava/lang/Class;)V

    .line 599
    .line 600
    .line 601
    const-class v0, [F

    .line 602
    .line 603
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/g3;->o(Ljava/lang/Class;)I

    .line 604
    .line 605
    .line 606
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/g3;->p(Ljava/lang/Class;)V

    .line 607
    .line 608
    .line 609
    const-class v0, [D

    .line 610
    .line 611
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/g3;->o(Ljava/lang/Class;)I

    .line 612
    .line 613
    .line 614
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/g3;->p(Ljava/lang/Class;)V

    .line 615
    .line 616
    .line 617
    const-class v0, [Ljava/lang/Object;

    .line 618
    .line 619
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/g3;->o(Ljava/lang/Class;)I

    .line 620
    .line 621
    .line 622
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/g3;->p(Ljava/lang/Class;)V

    .line 623
    .line 624
    .line 625
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/g3;->m()Ljava/lang/reflect/Field;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    if-eqz v0, :cond_a

    .line 630
    .line 631
    sget-object v1, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    .line 632
    .line 633
    if-nez v1, :cond_9

    .line 634
    .line 635
    goto :goto_b

    .line 636
    :cond_9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/clearcut/g3$d;->a(Ljava/lang/reflect/Field;)J

    .line 637
    .line 638
    .line 639
    move-result-wide v0

    .line 640
    goto :goto_c

    .line 641
    :cond_a
    :goto_b
    const-wide/16 v0, -0x1

    .line 642
    .line 643
    :goto_c
    sput-wide v0, Lcom/google/android/gms/internal/clearcut/g3;->h:J

    .line 644
    .line 645
    const-class v0, Ljava/lang/String;

    .line 646
    .line 647
    const-string v1, "value"

    .line 648
    .line 649
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 650
    .line 651
    .line 652
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 653
    const/4 v1, 0x1

    .line 654
    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 655
    .line 656
    .line 657
    goto :goto_d

    .line 658
    :catchall_4
    const/4 v1, 0x1

    .line 659
    :catchall_5
    const/4 v0, 0x0

    .line 660
    :goto_d
    if-eqz v0, :cond_b

    .line 661
    .line 662
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    const-class v3, [C

    .line 667
    .line 668
    if-ne v2, v3, :cond_b

    .line 669
    .line 670
    move-object v5, v0

    .line 671
    goto :goto_e

    .line 672
    :cond_b
    const/4 v5, 0x0

    .line 673
    :goto_e
    if-eqz v5, :cond_d

    .line 674
    .line 675
    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    .line 676
    .line 677
    if-nez v0, :cond_c

    .line 678
    .line 679
    goto :goto_f

    .line 680
    :cond_c
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/clearcut/g3$d;->a(Ljava/lang/reflect/Field;)J

    .line 681
    .line 682
    .line 683
    :cond_d
    :goto_f
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 688
    .line 689
    if-ne v0, v2, :cond_e

    .line 690
    .line 691
    const/4 v4, 0x1

    .line 692
    goto :goto_10

    .line 693
    :cond_e
    const/4 v4, 0x0

    .line 694
    :goto_10
    sput-boolean v4, Lcom/google/android/gms/internal/clearcut/g3;->i:Z

    .line 695
    .line 696
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J[B)B
    .locals 2

    sget-wide v0, Lcom/google/android/gms/internal/clearcut/g3;->g:J

    add-long/2addr v0, p0

    sget-object p0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3$d;->o(JLjava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public static b(JB)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/g3$d;->b(JB)V

    return-void
.end method

.method public static c(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

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

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/clearcut/g3;->i(IJLjava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/g3$d;->c(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static e(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/g3$d;->d(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static f(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/g3$d;->e(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static g(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/g3$d;->f(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static h([BJB)V
    .locals 2

    sget-wide v0, Lcom/google/android/gms/internal/clearcut/g3;->g:J

    add-long/2addr v0, p1

    sget-object p1, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    invoke-virtual {p1, p0, v0, v1, p3}, Lcom/google/android/gms/internal/clearcut/g3$d;->i(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static i(IJLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/g3$d;->h(IJLjava/lang/Object;)V

    return-void
.end method

.method public static j(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/g3$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static k(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

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

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/clearcut/g3;->i(IJLjava/lang/Object;)V

    return-void
.end method

.method public static l()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/clearcut/h3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/h3;-><init>()V

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

.method public static m()Ljava/lang/reflect/Field;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/r;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const-class v3, Ljava/nio/Buffer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "effectiveDirectAddress"

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-object v0, v2

    .line 22
    :goto_0
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    const-string v0, "address"

    .line 26
    .line 27
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_1
    move-object v0, v2

    .line 36
    :goto_1
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    if-ne v1, v3, :cond_1

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_1
    return-object v2
.end method

.method public static synthetic n()J
    .locals 2

    sget-wide v0, Lcom/google/android/gms/internal/clearcut/g3;->g:J

    return-wide v0
.end method

.method public static o(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/clearcut/g3;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/g3$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static p(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/clearcut/g3;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/g3$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static q(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, [B

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/r;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/clearcut/g3;->c:Ljava/lang/Class;

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

.method public static r(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/g3$d;->j(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static s(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/g3$d;->k(JLjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static t(JLjava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/g3$d;->l(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static u(JLjava/lang/Object;)F
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/g3$d;->m(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static v(JLjava/lang/Object;)D
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/g3$d;->n(JLjava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static w(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/g3$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static x(JLjava/lang/Object;)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

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

.method public static y(JLjava/lang/Object;)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

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
