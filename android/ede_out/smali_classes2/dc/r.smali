.class public final Ldc/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/r$a;
    }
.end annotation


# static fields
.field public static final a:Ldc/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldc/r;

    invoke-direct {v0}, Ldc/r;-><init>()V

    sput-object v0, Ldc/r;->a:Ldc/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/AbstractCollection;Lx9/p;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, "filteredTypes.iterator()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/m0;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcc/m0;

    const/4 v5, 0x1

    if-eq v4, v1, :cond_3

    const-string v6, "lower"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "upper"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v4, v1}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_4
    :goto_2
    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)Lcc/m0;
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcc/m0;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcc/e0;->M0()Lcc/c1;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    instance-of v4, v4, Lcc/c0;

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2}, Lcc/e0;->M0()Lcc/c1;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v4}, Lcc/c1;->l()Ljava/util/Collection;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v5, "type.constructor.supertypes"

    .line 43
    .line 44
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    check-cast v4, Ljava/lang/Iterable;

    .line 48
    .line 49
    new-instance v5, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-static {v4}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_1

    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Lcc/e0;

    .line 73
    .line 74
    const-string v7, "it"

    .line 75
    .line 76
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v6}, Lc5/v;->M(Lcc/e0;)Lcc/m0;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v2}, Lcc/e0;->N0()Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_0

    .line 88
    .line 89
    invoke-virtual {v6, v3}, Lcc/m0;->T0(Z)Lcc/m0;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    :cond_0
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    sget-object v1, Ldc/r$a;->a:Ldc/r$a$c;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_4

    .line 116
    .line 117
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Lcc/s1;

    .line 122
    .line 123
    invoke-virtual {v1, v4}, Ldc/r$a;->n(Lcc/s1;)Ldc/r$a;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    goto :goto_2

    .line 128
    :cond_4
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    const-string v5, "<this>"

    .line 142
    .line 143
    if-eqz v4, :cond_9

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Lcc/m0;

    .line 150
    .line 151
    sget-object v6, Ldc/r$a;->d:Ldc/r$a$b;

    .line 152
    .line 153
    if-ne v1, v6, :cond_8

    .line 154
    .line 155
    instance-of v6, v4, Ldc/h;

    .line 156
    .line 157
    if-eqz v6, :cond_5

    .line 158
    .line 159
    check-cast v4, Ldc/h;

    .line 160
    .line 161
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v13, Ldc/h;

    .line 165
    .line 166
    iget-object v7, v4, Ldc/h;->b:Lfc/b;

    .line 167
    .line 168
    iget-object v8, v4, Ldc/h;->c:Ldc/j;

    .line 169
    .line 170
    iget-object v9, v4, Ldc/h;->d:Lcc/s1;

    .line 171
    .line 172
    iget-object v10, v4, Ldc/h;->e:Lcc/a1;

    .line 173
    .line 174
    iget-boolean v11, v4, Ldc/h;->f:Z

    .line 175
    .line 176
    const/4 v12, 0x1

    .line 177
    move-object v6, v13

    .line 178
    invoke-direct/range {v6 .. v12}, Ldc/h;-><init>(Lfc/b;Ldc/j;Lcc/s1;Lcc/a1;ZZ)V

    .line 179
    .line 180
    .line 181
    move-object v4, v13

    .line 182
    :cond_5
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const/4 v5, 0x0

    .line 186
    invoke-static {v4, v5}, Lcc/q$a;->a(Lcc/s1;Z)Lcc/q;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    if-eqz v6, :cond_6

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_6
    invoke-static {v4}, Lcc/q0;->b(Lcc/e0;)Lcc/m0;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    if-nez v6, :cond_7

    .line 198
    .line 199
    invoke-virtual {v4, v5}, Lcc/m0;->T0(Z)Lcc/m0;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    goto :goto_5

    .line 204
    :cond_7
    :goto_4
    move-object v4, v6

    .line 205
    :cond_8
    :goto_5
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-static {p1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    .line 217
    .line 218
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_a

    .line 227
    .line 228
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    check-cast v1, Lcc/m0;

    .line 233
    .line 234
    invoke-virtual {v1}, Lcc/e0;->L0()Lcc/a1;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    const-string v1, "Empty collection can\'t be reduced."

    .line 251
    .line 252
    if-eqz v0, :cond_1a

    .line 253
    .line 254
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    const/4 v6, 0x0

    .line 263
    const-string v7, "other"

    .line 264
    .line 265
    if-eqz v4, :cond_f

    .line 266
    .line 267
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    check-cast v4, Lcc/a1;

    .line 272
    .line 273
    check-cast v0, Lcc/a1;

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-static {v4, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Lic/a;->isEmpty()Z

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    if-eqz v7, :cond_b

    .line 286
    .line 287
    invoke-virtual {v4}, Lic/a;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    if-eqz v7, :cond_b

    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_b
    new-instance v7, Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .line 298
    .line 299
    sget-object v8, Lcc/a1;->b:Lcc/a1$a;

    .line 300
    .line 301
    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 302
    .line 303
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    const-string v9, "idPerType.values"

    .line 308
    .line 309
    invoke-static {v8, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    if-eqz v9, :cond_e

    .line 321
    .line 322
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v9

    .line 326
    check-cast v9, Ljava/lang/Number;

    .line 327
    .line 328
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 329
    .line 330
    .line 331
    move-result v9

    .line 332
    iget-object v10, v0, Lic/e;->a:Lic/c;

    .line 333
    .line 334
    invoke-virtual {v10, v9}, Lic/c;->get(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    check-cast v10, Lcc/y0;

    .line 339
    .line 340
    iget-object v11, v4, Lic/e;->a:Lic/c;

    .line 341
    .line 342
    invoke-virtual {v11, v9}, Lic/c;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    check-cast v9, Lcc/y0;

    .line 347
    .line 348
    if-nez v10, :cond_d

    .line 349
    .line 350
    if-eqz v9, :cond_c

    .line 351
    .line 352
    invoke-virtual {v9, v10}, Lcc/y0;->c(Lcc/y0;)Lcc/k;

    .line 353
    .line 354
    .line 355
    move-result-object v9

    .line 356
    goto :goto_9

    .line 357
    :cond_c
    move-object v9, v6

    .line 358
    goto :goto_9

    .line 359
    :cond_d
    invoke-virtual {v10, v9}, Lcc/y0;->c(Lcc/y0;)Lcc/k;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    :goto_9
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/clearcut/d0;->f(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 364
    .line 365
    .line 366
    goto :goto_8

    .line 367
    :cond_e
    invoke-static {v7}, Lcc/a1$a;->c(Ljava/util/List;)Lcc/a1;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    goto :goto_7

    .line 372
    :cond_f
    check-cast v0, Lcc/a1;

    .line 373
    .line 374
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    if-ne p1, v3, :cond_10

    .line 379
    .line 380
    invoke-static {v2}, Lm9/t;->o1(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    goto/16 :goto_d

    .line 385
    .line 386
    :cond_10
    new-instance p1, Ldc/s;

    .line 387
    .line 388
    invoke-direct {p1, v2}, Ldc/s;-><init>(Ljava/util/LinkedHashSet;)V

    .line 389
    .line 390
    .line 391
    new-instance p1, Ldc/t;

    .line 392
    .line 393
    invoke-direct {p1, p0}, Ldc/t;-><init>(Ldc/r;)V

    .line 394
    .line 395
    .line 396
    invoke-static {v2, p1}, Ldc/r;->a(Ljava/util/AbstractCollection;Lx9/p;)Ljava/util/ArrayList;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    if-eqz v3, :cond_11

    .line 408
    .line 409
    goto/16 :goto_c

    .line 410
    .line 411
    :cond_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-eqz v4, :cond_19

    .line 420
    .line 421
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    if-eqz v4, :cond_16

    .line 430
    .line 431
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    check-cast v4, Lcc/m0;

    .line 436
    .line 437
    check-cast v1, Lcc/m0;

    .line 438
    .line 439
    if-eqz v1, :cond_15

    .line 440
    .line 441
    if-nez v4, :cond_12

    .line 442
    .line 443
    goto :goto_b

    .line 444
    :cond_12
    invoke-virtual {v1}, Lcc/e0;->M0()Lcc/c1;

    .line 445
    .line 446
    .line 447
    move-result-object v8

    .line 448
    invoke-virtual {v4}, Lcc/e0;->M0()Lcc/c1;

    .line 449
    .line 450
    .line 451
    move-result-object v9

    .line 452
    instance-of v10, v8, Lqb/o;

    .line 453
    .line 454
    if-eqz v10, :cond_13

    .line 455
    .line 456
    instance-of v11, v9, Lqb/o;

    .line 457
    .line 458
    if-eqz v11, :cond_13

    .line 459
    .line 460
    check-cast v8, Lqb/o;

    .line 461
    .line 462
    check-cast v9, Lqb/o;

    .line 463
    .line 464
    iget-object v1, v8, Lqb/o;->c:Ljava/util/Set;

    .line 465
    .line 466
    iget-object v4, v9, Lqb/o;->c:Ljava/util/Set;

    .line 467
    .line 468
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-static {v4, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-static {v1}, Lm9/t;->x1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-static {v4, v1}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 479
    .line 480
    .line 481
    new-instance v4, Lqb/o;

    .line 482
    .line 483
    iget-wide v9, v8, Lqb/o;->a:J

    .line 484
    .line 485
    iget-object v8, v8, Lqb/o;->b:Lma/b0;

    .line 486
    .line 487
    invoke-direct {v4, v9, v10, v8, v1}, Lqb/o;-><init>(JLma/b0;Ljava/util/Set;)V

    .line 488
    .line 489
    .line 490
    sget-object v1, Lcc/a1;->b:Lcc/a1$a;

    .line 491
    .line 492
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    sget-object v1, Lcc/a1;->c:Lcc/a1;

    .line 496
    .line 497
    invoke-static {v1, v4}, Lcc/f0;->d(Lcc/a1;Lqb/o;)Lcc/m0;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    goto :goto_a

    .line 502
    :cond_13
    if-eqz v10, :cond_14

    .line 503
    .line 504
    check-cast v8, Lqb/o;

    .line 505
    .line 506
    iget-object v1, v8, Lqb/o;->c:Ljava/util/Set;

    .line 507
    .line 508
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    if-eqz v1, :cond_15

    .line 513
    .line 514
    move-object v1, v4

    .line 515
    goto :goto_a

    .line 516
    :cond_14
    instance-of v4, v9, Lqb/o;

    .line 517
    .line 518
    if-eqz v4, :cond_15

    .line 519
    .line 520
    check-cast v9, Lqb/o;

    .line 521
    .line 522
    iget-object v4, v9, Lqb/o;->c:Ljava/util/Set;

    .line 523
    .line 524
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v4

    .line 528
    if-eqz v4, :cond_15

    .line 529
    .line 530
    goto :goto_a

    .line 531
    :cond_15
    :goto_b
    move-object v1, v6

    .line 532
    goto :goto_a

    .line 533
    :cond_16
    move-object v6, v1

    .line 534
    check-cast v6, Lcc/m0;

    .line 535
    .line 536
    :goto_c
    if-eqz v6, :cond_17

    .line 537
    .line 538
    goto :goto_e

    .line 539
    :cond_17
    new-instance v1, Ldc/u;

    .line 540
    .line 541
    sget-object v3, Ldc/l;->b:Ldc/l$a;

    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    sget-object v3, Ldc/l$a;->b:Ldc/m;

    .line 547
    .line 548
    invoke-direct {v1, v3}, Ldc/u;-><init>(Ldc/m;)V

    .line 549
    .line 550
    .line 551
    invoke-static {p1, v1}, Ldc/r;->a(Ljava/util/AbstractCollection;Lx9/p;)Ljava/util/ArrayList;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 556
    .line 557
    .line 558
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    const/4 v3, 0x2

    .line 563
    if-ge v1, v3, :cond_18

    .line 564
    .line 565
    invoke-static {p1}, Lm9/t;->o1(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    :goto_d
    move-object v6, p1

    .line 570
    check-cast v6, Lcc/m0;

    .line 571
    .line 572
    goto :goto_e

    .line 573
    :cond_18
    new-instance p1, Lcc/c0;

    .line 574
    .line 575
    invoke-direct {p1, v2}, Lcc/c0;-><init>(Ljava/util/AbstractCollection;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {p1}, Lcc/c0;->c()Lcc/m0;

    .line 579
    .line 580
    .line 581
    move-result-object v6

    .line 582
    :goto_e
    invoke-virtual {v6, v0}, Lcc/m0;->U0(Lcc/a1;)Lcc/m0;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    return-object p1

    .line 587
    :cond_19
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 588
    .line 589
    invoke-direct {p1, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    throw p1

    .line 593
    :cond_1a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 594
    .line 595
    invoke-direct {p1, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    throw p1
.end method
