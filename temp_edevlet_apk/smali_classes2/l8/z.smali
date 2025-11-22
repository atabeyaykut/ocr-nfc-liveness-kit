.class public final Ll8/z;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll8/z$d;,
        Ll8/z$c;,
        Ll8/z$e;,
        Ll8/z$b;,
        Ll8/z$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final j:Ll8/z$a;


# instance fields
.field public final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field public b:[Ll8/z$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ll8/z$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final c:Ll8/z$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/z$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I

.field public g:Ll8/z$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/z<",
            "TK;TV;>.c;"
        }
    .end annotation
.end field

.field public h:Ll8/z$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/z<",
            "TK;TV;>.d;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll8/z$a;

    invoke-direct {v0}, Ll8/z$a;-><init>()V

    sput-object v0, Ll8/z;->j:Ll8/z$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ll8/z;->d:I

    iput v0, p0, Ll8/z;->e:I

    sget-object v0, Ll8/z;->j:Ll8/z$a;

    iput-object v0, p0, Ll8/z;->a:Ljava/util/Comparator;

    new-instance v0, Ll8/z$f;

    invoke-direct {v0}, Ll8/z$f;-><init>()V

    iput-object v0, p0, Ll8/z;->c:Ll8/z$f;

    const/16 v0, 0x10

    new-array v0, v0, [Ll8/z$f;

    iput-object v0, p0, Ll8/z;->b:[Ll8/z$f;

    const/16 v0, 0xc

    iput v0, p0, Ll8/z;->f:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Ll8/z$f;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ll8/z$f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    iget-object v7, v0, Ll8/z;->b:[Ll8/z$f;

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    ushr-int/lit8 v2, v1, 0x14

    .line 12
    .line 13
    ushr-int/lit8 v4, v1, 0xc

    .line 14
    .line 15
    xor-int/2addr v2, v4

    .line 16
    xor-int/2addr v1, v2

    .line 17
    ushr-int/lit8 v2, v1, 0x7

    .line 18
    .line 19
    xor-int/2addr v2, v1

    .line 20
    ushr-int/lit8 v1, v1, 0x4

    .line 21
    .line 22
    xor-int v4, v1, v2

    .line 23
    .line 24
    array-length v1, v7

    .line 25
    const/4 v8, 0x1

    .line 26
    sub-int/2addr v1, v8

    .line 27
    and-int v9, v4, v1

    .line 28
    .line 29
    aget-object v1, v7, v9

    .line 30
    .line 31
    sget-object v2, Ll8/z;->j:Ll8/z$a;

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    const/4 v11, 0x0

    .line 35
    iget-object v5, v0, Ll8/z;->a:Ljava/util/Comparator;

    .line 36
    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    if-ne v5, v2, :cond_0

    .line 40
    .line 41
    move-object v6, v3

    .line 42
    check-cast v6, Ljava/lang/Comparable;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v6, v11

    .line 46
    :goto_0
    iget-object v12, v1, Ll8/z$f;->f:Ljava/lang/Object;

    .line 47
    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    invoke-interface {v6, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-interface {v5, v3, v12}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    :goto_1
    if-nez v12, :cond_2

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    if-gez v12, :cond_3

    .line 63
    .line 64
    iget-object v13, v1, Ll8/z$f;->b:Ll8/z$f;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    iget-object v13, v1, Ll8/z$f;->c:Ll8/z$f;

    .line 68
    .line 69
    :goto_2
    if-nez v13, :cond_4

    .line 70
    .line 71
    move v13, v12

    .line 72
    move-object v12, v1

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    move-object v1, v13

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    move-object v12, v1

    .line 77
    const/4 v13, 0x0

    .line 78
    :goto_3
    if-nez p2, :cond_6

    .line 79
    .line 80
    return-object v11

    .line 81
    :cond_6
    iget-object v6, v0, Ll8/z;->c:Ll8/z$f;

    .line 82
    .line 83
    if-nez v12, :cond_9

    .line 84
    .line 85
    if-ne v5, v2, :cond_8

    .line 86
    .line 87
    instance-of v1, v3, Ljava/lang/Comparable;

    .line 88
    .line 89
    if-eqz v1, :cond_7

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_7
    new-instance v1, Ljava/lang/ClassCastException;

    .line 93
    .line 94
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const-string v3, " is not Comparable"

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v1

    .line 112
    :cond_8
    :goto_4
    new-instance v13, Ll8/z$f;

    .line 113
    .line 114
    iget-object v14, v6, Ll8/z$f;->e:Ll8/z$f;

    .line 115
    .line 116
    move-object v1, v13

    .line 117
    move-object v2, v12

    .line 118
    move-object/from16 v3, p1

    .line 119
    .line 120
    move-object v5, v6

    .line 121
    move-object v6, v14

    .line 122
    invoke-direct/range {v1 .. v6}, Ll8/z$f;-><init>(Ll8/z$f;Ljava/lang/Object;ILl8/z$f;Ll8/z$f;)V

    .line 123
    .line 124
    .line 125
    aput-object v13, v7, v9

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_9
    new-instance v7, Ll8/z$f;

    .line 129
    .line 130
    iget-object v9, v6, Ll8/z$f;->e:Ll8/z$f;

    .line 131
    .line 132
    move-object v1, v7

    .line 133
    move-object v2, v12

    .line 134
    move-object/from16 v3, p1

    .line 135
    .line 136
    move-object v5, v6

    .line 137
    move-object v6, v9

    .line 138
    invoke-direct/range {v1 .. v6}, Ll8/z$f;-><init>(Ll8/z$f;Ljava/lang/Object;ILl8/z$f;Ll8/z$f;)V

    .line 139
    .line 140
    .line 141
    if-gez v13, :cond_a

    .line 142
    .line 143
    iput-object v7, v12, Ll8/z$f;->b:Ll8/z$f;

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_a
    iput-object v7, v12, Ll8/z$f;->c:Ll8/z$f;

    .line 147
    .line 148
    :goto_5
    invoke-virtual {v0, v12, v8}, Ll8/z;->c(Ll8/z$f;Z)V

    .line 149
    .line 150
    .line 151
    move-object v13, v7

    .line 152
    :goto_6
    iget v1, v0, Ll8/z;->d:I

    .line 153
    .line 154
    add-int/lit8 v2, v1, 0x1

    .line 155
    .line 156
    iput v2, v0, Ll8/z;->d:I

    .line 157
    .line 158
    iget v2, v0, Ll8/z;->f:I

    .line 159
    .line 160
    if-le v1, v2, :cond_1b

    .line 161
    .line 162
    iget-object v1, v0, Ll8/z;->b:[Ll8/z$f;

    .line 163
    .line 164
    array-length v2, v1

    .line 165
    mul-int/lit8 v3, v2, 0x2

    .line 166
    .line 167
    new-array v4, v3, [Ll8/z$f;

    .line 168
    .line 169
    new-instance v5, Ll8/z$b;

    .line 170
    .line 171
    invoke-direct {v5}, Ll8/z$b;-><init>()V

    .line 172
    .line 173
    .line 174
    new-instance v6, Ll8/z$b;

    .line 175
    .line 176
    invoke-direct {v6}, Ll8/z$b;-><init>()V

    .line 177
    .line 178
    .line 179
    const/4 v7, 0x0

    .line 180
    :goto_7
    if-ge v7, v2, :cond_1a

    .line 181
    .line 182
    aget-object v9, v1, v7

    .line 183
    .line 184
    if-nez v9, :cond_b

    .line 185
    .line 186
    goto/16 :goto_14

    .line 187
    .line 188
    :cond_b
    move-object v12, v9

    .line 189
    move-object v14, v11

    .line 190
    :goto_8
    if-eqz v12, :cond_c

    .line 191
    .line 192
    iput-object v14, v12, Ll8/z$f;->a:Ll8/z$f;

    .line 193
    .line 194
    iget-object v14, v12, Ll8/z$f;->b:Ll8/z$f;

    .line 195
    .line 196
    move-object/from16 v16, v14

    .line 197
    .line 198
    move-object v14, v12

    .line 199
    move-object/from16 v12, v16

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_c
    const/4 v12, 0x0

    .line 203
    const/4 v15, 0x0

    .line 204
    :goto_9
    if-nez v14, :cond_d

    .line 205
    .line 206
    move-object v8, v14

    .line 207
    move-object v14, v11

    .line 208
    goto :goto_b

    .line 209
    :cond_d
    iget-object v8, v14, Ll8/z$f;->a:Ll8/z$f;

    .line 210
    .line 211
    iput-object v11, v14, Ll8/z$f;->a:Ll8/z$f;

    .line 212
    .line 213
    iget-object v11, v14, Ll8/z$f;->c:Ll8/z$f;

    .line 214
    .line 215
    :goto_a
    if-eqz v11, :cond_e

    .line 216
    .line 217
    iput-object v8, v11, Ll8/z$f;->a:Ll8/z$f;

    .line 218
    .line 219
    iget-object v8, v11, Ll8/z$f;->b:Ll8/z$f;

    .line 220
    .line 221
    move-object/from16 v16, v11

    .line 222
    .line 223
    move-object v11, v8

    .line 224
    move-object/from16 v8, v16

    .line 225
    .line 226
    goto :goto_a

    .line 227
    :cond_e
    :goto_b
    if-eqz v14, :cond_10

    .line 228
    .line 229
    iget v11, v14, Ll8/z$f;->g:I

    .line 230
    .line 231
    and-int/2addr v11, v2

    .line 232
    if-nez v11, :cond_f

    .line 233
    .line 234
    add-int/lit8 v12, v12, 0x1

    .line 235
    .line 236
    goto :goto_c

    .line 237
    :cond_f
    add-int/lit8 v15, v15, 0x1

    .line 238
    .line 239
    :goto_c
    move-object v14, v8

    .line 240
    const/4 v8, 0x1

    .line 241
    const/4 v11, 0x0

    .line 242
    goto :goto_9

    .line 243
    :cond_10
    invoke-static {v12}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    mul-int/lit8 v8, v8, 0x2

    .line 248
    .line 249
    add-int/lit8 v8, v8, -0x1

    .line 250
    .line 251
    sub-int/2addr v8, v12

    .line 252
    iput v8, v5, Ll8/z$b;->b:I

    .line 253
    .line 254
    iput v10, v5, Ll8/z$b;->d:I

    .line 255
    .line 256
    iput v10, v5, Ll8/z$b;->c:I

    .line 257
    .line 258
    const/4 v8, 0x0

    .line 259
    iput-object v8, v5, Ll8/z$b;->a:Ll8/z$f;

    .line 260
    .line 261
    invoke-static {v15}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 262
    .line 263
    .line 264
    move-result v11

    .line 265
    mul-int/lit8 v11, v11, 0x2

    .line 266
    .line 267
    add-int/lit8 v11, v11, -0x1

    .line 268
    .line 269
    sub-int/2addr v11, v15

    .line 270
    iput v11, v6, Ll8/z$b;->b:I

    .line 271
    .line 272
    iput v10, v6, Ll8/z$b;->d:I

    .line 273
    .line 274
    iput v10, v6, Ll8/z$b;->c:I

    .line 275
    .line 276
    iput-object v8, v6, Ll8/z$b;->a:Ll8/z$f;

    .line 277
    .line 278
    const/4 v8, 0x0

    .line 279
    :goto_d
    if-eqz v9, :cond_11

    .line 280
    .line 281
    iput-object v8, v9, Ll8/z$f;->a:Ll8/z$f;

    .line 282
    .line 283
    iget-object v8, v9, Ll8/z$f;->b:Ll8/z$f;

    .line 284
    .line 285
    move-object/from16 v16, v9

    .line 286
    .line 287
    move-object v9, v8

    .line 288
    move-object/from16 v8, v16

    .line 289
    .line 290
    goto :goto_d

    .line 291
    :cond_11
    :goto_e
    if-nez v8, :cond_12

    .line 292
    .line 293
    move-object v14, v8

    .line 294
    const/4 v8, 0x0

    .line 295
    const/4 v11, 0x0

    .line 296
    goto :goto_10

    .line 297
    :cond_12
    iget-object v9, v8, Ll8/z$f;->a:Ll8/z$f;

    .line 298
    .line 299
    const/4 v11, 0x0

    .line 300
    iput-object v11, v8, Ll8/z$f;->a:Ll8/z$f;

    .line 301
    .line 302
    iget-object v14, v8, Ll8/z$f;->c:Ll8/z$f;

    .line 303
    .line 304
    :goto_f
    move-object/from16 v16, v14

    .line 305
    .line 306
    move-object v14, v9

    .line 307
    move-object/from16 v9, v16

    .line 308
    .line 309
    if-eqz v9, :cond_13

    .line 310
    .line 311
    iput-object v14, v9, Ll8/z$f;->a:Ll8/z$f;

    .line 312
    .line 313
    iget-object v14, v9, Ll8/z$f;->b:Ll8/z$f;

    .line 314
    .line 315
    goto :goto_f

    .line 316
    :cond_13
    :goto_10
    if-eqz v8, :cond_15

    .line 317
    .line 318
    iget v9, v8, Ll8/z$f;->g:I

    .line 319
    .line 320
    and-int/2addr v9, v2

    .line 321
    if-nez v9, :cond_14

    .line 322
    .line 323
    invoke-virtual {v5, v8}, Ll8/z$b;->a(Ll8/z$f;)V

    .line 324
    .line 325
    .line 326
    goto :goto_11

    .line 327
    :cond_14
    invoke-virtual {v6, v8}, Ll8/z$b;->a(Ll8/z$f;)V

    .line 328
    .line 329
    .line 330
    :goto_11
    move-object v8, v14

    .line 331
    goto :goto_e

    .line 332
    :cond_15
    if-lez v12, :cond_17

    .line 333
    .line 334
    iget-object v8, v5, Ll8/z$b;->a:Ll8/z$f;

    .line 335
    .line 336
    iget-object v9, v8, Ll8/z$f;->a:Ll8/z$f;

    .line 337
    .line 338
    if-nez v9, :cond_16

    .line 339
    .line 340
    goto :goto_12

    .line 341
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 342
    .line 343
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 344
    .line 345
    .line 346
    throw v1

    .line 347
    :cond_17
    move-object v8, v11

    .line 348
    :goto_12
    aput-object v8, v4, v7

    .line 349
    .line 350
    add-int v8, v7, v2

    .line 351
    .line 352
    if-lez v15, :cond_19

    .line 353
    .line 354
    iget-object v9, v6, Ll8/z$b;->a:Ll8/z$f;

    .line 355
    .line 356
    iget-object v12, v9, Ll8/z$f;->a:Ll8/z$f;

    .line 357
    .line 358
    if-nez v12, :cond_18

    .line 359
    .line 360
    goto :goto_13

    .line 361
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 362
    .line 363
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 364
    .line 365
    .line 366
    throw v1

    .line 367
    :cond_19
    move-object v9, v11

    .line 368
    :goto_13
    aput-object v9, v4, v8

    .line 369
    .line 370
    :goto_14
    add-int/lit8 v7, v7, 0x1

    .line 371
    .line 372
    const/4 v8, 0x1

    .line 373
    goto/16 :goto_7

    .line 374
    .line 375
    :cond_1a
    iput-object v4, v0, Ll8/z;->b:[Ll8/z$f;

    .line 376
    .line 377
    div-int/lit8 v1, v3, 0x2

    .line 378
    .line 379
    div-int/lit8 v3, v3, 0x4

    .line 380
    .line 381
    add-int/2addr v3, v1

    .line 382
    iput v3, v0, Ll8/z;->f:I

    .line 383
    .line 384
    :cond_1b
    iget v1, v0, Ll8/z;->e:I

    .line 385
    .line 386
    const/4 v2, 0x1

    .line 387
    add-int/2addr v1, v2

    .line 388
    iput v1, v0, Ll8/z;->e:I

    .line 389
    .line 390
    return-object v13
.end method

.method public final b(Ljava/util/Map$Entry;)Ll8/z$f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Ll8/z$f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, v0, v2}, Ll8/z;->a(Ljava/lang/Object;Z)Ll8/z$f;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    :cond_0
    move-object v0, v1

    .line 15
    :goto_0
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v3, v0, Ll8/z$f;->h:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v3, p1, :cond_2

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 38
    :goto_2
    if-eqz p1, :cond_3

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    :cond_3
    if-eqz v2, :cond_4

    .line 42
    .line 43
    move-object v1, v0

    .line 44
    :cond_4
    return-object v1
.end method

.method public final c(Ll8/z$f;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/z$f<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_e

    iget-object v0, p1, Ll8/z$f;->b:Ll8/z$f;

    iget-object v1, p1, Ll8/z$f;->c:Ll8/z$f;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Ll8/z$f;->j:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Ll8/z$f;->j:I

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    iget-object v0, v1, Ll8/z$f;->b:Ll8/z$f;

    iget-object v3, v1, Ll8/z$f;->c:Ll8/z$f;

    if-eqz v3, :cond_2

    iget v3, v3, Ll8/z$f;->j:I

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v0, :cond_3

    iget v2, v0, Ll8/z$f;->j:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v1}, Ll8/z;->g(Ll8/z$f;)V

    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Ll8/z;->f(Ll8/z$f;)V

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    iget-object v1, v0, Ll8/z$f;->b:Ll8/z$f;

    iget-object v3, v0, Ll8/z$f;->c:Ll8/z$f;

    if-eqz v3, :cond_7

    iget v3, v3, Ll8/z$f;->j:I

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    if-eqz v1, :cond_8

    iget v2, v1, Ll8/z$f;->j:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v0}, Ll8/z;->f(Ll8/z$f;)V

    :cond_a
    :goto_6
    invoke-virtual {p0, p1}, Ll8/z;->g(Ll8/z$f;)V

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Ll8/z$f;->j:I

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Ll8/z$f;->j:I

    if-nez p2, :cond_d

    goto :goto_7

    :cond_d
    iget-object p1, p1, Ll8/z$f;->a:Ll8/z$f;

    goto :goto_0

    :cond_e
    :goto_7
    return-void
.end method

.method public final clear()V
    .locals 4

    iget-object v0, p0, Ll8/z;->b:[Ll8/z$f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Ll8/z;->d:I

    iget v0, p0, Ll8/z;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ll8/z;->e:I

    iget-object v0, p0, Ll8/z;->c:Ll8/z$f;

    iget-object v2, v0, Ll8/z$f;->d:Ll8/z$f;

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, v2, Ll8/z$f;->d:Ll8/z$f;

    iput-object v1, v2, Ll8/z$f;->e:Ll8/z$f;

    iput-object v1, v2, Ll8/z$f;->d:Ll8/z$f;

    move-object v2, v3

    goto :goto_0

    :cond_0
    iput-object v0, v0, Ll8/z$f;->e:Ll8/z$f;

    iput-object v0, v0, Ll8/z$f;->d:Ll8/z$f;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Ll8/z;->a(Ljava/lang/Object;Z)Ll8/z$f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final d(Ll8/z$f;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/z$f<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p1, Ll8/z$f;->e:Ll8/z$f;

    .line 5
    .line 6
    iget-object v1, p1, Ll8/z$f;->d:Ll8/z$f;

    .line 7
    .line 8
    iput-object v1, p2, Ll8/z$f;->d:Ll8/z$f;

    .line 9
    .line 10
    iget-object v1, p1, Ll8/z$f;->d:Ll8/z$f;

    .line 11
    .line 12
    iput-object p2, v1, Ll8/z$f;->e:Ll8/z$f;

    .line 13
    .line 14
    iput-object v0, p1, Ll8/z$f;->e:Ll8/z$f;

    .line 15
    .line 16
    iput-object v0, p1, Ll8/z$f;->d:Ll8/z$f;

    .line 17
    .line 18
    :cond_0
    iget-object p2, p1, Ll8/z$f;->b:Ll8/z$f;

    .line 19
    .line 20
    iget-object v1, p1, Ll8/z$f;->c:Ll8/z$f;

    .line 21
    .line 22
    iget-object v2, p1, Ll8/z$f;->a:Ll8/z$f;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz p2, :cond_6

    .line 26
    .line 27
    if-eqz v1, :cond_6

    .line 28
    .line 29
    iget v2, p2, Ll8/z$f;->j:I

    .line 30
    .line 31
    iget v4, v1, Ll8/z$f;->j:I

    .line 32
    .line 33
    if-le v2, v4, :cond_1

    .line 34
    .line 35
    :goto_0
    iget-object v1, p2, Ll8/z$f;->c:Ll8/z$f;

    .line 36
    .line 37
    move-object v5, v1

    .line 38
    move-object v1, p2

    .line 39
    move-object p2, v5

    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    iget-object p2, v1, Ll8/z$f;->b:Ll8/z$f;

    .line 44
    .line 45
    move-object v5, v1

    .line 46
    move-object v1, p2

    .line 47
    move-object p2, v5

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v1, p2

    .line 52
    :cond_3
    invoke-virtual {p0, v1, v3}, Ll8/z;->d(Ll8/z$f;Z)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p1, Ll8/z$f;->b:Ll8/z$f;

    .line 56
    .line 57
    if-eqz p2, :cond_4

    .line 58
    .line 59
    iget v2, p2, Ll8/z$f;->j:I

    .line 60
    .line 61
    iput-object p2, v1, Ll8/z$f;->b:Ll8/z$f;

    .line 62
    .line 63
    iput-object v1, p2, Ll8/z$f;->a:Ll8/z$f;

    .line 64
    .line 65
    iput-object v0, p1, Ll8/z$f;->b:Ll8/z$f;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    const/4 v2, 0x0

    .line 69
    :goto_2
    iget-object p2, p1, Ll8/z$f;->c:Ll8/z$f;

    .line 70
    .line 71
    if-eqz p2, :cond_5

    .line 72
    .line 73
    iget v3, p2, Ll8/z$f;->j:I

    .line 74
    .line 75
    iput-object p2, v1, Ll8/z$f;->c:Ll8/z$f;

    .line 76
    .line 77
    iput-object v1, p2, Ll8/z$f;->a:Ll8/z$f;

    .line 78
    .line 79
    iput-object v0, p1, Ll8/z$f;->c:Ll8/z$f;

    .line 80
    .line 81
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    add-int/lit8 p2, p2, 0x1

    .line 86
    .line 87
    iput p2, v1, Ll8/z$f;->j:I

    .line 88
    .line 89
    invoke-virtual {p0, p1, v1}, Ll8/z;->e(Ll8/z$f;Ll8/z$f;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_6
    if-eqz p2, :cond_7

    .line 94
    .line 95
    invoke-virtual {p0, p1, p2}, Ll8/z;->e(Ll8/z$f;Ll8/z$f;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p1, Ll8/z$f;->b:Ll8/z$f;

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_7
    if-eqz v1, :cond_8

    .line 102
    .line 103
    invoke-virtual {p0, p1, v1}, Ll8/z;->e(Ll8/z$f;Ll8/z$f;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p1, Ll8/z$f;->c:Ll8/z$f;

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_8
    invoke-virtual {p0, p1, v0}, Ll8/z;->e(Ll8/z$f;Ll8/z$f;)V

    .line 110
    .line 111
    .line 112
    :goto_3
    invoke-virtual {p0, v2, v3}, Ll8/z;->c(Ll8/z$f;Z)V

    .line 113
    .line 114
    .line 115
    iget p1, p0, Ll8/z;->d:I

    .line 116
    .line 117
    add-int/lit8 p1, p1, -0x1

    .line 118
    .line 119
    iput p1, p0, Ll8/z;->d:I

    .line 120
    .line 121
    iget p1, p0, Ll8/z;->e:I

    .line 122
    .line 123
    add-int/lit8 p1, p1, 0x1

    .line 124
    .line 125
    iput p1, p0, Ll8/z;->e:I

    .line 126
    .line 127
    return-void
.end method

.method public final e(Ll8/z$f;Ll8/z$f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/z$f<",
            "TK;TV;>;",
            "Ll8/z$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Ll8/z$f;->a:Ll8/z$f;

    const/4 v1, 0x0

    iput-object v1, p1, Ll8/z$f;->a:Ll8/z$f;

    if-eqz p2, :cond_0

    iput-object v0, p2, Ll8/z$f;->a:Ll8/z$f;

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Ll8/z$f;->b:Ll8/z$f;

    if-ne v1, p1, :cond_1

    iput-object p2, v0, Ll8/z$f;->b:Ll8/z$f;

    goto :goto_0

    :cond_1
    iput-object p2, v0, Ll8/z$f;->c:Ll8/z$f;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ll8/z;->b:[Ll8/z$f;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget p1, p1, Ll8/z$f;->g:I

    and-int/2addr p1, v1

    aput-object p2, v0, p1

    :goto_0
    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ll8/z;->g:Ll8/z$c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ll8/z$c;

    invoke-direct {v0, p0}, Ll8/z$c;-><init>(Ll8/z;)V

    iput-object v0, p0, Ll8/z;->g:Ll8/z$c;

    :goto_0
    return-object v0
.end method

.method public final f(Ll8/z$f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/z$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Ll8/z$f;->b:Ll8/z$f;

    iget-object v1, p1, Ll8/z$f;->c:Ll8/z$f;

    iget-object v2, v1, Ll8/z$f;->b:Ll8/z$f;

    iget-object v3, v1, Ll8/z$f;->c:Ll8/z$f;

    iput-object v2, p1, Ll8/z$f;->c:Ll8/z$f;

    if-eqz v2, :cond_0

    iput-object p1, v2, Ll8/z$f;->a:Ll8/z$f;

    :cond_0
    invoke-virtual {p0, p1, v1}, Ll8/z;->e(Ll8/z$f;Ll8/z$f;)V

    iput-object p1, v1, Ll8/z$f;->b:Ll8/z$f;

    iput-object v1, p1, Ll8/z$f;->a:Ll8/z$f;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Ll8/z$f;->j:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Ll8/z$f;->j:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ll8/z$f;->j:I

    if-eqz v3, :cond_3

    iget v4, v3, Ll8/z$f;->j:I

    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Ll8/z$f;->j:I

    return-void
.end method

.method public final g(Ll8/z$f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/z$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Ll8/z$f;->b:Ll8/z$f;

    iget-object v1, p1, Ll8/z$f;->c:Ll8/z$f;

    iget-object v2, v0, Ll8/z$f;->b:Ll8/z$f;

    iget-object v3, v0, Ll8/z$f;->c:Ll8/z$f;

    iput-object v3, p1, Ll8/z$f;->b:Ll8/z$f;

    if-eqz v3, :cond_0

    iput-object p1, v3, Ll8/z$f;->a:Ll8/z$f;

    :cond_0
    invoke-virtual {p0, p1, v0}, Ll8/z;->e(Ll8/z$f;Ll8/z$f;)V

    iput-object p1, v0, Ll8/z$f;->c:Ll8/z$f;

    iput-object v0, p1, Ll8/z$f;->a:Ll8/z$f;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Ll8/z$f;->j:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Ll8/z$f;->j:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Ll8/z$f;->j:I

    if-eqz v2, :cond_3

    iget v4, v2, Ll8/z$f;->j:I

    :cond_3
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Ll8/z$f;->j:I

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Ll8/z;->a(Ljava/lang/Object;Z)Ll8/z$f;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    :cond_0
    move-object p1, v0

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p1, Ll8/z$f;->h:Ljava/lang/Object;

    .line 14
    .line 15
    :cond_1
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ll8/z;->h:Ll8/z$d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ll8/z$d;

    invoke-direct {v0, p0}, Ll8/z$d;-><init>(Ll8/z;)V

    iput-object v0, p0, Ll8/z;->h:Ll8/z$d;

    :goto_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ll8/z;->a(Ljava/lang/Object;Z)Ll8/z$f;

    move-result-object p1

    iget-object v0, p1, Ll8/z$f;->h:Ljava/lang/Object;

    iput-object p2, p1, Ll8/z$f;->h:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Ll8/z;->a(Ljava/lang/Object;Z)Ll8/z$f;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    nop

    .line 11
    :cond_0
    move-object p1, v0

    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, p1, v1}, Ll8/z;->d(Ll8/z$f;Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object v0, p1, Ll8/z$f;->h:Ljava/lang/Object;

    .line 21
    .line 22
    :cond_2
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Ll8/z;->d:I

    return v0
.end method
