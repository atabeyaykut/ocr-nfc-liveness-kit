.class public final Lcom/google/crypto/tink/shaded/protobuf/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/n1$b;,
        Lcom/google/crypto/tink/shaded/protobuf/n1$c;,
        Lcom/google/crypto/tink/shaded/protobuf/n1$d;,
        Lcom/google/crypto/tink/shaded/protobuf/n1$e;
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

.field public static final d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

.field public static final e:Z

.field public static final f:Z

.field public static final g:J

.field public static final h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/n1;

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
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/n1;->o()Lsun/misc/Unsafe;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->b:Lsun/misc/Unsafe;

    .line 18
    .line 19
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/d;->a:Ljava/lang/Class;

    .line 20
    .line 21
    sput-object v1, Lcom/google/crypto/tink/shaded/protobuf/n1;->c:Ljava/lang/Class;

    .line 22
    .line 23
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->e(Ljava/lang/Class;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/n1;->e(Ljava/lang/Class;)Z

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
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/d;->a()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/n1$c;

    .line 47
    .line 48
    invoke-direct {v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/n1$c;-><init>(Lsun/misc/Unsafe;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    if-eqz v4, :cond_2

    .line 53
    .line 54
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/n1$b;

    .line 55
    .line 56
    invoke-direct {v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/n1$b;-><init>(Lsun/misc/Unsafe;)V

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
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/n1$d;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/n1$d;-><init>(Lsun/misc/Unsafe;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    sput-object v2, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    .line 68
    .line 69
    const-string v2, "copyMemory"

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v7, 0x1

    .line 73
    const-string v8, "putLong"

    .line 74
    .line 75
    const-string v9, "putInt"

    .line 76
    .line 77
    const-string v10, "getInt"

    .line 78
    .line 79
    const-string v11, "putByte"

    .line 80
    .line 81
    const-string v12, "getByte"

    .line 82
    .line 83
    const-class v13, Ljava/lang/reflect/Field;

    .line 84
    .line 85
    const-string v14, "platform method missing - proto runtime falling back to safer methods: "

    .line 86
    .line 87
    const-string v15, "objectFieldOffset"

    .line 88
    .line 89
    const-class v16, Ljava/lang/Object;

    .line 90
    .line 91
    const-string v5, "getLong"

    .line 92
    .line 93
    if-nez v0, :cond_4

    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-array v6, v7, [Ljava/lang/Class;

    .line 102
    .line 103
    aput-object v13, v6, v4

    .line 104
    .line 105
    invoke-virtual {v0, v15, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    .line 107
    .line 108
    const/4 v6, 0x2

    .line 109
    new-array v7, v6, [Ljava/lang/Class;

    .line 110
    .line 111
    aput-object v16, v7, v4

    .line 112
    .line 113
    const/4 v6, 0x1

    .line 114
    aput-object v1, v7, v6

    .line 115
    .line 116
    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/n1;->d()Ljava/lang/reflect/Field;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    if-nez v6, :cond_5

    .line 124
    .line 125
    goto/16 :goto_3

    .line 126
    .line 127
    :cond_5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/d;->a()Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_6

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_6
    const/4 v6, 0x1

    .line 135
    new-array v7, v6, [Ljava/lang/Class;

    .line 136
    .line 137
    aput-object v1, v7, v4

    .line 138
    .line 139
    invoke-virtual {v0, v12, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 140
    .line 141
    .line 142
    const/4 v6, 0x2

    .line 143
    new-array v7, v6, [Ljava/lang/Class;

    .line 144
    .line 145
    aput-object v1, v7, v4

    .line 146
    .line 147
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 148
    .line 149
    const/4 v4, 0x1

    .line 150
    aput-object v6, v7, v4

    .line 151
    .line 152
    invoke-virtual {v0, v11, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 153
    .line 154
    .line 155
    new-array v6, v4, [Ljava/lang/Class;

    .line 156
    .line 157
    const/4 v7, 0x0

    .line 158
    aput-object v1, v6, v7

    .line 159
    .line 160
    invoke-virtual {v0, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 161
    .line 162
    .line 163
    const/4 v6, 0x2

    .line 164
    new-array v4, v6, [Ljava/lang/Class;

    .line 165
    .line 166
    aput-object v1, v4, v7

    .line 167
    .line 168
    const/4 v6, 0x1

    .line 169
    aput-object v3, v4, v6

    .line 170
    .line 171
    invoke-virtual {v0, v9, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 172
    .line 173
    .line 174
    new-array v3, v6, [Ljava/lang/Class;

    .line 175
    .line 176
    aput-object v1, v3, v7

    .line 177
    .line 178
    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 179
    .line 180
    .line 181
    const/4 v3, 0x2

    .line 182
    new-array v4, v3, [Ljava/lang/Class;

    .line 183
    .line 184
    aput-object v1, v4, v7

    .line 185
    .line 186
    aput-object v1, v4, v6

    .line 187
    .line 188
    invoke-virtual {v0, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 189
    .line 190
    .line 191
    const/4 v3, 0x3

    .line 192
    new-array v4, v3, [Ljava/lang/Class;

    .line 193
    .line 194
    aput-object v1, v4, v7

    .line 195
    .line 196
    aput-object v1, v4, v6

    .line 197
    .line 198
    const/4 v3, 0x2

    .line 199
    aput-object v1, v4, v3

    .line 200
    .line 201
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 202
    .line 203
    .line 204
    const/4 v3, 0x5

    .line 205
    new-array v3, v3, [Ljava/lang/Class;

    .line 206
    .line 207
    const/4 v4, 0x0

    .line 208
    aput-object v16, v3, v4

    .line 209
    .line 210
    const/4 v4, 0x1

    .line 211
    aput-object v1, v3, v4

    .line 212
    .line 213
    const/4 v4, 0x2

    .line 214
    aput-object v16, v3, v4

    .line 215
    .line 216
    const/4 v4, 0x3

    .line 217
    aput-object v1, v3, v4

    .line 218
    .line 219
    const/4 v4, 0x4

    .line 220
    aput-object v1, v3, v4

    .line 221
    .line 222
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .line 224
    .line 225
    :goto_2
    const/4 v0, 0x1

    .line 226
    goto :goto_4

    .line 227
    :catchall_0
    move-exception v0

    .line 228
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 229
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/n1;->a:Ljava/util/logging/Logger;

    .line 243
    .line 244
    invoke-virtual {v2, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    :goto_3
    const/4 v0, 0x0

    .line 248
    :goto_4
    sput-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->e:Z

    .line 249
    .line 250
    const-class v0, Ljava/lang/Class;

    .line 251
    .line 252
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/n1;->b:Lsun/misc/Unsafe;

    .line 253
    .line 254
    if-nez v1, :cond_7

    .line 255
    .line 256
    const/4 v4, 0x0

    .line 257
    const/4 v6, 0x1

    .line 258
    goto/16 :goto_8

    .line 259
    .line 260
    :cond_7
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    const/4 v2, 0x1

    .line 265
    new-array v3, v2, [Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 266
    .line 267
    const/4 v4, 0x0

    .line 268
    :try_start_2
    aput-object v13, v3, v4

    .line 269
    .line 270
    invoke-virtual {v1, v15, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 271
    .line 272
    .line 273
    const-string v3, "arrayBaseOffset"

    .line 274
    .line 275
    new-array v6, v2, [Ljava/lang/Class;

    .line 276
    .line 277
    aput-object v0, v6, v4

    .line 278
    .line 279
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 280
    .line 281
    .line 282
    const-string v3, "arrayIndexScale"

    .line 283
    .line 284
    new-array v6, v2, [Ljava/lang/Class;

    .line 285
    .line 286
    aput-object v0, v6, v4

    .line 287
    .line 288
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 289
    .line 290
    .line 291
    const/4 v2, 0x2

    .line 292
    new-array v0, v2, [Ljava/lang/Class;

    .line 293
    .line 294
    aput-object v16, v0, v4

    .line 295
    .line 296
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 297
    .line 298
    const/4 v3, 0x1

    .line 299
    aput-object v2, v0, v3

    .line 300
    .line 301
    invoke-virtual {v1, v10, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 302
    .line 303
    .line 304
    const/4 v6, 0x3

    .line 305
    new-array v0, v6, [Ljava/lang/Class;

    .line 306
    .line 307
    aput-object v16, v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 308
    .line 309
    :try_start_3
    aput-object v2, v0, v3

    .line 310
    .line 311
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 312
    .line 313
    const/4 v4, 0x2

    .line 314
    aput-object v3, v0, v4

    .line 315
    .line 316
    invoke-virtual {v1, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 317
    .line 318
    .line 319
    new-array v0, v4, [Ljava/lang/Class;

    .line 320
    .line 321
    const/4 v3, 0x0

    .line 322
    aput-object v16, v0, v3

    .line 323
    .line 324
    const/4 v4, 0x1

    .line 325
    aput-object v2, v0, v4

    .line 326
    .line 327
    invoke-virtual {v1, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 328
    .line 329
    .line 330
    const/4 v5, 0x3

    .line 331
    new-array v0, v5, [Ljava/lang/Class;

    .line 332
    .line 333
    aput-object v16, v0, v3

    .line 334
    .line 335
    aput-object v2, v0, v4

    .line 336
    .line 337
    const/4 v3, 0x2

    .line 338
    aput-object v2, v0, v3

    .line 339
    .line 340
    invoke-virtual {v1, v8, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 341
    .line 342
    .line 343
    const-string v0, "getObject"

    .line 344
    .line 345
    new-array v4, v3, [Ljava/lang/Class;

    .line 346
    .line 347
    const/4 v3, 0x0

    .line 348
    aput-object v16, v4, v3

    .line 349
    .line 350
    const/4 v5, 0x1

    .line 351
    aput-object v2, v4, v5

    .line 352
    .line 353
    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 354
    .line 355
    .line 356
    const-string v0, "putObject"

    .line 357
    .line 358
    const/4 v4, 0x3

    .line 359
    new-array v6, v4, [Ljava/lang/Class;

    .line 360
    .line 361
    aput-object v16, v6, v3

    .line 362
    .line 363
    aput-object v2, v6, v5

    .line 364
    .line 365
    const/4 v3, 0x2

    .line 366
    aput-object v16, v6, v3

    .line 367
    .line 368
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 369
    .line 370
    .line 371
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/d;->a()Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_8

    .line 376
    .line 377
    const/4 v4, 0x0

    .line 378
    const/4 v6, 0x1

    .line 379
    goto :goto_5

    .line 380
    :cond_8
    new-array v0, v3, [Ljava/lang/Class;

    .line 381
    .line 382
    const/4 v3, 0x0

    .line 383
    aput-object v16, v0, v3

    .line 384
    .line 385
    const/4 v4, 0x1

    .line 386
    aput-object v2, v0, v4

    .line 387
    .line 388
    invoke-virtual {v1, v12, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 389
    .line 390
    .line 391
    const/4 v5, 0x3

    .line 392
    new-array v0, v5, [Ljava/lang/Class;

    .line 393
    .line 394
    aput-object v16, v0, v3

    .line 395
    .line 396
    aput-object v2, v0, v4

    .line 397
    .line 398
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 399
    .line 400
    const/4 v4, 0x2

    .line 401
    aput-object v3, v0, v4

    .line 402
    .line 403
    invoke-virtual {v1, v11, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 404
    .line 405
    .line 406
    const-string v0, "getBoolean"

    .line 407
    .line 408
    new-array v3, v4, [Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 409
    .line 410
    const/4 v4, 0x0

    .line 411
    :try_start_4
    aput-object v16, v3, v4

    .line 412
    .line 413
    const/4 v5, 0x1

    .line 414
    aput-object v2, v3, v5

    .line 415
    .line 416
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 417
    .line 418
    .line 419
    const-string v0, "putBoolean"

    .line 420
    .line 421
    const/4 v3, 0x3

    .line 422
    new-array v6, v3, [Ljava/lang/Class;

    .line 423
    .line 424
    aput-object v16, v6, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 425
    .line 426
    :try_start_5
    aput-object v2, v6, v5

    .line 427
    .line 428
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 429
    .line 430
    const/4 v4, 0x2

    .line 431
    aput-object v3, v6, v4

    .line 432
    .line 433
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 434
    .line 435
    .line 436
    const-string v0, "getFloat"

    .line 437
    .line 438
    new-array v3, v4, [Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 439
    .line 440
    const/4 v4, 0x0

    .line 441
    :try_start_6
    aput-object v16, v3, v4

    .line 442
    .line 443
    const/4 v5, 0x1

    .line 444
    aput-object v2, v3, v5

    .line 445
    .line 446
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 447
    .line 448
    .line 449
    const-string v0, "putFloat"

    .line 450
    .line 451
    const/4 v3, 0x3

    .line 452
    new-array v6, v3, [Ljava/lang/Class;

    .line 453
    .line 454
    aput-object v16, v6, v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 455
    .line 456
    :try_start_7
    aput-object v2, v6, v5

    .line 457
    .line 458
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 459
    .line 460
    const/4 v4, 0x2

    .line 461
    aput-object v3, v6, v4

    .line 462
    .line 463
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 464
    .line 465
    .line 466
    const-string v0, "getDouble"

    .line 467
    .line 468
    new-array v3, v4, [Ljava/lang/Class;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 469
    .line 470
    const/4 v4, 0x0

    .line 471
    :try_start_8
    aput-object v16, v3, v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 472
    .line 473
    const/4 v6, 0x1

    .line 474
    :try_start_9
    aput-object v2, v3, v6

    .line 475
    .line 476
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 477
    .line 478
    .line 479
    const-string v0, "putDouble"

    .line 480
    .line 481
    const/4 v3, 0x3

    .line 482
    new-array v3, v3, [Ljava/lang/Class;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 483
    .line 484
    const/4 v4, 0x0

    .line 485
    :try_start_a
    aput-object v16, v3, v4

    .line 486
    .line 487
    aput-object v2, v3, v6

    .line 488
    .line 489
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 490
    .line 491
    const/4 v5, 0x2

    .line 492
    aput-object v2, v3, v5

    .line 493
    .line 494
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 495
    .line 496
    .line 497
    :goto_5
    const/4 v0, 0x1

    .line 498
    goto :goto_9

    .line 499
    :catchall_1
    move-exception v0

    .line 500
    goto :goto_7

    .line 501
    :catchall_2
    move-exception v0

    .line 502
    const/4 v4, 0x0

    .line 503
    goto :goto_7

    .line 504
    :catchall_3
    move-exception v0

    .line 505
    goto :goto_6

    .line 506
    :catchall_4
    move-exception v0

    .line 507
    const/4 v4, 0x0

    .line 508
    :goto_6
    const/4 v6, 0x1

    .line 509
    :goto_7
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 510
    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/n1;->a:Ljava/util/logging/Logger;

    .line 524
    .line 525
    invoke-virtual {v2, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    :goto_8
    const/4 v0, 0x0

    .line 529
    :goto_9
    sput-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->f:Z

    .line 530
    .line 531
    const-class v0, [B

    .line 532
    .line 533
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->b(Ljava/lang/Class;)I

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    int-to-long v0, v0

    .line 538
    sput-wide v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->g:J

    .line 539
    .line 540
    const-class v0, [Z

    .line 541
    .line 542
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->b(Ljava/lang/Class;)I

    .line 543
    .line 544
    .line 545
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->c(Ljava/lang/Class;)V

    .line 546
    .line 547
    .line 548
    const-class v0, [I

    .line 549
    .line 550
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->b(Ljava/lang/Class;)I

    .line 551
    .line 552
    .line 553
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->c(Ljava/lang/Class;)V

    .line 554
    .line 555
    .line 556
    const-class v0, [J

    .line 557
    .line 558
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->b(Ljava/lang/Class;)I

    .line 559
    .line 560
    .line 561
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->c(Ljava/lang/Class;)V

    .line 562
    .line 563
    .line 564
    const-class v0, [F

    .line 565
    .line 566
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->b(Ljava/lang/Class;)I

    .line 567
    .line 568
    .line 569
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->c(Ljava/lang/Class;)V

    .line 570
    .line 571
    .line 572
    const-class v0, [D

    .line 573
    .line 574
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->b(Ljava/lang/Class;)I

    .line 575
    .line 576
    .line 577
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->c(Ljava/lang/Class;)V

    .line 578
    .line 579
    .line 580
    const-class v0, [Ljava/lang/Object;

    .line 581
    .line 582
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->b(Ljava/lang/Class;)I

    .line 583
    .line 584
    .line 585
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->c(Ljava/lang/Class;)V

    .line 586
    .line 587
    .line 588
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/n1;->d()Ljava/lang/reflect/Field;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    if-eqz v0, :cond_a

    .line 593
    .line 594
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    .line 595
    .line 596
    if-nez v1, :cond_9

    .line 597
    .line 598
    goto :goto_a

    .line 599
    :cond_9
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->j(Ljava/lang/reflect/Field;)J

    .line 600
    .line 601
    .line 602
    :cond_a
    :goto_a
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 607
    .line 608
    if-ne v0, v1, :cond_b

    .line 609
    .line 610
    const/4 v4, 0x1

    .line 611
    :cond_b
    sput-boolean v4, Lcom/google/crypto/tink/shaded/protobuf/n1;->h:Z

    .line 612
    .line 613
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
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
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->b:Lsun/misc/Unsafe;

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

.method public static b(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->a(Ljava/lang/Class;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->b(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static d()Ljava/lang/reflect/Field;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/d;->a()Z

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
    move-object v2, v0

    .line 40
    :cond_1
    return-object v2
.end method

.method public static e(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, [B

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/d;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/n1;->c:Ljava/lang/Class;

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

.method public static f(JLjava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->c(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static g(J[B)B
    .locals 2

    sget-wide v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->g:J

    add-long/2addr v0, p0

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->d(JLjava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public static h(JLjava/lang/Object;)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    move-result p2

    not-long p0, p0

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p1, p0

    ushr-int p0, p2, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static i(JLjava/lang/Object;)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    move-result p2

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p1, p0

    ushr-int p0, p2, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static j(JLjava/lang/Object;)D
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->e(JLjava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static k(JLjava/lang/Object;)F
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->f(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static l(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->g(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static m(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->h(JLjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static n(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static o()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/n1$a;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/n1$a;-><init>()V

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

.method public static p(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->k(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static q([BJB)V
    .locals 2

    sget-wide v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->g:J

    add-long/2addr v0, p1

    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {p1, p0, v0, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->l(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static r(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {v0, v1, p0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

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

    invoke-static {p1, v0, v1, p0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->v(IJLjava/lang/Object;)V

    return-void
.end method

.method public static s(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {v0, v1, p0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

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

    invoke-static {p1, v0, v1, p0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->v(IJLjava/lang/Object;)V

    return-void
.end method

.method public static t(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->m(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static u(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->n(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static v(IJLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->o(IJLjava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->p(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static x(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/n1;->d:Lcom/google/crypto/tink/shaded/protobuf/n1$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/n1$e;->q(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
