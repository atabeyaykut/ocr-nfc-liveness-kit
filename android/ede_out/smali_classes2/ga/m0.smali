.class public final Lga/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lga/l0$a;Z)Lha/f;
    .locals 7

    .line 1
    sget-object v0, Lga/s;->a:Lmc/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lga/l0;->g:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lmc/d;->a(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lha/j;->a:Lha/j;

    .line 16
    .line 17
    goto/16 :goto_b

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lga/x0;->a:Llb/b;

    .line 20
    .line 21
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lga/l0;->s()Lma/l0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lga/x0;->b(Lma/l0;)Lga/g;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    instance-of v1, v0, Lga/g$c;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz v1, :cond_10

    .line 38
    .line 39
    check-cast v0, Lga/g$c;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iget-object v4, v0, Lga/g$c;->c:Ljb/a$c;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget v5, v4, Ljb/a$c;->b:I

    .line 47
    .line 48
    const/4 v6, 0x4

    .line 49
    and-int/2addr v5, v6

    .line 50
    if-ne v5, v6, :cond_1

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v5, 0x0

    .line 55
    :goto_0
    if-eqz v5, :cond_4

    .line 56
    .line 57
    iget-object v4, v4, Ljb/a$c;->e:Ljb/a$b;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    iget v5, v4, Ljb/a$c;->b:I

    .line 61
    .line 62
    const/16 v6, 0x8

    .line 63
    .line 64
    and-int/2addr v5, v6

    .line 65
    if-ne v5, v6, :cond_3

    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const/4 v5, 0x0

    .line 70
    :goto_1
    if-eqz v5, :cond_4

    .line 71
    .line 72
    iget-object v4, v4, Ljb/a$c;->f:Ljb/a$b;

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move-object v4, v1

    .line 76
    :goto_2
    if-eqz v4, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v1, v1, Lga/l0;->e:Lga/s;

    .line 83
    .line 84
    iget v5, v4, Ljb/a$b;->c:I

    .line 85
    .line 86
    iget-object v0, v0, Lga/g$c;->d:Lib/c;

    .line 87
    .line 88
    invoke-interface {v0, v5}, Lib/c;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    iget v4, v4, Ljb/a$b;->d:I

    .line 93
    .line 94
    invoke-interface {v0, v4}, Lib/c;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1, v5, v0}, Lga/s;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :cond_5
    if-nez v1, :cond_a

    .line 103
    .line 104
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lga/l0;->s()Lma/l0;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lob/k;->d(Lma/b1;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_8

    .line 117
    .line 118
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lga/l0;->s()Lma/l0;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v0}, Lma/z;->getVisibility()Lma/q;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sget-object v1, Lma/p;->d:Lma/p$g;

    .line 131
    .line 132
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lga/l0;->s()Lma/l0;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-interface {p1}, Lma/z0;->b()Lma/j;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Lb8/f;->n0(Lma/j;)Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-eqz p1, :cond_7

    .line 155
    .line 156
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lga/l0;->s()Lma/l0;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-static {p1, v0}, Lb8/f;->N(Ljava/lang/Class;Lma/b;)Ljava/lang/reflect/Method;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p0}, Lga/l0$a;->q()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    new-instance v0, Lha/i$a;

    .line 175
    .line 176
    invoke-static {p0}, Lga/m0;->c(Lga/l0$a;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-direct {v0, p1, v1}, Lha/i$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_9

    .line 184
    .line 185
    :cond_6
    new-instance v0, Lha/i$b;

    .line 186
    .line 187
    invoke-direct {v0, p1}, Lha/i$b;-><init>(Ljava/lang/reflect/Method;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_9

    .line 191
    .line 192
    :cond_7
    new-instance p1, Ll9/f;

    .line 193
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v1, "Underlying property of inline class "

    .line 197
    .line 198
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string p0, " should have a field"

    .line 209
    .line 210
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-direct {p1, p0, v3}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    throw p1

    .line 221
    :cond_8
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iget-object v0, v0, Lga/l0;->j:Lga/t0$b;

    .line 226
    .line 227
    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Ljava/lang/reflect/Field;

    .line 232
    .line 233
    if-eqz v0, :cond_9

    .line 234
    .line 235
    goto/16 :goto_4

    .line 236
    .line 237
    :cond_9
    new-instance p1, Ll9/f;

    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v1, "No accessors or field is found for property "

    .line 242
    .line 243
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-direct {p1, p0, v3}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 258
    .line 259
    .line 260
    throw p1

    .line 261
    :cond_a
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-nez p1, :cond_c

    .line 270
    .line 271
    invoke-virtual {p0}, Lga/l0$a;->q()Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-eqz p1, :cond_b

    .line 276
    .line 277
    new-instance p1, Lha/g$g$a;

    .line 278
    .line 279
    invoke-static {p0}, Lga/m0;->c(Lga/l0$a;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-direct {p1, v1, v0}, Lha/g$g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_b
    new-instance p1, Lha/g$g$d;

    .line 288
    .line 289
    invoke-direct {p1, v1}, Lha/g$g$d;-><init>(Ljava/lang/reflect/Method;)V

    .line 290
    .line 291
    .line 292
    :goto_3
    move-object v0, p1

    .line 293
    goto/16 :goto_9

    .line 294
    .line 295
    :cond_c
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p1}, Lga/l0;->s()Lma/l0;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-interface {p1}, Lna/a;->getAnnotations()Lna/h;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    sget-object v0, Lga/z0;->a:Llb/c;

    .line 308
    .line 309
    invoke-interface {p1, v0}, Lna/h;->P(Llb/c;)Z

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    if-eqz p1, :cond_e

    .line 314
    .line 315
    invoke-virtual {p0}, Lga/l0$a;->q()Z

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    if-eqz p1, :cond_d

    .line 320
    .line 321
    new-instance p1, Lha/g$g$b;

    .line 322
    .line 323
    invoke-direct {p1, v1}, Lha/g$g$b;-><init>(Ljava/lang/reflect/Method;)V

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_d
    new-instance p1, Lha/g$g$e;

    .line 328
    .line 329
    invoke-direct {p1, v1}, Lha/g$g$e;-><init>(Ljava/lang/reflect/Method;)V

    .line 330
    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_e
    invoke-virtual {p0}, Lga/l0$a;->q()Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    if-eqz p1, :cond_f

    .line 338
    .line 339
    new-instance p1, Lha/g$g$c;

    .line 340
    .line 341
    invoke-static {p0}, Lga/m0;->c(Lga/l0$a;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-direct {p1, v1, v0}, Lha/g$g$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    goto :goto_3

    .line 349
    :cond_f
    new-instance p1, Lha/g$g$f;

    .line 350
    .line 351
    invoke-direct {p1, v1}, Lha/g$g$f;-><init>(Ljava/lang/reflect/Method;)V

    .line 352
    .line 353
    .line 354
    goto :goto_3

    .line 355
    :cond_10
    instance-of v1, v0, Lga/g$a;

    .line 356
    .line 357
    if-eqz v1, :cond_1f

    .line 358
    .line 359
    check-cast v0, Lga/g$a;

    .line 360
    .line 361
    iget-object v0, v0, Lga/g$a;->a:Ljava/lang/reflect/Field;

    .line 362
    .line 363
    :goto_4
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v1}, Lga/l0;->s()Lma/l0;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-interface {v1}, Lma/z0;->b()Lma/j;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    const-string v5, "containingDeclaration"

    .line 376
    .line 377
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-static {v4}, Lob/i;->l(Lma/j;)Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-nez v5, :cond_11

    .line 385
    .line 386
    goto :goto_5

    .line 387
    :cond_11
    invoke-interface {v4}, Lma/j;->b()Lma/j;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    const/4 v5, 0x2

    .line 392
    invoke-static {v4, v5}, Lob/i;->n(Lma/j;I)Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-nez v5, :cond_12

    .line 397
    .line 398
    const/4 v5, 0x5

    .line 399
    invoke-static {v4, v5}, Lob/i;->n(Lma/j;I)Z

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    if-eqz v4, :cond_14

    .line 404
    .line 405
    :cond_12
    instance-of v4, v1, Lac/k;

    .line 406
    .line 407
    if-eqz v4, :cond_13

    .line 408
    .line 409
    check-cast v1, Lac/k;

    .line 410
    .line 411
    iget-object v1, v1, Lac/k;->E:Lgb/m;

    .line 412
    .line 413
    invoke-static {v1}, Lkb/h;->d(Lgb/m;)Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-eqz v1, :cond_13

    .line 418
    .line 419
    goto :goto_6

    .line 420
    :cond_13
    :goto_5
    const/4 v3, 0x0

    .line 421
    :cond_14
    :goto_6
    if-nez v3, :cond_1b

    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-nez v1, :cond_15

    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_15
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-virtual {v1}, Lga/l0;->s()Lma/l0;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-interface {v1}, Lna/a;->getAnnotations()Lna/h;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    sget-object v3, Lga/z0;->a:Llb/c;

    .line 447
    .line 448
    invoke-interface {v1, v3}, Lna/h;->P(Llb/c;)Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-eqz v1, :cond_19

    .line 453
    .line 454
    if-eqz p1, :cond_17

    .line 455
    .line 456
    invoke-virtual {p0}, Lga/l0$a;->q()Z

    .line 457
    .line 458
    .line 459
    move-result p1

    .line 460
    if-eqz p1, :cond_16

    .line 461
    .line 462
    new-instance p1, Lha/g$e$b;

    .line 463
    .line 464
    invoke-direct {p1, v0}, Lha/g$e$b;-><init>(Ljava/lang/reflect/Field;)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_3

    .line 468
    .line 469
    :cond_16
    new-instance p1, Lha/g$e$d;

    .line 470
    .line 471
    invoke-direct {p1, v0}, Lha/g$e$d;-><init>(Ljava/lang/reflect/Field;)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_3

    .line 475
    .line 476
    :cond_17
    invoke-virtual {p0}, Lga/l0$a;->q()Z

    .line 477
    .line 478
    .line 479
    move-result p1

    .line 480
    if-eqz p1, :cond_18

    .line 481
    .line 482
    new-instance p1, Lha/g$f$b;

    .line 483
    .line 484
    invoke-static {p0}, Lga/m0;->b(Lga/l0$a;)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    invoke-direct {p1, v0, v1}, Lha/g$f$b;-><init>(Ljava/lang/reflect/Field;Z)V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_3

    .line 492
    .line 493
    :cond_18
    new-instance p1, Lha/g$f$d;

    .line 494
    .line 495
    invoke-static {p0}, Lga/m0;->b(Lga/l0$a;)Z

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    invoke-direct {p1, v0, v1}, Lha/g$f$d;-><init>(Ljava/lang/reflect/Field;Z)V

    .line 500
    .line 501
    .line 502
    goto/16 :goto_3

    .line 503
    .line 504
    :cond_19
    if-eqz p1, :cond_1a

    .line 505
    .line 506
    new-instance p1, Lha/g$e$e;

    .line 507
    .line 508
    invoke-direct {p1, v0}, Lha/g$e$e;-><init>(Ljava/lang/reflect/Field;)V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_3

    .line 512
    .line 513
    :cond_1a
    new-instance p1, Lha/g$f$e;

    .line 514
    .line 515
    invoke-static {p0}, Lga/m0;->b(Lga/l0$a;)Z

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    invoke-direct {p1, v0, v1}, Lha/g$f$e;-><init>(Ljava/lang/reflect/Field;Z)V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_3

    .line 523
    .line 524
    :cond_1b
    :goto_7
    if-eqz p1, :cond_1d

    .line 525
    .line 526
    invoke-virtual {p0}, Lga/l0$a;->q()Z

    .line 527
    .line 528
    .line 529
    move-result p1

    .line 530
    if-eqz p1, :cond_1c

    .line 531
    .line 532
    new-instance p1, Lha/g$e$a;

    .line 533
    .line 534
    invoke-static {p0}, Lga/m0;->c(Lga/l0$a;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-direct {p1, v0, v1}, Lha/g$e$a;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_3

    .line 542
    .line 543
    :cond_1c
    new-instance p1, Lha/g$e$c;

    .line 544
    .line 545
    invoke-direct {p1, v0}, Lha/g$e$c;-><init>(Ljava/lang/reflect/Field;)V

    .line 546
    .line 547
    .line 548
    goto/16 :goto_3

    .line 549
    .line 550
    :cond_1d
    invoke-virtual {p0}, Lga/l0$a;->q()Z

    .line 551
    .line 552
    .line 553
    move-result p1

    .line 554
    if-eqz p1, :cond_1e

    .line 555
    .line 556
    new-instance p1, Lha/g$f$a;

    .line 557
    .line 558
    invoke-static {p0}, Lga/m0;->b(Lga/l0$a;)Z

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    invoke-static {p0}, Lga/m0;->c(Lga/l0$a;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    invoke-direct {p1, v0, v1, v3}, Lha/g$f$a;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_3

    .line 570
    .line 571
    :cond_1e
    new-instance p1, Lha/g$f$c;

    .line 572
    .line 573
    invoke-static {p0}, Lga/m0;->b(Lga/l0$a;)Z

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    invoke-direct {p1, v0, v1}, Lha/g$f$c;-><init>(Ljava/lang/reflect/Field;Z)V

    .line 578
    .line 579
    .line 580
    goto/16 :goto_3

    .line 581
    .line 582
    :cond_1f
    instance-of v1, v0, Lga/g$b;

    .line 583
    .line 584
    if-eqz v1, :cond_23

    .line 585
    .line 586
    check-cast v0, Lga/g$b;

    .line 587
    .line 588
    if-eqz p1, :cond_20

    .line 589
    .line 590
    iget-object p1, v0, Lga/g$b;->a:Ljava/lang/reflect/Method;

    .line 591
    .line 592
    goto :goto_8

    .line 593
    :cond_20
    iget-object p1, v0, Lga/g$b;->b:Ljava/lang/reflect/Method;

    .line 594
    .line 595
    if-eqz p1, :cond_22

    .line 596
    .line 597
    :goto_8
    invoke-virtual {p0}, Lga/l0$a;->q()Z

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-eqz v0, :cond_21

    .line 602
    .line 603
    new-instance v0, Lha/g$g$a;

    .line 604
    .line 605
    invoke-static {p0}, Lga/m0;->c(Lga/l0$a;)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-direct {v0, p1, v1}, Lha/g$g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    goto :goto_9

    .line 613
    :cond_21
    new-instance v0, Lha/g$g$d;

    .line 614
    .line 615
    invoke-direct {v0, p1}, Lha/g$g$d;-><init>(Ljava/lang/reflect/Method;)V

    .line 616
    .line 617
    .line 618
    :goto_9
    invoke-virtual {p0}, Lga/l0$a;->r()Lma/k0;

    .line 619
    .line 620
    .line 621
    move-result-object p0

    .line 622
    invoke-static {v0, p0, v2}, Lb8/f;->v(Lha/f;Lma/u;Z)Lha/f;

    .line 623
    .line 624
    .line 625
    move-result-object p0

    .line 626
    goto :goto_b

    .line 627
    :cond_22
    new-instance p0, Ll9/f;

    .line 628
    .line 629
    new-instance p1, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    const-string v1, "No source found for setter of Java method property: "

    .line 632
    .line 633
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    iget-object v0, v0, Lga/g$b;->a:Ljava/lang/reflect/Method;

    .line 637
    .line 638
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object p1

    .line 645
    invoke-direct {p0, p1, v3}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 646
    .line 647
    .line 648
    throw p0

    .line 649
    :cond_23
    instance-of v1, v0, Lga/g$d;

    .line 650
    .line 651
    if-eqz v1, :cond_28

    .line 652
    .line 653
    check-cast v0, Lga/g$d;

    .line 654
    .line 655
    if-eqz p1, :cond_24

    .line 656
    .line 657
    iget-object p1, v0, Lga/g$d;->a:Lga/f$e;

    .line 658
    .line 659
    goto :goto_a

    .line 660
    :cond_24
    iget-object p1, v0, Lga/g$d;->b:Lga/f$e;

    .line 661
    .line 662
    if-eqz p1, :cond_27

    .line 663
    .line 664
    :goto_a
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    iget-object v0, v0, Lga/l0;->e:Lga/s;

    .line 669
    .line 670
    iget-object p1, p1, Lga/f$e;->a:Lkb/d$b;

    .line 671
    .line 672
    iget-object v1, p1, Lkb/d$b;->a:Ljava/lang/String;

    .line 673
    .line 674
    iget-object p1, p1, Lkb/d$b;->b:Ljava/lang/String;

    .line 675
    .line 676
    invoke-virtual {v0, v1, p1}, Lga/s;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 677
    .line 678
    .line 679
    move-result-object p1

    .line 680
    if-eqz p1, :cond_26

    .line 681
    .line 682
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 687
    .line 688
    .line 689
    invoke-virtual {p0}, Lga/l0$a;->q()Z

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-eqz v0, :cond_25

    .line 694
    .line 695
    new-instance v0, Lha/g$g$a;

    .line 696
    .line 697
    invoke-static {p0}, Lga/m0;->c(Lga/l0$a;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object p0

    .line 701
    invoke-direct {v0, p1, p0}, Lha/g$g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    move-object p0, v0

    .line 705
    goto :goto_b

    .line 706
    :cond_25
    new-instance p0, Lha/g$g$d;

    .line 707
    .line 708
    invoke-direct {p0, p1}, Lha/g$g$d;-><init>(Ljava/lang/reflect/Method;)V

    .line 709
    .line 710
    .line 711
    :goto_b
    return-object p0

    .line 712
    :cond_26
    new-instance p1, Ll9/f;

    .line 713
    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    .line 715
    .line 716
    const-string v1, "No accessor found for property "

    .line 717
    .line 718
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 722
    .line 723
    .line 724
    move-result-object p0

    .line 725
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object p0

    .line 732
    invoke-direct {p1, p0, v3}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 733
    .line 734
    .line 735
    throw p1

    .line 736
    :cond_27
    new-instance p1, Ll9/f;

    .line 737
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    .line 739
    .line 740
    const-string v1, "No setter found for property "

    .line 741
    .line 742
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 746
    .line 747
    .line 748
    move-result-object p0

    .line 749
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object p0

    .line 756
    invoke-direct {p1, p0, v3}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 757
    .line 758
    .line 759
    throw p1

    .line 760
    :cond_28
    new-instance p0, Lj7/p;

    .line 761
    .line 762
    invoke-direct {p0}, Lj7/p;-><init>()V

    .line 763
    .line 764
    .line 765
    throw p0
.end method

.method public static final b(Lga/l0$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/l0$a<",
            "**>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    move-result-object p0

    invoke-virtual {p0}, Lga/l0;->s()Lma/l0;

    move-result-object p0

    invoke-interface {p0}, Lma/z0;->getType()Lcc/e0;

    move-result-object p0

    invoke-static {p0}, Lcc/q1;->g(Lcc/e0;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final c(Lga/l0$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/l0$a<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lga/l0;->s()Lma/l0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lga/l0;->h:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {p0, v0}, Lb8/f;->p(Ljava/lang/Object;Lma/b;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
