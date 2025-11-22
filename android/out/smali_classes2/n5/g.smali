.class public final Ln5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu5/i0;


# direct methods
.method public constructor <init>(Lu5/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/g;->a:Lu5/i0;

    return-void
.end method

.method public static final b(Lr5/d;Ln5/a;)Ln5/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr5/d;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->a()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0, v0}, Lu5/z;->x([BLcom/google/crypto/tink/shaded/protobuf/p;)Lu5/z;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lu5/z;->v()Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v1, "empty keyset"

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Ln5/g;

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p0}, Lu5/z;->v()Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->A()[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v2, 0x0

    .line 36
    new-array v2, v2, [B

    .line 37
    .line 38
    invoke-interface {p1, p0, v2}, Ln5/a;->b([B[B)[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->a()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Lu5/i0;->A([BLcom/google/crypto/tink/shaded/protobuf/p;)Lu5/i0;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lu5/i0;->w()I

    .line 51
    .line 52
    .line 53
    move-result p1
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    if-lez p1, :cond_0

    .line 55
    .line 56
    invoke-direct {v0, p0}, Ln5/g;-><init>(Lu5/i0;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_0
    :try_start_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 61
    .line 62
    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 67
    .line 68
    const-string p1, "invalid keyset, corrupted key material"

    .line 69
    .line 70
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 75
    .line 76
    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Ln5/p;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ln5/m;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v0}, Ln5/m;->a()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    const-string v1, "No wrapper found for "

    .line 18
    .line 19
    if-eqz v0, :cond_18

    .line 20
    .line 21
    sget v2, Ln5/r;->a:I

    .line 22
    .line 23
    iget-object v2, p0, Ln5/g;->a:Lu5/i0;

    .line 24
    .line 25
    invoke-virtual {v2}, Lu5/i0;->y()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2}, Lu5/i0;->x()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x1

    .line 42
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    sget-object v11, Lu5/f0;->c:Lu5/f0;

    .line 47
    .line 48
    if-eqz v10, :cond_8

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    check-cast v10, Lu5/i0$b;

    .line 55
    .line 56
    invoke-virtual {v10}, Lu5/i0$b;->A()Lu5/f0;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    if-eq v12, v11, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v10}, Lu5/i0$b;->B()Z

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    if-eqz v11, :cond_7

    .line 68
    .line 69
    invoke-virtual {v10}, Lu5/i0$b;->z()Lu5/o0;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    sget-object v12, Lu5/o0;->b:Lu5/o0;

    .line 74
    .line 75
    if-eq v11, v12, :cond_6

    .line 76
    .line 77
    invoke-virtual {v10}, Lu5/i0$b;->A()Lu5/f0;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    sget-object v12, Lu5/f0;->b:Lu5/f0;

    .line 82
    .line 83
    if-eq v11, v12, :cond_5

    .line 84
    .line 85
    invoke-virtual {v10}, Lu5/i0$b;->y()I

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    if-ne v11, v3, :cond_3

    .line 90
    .line 91
    if-nez v8, :cond_2

    .line 92
    .line 93
    const/4 v8, 0x1

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 96
    .line 97
    const-string v0, "keyset contains multiple primary keys"

    .line 98
    .line 99
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_3
    :goto_2
    invoke-virtual {v10}, Lu5/i0$b;->x()Lu5/e0;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-virtual {v10}, Lu5/e0;->x()Lu5/e0$b;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    sget-object v11, Lu5/e0$b;->e:Lu5/e0$b;

    .line 112
    .line 113
    if-eq v10, v11, :cond_4

    .line 114
    .line 115
    const/4 v9, 0x0

    .line 116
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 120
    .line 121
    new-array v0, v6, [Ljava/lang/Object;

    .line 122
    .line 123
    invoke-virtual {v10}, Lu5/i0$b;->y()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    aput-object v1, v0, v5

    .line 132
    .line 133
    const-string v1, "key %d has unknown status"

    .line 134
    .line 135
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 144
    .line 145
    new-array v0, v6, [Ljava/lang/Object;

    .line 146
    .line 147
    invoke-virtual {v10}, Lu5/i0$b;->y()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    aput-object v1, v0, v5

    .line 156
    .line 157
    const-string v1, "key %d has unknown prefix"

    .line 158
    .line 159
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 168
    .line 169
    new-array v0, v6, [Ljava/lang/Object;

    .line 170
    .line 171
    invoke-virtual {v10}, Lu5/i0$b;->y()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    aput-object v1, v0, v5

    .line 180
    .line 181
    const-string v1, "key %d has no key data"

    .line 182
    .line 183
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :cond_8
    if-eqz v7, :cond_17

    .line 192
    .line 193
    if-nez v8, :cond_a

    .line 194
    .line 195
    if-eqz v9, :cond_9

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_9
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 199
    .line 200
    const-string v0, "keyset doesn\'t contain a valid primary key"

    .line 201
    .line 202
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p1

    .line 206
    :cond_a
    :goto_3
    new-instance v3, Ln5/l;

    .line 207
    .line 208
    invoke-direct {v3, v0}, Ln5/l;-><init>(Ljava/lang/Class;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Lu5/i0;->x()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    :cond_b
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    if-eqz v7, :cond_14

    .line 224
    .line 225
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    check-cast v7, Lu5/i0$b;

    .line 230
    .line 231
    invoke-virtual {v7}, Lu5/i0$b;->A()Lu5/f0;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    if-ne v8, v11, :cond_b

    .line 236
    .line 237
    invoke-virtual {v7}, Lu5/i0$b;->x()Lu5/e0;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v8}, Lu5/e0;->y()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-virtual {v7}, Lu5/i0$b;->x()Lu5/e0;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    invoke-virtual {v9}, Lu5/e0;->z()Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    invoke-static {v8, v9, v0}, Ln5/p;->c(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/i;Ljava/lang/Class;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    invoke-virtual {v7}, Lu5/i0$b;->A()Lu5/f0;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    if-ne v9, v11, :cond_13

    .line 262
    .line 263
    new-instance v9, Ln5/l$a;

    .line 264
    .line 265
    invoke-virtual {v7}, Lu5/i0$b;->z()Lu5/o0;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 270
    .line 271
    .line 272
    move-result v10

    .line 273
    const/4 v12, 0x5

    .line 274
    if-eq v10, v6, :cond_f

    .line 275
    .line 276
    const/4 v13, 0x2

    .line 277
    if-eq v10, v13, :cond_e

    .line 278
    .line 279
    const/4 v13, 0x3

    .line 280
    if-eq v10, v13, :cond_d

    .line 281
    .line 282
    const/4 v13, 0x4

    .line 283
    if-ne v10, v13, :cond_c

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_c
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 287
    .line 288
    const-string v0, "unknown output prefix type"

    .line 289
    .line 290
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw p1

    .line 294
    :cond_d
    sget-object v10, Ln5/b;->a:[B

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_e
    :goto_5
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 302
    .line 303
    .line 304
    move-result-object v10

    .line 305
    goto :goto_6

    .line 306
    :cond_f
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    invoke-virtual {v10, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    :goto_6
    invoke-virtual {v7}, Lu5/i0$b;->y()I

    .line 315
    .line 316
    .line 317
    move-result v12

    .line 318
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    .line 323
    .line 324
    .line 325
    move-result-object v10

    .line 326
    :goto_7
    invoke-virtual {v7}, Lu5/i0$b;->A()Lu5/f0;

    .line 327
    .line 328
    .line 329
    move-result-object v12

    .line 330
    invoke-virtual {v7}, Lu5/i0$b;->z()Lu5/o0;

    .line 331
    .line 332
    .line 333
    move-result-object v13

    .line 334
    invoke-direct {v9, v8, v10, v12, v13}, Ln5/l$a;-><init>(Ljava/lang/Object;[BLu5/f0;Lu5/o0;)V

    .line 335
    .line 336
    .line 337
    new-instance v8, Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    new-instance v10, Ln5/l$b;

    .line 346
    .line 347
    invoke-virtual {v9}, Ln5/l$a;->a()[B

    .line 348
    .line 349
    .line 350
    move-result-object v12

    .line 351
    invoke-direct {v10, v12}, Ln5/l$b;-><init>([B)V

    .line 352
    .line 353
    .line 354
    iget-object v12, v3, Ln5/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 355
    .line 356
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    invoke-virtual {v12, v10, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    check-cast v8, Ljava/util/List;

    .line 365
    .line 366
    if-eqz v8, :cond_10

    .line 367
    .line 368
    new-instance v13, Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 374
    .line 375
    .line 376
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    invoke-virtual {v12, v10, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    :cond_10
    invoke-virtual {v7}, Lu5/i0$b;->y()I

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    invoke-virtual {v2}, Lu5/i0;->y()I

    .line 391
    .line 392
    .line 393
    move-result v8

    .line 394
    if-ne v7, v8, :cond_b

    .line 395
    .line 396
    iget-object v7, v9, Ln5/l$a;->c:Lu5/f0;

    .line 397
    .line 398
    if-ne v7, v11, :cond_12

    .line 399
    .line 400
    invoke-virtual {v9}, Ln5/l$a;->a()[B

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    invoke-virtual {v3, v7}, Ln5/l;->a([B)Ljava/util/List;

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 409
    .line 410
    .line 411
    move-result v7

    .line 412
    if-nez v7, :cond_11

    .line 413
    .line 414
    iput-object v9, v3, Ln5/l;->b:Ln5/l$a;

    .line 415
    .line 416
    goto/16 :goto_4

    .line 417
    .line 418
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 419
    .line 420
    const-string v0, "the primary entry cannot be set to an entry which is not held by this primitive set"

    .line 421
    .line 422
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    throw p1

    .line 426
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 427
    .line 428
    const-string v0, "the primary entry has to be ENABLED"

    .line 429
    .line 430
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    throw p1

    .line 434
    :cond_13
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 435
    .line 436
    const-string v0, "only ENABLED key is allowed"

    .line 437
    .line 438
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    throw p1

    .line 442
    :cond_14
    sget-object v0, Ln5/p;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 443
    .line 444
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    check-cast p1, Ln5/m;

    .line 449
    .line 450
    iget-object v0, v3, Ln5/l;->c:Ljava/lang/Class;

    .line 451
    .line 452
    if-eqz p1, :cond_16

    .line 453
    .line 454
    invoke-interface {p1}, Ln5/m;->a()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    if-eqz v1, :cond_15

    .line 463
    .line 464
    invoke-interface {p1, v3}, Ln5/m;->b(Ln5/l;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    return-object p1

    .line 469
    :cond_15
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 470
    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    const-string v3, "Wrong input primitive class, expected "

    .line 474
    .line 475
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-interface {p1}, Ln5/m;->a()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string p1, ", got "

    .line 486
    .line 487
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    invoke-direct {v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw v1

    .line 501
    :cond_16
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 502
    .line 503
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    throw p1

    .line 515
    :cond_17
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 516
    .line 517
    const-string v0, "keyset must contain at least one ENABLED key"

    .line 518
    .line 519
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    throw p1

    .line 523
    :cond_18
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 524
    .line 525
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/g;->a:Lu5/i0;

    .line 2
    .line 3
    invoke-static {v0}, Ln5/r;->a(Lu5/i0;)Lu5/j0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
