.class public final synthetic Ll3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc5/t5;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll3/i;->a:I

    .line 1
    iput-object p1, p0, Ll3/i;->f:Ljava/lang/Object;

    iput-boolean p2, p0, Ll3/i;->b:Z

    iput-object p3, p0, Ll3/i;->c:Ljava/lang/Object;

    iput-object p4, p0, Ll3/i;->d:Ljava/lang/Object;

    iput-object p5, p0, Ll3/i;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ll3/b;Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll3/i;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/i;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll3/i;->d:Ljava/lang/Object;

    iput-object p3, p0, Ll3/i;->e:Ljava/lang/Object;

    iput-boolean p4, p0, Ll3/i;->b:Z

    iput-object p5, p0, Ll3/i;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v2, v1, Ll3/i;->a:I

    .line 4
    .line 5
    iget-boolean v3, v1, Ll3/i;->b:Z

    .line 6
    .line 7
    iget-object v4, v1, Ll3/i;->f:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, v1, Ll3/i;->e:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v6, v1, Ll3/i;->d:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, v1, Ll3/i;->c:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :pswitch_0
    check-cast v7, Ll3/b;

    .line 20
    .line 21
    check-cast v6, Landroid/content/Intent;

    .line 22
    .line 23
    check-cast v5, Landroid/content/Context;

    .line 24
    .line 25
    check-cast v4, Landroid/content/BroadcastReceiver$PendingResult;

    .line 26
    .line 27
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :try_start_0
    const-string v2, "wrapped_intent"

    .line 31
    .line 32
    invoke-virtual {v6, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    instance-of v8, v2, Landroid/content/Intent;

    .line 37
    .line 38
    if-eqz v8, :cond_0

    .line 39
    .line 40
    move-object v0, v2

    .line 41
    check-cast v0, Landroid/content/Intent;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v7, v5, v0}, Ll3/b;->d(Landroid/content/Context;Landroid/content/Intent;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v7, v5, v6}, Ll3/b;->c(Landroid/content/Context;Landroid/content/Intent;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    :goto_1
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {v4, v0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :goto_2
    check-cast v4, Lc5/t5;

    .line 71
    .line 72
    check-cast v7, Landroid/net/Uri;

    .line 73
    .line 74
    check-cast v6, Ljava/lang/String;

    .line 75
    .line 76
    move-object v11, v5

    .line 77
    check-cast v11, Ljava/lang/String;

    .line 78
    .line 79
    iget-object v12, v4, Lc5/t5;->a:Lc5/v5;

    .line 80
    .line 81
    invoke-virtual {v12}, Lc5/t2;->b()V

    .line 82
    .line 83
    .line 84
    iget-object v2, v12, Lc5/x4;->a:Lc5/z4;

    .line 85
    .line 86
    :try_start_1
    move-object v4, v2

    .line 87
    check-cast v4, Lc5/i4;

    .line 88
    .line 89
    iget-object v4, v4, Lc5/i4;->m:Lc5/v7;

    .line 90
    .line 91
    invoke-static {v4}, Lc5/i4;->c(Lc5/y4;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    const-string v8, "Activity created with data \'referrer\' without required params"

    .line 99
    .line 100
    const-string v9, "_cis"

    .line 101
    .line 102
    const-string v10, "utm_medium"

    .line 103
    .line 104
    const-string v13, "utm_source"

    .line 105
    .line 106
    const-string v14, "utm_campaign"

    .line 107
    .line 108
    const-string v15, "gclid"

    .line 109
    .line 110
    if-eqz v5, :cond_3

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_3
    :try_start_2
    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_4

    .line 118
    .line 119
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_4

    .line 124
    .line 125
    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_4

    .line 130
    .line 131
    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-nez v5, :cond_4

    .line 136
    .line 137
    iget-object v4, v4, Lc5/x4;->a:Lc5/z4;

    .line 138
    .line 139
    check-cast v4, Lc5/i4;

    .line 140
    .line 141
    iget-object v4, v4, Lc5/i4;->j:Lc5/e3;

    .line 142
    .line 143
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 144
    .line 145
    .line 146
    iget-object v4, v4, Lc5/e3;->n:Lc5/c3;

    .line 147
    .line 148
    invoke-virtual {v4, v8}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :goto_3
    const/4 v0, 0x0

    .line 152
    goto :goto_5

    .line 153
    :cond_4
    const-string v5, "https://google.com/search?"

    .line 154
    .line 155
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v16

    .line 159
    if-eqz v16, :cond_5

    .line 160
    .line 161
    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    goto :goto_4

    .line 166
    :cond_5
    new-instance v0, Ljava/lang/String;

    .line 167
    .line 168
    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    move-object v5, v0

    .line 172
    :goto_4
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v4, v0}, Lc5/v7;->m0(Landroid/net/Uri;)Landroid/os/Bundle;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-eqz v0, :cond_6

    .line 181
    .line 182
    const-string v4, "referrer"

    .line 183
    .line 184
    invoke-virtual {v0, v9, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    .line 186
    .line 187
    :cond_6
    :goto_5
    iget-object v4, v12, Lc5/v5;->p:Lc5/a8;

    .line 188
    .line 189
    const-string v5, "_cmp"

    .line 190
    .line 191
    if-eqz v3, :cond_8

    .line 192
    .line 193
    :try_start_3
    move-object v3, v2

    .line 194
    check-cast v3, Lc5/i4;

    .line 195
    .line 196
    iget-object v3, v3, Lc5/i4;->m:Lc5/v7;

    .line 197
    .line 198
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v7}, Lc5/v7;->m0(Landroid/net/Uri;)Landroid/os/Bundle;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    if-eqz v3, :cond_8

    .line 206
    .line 207
    const-string v7, "intent"

    .line 208
    .line 209
    invoke-virtual {v3, v9, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-nez v7, :cond_7

    .line 217
    .line 218
    if-eqz v0, :cond_7

    .line 219
    .line 220
    invoke-virtual {v0, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    if-eqz v7, :cond_7

    .line 225
    .line 226
    const/4 v7, 0x1

    .line 227
    new-array v7, v7, [Ljava/lang/Object;

    .line 228
    .line 229
    invoke-virtual {v0, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    const/16 v17, 0x0

    .line 234
    .line 235
    aput-object v9, v7, v17

    .line 236
    .line 237
    const-string v9, "_cer"

    .line 238
    .line 239
    const-string v1, "gclid=%s"

    .line 240
    .line 241
    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v3, v9, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_7
    invoke-virtual {v12, v6, v5, v3}, Lc5/v5;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v3, v6}, Lc5/a8;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :cond_8
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-eqz v1, :cond_9

    .line 259
    .line 260
    goto/16 :goto_7

    .line 261
    .line 262
    :cond_9
    move-object v1, v2

    .line 263
    check-cast v1, Lc5/i4;

    .line 264
    .line 265
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 266
    .line 267
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v1, Lc5/e3;->n:Lc5/c3;

    .line 271
    .line 272
    const-string v3, "Activity created with referrer"

    .line 273
    .line 274
    invoke-virtual {v1, v11, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    move-object v1, v2

    .line 278
    check-cast v1, Lc5/i4;

    .line 279
    .line 280
    iget-object v1, v1, Lc5/i4;->g:Lc5/e;

    .line 281
    .line 282
    sget-object v3, Lc5/r2;->a0:Lc5/q2;

    .line 283
    .line 284
    const/4 v7, 0x0

    .line 285
    invoke-virtual {v1, v7, v3}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_b

    .line 290
    .line 291
    if-eqz v0, :cond_a

    .line 292
    .line 293
    invoke-virtual {v12, v6, v5, v0}, Lc5/v5;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4, v0, v6}, Lc5/a8;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_a
    move-object v0, v2

    .line 301
    check-cast v0, Lc5/i4;

    .line 302
    .line 303
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 304
    .line 305
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, v0, Lc5/e3;->n:Lc5/c3;

    .line 309
    .line 310
    const-string v1, "Referrer does not contain valid parameters"

    .line 311
    .line 312
    invoke-virtual {v0, v11, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :goto_6
    const/4 v15, 0x0

    .line 316
    const-string v13, "auto"

    .line 317
    .line 318
    const-string v14, "_ldl"

    .line 319
    .line 320
    const/16 v16, 0x1

    .line 321
    .line 322
    move-object v0, v2

    .line 323
    check-cast v0, Lc5/i4;

    .line 324
    .line 325
    iget-object v0, v0, Lc5/i4;->p:Lc5/w;

    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 331
    .line 332
    .line 333
    move-result-wide v17

    .line 334
    invoke-virtual/range {v12 .. v18}, Lc5/v5;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 335
    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_b
    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-eqz v0, :cond_d

    .line 343
    .line 344
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-nez v0, :cond_c

    .line 349
    .line 350
    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-nez v0, :cond_c

    .line 355
    .line 356
    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-nez v0, :cond_c

    .line 361
    .line 362
    const-string v0, "utm_term"

    .line 363
    .line 364
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-nez v0, :cond_c

    .line 369
    .line 370
    const-string v0, "utm_content"

    .line 371
    .line 372
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eqz v0, :cond_d

    .line 377
    .line 378
    :cond_c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-nez v0, :cond_e

    .line 383
    .line 384
    const-string v9, "auto"

    .line 385
    .line 386
    const-string v10, "_ldl"

    .line 387
    .line 388
    const/4 v0, 0x1

    .line 389
    move-object v1, v2

    .line 390
    check-cast v1, Lc5/i4;

    .line 391
    .line 392
    iget-object v1, v1, Lc5/i4;->p:Lc5/w;

    .line 393
    .line 394
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 398
    .line 399
    .line 400
    move-result-wide v13

    .line 401
    move-object v8, v12

    .line 402
    move v12, v0

    .line 403
    invoke-virtual/range {v8 .. v14}, Lc5/v5;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 404
    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_d
    move-object v0, v2

    .line 408
    check-cast v0, Lc5/i4;

    .line 409
    .line 410
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 411
    .line 412
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 413
    .line 414
    .line 415
    iget-object v0, v0, Lc5/e3;->n:Lc5/c3;

    .line 416
    .line 417
    invoke-virtual {v0, v8}, Lc5/c3;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 418
    .line 419
    .line 420
    goto :goto_7

    .line 421
    :catch_0
    move-exception v0

    .line 422
    check-cast v2, Lc5/i4;

    .line 423
    .line 424
    iget-object v1, v2, Lc5/i4;->j:Lc5/e3;

    .line 425
    .line 426
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 427
    .line 428
    .line 429
    const-string v2, "Throwable caught in handleReferrerForOnActivityCreated"

    .line 430
    .line 431
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 432
    .line 433
    invoke-virtual {v1, v0, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    :cond_e
    :goto_7
    return-void

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
