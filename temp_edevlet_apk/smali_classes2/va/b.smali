.class public abstract Lva/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TAnnotation:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/LinkedHashMap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final a:Lva/s;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "TTAnnotation;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lva/c;->values()[Lva/c;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_1

    .line 13
    .line 14
    aget-object v4, v1, v3

    .line 15
    .line 16
    iget-object v5, v4, Lva/c;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    if-nez v6, :cond_0

    .line 23
    .line 24
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sput-object v0, Lva/b;->c:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Lva/s;)V
    .locals 1

    const-string v0, "javaTypeEnhancementState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva/b;->a:Lva/s;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lva/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Z)Ljava/util/ArrayList;
.end method

.method public final b(Lva/t;Ljava/lang/Iterable;)Lva/t;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lva/t;",
            "Ljava/lang/Iterable<",
            "+TTAnnotation;>;)",
            "Lva/t;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "annotations"

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lva/b;->a:Lva/s;

    .line 13
    .line 14
    iget-boolean v4, v2, Lva/s;->c:Z

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v7, 0x1

    .line 33
    if-eqz v5, :cond_1e

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    sget-object v8, Lva/b0;->c:Lva/b0;

    .line 40
    .line 41
    sget-object v9, Lva/b0;->b:Lva/b0;

    .line 42
    .line 43
    iget-boolean v10, v2, Lva/s;->c:Z

    .line 44
    .line 45
    const/4 v11, 0x0

    .line 46
    if-eqz v10, :cond_2

    .line 47
    .line 48
    goto :goto_5

    .line 49
    :cond_2
    sget-object v10, Lva/d;->g:Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    invoke-virtual {v0, v5}, Lva/b;->e(Ljava/lang/Object;)Llb/c;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    invoke-virtual {v10, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    check-cast v10, Lva/n;

    .line 60
    .line 61
    if-eqz v10, :cond_9

    .line 62
    .line 63
    invoke-virtual {v0, v5}, Lva/b;->e(Ljava/lang/Object;)Llb/c;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    if-eqz v12, :cond_3

    .line 68
    .line 69
    sget-object v13, Lva/d;->f:Ljava/util/Map;

    .line 70
    .line 71
    invoke-interface {v13, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    if-eqz v13, :cond_3

    .line 76
    .line 77
    iget-object v13, v2, Lva/s;->b:Lx9/l;

    .line 78
    .line 79
    invoke-interface {v13, v12}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    check-cast v12, Lva/b0;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v0, v5}, Lva/b;->j(Ljava/lang/Object;)Lva/b0;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    if-eqz v12, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    iget-object v12, v2, Lva/s;->a:Lva/v;

    .line 94
    .line 95
    iget-object v12, v12, Lva/v;->a:Lva/b0;

    .line 96
    .line 97
    :goto_1
    if-eq v12, v9, :cond_5

    .line 98
    .line 99
    const/4 v13, 0x1

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    const/4 v13, 0x0

    .line 102
    :goto_2
    if-eqz v13, :cond_6

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    move-object v12, v11

    .line 106
    :goto_3
    if-nez v12, :cond_7

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_7
    if-ne v12, v8, :cond_8

    .line 110
    .line 111
    const/4 v12, 0x1

    .line 112
    goto :goto_4

    .line 113
    :cond_8
    const/4 v12, 0x0

    .line 114
    :goto_4
    iget-object v13, v10, Lva/n;->a:Ldb/l;

    .line 115
    .line 116
    invoke-static {v13, v11, v12, v7}, Ldb/l;->a(Ldb/l;Ldb/k;ZI)Ldb/l;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    iget-object v13, v10, Lva/n;->b:Ljava/util/Collection;

    .line 121
    .line 122
    const-string v14, "qualifierApplicabilityTypes"

    .line 123
    .line 124
    invoke-static {v13, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v14, Lva/n;

    .line 128
    .line 129
    iget-boolean v10, v10, Lva/n;->c:Z

    .line 130
    .line 131
    invoke-direct {v14, v12, v13, v10}, Lva/n;-><init>(Ldb/l;Ljava/util/Collection;Z)V

    .line 132
    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_9
    :goto_5
    move-object v14, v11

    .line 136
    :goto_6
    if-eqz v14, :cond_a

    .line 137
    .line 138
    move-object v11, v14

    .line 139
    goto/16 :goto_12

    .line 140
    .line 141
    :cond_a
    iget-object v10, v2, Lva/s;->a:Lva/v;

    .line 142
    .line 143
    iget-boolean v10, v10, Lva/v;->d:Z

    .line 144
    .line 145
    if-eqz v10, :cond_b

    .line 146
    .line 147
    goto :goto_9

    .line 148
    :cond_b
    sget-object v10, Lva/d;->c:Llb/c;

    .line 149
    .line 150
    invoke-virtual {v0, v5, v10}, Lva/b;->d(Ljava/lang/Object;Llb/c;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    if-nez v10, :cond_c

    .line 155
    .line 156
    goto :goto_9

    .line 157
    :cond_c
    invoke-virtual {v0, v5}, Lva/b;->g(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    :cond_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    if-eqz v13, :cond_f

    .line 170
    .line 171
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    invoke-virtual {v0, v13}, Lva/b;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v14

    .line 179
    if-eqz v14, :cond_e

    .line 180
    .line 181
    const/4 v14, 0x1

    .line 182
    goto :goto_7

    .line 183
    :cond_e
    const/4 v14, 0x0

    .line 184
    :goto_7
    if-eqz v14, :cond_d

    .line 185
    .line 186
    goto :goto_8

    .line 187
    :cond_f
    move-object v13, v11

    .line 188
    :goto_8
    if-nez v13, :cond_10

    .line 189
    .line 190
    :goto_9
    move-object v10, v11

    .line 191
    goto/16 :goto_d

    .line 192
    .line 193
    :cond_10
    invoke-virtual {v0, v10, v7}, Lva/b;->a(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    new-instance v12, Ljava/util/LinkedHashSet;

    .line 198
    .line 199
    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    :cond_11
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    if-eqz v14, :cond_12

    .line 211
    .line 212
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    check-cast v14, Ljava/lang/String;

    .line 217
    .line 218
    sget-object v15, Lva/b;->c:Ljava/util/LinkedHashMap;

    .line 219
    .line 220
    invoke-virtual {v15, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v14

    .line 224
    check-cast v14, Lva/c;

    .line 225
    .line 226
    if-eqz v14, :cond_11

    .line 227
    .line 228
    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_a

    .line 232
    :cond_12
    new-instance v10, Ll9/g;

    .line 233
    .line 234
    sget-object v14, Lva/c;->e:Lva/c;

    .line 235
    .line 236
    invoke-interface {v12, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v14

    .line 240
    if-eqz v14, :cond_16

    .line 241
    .line 242
    invoke-static {}, Lva/c;->values()[Lva/c;

    .line 243
    .line 244
    .line 245
    move-result-object v14

    .line 246
    invoke-static {v14}, Lm9/k;->C0([Ljava/lang/Object;)Ljava/util/Set;

    .line 247
    .line 248
    .line 249
    move-result-object v14

    .line 250
    sget-object v15, Lva/c;->f:Lva/c;

    .line 251
    .line 252
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 253
    .line 254
    invoke-interface {v14}, Ljava/util/Set;->size()I

    .line 255
    .line 256
    .line 257
    move-result v16

    .line 258
    invoke-static/range {v16 .. v16}, Lb8/f;->V(I)I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    invoke-direct {v6, v7}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 263
    .line 264
    .line 265
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    const/4 v14, 0x0

    .line 270
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v16

    .line 274
    if-eqz v16, :cond_15

    .line 275
    .line 276
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v11

    .line 280
    if-nez v14, :cond_13

    .line 281
    .line 282
    invoke-static {v11, v15}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v17

    .line 286
    if-eqz v17, :cond_13

    .line 287
    .line 288
    const/4 v14, 0x1

    .line 289
    const/16 v17, 0x0

    .line 290
    .line 291
    goto :goto_c

    .line 292
    :cond_13
    const/16 v17, 0x1

    .line 293
    .line 294
    :goto_c
    if-eqz v17, :cond_14

    .line 295
    .line 296
    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    :cond_14
    const/4 v11, 0x0

    .line 300
    goto :goto_b

    .line 301
    :cond_15
    invoke-static {v6, v12}, Lm9/g0;->F(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 302
    .line 303
    .line 304
    move-result-object v12

    .line 305
    :cond_16
    invoke-direct {v10, v13, v12}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    :goto_d
    if-nez v10, :cond_17

    .line 309
    .line 310
    goto :goto_10

    .line 311
    :cond_17
    iget-object v6, v10, Ll9/g;->b:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v6, Ljava/util/Set;

    .line 314
    .line 315
    invoke-virtual {v0, v5}, Lva/b;->j(Ljava/lang/Object;)Lva/b0;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    iget-object v7, v10, Ll9/g;->a:Ljava/lang/Object;

    .line 320
    .line 321
    if-nez v5, :cond_19

    .line 322
    .line 323
    invoke-virtual {v0, v7}, Lva/b;->j(Ljava/lang/Object;)Lva/b0;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    if-eqz v5, :cond_18

    .line 328
    .line 329
    goto :goto_e

    .line 330
    :cond_18
    iget-object v5, v2, Lva/s;->a:Lva/v;

    .line 331
    .line 332
    iget-object v5, v5, Lva/v;->a:Lva/b0;

    .line 333
    .line 334
    :cond_19
    :goto_e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    if-ne v5, v9, :cond_1a

    .line 338
    .line 339
    const/4 v9, 0x1

    .line 340
    goto :goto_f

    .line 341
    :cond_1a
    const/4 v9, 0x0

    .line 342
    :goto_f
    if-eqz v9, :cond_1b

    .line 343
    .line 344
    goto :goto_10

    .line 345
    :cond_1b
    sget-object v9, Lva/a;->a:Lva/a;

    .line 346
    .line 347
    invoke-virtual {v0, v9, v7}, Lva/b;->c(Lx9/l;Ljava/lang/Object;)Ldb/l;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    if-nez v7, :cond_1c

    .line 352
    .line 353
    :goto_10
    const/4 v11, 0x0

    .line 354
    goto :goto_12

    .line 355
    :cond_1c
    new-instance v9, Lva/n;

    .line 356
    .line 357
    if-ne v5, v8, :cond_1d

    .line 358
    .line 359
    const/4 v5, 0x1

    .line 360
    goto :goto_11

    .line 361
    :cond_1d
    const/4 v5, 0x0

    .line 362
    :goto_11
    const/4 v8, 0x1

    .line 363
    const/4 v10, 0x0

    .line 364
    invoke-static {v7, v10, v5, v8}, Ldb/l;->a(Ldb/l;Ldb/k;ZI)Ldb/l;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-direct {v9, v5, v6}, Lva/n;-><init>(Ldb/l;Ljava/util/Collection;)V

    .line 369
    .line 370
    .line 371
    move-object v11, v9

    .line 372
    :goto_12
    if-eqz v11, :cond_1

    .line 373
    .line 374
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    goto/16 :goto_0

    .line 378
    .line 379
    :cond_1e
    const/4 v8, 0x1

    .line 380
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-eqz v2, :cond_1f

    .line 385
    .line 386
    return-object v1

    .line 387
    :cond_1f
    if-eqz v1, :cond_20

    .line 388
    .line 389
    iget-object v2, v1, Lva/t;->a:Ljava/util/EnumMap;

    .line 390
    .line 391
    if-eqz v2, :cond_20

    .line 392
    .line 393
    new-instance v3, Ljava/util/EnumMap;

    .line 394
    .line 395
    invoke-direct {v3, v2}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    .line 396
    .line 397
    .line 398
    goto :goto_13

    .line 399
    :cond_20
    new-instance v3, Ljava/util/EnumMap;

    .line 400
    .line 401
    const-class v2, Lva/c;

    .line 402
    .line 403
    invoke-direct {v3, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 404
    .line 405
    .line 406
    :goto_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    const/4 v6, 0x0

    .line 411
    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    if-eqz v4, :cond_22

    .line 416
    .line 417
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    check-cast v4, Lva/n;

    .line 422
    .line 423
    iget-object v5, v4, Lva/n;->b:Ljava/util/Collection;

    .line 424
    .line 425
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    if-eqz v7, :cond_21

    .line 434
    .line 435
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    check-cast v6, Lva/c;

    .line 440
    .line 441
    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    const/4 v6, 0x1

    .line 445
    goto :goto_14

    .line 446
    :cond_22
    if-nez v6, :cond_23

    .line 447
    .line 448
    goto :goto_15

    .line 449
    :cond_23
    new-instance v1, Lva/t;

    .line 450
    .line 451
    invoke-direct {v1, v3}, Lva/t;-><init>(Ljava/util/EnumMap;)V

    .line 452
    .line 453
    .line 454
    :goto_15
    return-object v1
.end method

.method public final c(Lx9/l;Ljava/lang/Object;)Ldb/l;
    .locals 5

    .line 1
    invoke-interface {p1, p2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, p2, v0}, Lva/b;->i(Ljava/lang/Object;Z)Ldb/l;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p0, p2}, Lva/b;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    invoke-virtual {p0, p2}, Lva/b;->j(Ljava/lang/Object;)Lva/b0;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object p2, p0, Lva/b;->a:Lva/s;

    .line 34
    .line 35
    iget-object p2, p2, Lva/s;->a:Lva/v;

    .line 36
    .line 37
    iget-object p2, p2, Lva/v;->a:Lva/b0;

    .line 38
    .line 39
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object v2, Lva/b0;->b:Lva/b0;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x1

    .line 46
    if-ne p2, v2, :cond_3

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 v2, 0x0

    .line 51
    :goto_1
    if-eqz v2, :cond_4

    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_4
    invoke-interface {p1, v0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p0, v0, p1}, Lva/b;->i(Ljava/lang/Object;Z)Ldb/l;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_6

    .line 69
    .line 70
    sget-object v0, Lva/b0;->c:Lva/b0;

    .line 71
    .line 72
    if-ne p2, v0, :cond_5

    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    :cond_5
    invoke-static {p1, v1, v3, v4}, Ldb/l;->a(Ldb/l;Ldb/k;ZI)Ldb/l;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_6
    return-object v1
.end method

.method public final d(Ljava/lang/Object;Llb/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;",
            "Llb/c;",
            ")TTAnnotation;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lva/b;->g(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lva/b;->e(Ljava/lang/Object;)Llb/c;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public abstract e(Ljava/lang/Object;)Llb/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;)",
            "Llb/c;"
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/Object;)Lma/e;
.end method

.method public abstract g(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;)",
            "Ljava/lang/Iterable<",
            "TTAnnotation;>;"
        }
    .end annotation
.end method

.method public final h(Ljava/lang/Object;Llb/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;",
            "Llb/c;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lva/b;->g(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lva/b;->e(Ljava/lang/Object;)Llb/c;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final i(Ljava/lang/Object;Z)Ldb/l;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;Z)",
            "Ldb/l;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lva/b;->e(Ljava/lang/Object;)Llb/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v2, p0, Lva/b;->a:Lva/s;

    .line 10
    .line 11
    iget-object v2, v2, Lva/s;->b:Lx9/l;

    .line 12
    .line 13
    invoke-interface {v2, v0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lva/b0;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object v3, Lva/b0;->b:Lva/b0;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    const/4 v5, 0x0

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-eqz v3, :cond_2

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_2
    sget-object v3, Lva/y;->d:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    sget-object v6, Ldb/k;->b:Ldb/k;

    .line 41
    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_3
    sget-object v3, Lva/y;->g:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    sget-object v7, Ldb/k;->c:Ldb/k;

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_4
    sget-object v3, Lva/y;->a:Llb/c;

    .line 59
    .line 60
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    :cond_5
    sget-object v3, Lva/y;->b:Llb/c;

    .line 69
    .line 70
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    sget-object v8, Ldb/k;->a:Ldb/k;

    .line 75
    .line 76
    if-eqz v3, :cond_6

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_6
    sget-object v3, Lva/y;->e:Llb/c;

    .line 80
    .line 81
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_9

    .line 86
    .line 87
    invoke-virtual {p0, p1, v5}, Lva/b;->a(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lm9/t;->b1(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/lang/String;

    .line 96
    .line 97
    if-eqz p1, :cond_c

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    sparse-switch v0, :sswitch_data_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :sswitch_0
    const-string v0, "ALWAYS"

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_8

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :sswitch_1
    const-string v0, "UNKNOWN"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_7

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    :goto_1
    move-object v6, v8

    .line 126
    goto :goto_4

    .line 127
    :sswitch_2
    const-string v0, "NEVER"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_e

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :sswitch_3
    const-string v0, "MAYBE"

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_e

    .line 143
    .line 144
    :cond_8
    :goto_2
    return-object v1

    .line 145
    :cond_9
    sget-object p1, Lva/y;->h:Llb/c;

    .line 146
    .line 147
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_a

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_a
    sget-object p1, Lva/y;->i:Llb/c;

    .line 155
    .line 156
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_b

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_b
    sget-object p1, Lva/y;->k:Llb/c;

    .line 164
    .line 165
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_d

    .line 170
    .line 171
    :cond_c
    :goto_3
    move-object v6, v7

    .line 172
    goto :goto_4

    .line 173
    :cond_d
    sget-object p1, Lva/y;->j:Llb/c;

    .line 174
    .line 175
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_12

    .line 180
    .line 181
    :cond_e
    :goto_4
    new-instance p1, Ldb/l;

    .line 182
    .line 183
    sget-object v0, Lva/b0;->c:Lva/b0;

    .line 184
    .line 185
    if-ne v2, v0, :cond_f

    .line 186
    .line 187
    const/4 v0, 0x1

    .line 188
    goto :goto_5

    .line 189
    :cond_f
    const/4 v0, 0x0

    .line 190
    :goto_5
    if-nez v0, :cond_11

    .line 191
    .line 192
    if-eqz p2, :cond_10

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_10
    const/4 v4, 0x0

    .line 196
    :cond_11
    :goto_6
    invoke-direct {p1, v6, v4}, Ldb/l;-><init>(Ldb/k;Z)V

    .line 197
    .line 198
    .line 199
    return-object p1

    .line 200
    :cond_12
    return-object v1

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x45bf448 -> :sswitch_3
        0x46bd26c -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x7342860f -> :sswitch_0
    .end sparse-switch
.end method

.method public final j(Ljava/lang/Object;)Lva/b0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;)",
            "Lva/b0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lva/b;->a:Lva/s;

    .line 2
    .line 3
    iget-object v1, v0, Lva/s;->a:Lva/v;

    .line 4
    .line 5
    iget-object v1, v1, Lva/v;->c:Ljava/util/Map;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lva/b;->e(Ljava/lang/Object;)Llb/c;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lva/b0;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    sget-object v1, Lva/d;->d:Llb/c;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v1}, Lva/b;->d(Ljava/lang/Object;Llb/c;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_8

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, p1, v1}, Lva/b;->a(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_8

    .line 34
    .line 35
    invoke-static {p1}, Lm9/t;->b1(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/String;

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, v0, Lva/s;->a:Lva/v;

    .line 45
    .line 46
    iget-object v0, v0, Lva/v;->b:Lva/b0;

    .line 47
    .line 48
    if-nez v0, :cond_9

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const v1, -0x7f610e2e

    .line 55
    .line 56
    .line 57
    if-eq v0, v1, :cond_6

    .line 58
    .line 59
    const v1, -0x6d97ad37

    .line 60
    .line 61
    .line 62
    if-eq v0, v1, :cond_4

    .line 63
    .line 64
    const v1, 0x288a86

    .line 65
    .line 66
    .line 67
    if-eq v0, v1, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const-string v0, "WARN"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    sget-object v0, Lva/b0;->c:Lva/b0;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    const-string v0, "STRICT"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_5

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    sget-object v0, Lva/b0;->d:Lva/b0;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    const-string v0, "IGNORE"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_7

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_7
    sget-object v0, Lva/b0;->b:Lva/b0;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_8
    :goto_0
    const/4 v0, 0x0

    .line 107
    :cond_9
    :goto_1
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTAnnotation;)TTAnnotation;"
        }
    .end annotation

    .line 1
    const-string v0, "annotation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lva/b;->a:Lva/s;

    .line 7
    .line 8
    iget-object v0, v0, Lva/s;->a:Lva/v;

    .line 9
    .line 10
    iget-boolean v0, v0, Lva/v;->d:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    sget-object v0, Lva/d;->h:Ljava/util/Set;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lva/b;->e(Ljava/lang/Object;)Llb/c;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0, v2}, Lm9/t;->V0(Ljava/util/Set;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_8

    .line 27
    .line 28
    sget-object v0, Lva/d;->b:Llb/c;

    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, Lva/b;->h(Ljava/lang/Object;Llb/c;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    sget-object v0, Lva/d;->a:Llb/c;

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lva/b;->h(Ljava/lang/Object;Llb/c;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_2
    iget-object v0, p0, Lva/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lva/b;->f(Ljava/lang/Object;)Lma/e;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-nez v3, :cond_7

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lva/b;->g(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {p0, v3}, Lva/b;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    move-object v3, v1

    .line 84
    :goto_0
    if-nez v3, :cond_5

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_5
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-nez p1, :cond_6

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    move-object v3, p1

    .line 95
    :cond_7
    :goto_1
    return-object v3

    .line 96
    :cond_8
    :goto_2
    return-object p1
.end method
