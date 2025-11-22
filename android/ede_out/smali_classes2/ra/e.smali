.class public final Lra/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lra/e$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lfb/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/Class;Lfb/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/e;->a:Ljava/lang/Class;

    iput-object p2, p0, Lra/e;->b:Lfb/a;

    return-void
.end method


# virtual methods
.method public final a()Lfb/a;
    .locals 1

    iget-object v0, p0, Lra/e;->b:Lfb/a;

    return-object v0
.end method

.method public final b(Leb/s$c;)V
    .locals 1

    iget-object v0, p0, Lra/e;->a:Ljava/lang/Class;

    invoke-static {v0, p1}, Lra/c;->b(Ljava/lang/Class;Leb/s$c;)V

    return-void
.end method

.method public final c()Llb/b;
    .locals 1

    iget-object v0, p0, Lra/e;->a:Ljava/lang/Class;

    invoke-static {v0}, Lsa/d;->a(Ljava/lang/Class;)Llb/b;

    move-result-object v0

    return-object v0
.end method

.method public final d(Leb/b;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lra/e;->a:Ljava/lang/Class;

    .line 6
    .line 7
    const-string v3, "klass"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string v4, "klass.declaredMethods"

    .line 17
    .line 18
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    array-length v4, v3

    .line 22
    const/4 v6, 0x0

    .line 23
    :goto_0
    const-string v7, "annotations"

    .line 24
    .line 25
    const-string v8, "parameterType"

    .line 26
    .line 27
    const-string v9, "sb.toString()"

    .line 28
    .line 29
    const-string v10, "("

    .line 30
    .line 31
    const-string v11, "annotation"

    .line 32
    .line 33
    if-ge v6, v4, :cond_5

    .line 34
    .line 35
    aget-object v12, v3, v6

    .line 36
    .line 37
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    invoke-static {v13}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 42
    .line 43
    .line 44
    move-result-object v13

    .line 45
    new-instance v14, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    const-string v15, "method.parameterTypes"

    .line 55
    .line 56
    invoke-static {v10, v15}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    array-length v15, v10

    .line 60
    const/4 v5, 0x0

    .line 61
    :goto_1
    if-ge v5, v15, :cond_0

    .line 62
    .line 63
    aget-object v0, v10, v5

    .line 64
    .line 65
    invoke-static {v0, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lsa/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    move-object/from16 v0, p0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    const-string v0, ")"

    .line 81
    .line 82
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v5, "method.returnType"

    .line 90
    .line 91
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lsa/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v13, v0}, Leb/b;->b(Llb/f;Ljava/lang/String;)Leb/b$a;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    const-string v8, "method.declaredAnnotations"

    .line 117
    .line 118
    invoke-static {v5, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    array-length v8, v5

    .line 122
    const/4 v9, 0x0

    .line 123
    :goto_2
    if-ge v9, v8, :cond_1

    .line 124
    .line 125
    aget-object v10, v5, v9

    .line 126
    .line 127
    invoke-static {v10, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v0, v10}, Lra/c;->c(Leb/s$c;Ljava/lang/annotation/Annotation;)V

    .line 131
    .line 132
    .line 133
    add-int/lit8 v9, v9, 0x1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    const-string v8, "method.parameterAnnotations"

    .line 141
    .line 142
    invoke-static {v5, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    check-cast v5, [[Ljava/lang/annotation/Annotation;

    .line 146
    .line 147
    array-length v8, v5

    .line 148
    const/4 v9, 0x0

    .line 149
    :goto_3
    if-ge v9, v8, :cond_4

    .line 150
    .line 151
    aget-object v10, v5, v9

    .line 152
    .line 153
    invoke-static {v10, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    array-length v11, v10

    .line 157
    const/4 v12, 0x0

    .line 158
    :goto_4
    if-ge v12, v11, :cond_3

    .line 159
    .line 160
    aget-object v13, v10, v12

    .line 161
    .line 162
    invoke-static {v13}, Lcom/google/android/gms/internal/clearcut/d0;->p(Ljava/lang/annotation/Annotation;)Lda/d;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/d0;->q(Lda/d;)Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object v14

    .line 170
    invoke-static {v14}, Lsa/d;->a(Ljava/lang/Class;)Llb/b;

    .line 171
    .line 172
    .line 173
    move-result-object v15

    .line 174
    move-object/from16 v16, v3

    .line 175
    .line 176
    new-instance v3, Lra/b;

    .line 177
    .line 178
    invoke-direct {v3, v13}, Lra/b;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v9, v15, v3}, Leb/b$a;->c(ILlb/b;Lra/b;)Leb/i;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    if-eqz v3, :cond_2

    .line 186
    .line 187
    invoke-static {v3, v13, v14}, Lra/c;->d(Leb/s$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 188
    .line 189
    .line 190
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 191
    .line 192
    move-object/from16 v3, v16

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_3
    move-object/from16 v16, v3

    .line 196
    .line 197
    add-int/lit8 v9, v9, 0x1

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_4
    move-object/from16 v16, v3

    .line 201
    .line 202
    invoke-virtual {v0}, Leb/b$b;->a()V

    .line 203
    .line 204
    .line 205
    add-int/lit8 v6, v6, 0x1

    .line 206
    .line 207
    move-object/from16 v0, p0

    .line 208
    .line 209
    move-object/from16 v3, v16

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const-string v3, "klass.declaredConstructors"

    .line 218
    .line 219
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    array-length v3, v0

    .line 223
    const/4 v4, 0x0

    .line 224
    :goto_5
    if-ge v4, v3, :cond_c

    .line 225
    .line 226
    aget-object v5, v0, v4

    .line 227
    .line 228
    sget-object v6, Llb/h;->e:Llb/f;

    .line 229
    .line 230
    const-string v12, "constructor"

    .line 231
    .line 232
    invoke-static {v5, v12}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance v12, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    move-result-object v13

    .line 244
    const-string v14, "constructor.parameterTypes"

    .line 245
    .line 246
    invoke-static {v13, v14}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    array-length v14, v13

    .line 250
    const/4 v15, 0x0

    .line 251
    :goto_6
    move-object/from16 v16, v0

    .line 252
    .line 253
    if-ge v15, v14, :cond_6

    .line 254
    .line 255
    aget-object v0, v13, v15

    .line 256
    .line 257
    invoke-static {v0, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v0}, Lsa/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    add-int/lit8 v15, v15, 0x1

    .line 268
    .line 269
    move-object/from16 v0, v16

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_6
    const-string v0, ")V"

    .line 273
    .line 274
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v0, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v6, v0}, Leb/b;->b(Llb/f;Ljava/lang/String;)Leb/b$a;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    const-string v12, "constructor.declaredAnnotations"

    .line 293
    .line 294
    invoke-static {v6, v12}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    array-length v12, v6

    .line 298
    const/4 v13, 0x0

    .line 299
    :goto_7
    if-ge v13, v12, :cond_7

    .line 300
    .line 301
    aget-object v14, v6, v13

    .line 302
    .line 303
    invoke-static {v14, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-static {v0, v14}, Lra/c;->c(Leb/s$c;Ljava/lang/annotation/Annotation;)V

    .line 307
    .line 308
    .line 309
    add-int/lit8 v13, v13, 0x1

    .line 310
    .line 311
    goto :goto_7

    .line 312
    :cond_7
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    const-string v12, "parameterAnnotations"

    .line 317
    .line 318
    invoke-static {v6, v12}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    array-length v12, v6

    .line 322
    const/4 v13, 0x1

    .line 323
    if-nez v12, :cond_8

    .line 324
    .line 325
    const/4 v12, 0x1

    .line 326
    goto :goto_8

    .line 327
    :cond_8
    const/4 v12, 0x0

    .line 328
    :goto_8
    xor-int/2addr v12, v13

    .line 329
    if-eqz v12, :cond_b

    .line 330
    .line 331
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    array-length v5, v5

    .line 336
    array-length v12, v6

    .line 337
    sub-int/2addr v5, v12

    .line 338
    array-length v12, v6

    .line 339
    const/4 v13, 0x0

    .line 340
    :goto_9
    if-ge v13, v12, :cond_b

    .line 341
    .line 342
    aget-object v14, v6, v13

    .line 343
    .line 344
    invoke-static {v14, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    array-length v15, v14

    .line 348
    move/from16 v17, v3

    .line 349
    .line 350
    const/4 v3, 0x0

    .line 351
    :goto_a
    if-ge v3, v15, :cond_a

    .line 352
    .line 353
    move-object/from16 v18, v6

    .line 354
    .line 355
    aget-object v6, v14, v3

    .line 356
    .line 357
    invoke-static {v6}, Lcom/google/android/gms/internal/clearcut/d0;->p(Ljava/lang/annotation/Annotation;)Lda/d;

    .line 358
    .line 359
    .line 360
    move-result-object v19

    .line 361
    move-object/from16 v20, v7

    .line 362
    .line 363
    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/internal/clearcut/d0;->q(Lda/d;)Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    move-object/from16 v19, v8

    .line 368
    .line 369
    add-int v8, v13, v5

    .line 370
    .line 371
    move/from16 v21, v5

    .line 372
    .line 373
    invoke-static {v7}, Lsa/d;->a(Ljava/lang/Class;)Llb/b;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    move-object/from16 v22, v9

    .line 378
    .line 379
    new-instance v9, Lra/b;

    .line 380
    .line 381
    invoke-direct {v9, v6}, Lra/b;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v8, v5, v9}, Leb/b$a;->c(ILlb/b;Lra/b;)Leb/i;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    if-eqz v5, :cond_9

    .line 389
    .line 390
    invoke-static {v5, v6, v7}, Lra/c;->d(Leb/s$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 391
    .line 392
    .line 393
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 394
    .line 395
    move-object/from16 v6, v18

    .line 396
    .line 397
    move-object/from16 v8, v19

    .line 398
    .line 399
    move-object/from16 v7, v20

    .line 400
    .line 401
    move/from16 v5, v21

    .line 402
    .line 403
    move-object/from16 v9, v22

    .line 404
    .line 405
    goto :goto_a

    .line 406
    :cond_a
    move/from16 v21, v5

    .line 407
    .line 408
    move-object/from16 v18, v6

    .line 409
    .line 410
    move-object/from16 v20, v7

    .line 411
    .line 412
    move-object/from16 v19, v8

    .line 413
    .line 414
    move-object/from16 v22, v9

    .line 415
    .line 416
    add-int/lit8 v13, v13, 0x1

    .line 417
    .line 418
    move/from16 v3, v17

    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_b
    move/from16 v17, v3

    .line 422
    .line 423
    move-object/from16 v20, v7

    .line 424
    .line 425
    move-object/from16 v19, v8

    .line 426
    .line 427
    move-object/from16 v22, v9

    .line 428
    .line 429
    invoke-virtual {v0}, Leb/b$b;->a()V

    .line 430
    .line 431
    .line 432
    add-int/lit8 v4, v4, 0x1

    .line 433
    .line 434
    move-object/from16 v0, v16

    .line 435
    .line 436
    move/from16 v3, v17

    .line 437
    .line 438
    move-object/from16 v8, v19

    .line 439
    .line 440
    move-object/from16 v7, v20

    .line 441
    .line 442
    move-object/from16 v9, v22

    .line 443
    .line 444
    goto/16 :goto_5

    .line 445
    .line 446
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    const-string v2, "klass.declaredFields"

    .line 451
    .line 452
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    array-length v2, v0

    .line 456
    const/4 v3, 0x0

    .line 457
    :goto_b
    if-ge v3, v2, :cond_e

    .line 458
    .line 459
    aget-object v4, v0, v3

    .line 460
    .line 461
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    invoke-static {v5}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    const-string v7, "field.type"

    .line 474
    .line 475
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-static {v6}, Lsa/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    invoke-virtual {v1, v5, v6}, Leb/b;->a(Llb/f;Ljava/lang/String;)Leb/b$b;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    const-string v6, "field.declaredAnnotations"

    .line 491
    .line 492
    invoke-static {v4, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    array-length v6, v4

    .line 496
    const/4 v7, 0x0

    .line 497
    :goto_c
    if-ge v7, v6, :cond_d

    .line 498
    .line 499
    aget-object v8, v4, v7

    .line 500
    .line 501
    invoke-static {v8, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-static {v5, v8}, Lra/c;->c(Leb/s$c;Ljava/lang/annotation/Annotation;)V

    .line 505
    .line 506
    .line 507
    add-int/lit8 v7, v7, 0x1

    .line 508
    .line 509
    goto :goto_c

    .line 510
    :cond_d
    invoke-virtual {v5}, Leb/b$b;->a()V

    .line 511
    .line 512
    .line 513
    add-int/lit8 v3, v3, 0x1

    .line 514
    .line 515
    goto :goto_b

    .line 516
    :cond_e
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lra/e;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-static {v0, v1, v2}, Lmc/j;->B(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lra/e;

    if-eqz v0, :cond_0

    check-cast p1, Lra/e;

    iget-object p1, p1, Lra/e;->a:Ljava/lang/Class;

    iget-object v0, p0, Lra/e;->a:Ljava/lang/Class;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lra/e;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lra/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lra/e;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
