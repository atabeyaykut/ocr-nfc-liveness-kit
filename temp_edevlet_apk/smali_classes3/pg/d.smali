.class public final Lpg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg/d;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final getContent(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lpg/d;->a:Landroid/app/Activity;

    .line 2
    .line 3
    const-string v1, "xls"

    .line 4
    .line 5
    const-string v2, "pdf"

    .line 6
    .line 7
    const-string v3, "content"

    .line 8
    .line 9
    const-string v4, "content "

    .line 10
    .line 11
    const-string v5, "value"

    .line 12
    .line 13
    invoke-static {p1, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v6, "type"

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    sget-object v7, Lyd/a;->a:Lyd/a$a;

    .line 32
    .line 33
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v4, 0x0

    .line 38
    new-array v8, v4, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v7, p1, v8}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "loading"

    .line 44
    .line 45
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Ldf/n;

    .line 56
    .line 57
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-direct {v0, v1}, Ldf/n;-><init>(Z)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_0
    const-string p1, "externalLink"

    .line 67
    .line 68
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v0, Ldf/f;

    .line 79
    .line 80
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v5}, Ldf/f;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_1
    const-string p1, "login"

    .line 89
    .line 90
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    const-string p1, "0"

    .line 97
    .line 98
    invoke-static {v5, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_20

    .line 103
    .line 104
    new-instance p1, Landroid/content/Intent;

    .line 105
    .line 106
    const-string v1, "action.login.open"

    .line 107
    .line 108
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const v1, 0x8000

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 118
    .line 119
    const/16 v2, 0x22

    .line 120
    .line 121
    if-lt v1, v2, :cond_2

    .line 122
    .line 123
    const-string v1, "tr.gov.turkiye.edevlet.kapisi"

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    :cond_2
    const v1, 0x10008000

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_4

    .line 141
    .line 142
    :cond_3
    invoke-static {v6, v2}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_4

    .line 147
    .line 148
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance v0, Ldf/i0;

    .line 153
    .line 154
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {v0, v5, v2, v4}, Ldf/i0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_2

    .line 161
    .line 162
    :cond_4
    invoke-static {v6, v1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_5

    .line 167
    .line 168
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    new-instance v0, Ldf/i0;

    .line 173
    .line 174
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-direct {v0, v5, v1, v4}, Ldf/i0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_2

    .line 181
    .line 182
    :cond_5
    const-string p1, "PersonalData"

    .line 183
    .line 184
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    const/4 v0, 0x1

    .line 189
    const/4 v1, 0x0

    .line 190
    const-string v7, "error"

    .line 191
    .line 192
    if-eqz p1, :cond_7

    .line 193
    .line 194
    :try_start_1
    invoke-static {v5, v7}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_6

    .line 199
    .line 200
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    new-instance v0, Lcom/google/android/gms/internal/clearcut/g;

    .line 205
    .line 206
    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/clearcut/g;-><init>(ZLjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_6
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    new-instance v1, Lcom/google/android/gms/internal/clearcut/g;

    .line 215
    .line 216
    invoke-direct {v1, v0, v5}, Lcom/google/android/gms/internal/clearcut/g;-><init>(ZLjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :goto_0
    move-object v0, v1

    .line 220
    goto/16 :goto_3

    .line 221
    .line 222
    :cond_7
    const-string p1, "PersonalDataUpdate"

    .line 223
    .line 224
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_9

    .line 229
    .line 230
    invoke-static {v5, v7}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-eqz p1, :cond_8

    .line 235
    .line 236
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    new-instance v0, Lcom/google/android/gms/internal/clearcut/g;

    .line 241
    .line 242
    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/clearcut/g;-><init>(ZLjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :goto_1
    invoke-virtual {p1, v0}, Lqd/b;->f(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_4

    .line 249
    .line 250
    :cond_8
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    new-instance v1, Lcom/google/android/gms/internal/clearcut/g;

    .line 255
    .line 256
    invoke-direct {v1, v0, v5}, Lcom/google/android/gms/internal/clearcut/g;-><init>(ZLjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_9
    const-string p1, "permission"

    .line 261
    .line 262
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-eqz p1, :cond_a

    .line 267
    .line 268
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    new-instance v0, Ldf/g;

    .line 273
    .line 274
    invoke-direct {v0}, Ldf/g;-><init>()V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_3

    .line 278
    .line 279
    :cond_a
    const-string p1, "addDate"

    .line 280
    .line 281
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_b

    .line 286
    .line 287
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    new-instance v0, Ldf/a;

    .line 292
    .line 293
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-direct {v0, v5}, Ldf/a;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_3

    .line 300
    .line 301
    :cond_b
    const-string p1, "pdfLink"

    .line 302
    .line 303
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-eqz p1, :cond_c

    .line 308
    .line 309
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    new-instance v1, Ldf/i0;

    .line 314
    .line 315
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-direct {v1, v5, v2, v0}, Ldf/i0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 319
    .line 320
    .line 321
    move-object v0, v1

    .line 322
    goto :goto_2

    .line 323
    :cond_c
    const-string p1, "edkCloseService"

    .line 324
    .line 325
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-eqz p1, :cond_d

    .line 330
    .line 331
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    new-instance v0, Ldf/g0;

    .line 336
    .line 337
    invoke-direct {v0}, Ldf/g0;-><init>()V

    .line 338
    .line 339
    .line 340
    :goto_2
    invoke-virtual {p1, v0}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_4

    .line 344
    .line 345
    :cond_d
    const-string p1, "edkRedirectService"

    .line 346
    .line 347
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    if-eqz p1, :cond_f

    .line 352
    .line 353
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-static {v5}, Lmc/i;->t(Ljava/lang/String;)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    if-eqz p1, :cond_e

    .line 361
    .line 362
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    new-instance v1, Ldf/h0;

    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    invoke-direct {v1, p1}, Ldf/h0;-><init>(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v1}, Lqd/b;->f(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_4

    .line 379
    .line 380
    :cond_e
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    new-instance v0, Ldf/h0;

    .line 385
    .line 386
    const/4 v1, -0x1

    .line 387
    invoke-direct {v0, v1}, Ldf/h0;-><init>(I)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_3

    .line 391
    .line 392
    :cond_f
    const-string p1, "scanDocument"

    .line 393
    .line 394
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result p1

    .line 398
    if-eqz p1, :cond_10

    .line 399
    .line 400
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    new-instance v0, Ldf/d0;

    .line 405
    .line 406
    invoke-direct {v0}, Ldf/d0;-><init>()V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_3

    .line 410
    .line 411
    :cond_10
    const-string p1, "checkNfc"

    .line 412
    .line 413
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    if-eqz p1, :cond_11

    .line 418
    .line 419
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    new-instance v0, Ldf/c;

    .line 424
    .line 425
    invoke-direct {v0}, Ldf/c;-><init>()V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_3

    .line 429
    .line 430
    :cond_11
    const-string p1, "verificationById"

    .line 431
    .line 432
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 433
    .line 434
    .line 435
    move-result p1

    .line 436
    if-eqz p1, :cond_12

    .line 437
    .line 438
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    new-instance v0, Ldf/l;

    .line 443
    .line 444
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-direct {v0, v5}, Ldf/l;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_3

    .line 451
    .line 452
    :cond_12
    const-string p1, "redirectToFolderUrl"

    .line 453
    .line 454
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 455
    .line 456
    .line 457
    move-result p1

    .line 458
    if-eqz p1, :cond_13

    .line 459
    .line 460
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    new-instance v0, Ldf/z;

    .line 465
    .line 466
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-direct {v0, v5}, Ldf/z;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_3

    .line 473
    .line 474
    :cond_13
    const-string p1, "removeRegisteredDevice"

    .line 475
    .line 476
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 477
    .line 478
    .line 479
    move-result p1

    .line 480
    if-eqz p1, :cond_14

    .line 481
    .line 482
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    new-instance v0, Ldf/b0;

    .line 487
    .line 488
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    invoke-direct {v0, v1}, Ldf/b0;-><init>(Z)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_3

    .line 496
    .line 497
    :cond_14
    const-string p1, "checkRegisteredDevice"

    .line 498
    .line 499
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 500
    .line 501
    .line 502
    move-result p1

    .line 503
    if-eqz p1, :cond_15

    .line 504
    .line 505
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    new-instance v0, Ldf/d;

    .line 510
    .line 511
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 512
    .line 513
    .line 514
    invoke-direct {v0, v4}, Ldf/d;-><init>(I)V

    .line 515
    .line 516
    .line 517
    goto/16 :goto_3

    .line 518
    .line 519
    :cond_15
    const-string p1, "requestTwoFactor"

    .line 520
    .line 521
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 522
    .line 523
    .line 524
    move-result p1

    .line 525
    if-eqz p1, :cond_16

    .line 526
    .line 527
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    new-instance v0, Ldf/l0;

    .line 532
    .line 533
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-direct {v0, v5}, Ldf/l0;-><init>(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_3

    .line 540
    .line 541
    :cond_16
    const-string p1, "readMrz"

    .line 542
    .line 543
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 544
    .line 545
    .line 546
    move-result p1

    .line 547
    if-eqz p1, :cond_17

    .line 548
    .line 549
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    new-instance v0, Ldf/i;

    .line 554
    .line 555
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 556
    .line 557
    .line 558
    invoke-direct {v0}, Ldf/i;-><init>()V

    .line 559
    .line 560
    .line 561
    goto/16 :goto_3

    .line 562
    .line 563
    :cond_17
    const-string p1, "readQr"

    .line 564
    .line 565
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 566
    .line 567
    .line 568
    move-result p1

    .line 569
    if-eqz p1, :cond_18

    .line 570
    .line 571
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 572
    .line 573
    .line 574
    move-result-object p1

    .line 575
    new-instance v0, Ldf/j;

    .line 576
    .line 577
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 578
    .line 579
    .line 580
    invoke-direct {v0}, Ldf/j;-><init>()V

    .line 581
    .line 582
    .line 583
    goto/16 :goto_3

    .line 584
    .line 585
    :cond_18
    const-string p1, "requestSms"

    .line 586
    .line 587
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 588
    .line 589
    .line 590
    move-result p1

    .line 591
    if-eqz p1, :cond_19

    .line 592
    .line 593
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    new-instance v0, Ldf/c0;

    .line 598
    .line 599
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 600
    .line 601
    .line 602
    invoke-direct {v0}, Ldf/c0;-><init>()V

    .line 603
    .line 604
    .line 605
    goto/16 :goto_3

    .line 606
    .line 607
    :cond_19
    const-string p1, "registerDevice"

    .line 608
    .line 609
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 610
    .line 611
    .line 612
    move-result p1

    .line 613
    if-eqz p1, :cond_1a

    .line 614
    .line 615
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 616
    .line 617
    .line 618
    move-result-object p1

    .line 619
    new-instance v0, Ldf/a0;

    .line 620
    .line 621
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-direct {v0, v5}, Ldf/a0;-><init>(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    goto/16 :goto_3

    .line 628
    .line 629
    :cond_1a
    const-string p1, "getDeviceInfo"

    .line 630
    .line 631
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 632
    .line 633
    .line 634
    move-result p1

    .line 635
    if-eqz p1, :cond_1b

    .line 636
    .line 637
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 638
    .line 639
    .line 640
    move-result-object p1

    .line 641
    new-instance v0, Ldf/e;

    .line 642
    .line 643
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    invoke-direct {v0, v1}, Ldf/e;-><init>(Z)V

    .line 648
    .line 649
    .line 650
    goto :goto_3

    .line 651
    :cond_1b
    const-string p1, "paymentURL"

    .line 652
    .line 653
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 654
    .line 655
    .line 656
    move-result p1

    .line 657
    if-eqz p1, :cond_1c

    .line 658
    .line 659
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 660
    .line 661
    .line 662
    move-result-object p1

    .line 663
    new-instance v0, Ldf/w;

    .line 664
    .line 665
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-direct {v0, v5}, Ldf/w;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    goto :goto_3

    .line 672
    :cond_1c
    const-string p1, "paymentResult"

    .line 673
    .line 674
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 675
    .line 676
    .line 677
    move-result p1

    .line 678
    if-eqz p1, :cond_1d

    .line 679
    .line 680
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 681
    .line 682
    .line 683
    move-result-object p1

    .line 684
    new-instance v0, Ldf/x;

    .line 685
    .line 686
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    invoke-direct {v0, v5}, Ldf/x;-><init>(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    goto :goto_3

    .line 693
    :cond_1d
    const-string p1, "mktAccidentScenarioResult"

    .line 694
    .line 695
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 696
    .line 697
    .line 698
    move-result p1

    .line 699
    if-eqz p1, :cond_1e

    .line 700
    .line 701
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 702
    .line 703
    .line 704
    move-result-object p1

    .line 705
    new-instance v0, Ldf/q;

    .line 706
    .line 707
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-direct {v0, v5}, Ldf/q;-><init>(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    goto :goto_3

    .line 714
    :cond_1e
    const-string p1, "muzeKartPermissionRequest"

    .line 715
    .line 716
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 717
    .line 718
    .line 719
    move-result p1

    .line 720
    if-eqz p1, :cond_1f

    .line 721
    .line 722
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 723
    .line 724
    .line 725
    move-result-object p1

    .line 726
    new-instance v0, Ldf/u;

    .line 727
    .line 728
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    invoke-direct {v0, v5}, Ldf/u;-><init>(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    goto :goto_3

    .line 735
    :cond_1f
    const-string p1, "muzeKartBeaconRequest"

    .line 736
    .line 737
    invoke-static {v6, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 738
    .line 739
    .line 740
    move-result p1

    .line 741
    if-eqz p1, :cond_20

    .line 742
    .line 743
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 744
    .line 745
    .line 746
    move-result-object p1

    .line 747
    new-instance v0, Ldf/t;

    .line 748
    .line 749
    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    invoke-direct {v0, v5}, Ldf/t;-><init>(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    :goto_3
    invoke-virtual {p1, v0}, Lqd/b;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 756
    .line 757
    .line 758
    :catch_0
    :cond_20
    :goto_4
    return-void
.end method
