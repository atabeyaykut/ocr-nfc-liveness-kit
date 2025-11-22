.class public final synthetic Lc5/f5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lc5/v5;


# direct methods
.method public synthetic constructor <init>(Lc5/v5;Landroid/os/Bundle;I)V
    .locals 0

    iput p3, p0, Lc5/f5;->a:I

    iput-object p1, p0, Lc5/f5;->c:Lc5/v5;

    iput-object p2, p0, Lc5/f5;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc5/f5;->a:I

    .line 4
    .line 5
    iget-object v2, v0, Lc5/f5;->b:Landroid/os/Bundle;

    .line 6
    .line 7
    iget-object v3, v0, Lc5/f5;->c:Lc5/v5;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :pswitch_0
    iget-object v1, v3, Lc5/x4;->a:Lc5/z4;

    .line 15
    .line 16
    check-cast v1, Lc5/i4;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 21
    .line 22
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, v1, Lc5/s3;->y:Lc5/n3;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lc5/n3;->b(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_0
    iget-object v4, v1, Lc5/i4;->h:Lc5/s3;

    .line 38
    .line 39
    invoke-static {v4}, Lc5/i4;->c(Lc5/y4;)V

    .line 40
    .line 41
    .line 42
    iget-object v4, v4, Lc5/s3;->y:Lc5/n3;

    .line 43
    .line 44
    invoke-virtual {v4}, Lc5/n3;->a()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    iget-object v7, v3, Lc5/v5;->r:Lcom/google/android/gms/internal/measurement/w5;

    .line 61
    .line 62
    iget-object v13, v1, Lc5/i4;->j:Lc5/e3;

    .line 63
    .line 64
    iget-object v8, v1, Lc5/i4;->m:Lc5/v7;

    .line 65
    .line 66
    if-eqz v6, :cond_6

    .line 67
    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v14

    .line 78
    if-eqz v14, :cond_3

    .line 79
    .line 80
    instance-of v9, v14, Ljava/lang/String;

    .line 81
    .line 82
    if-nez v9, :cond_3

    .line 83
    .line 84
    instance-of v9, v14, Ljava/lang/Long;

    .line 85
    .line 86
    if-nez v9, :cond_3

    .line 87
    .line 88
    instance-of v9, v14, Ljava/lang/Double;

    .line 89
    .line 90
    if-nez v9, :cond_3

    .line 91
    .line 92
    invoke-static {v8}, Lc5/i4;->c(Lc5/y4;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {v14}, Lc5/v7;->Q(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_2

    .line 103
    .line 104
    const/4 v8, 0x0

    .line 105
    const/16 v9, 0x1b

    .line 106
    .line 107
    const/4 v10, 0x0

    .line 108
    const/4 v11, 0x0

    .line 109
    const/4 v12, 0x0

    .line 110
    invoke-static/range {v7 .. v12}, Lc5/v7;->w(Lc5/u7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-static {v13}, Lc5/i4;->e(Lc5/y4;)V

    .line 114
    .line 115
    .line 116
    const-string v7, "Invalid default event parameter type. Name, value"

    .line 117
    .line 118
    iget-object v8, v13, Lc5/e3;->l:Lc5/c3;

    .line 119
    .line 120
    invoke-virtual {v8, v6, v7, v14}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    invoke-static {v6}, Lc5/v7;->S(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-eqz v7, :cond_4

    .line 129
    .line 130
    invoke-static {v13}, Lc5/i4;->e(Lc5/y4;)V

    .line 131
    .line 132
    .line 133
    const-string v7, "Invalid default event parameter name. Name"

    .line 134
    .line 135
    iget-object v8, v13, Lc5/e3;->l:Lc5/c3;

    .line 136
    .line 137
    invoke-virtual {v8, v6, v7}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    if-nez v14, :cond_5

    .line 142
    .line 143
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    invoke-static {v8}, Lc5/i4;->c(Lc5/y4;)V

    .line 148
    .line 149
    .line 150
    const-string v7, "param"

    .line 151
    .line 152
    const/16 v9, 0x64

    .line 153
    .line 154
    invoke-virtual {v8, v7, v6, v9, v14}, Lc5/v7;->J(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_1

    .line 159
    .line 160
    invoke-virtual {v8, v4, v6, v14}, Lc5/v7;->x(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_6
    invoke-static {v8}, Lc5/i4;->c(Lc5/y4;)V

    .line 165
    .line 166
    .line 167
    iget-object v2, v1, Lc5/i4;->g:Lc5/e;

    .line 168
    .line 169
    invoke-virtual {v2}, Lc5/e;->d()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-virtual {v4}, Landroid/os/BaseBundle;->size()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    const/4 v5, 0x1

    .line 178
    const/4 v6, 0x0

    .line 179
    if-gt v3, v2, :cond_7

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_7
    new-instance v3, Ljava/util/TreeSet;

    .line 183
    .line 184
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-direct {v3, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    const/4 v9, 0x0

    .line 196
    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    if-eqz v10, :cond_9

    .line 201
    .line 202
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    check-cast v10, Ljava/lang/String;

    .line 207
    .line 208
    add-int/2addr v9, v5

    .line 209
    if-le v9, v2, :cond_8

    .line 210
    .line 211
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_9
    invoke-static {v8}, Lc5/i4;->c(Lc5/y4;)V

    .line 216
    .line 217
    .line 218
    const/4 v2, 0x0

    .line 219
    const/16 v9, 0x1a

    .line 220
    .line 221
    const/4 v10, 0x0

    .line 222
    const/4 v11, 0x0

    .line 223
    const/4 v12, 0x0

    .line 224
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    move-object v8, v2

    .line 228
    invoke-static/range {v7 .. v12}, Lc5/v7;->w(Lc5/u7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 229
    .line 230
    .line 231
    invoke-static {v13}, Lc5/i4;->e(Lc5/y4;)V

    .line 232
    .line 233
    .line 234
    const-string v2, "Too many default event parameters set. Discarding beyond event parameter limit"

    .line 235
    .line 236
    iget-object v3, v13, Lc5/e3;->l:Lc5/c3;

    .line 237
    .line 238
    invoke-virtual {v3, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :goto_2
    iget-object v2, v1, Lc5/i4;->h:Lc5/s3;

    .line 242
    .line 243
    invoke-static {v2}, Lc5/i4;->c(Lc5/y4;)V

    .line 244
    .line 245
    .line 246
    iget-object v2, v2, Lc5/s3;->y:Lc5/n3;

    .line 247
    .line 248
    invoke-virtual {v2, v4}, Lc5/n3;->b(Landroid/os/Bundle;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Lc5/i4;->s()Lc5/t6;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v1}, Lc5/t2;->b()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Lc5/r3;->c()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v6}, Lc5/t6;->q(Z)Lc5/y7;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    new-instance v3, Lo3/d1;

    .line 266
    .line 267
    invoke-direct {v3, v1, v2, v4, v5}, Lo3/d1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v3}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 271
    .line 272
    .line 273
    :goto_3
    return-void

    .line 274
    :goto_4
    const-string v1, "app_id"

    .line 275
    .line 276
    invoke-virtual {v3}, Lc5/t2;->b()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3}, Lc5/r3;->c()V

    .line 280
    .line 281
    .line 282
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    const-string v4, "name"

    .line 286
    .line 287
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    const-string v4, "origin"

    .line 292
    .line 293
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-static {v9}, Lr3/r;->f(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-static {v4}, Lr3/r;->f(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    const-string v5, "value"

    .line 304
    .line 305
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    invoke-static {v6}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 313
    .line 314
    move-object v15, v3

    .line 315
    check-cast v15, Lc5/i4;

    .line 316
    .line 317
    invoke-virtual {v15}, Lc5/i4;->a()Z

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    if-nez v6, :cond_a

    .line 322
    .line 323
    iget-object v1, v15, Lc5/i4;->j:Lc5/e3;

    .line 324
    .line 325
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 326
    .line 327
    .line 328
    const-string v2, "Conditional property not set since app measurement is disabled"

    .line 329
    .line 330
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 331
    .line 332
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_5

    .line 336
    .line 337
    :cond_a
    new-instance v18, Lc5/r7;

    .line 338
    .line 339
    const-string v6, "triggered_timestamp"

    .line 340
    .line 341
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 342
    .line 343
    .line 344
    move-result-wide v6

    .line 345
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    move-object/from16 v5, v18

    .line 350
    .line 351
    move-object v10, v4

    .line 352
    invoke-direct/range {v5 .. v10}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :try_start_0
    move-object v5, v3

    .line 356
    check-cast v5, Lc5/i4;

    .line 357
    .line 358
    iget-object v10, v5, Lc5/i4;->m:Lc5/v7;

    .line 359
    .line 360
    invoke-static {v10}, Lc5/i4;->c(Lc5/y4;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v11

    .line 367
    const-string v5, "triggered_event_name"

    .line 368
    .line 369
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v12

    .line 373
    const-string v5, "triggered_event_params"

    .line 374
    .line 375
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 376
    .line 377
    .line 378
    move-result-object v13

    .line 379
    const-wide/16 v5, 0x0

    .line 380
    .line 381
    const/16 v17, 0x1

    .line 382
    .line 383
    move-object v14, v4

    .line 384
    move-object v7, v15

    .line 385
    move-wide v15, v5

    .line 386
    invoke-virtual/range {v10 .. v17}, Lc5/v7;->p0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lc5/s;

    .line 387
    .line 388
    .line 389
    move-result-object v21

    .line 390
    move-object v5, v3

    .line 391
    check-cast v5, Lc5/i4;

    .line 392
    .line 393
    iget-object v10, v5, Lc5/i4;->m:Lc5/v7;

    .line 394
    .line 395
    invoke-static {v10}, Lc5/i4;->c(Lc5/y4;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v11

    .line 402
    const-string v5, "timed_out_event_name"

    .line 403
    .line 404
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v12

    .line 408
    const-string v5, "timed_out_event_params"

    .line 409
    .line 410
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    const-wide/16 v15, 0x0

    .line 415
    .line 416
    const/16 v17, 0x1

    .line 417
    .line 418
    move-object v14, v4

    .line 419
    invoke-virtual/range {v10 .. v17}, Lc5/v7;->p0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lc5/s;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    check-cast v3, Lc5/i4;

    .line 424
    .line 425
    iget-object v10, v3, Lc5/i4;->m:Lc5/v7;

    .line 426
    .line 427
    invoke-static {v10}, Lc5/i4;->c(Lc5/y4;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v11

    .line 434
    const-string v3, "expired_event_name"

    .line 435
    .line 436
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v12

    .line 440
    const-string v3, "expired_event_params"

    .line 441
    .line 442
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 443
    .line 444
    .line 445
    move-result-object v13

    .line 446
    const-wide/16 v15, 0x0

    .line 447
    .line 448
    const/16 v17, 0x1

    .line 449
    .line 450
    move-object v14, v4

    .line 451
    invoke-virtual/range {v10 .. v17}, Lc5/v7;->p0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lc5/s;

    .line 452
    .line 453
    .line 454
    move-result-object v24
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    new-instance v3, Lc5/b;

    .line 456
    .line 457
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v11

    .line 461
    const-string v1, "creation_timestamp"

    .line 462
    .line 463
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 464
    .line 465
    .line 466
    move-result-wide v14

    .line 467
    const/16 v16, 0x0

    .line 468
    .line 469
    const-string v1, "trigger_event_name"

    .line 470
    .line 471
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v17

    .line 475
    const-string v1, "trigger_timeout"

    .line 476
    .line 477
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 478
    .line 479
    .line 480
    move-result-wide v19

    .line 481
    const-string v1, "time_to_live"

    .line 482
    .line 483
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 484
    .line 485
    .line 486
    move-result-wide v22

    .line 487
    move-object v10, v3

    .line 488
    move-object v12, v4

    .line 489
    move-object/from16 v13, v18

    .line 490
    .line 491
    move-object/from16 v18, v5

    .line 492
    .line 493
    invoke-direct/range {v10 .. v24}, Lc5/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lc5/r7;JZLjava/lang/String;Lc5/s;JLc5/s;JLc5/s;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v7}, Lc5/i4;->s()Lc5/t6;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-virtual {v1, v3}, Lc5/t6;->h(Lc5/b;)V

    .line 501
    .line 502
    .line 503
    :catch_0
    :goto_5
    return-void

    .line 504
    nop

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
