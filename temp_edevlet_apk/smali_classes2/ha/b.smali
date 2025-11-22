.class public final Lha/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/util/Map;

.field public final c:Ll9/e;

.field public final d:Ll9/e;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;Ll9/j;Ll9/j;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/b;->a:Ljava/lang/Class;

    iput-object p2, p0, Lha/b;->b:Ljava/util/Map;

    iput-object p3, p0, Lha/b;->c:Ll9/e;

    iput-object p4, p0, Lha/b;->d:Ll9/e;

    iput-object p5, p0, Lha/b;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-string p1, "$annotationClass"

    .line 2
    .line 3
    iget-object v0, p0, Lha/b;->a:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "$values"

    .line 9
    .line 10
    iget-object v1, p0, Lha/b;->b:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "$toString$delegate"

    .line 16
    .line 17
    iget-object v2, p0, Lha/b;->c:Ll9/e;

    .line 18
    .line 19
    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "$hashCode$delegate"

    .line 23
    .line 24
    iget-object v3, p0, Lha/b;->d:Ll9/e;

    .line 25
    .line 26
    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "$methods"

    .line 30
    .line 31
    iget-object v4, p0, Lha/b;->e:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {v4, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const v6, -0x69e9ad94

    .line 47
    .line 48
    .line 49
    if-eq v5, v6, :cond_3

    .line 50
    .line 51
    const v2, 0x8cdac1b

    .line 52
    .line 53
    .line 54
    if-eq v5, v2, :cond_1

    .line 55
    .line 56
    const v2, 0x5620bf09

    .line 57
    .line 58
    .line 59
    if-eq v5, v2, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const-string v2, "annotationType"

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_17

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string v2, "hashCode"

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-interface {v3}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Ljava/lang/Number;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_3
    const-string v3, "toString"

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    invoke-interface {v2}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    move-object v0, p1

    .line 110
    check-cast v0, Ljava/lang/String;

    .line 111
    .line 112
    goto/16 :goto_7

    .line 113
    .line 114
    :cond_5
    :goto_0
    const-string v2, "equals"

    .line 115
    .line 116
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    const/4 v3, 0x1

    .line 121
    const/4 v5, 0x0

    .line 122
    if-eqz v2, :cond_16

    .line 123
    .line 124
    if-eqz p3, :cond_6

    .line 125
    .line 126
    array-length v2, p3

    .line 127
    if-ne v2, v3, :cond_6

    .line 128
    .line 129
    const/4 v2, 0x1

    .line 130
    goto :goto_1

    .line 131
    :cond_6
    const/4 v2, 0x0

    .line 132
    :goto_1
    if-eqz v2, :cond_16

    .line 133
    .line 134
    const-string p1, "args"

    .line 135
    .line 136
    invoke-static {p3, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p3}, Lm9/k;->y0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    instance-of p2, p1, Ljava/lang/annotation/Annotation;

    .line 144
    .line 145
    const/4 p3, 0x0

    .line 146
    if-eqz p2, :cond_7

    .line 147
    .line 148
    move-object p2, p1

    .line 149
    check-cast p2, Ljava/lang/annotation/Annotation;

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_7
    move-object p2, p3

    .line 153
    :goto_2
    if-eqz p2, :cond_8

    .line 154
    .line 155
    invoke-static {p2}, Lcom/google/android/gms/internal/clearcut/d0;->p(Ljava/lang/annotation/Annotation;)Lda/d;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-static {p2}, Lcom/google/android/gms/internal/clearcut/d0;->q(Lda/d;)Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    :cond_8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    if-eqz p2, :cond_15

    .line 168
    .line 169
    check-cast v4, Ljava/lang/Iterable;

    .line 170
    .line 171
    instance-of p2, v4, Ljava/util/Collection;

    .line 172
    .line 173
    if-eqz p2, :cond_9

    .line 174
    .line 175
    move-object p2, v4

    .line 176
    check-cast p2, Ljava/util/Collection;

    .line 177
    .line 178
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    if-eqz p2, :cond_9

    .line 183
    .line 184
    goto/16 :goto_4

    .line 185
    .line 186
    :cond_9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result p3

    .line 194
    if-eqz p3, :cond_14

    .line 195
    .line 196
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p3

    .line 200
    check-cast p3, Ljava/lang/reflect/Method;

    .line 201
    .line 202
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    new-array v2, v5, [Ljava/lang/Object;

    .line 211
    .line 212
    invoke-virtual {p3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    instance-of v2, v0, [Z

    .line 217
    .line 218
    if-eqz v2, :cond_b

    .line 219
    .line 220
    check-cast v0, [Z

    .line 221
    .line 222
    const-string v2, "null cannot be cast to non-null type kotlin.BooleanArray"

    .line 223
    .line 224
    invoke-static {p3, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    check-cast p3, [Z

    .line 228
    .line 229
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([Z[Z)Z

    .line 230
    .line 231
    .line 232
    move-result p3

    .line 233
    goto/16 :goto_3

    .line 234
    .line 235
    :cond_b
    instance-of v2, v0, [C

    .line 236
    .line 237
    if-eqz v2, :cond_c

    .line 238
    .line 239
    check-cast v0, [C

    .line 240
    .line 241
    const-string v2, "null cannot be cast to non-null type kotlin.CharArray"

    .line 242
    .line 243
    invoke-static {p3, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    check-cast p3, [C

    .line 247
    .line 248
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([C[C)Z

    .line 249
    .line 250
    .line 251
    move-result p3

    .line 252
    goto/16 :goto_3

    .line 253
    .line 254
    :cond_c
    instance-of v2, v0, [B

    .line 255
    .line 256
    if-eqz v2, :cond_d

    .line 257
    .line 258
    check-cast v0, [B

    .line 259
    .line 260
    const-string v2, "null cannot be cast to non-null type kotlin.ByteArray"

    .line 261
    .line 262
    invoke-static {p3, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    check-cast p3, [B

    .line 266
    .line 267
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    goto/16 :goto_3

    .line 272
    .line 273
    :cond_d
    instance-of v2, v0, [S

    .line 274
    .line 275
    if-eqz v2, :cond_e

    .line 276
    .line 277
    check-cast v0, [S

    .line 278
    .line 279
    const-string v2, "null cannot be cast to non-null type kotlin.ShortArray"

    .line 280
    .line 281
    invoke-static {p3, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    check-cast p3, [S

    .line 285
    .line 286
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([S[S)Z

    .line 287
    .line 288
    .line 289
    move-result p3

    .line 290
    goto :goto_3

    .line 291
    :cond_e
    instance-of v2, v0, [I

    .line 292
    .line 293
    if-eqz v2, :cond_f

    .line 294
    .line 295
    check-cast v0, [I

    .line 296
    .line 297
    const-string v2, "null cannot be cast to non-null type kotlin.IntArray"

    .line 298
    .line 299
    invoke-static {p3, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    check-cast p3, [I

    .line 303
    .line 304
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 305
    .line 306
    .line 307
    move-result p3

    .line 308
    goto :goto_3

    .line 309
    :cond_f
    instance-of v2, v0, [F

    .line 310
    .line 311
    if-eqz v2, :cond_10

    .line 312
    .line 313
    check-cast v0, [F

    .line 314
    .line 315
    const-string v2, "null cannot be cast to non-null type kotlin.FloatArray"

    .line 316
    .line 317
    invoke-static {p3, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    check-cast p3, [F

    .line 321
    .line 322
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([F[F)Z

    .line 323
    .line 324
    .line 325
    move-result p3

    .line 326
    goto :goto_3

    .line 327
    :cond_10
    instance-of v2, v0, [J

    .line 328
    .line 329
    if-eqz v2, :cond_11

    .line 330
    .line 331
    check-cast v0, [J

    .line 332
    .line 333
    const-string v2, "null cannot be cast to non-null type kotlin.LongArray"

    .line 334
    .line 335
    invoke-static {p3, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    check-cast p3, [J

    .line 339
    .line 340
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 341
    .line 342
    .line 343
    move-result p3

    .line 344
    goto :goto_3

    .line 345
    :cond_11
    instance-of v2, v0, [D

    .line 346
    .line 347
    if-eqz v2, :cond_12

    .line 348
    .line 349
    check-cast v0, [D

    .line 350
    .line 351
    const-string v2, "null cannot be cast to non-null type kotlin.DoubleArray"

    .line 352
    .line 353
    invoke-static {p3, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    check-cast p3, [D

    .line 357
    .line 358
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([D[D)Z

    .line 359
    .line 360
    .line 361
    move-result p3

    .line 362
    goto :goto_3

    .line 363
    :cond_12
    instance-of v2, v0, [Ljava/lang/Object;

    .line 364
    .line 365
    if-eqz v2, :cond_13

    .line 366
    .line 367
    check-cast v0, [Ljava/lang/Object;

    .line 368
    .line 369
    const-string v2, "null cannot be cast to non-null type kotlin.Array<*>"

    .line 370
    .line 371
    invoke-static {p3, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    check-cast p3, [Ljava/lang/Object;

    .line 375
    .line 376
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result p3

    .line 380
    goto :goto_3

    .line 381
    :cond_13
    invoke-static {v0, p3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result p3

    .line 385
    :goto_3
    if-nez p3, :cond_a

    .line 386
    .line 387
    const/4 p1, 0x0

    .line 388
    goto :goto_5

    .line 389
    :cond_14
    :goto_4
    const/4 p1, 0x1

    .line 390
    :goto_5
    if-eqz p1, :cond_15

    .line 391
    .line 392
    goto :goto_6

    .line 393
    :cond_15
    const/4 v3, 0x0

    .line 394
    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    goto :goto_7

    .line 399
    :cond_16
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_18

    .line 404
    .line 405
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    :cond_17
    :goto_7
    return-object v0

    .line 410
    :cond_18
    new-instance p1, Ll9/f;

    .line 411
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string v1, "Method is not supported: "

    .line 415
    .line 416
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string p2, " (args: "

    .line 423
    .line 424
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    if-nez p3, :cond_19

    .line 428
    .line 429
    new-array p3, v5, [Ljava/lang/Object;

    .line 430
    .line 431
    :cond_19
    invoke-static {p3}, Lm9/k;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 432
    .line 433
    .line 434
    move-result-object p2

    .line 435
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const/16 p2, 0x29

    .line 439
    .line 440
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object p2

    .line 447
    invoke-direct {p1, p2, v3}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 448
    .line 449
    .line 450
    throw p1
.end method
