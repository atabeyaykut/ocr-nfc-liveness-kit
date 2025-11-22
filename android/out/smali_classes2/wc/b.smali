.class public final Lwc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc/s;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lwc/b;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lwc/f;)Lrc/b0;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "call"

    .line 4
    .line 5
    iget-object v2, v0, Lwc/f;->e:Lvc/c;

    .line 6
    .line 7
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v3, v2, Lvc/c;->f:Lwc/d;

    .line 11
    .line 12
    iget-object v4, v2, Lvc/c;->d:Lrc/n;

    .line 13
    .line 14
    iget-object v5, v2, Lvc/c;->c:Lvc/e;

    .line 15
    .line 16
    iget-object v0, v0, Lwc/f;->f:Lrc/x;

    .line 17
    .line 18
    iget-object v6, v0, Lrc/x;->e:Lrc/a0;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v7

    .line 24
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v3, v0}, Lwc/d;->b(Lrc/x;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 31
    .line 32
    .line 33
    iget-object v9, v0, Lrc/x;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v9}, La0/b;->o(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    const/4 v10, 0x1

    .line 40
    const/4 v11, 0x0

    .line 41
    iget-object v12, v2, Lvc/c;->b:Lvc/i;

    .line 42
    .line 43
    if-eqz v9, :cond_4

    .line 44
    .line 45
    if-eqz v6, :cond_4

    .line 46
    .line 47
    iget-object v9, v0, Lrc/x;->d:Lrc/q;

    .line 48
    .line 49
    const-string v13, "Expect"

    .line 50
    .line 51
    invoke-virtual {v9, v13}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    const-string v13, "100-continue"

    .line 56
    .line 57
    invoke-static {v13, v9}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-eqz v9, :cond_0

    .line 62
    .line 63
    :try_start_1
    invoke-interface {v3}, Lwc/d;->g()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v10}, Lvc/c;->b(Z)Lrc/b0$a;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 v13, 0x0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    move-object v3, v0

    .line 80
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Lvc/c;->c(Ljava/io/IOException;)V

    .line 87
    .line 88
    .line 89
    throw v3

    .line 90
    :cond_0
    const/4 v9, 0x0

    .line 91
    const/4 v13, 0x1

    .line 92
    :goto_0
    if-nez v9, :cond_1

    .line 93
    .line 94
    iput-boolean v11, v2, Lvc/c;->a:Z

    .line 95
    .line 96
    iget-object v10, v0, Lrc/x;->e:Lrc/a0;

    .line 97
    .line 98
    invoke-static {v10}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10}, Lrc/a0;->a()J

    .line 102
    .line 103
    .line 104
    move-result-wide v10

    .line 105
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v3, v0, v10, v11}, Lwc/d;->f(Lrc/x;J)Led/h0;

    .line 112
    .line 113
    .line 114
    move-result-object v14

    .line 115
    new-instance v15, Lvc/c$a;

    .line 116
    .line 117
    invoke-direct {v15, v2, v14, v10, v11}, Lvc/c$a;-><init>(Lvc/c;Led/h0;J)V

    .line 118
    .line 119
    .line 120
    invoke-static {v15}, Led/v;->a(Led/h0;)Led/b0;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-virtual {v6, v10}, Lrc/a0;->c(Led/f;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v10}, Led/b0;->close()V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_1
    const/4 v6, 0x0

    .line 132
    const/4 v11, 0x0

    .line 133
    invoke-virtual {v5, v2, v10, v11, v6}, Lvc/e;->g(Lvc/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 134
    .line 135
    .line 136
    iget-object v6, v12, Lvc/i;->f:Lyc/f;

    .line 137
    .line 138
    if-eqz v6, :cond_2

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    const/4 v10, 0x0

    .line 142
    :goto_1
    if-nez v10, :cond_3

    .line 143
    .line 144
    invoke-interface {v3}, Lwc/d;->d()Lvc/i;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v6}, Lvc/i;->l()V

    .line 149
    .line 150
    .line 151
    :cond_3
    :goto_2
    const/4 v6, 0x0

    .line 152
    const/4 v10, 0x0

    .line 153
    goto :goto_3

    .line 154
    :cond_4
    const/4 v9, 0x0

    .line 155
    const/4 v6, 0x0

    .line 156
    invoke-virtual {v5, v2, v10, v6, v9}, Lvc/e;->g(Lvc/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 157
    .line 158
    .line 159
    move-object v6, v9

    .line 160
    const/4 v10, 0x0

    .line 161
    const/4 v13, 0x1

    .line 162
    :goto_3
    :try_start_2
    invoke-interface {v3}, Lwc/d;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 163
    .line 164
    .line 165
    if-nez v9, :cond_5

    .line 166
    .line 167
    invoke-virtual {v2, v10}, Lvc/c;->b(Z)Lrc/b0$a;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    invoke-static {v9}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    if-eqz v13, :cond_5

    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const/4 v13, 0x0

    .line 183
    :cond_5
    iput-object v0, v9, Lrc/b0$a;->a:Lrc/x;

    .line 184
    .line 185
    iget-object v10, v12, Lvc/i;->d:Lrc/p;

    .line 186
    .line 187
    iput-object v10, v9, Lrc/b0$a;->e:Lrc/p;

    .line 188
    .line 189
    iput-wide v7, v9, Lrc/b0$a;->k:J

    .line 190
    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 192
    .line 193
    .line 194
    move-result-wide v10

    .line 195
    iput-wide v10, v9, Lrc/b0$a;->l:J

    .line 196
    .line 197
    invoke-virtual {v9}, Lrc/b0$a;->a()Lrc/b0;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    const/16 v10, 0x64

    .line 202
    .line 203
    iget v11, v9, Lrc/b0;->e:I

    .line 204
    .line 205
    if-ne v11, v10, :cond_7

    .line 206
    .line 207
    const/4 v9, 0x0

    .line 208
    invoke-virtual {v2, v9}, Lvc/c;->b(Z)Lrc/b0$a;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    invoke-static {v9}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    if-eqz v13, :cond_6

    .line 216
    .line 217
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_6
    iput-object v0, v9, Lrc/b0$a;->a:Lrc/x;

    .line 224
    .line 225
    iget-object v0, v12, Lvc/i;->d:Lrc/p;

    .line 226
    .line 227
    iput-object v0, v9, Lrc/b0$a;->e:Lrc/p;

    .line 228
    .line 229
    iput-wide v7, v9, Lrc/b0$a;->k:J

    .line 230
    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 232
    .line 233
    .line 234
    move-result-wide v0

    .line 235
    iput-wide v0, v9, Lrc/b0$a;->l:J

    .line 236
    .line 237
    invoke-virtual {v9}, Lrc/b0$a;->a()Lrc/b0;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    iget v11, v9, Lrc/b0;->e:I

    .line 242
    .line 243
    :cond_7
    move-object/from16 v7, p0

    .line 244
    .line 245
    iget-boolean v0, v7, Lwc/b;->a:Z

    .line 246
    .line 247
    if-eqz v0, :cond_8

    .line 248
    .line 249
    const/16 v0, 0x65

    .line 250
    .line 251
    if-ne v11, v0, :cond_8

    .line 252
    .line 253
    new-instance v0, Lrc/b0$a;

    .line 254
    .line 255
    invoke-direct {v0, v9}, Lrc/b0$a;-><init>(Lrc/b0;)V

    .line 256
    .line 257
    .line 258
    sget-object v1, Lsc/c;->c:Lrc/c0;

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_8
    new-instance v0, Lrc/b0$a;

    .line 262
    .line 263
    invoke-direct {v0, v9}, Lrc/b0$a;-><init>(Lrc/b0;)V

    .line 264
    .line 265
    .line 266
    :try_start_3
    const-string v1, "Content-Type"

    .line 267
    .line 268
    invoke-static {v9, v1}, Lrc/b0;->b(Lrc/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-interface {v3, v9}, Lwc/d;->e(Lrc/b0;)J

    .line 273
    .line 274
    .line 275
    move-result-wide v4

    .line 276
    invoke-interface {v3, v9}, Lwc/d;->h(Lrc/b0;)Led/j0;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    new-instance v9, Lvc/c$b;

    .line 281
    .line 282
    invoke-direct {v9, v2, v8, v4, v5}, Lvc/c$b;-><init>(Lvc/c;Led/j0;J)V

    .line 283
    .line 284
    .line 285
    new-instance v8, Lwc/g;

    .line 286
    .line 287
    invoke-static {v9}, Led/v;->b(Led/j0;)Led/d0;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    invoke-direct {v8, v1, v4, v5, v9}, Lwc/g;-><init>(Ljava/lang/String;JLed/d0;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 292
    .line 293
    .line 294
    move-object v1, v8

    .line 295
    :goto_4
    iput-object v1, v0, Lrc/b0$a;->g:Lrc/d0;

    .line 296
    .line 297
    invoke-virtual {v0}, Lrc/b0$a;->a()Lrc/b0;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iget-object v1, v0, Lrc/b0;->b:Lrc/x;

    .line 302
    .line 303
    iget-object v1, v1, Lrc/x;->d:Lrc/q;

    .line 304
    .line 305
    const-string v2, "Connection"

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    const-string v4, "close"

    .line 312
    .line 313
    invoke-static {v4, v1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-nez v1, :cond_9

    .line 318
    .line 319
    invoke-static {v0, v2}, Lrc/b0;->b(Lrc/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v4, v1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_a

    .line 328
    .line 329
    :cond_9
    invoke-interface {v3}, Lwc/d;->d()Lvc/i;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v1}, Lvc/i;->l()V

    .line 334
    .line 335
    .line 336
    :cond_a
    const/16 v1, 0xcc

    .line 337
    .line 338
    if-eq v11, v1, :cond_b

    .line 339
    .line 340
    const/16 v1, 0xcd

    .line 341
    .line 342
    if-ne v11, v1, :cond_e

    .line 343
    .line 344
    :cond_b
    iget-object v1, v0, Lrc/b0;->h:Lrc/d0;

    .line 345
    .line 346
    if-eqz v1, :cond_c

    .line 347
    .line 348
    invoke-virtual {v1}, Lrc/d0;->a()J

    .line 349
    .line 350
    .line 351
    move-result-wide v2

    .line 352
    goto :goto_5

    .line 353
    :cond_c
    const-wide/16 v2, -0x1

    .line 354
    .line 355
    :goto_5
    const-wide/16 v4, 0x0

    .line 356
    .line 357
    cmp-long v8, v2, v4

    .line 358
    .line 359
    if-lez v8, :cond_e

    .line 360
    .line 361
    new-instance v0, Ljava/net/ProtocolException;

    .line 362
    .line 363
    const-string v2, "HTTP "

    .line 364
    .line 365
    const-string v3, " had non-zero Content-Length: "

    .line 366
    .line 367
    invoke-static {v2, v11, v3}, Landroidx/appcompat/widget/v;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    if-eqz v1, :cond_d

    .line 372
    .line 373
    invoke-virtual {v1}, Lrc/d0;->a()J

    .line 374
    .line 375
    .line 376
    move-result-wide v3

    .line 377
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    :cond_d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw v0

    .line 392
    :cond_e
    return-object v0

    .line 393
    :catch_1
    move-exception v0

    .line 394
    invoke-virtual {v2, v0}, Lvc/c;->c(Ljava/io/IOException;)V

    .line 395
    .line 396
    .line 397
    throw v0

    .line 398
    :catch_2
    move-exception v0

    .line 399
    move-object/from16 v7, p0

    .line 400
    .line 401
    move-object v1, v0

    .line 402
    invoke-virtual {v2, v1}, Lvc/c;->c(Ljava/io/IOException;)V

    .line 403
    .line 404
    .line 405
    throw v1

    .line 406
    :catch_3
    move-exception v0

    .line 407
    move-object/from16 v7, p0

    .line 408
    .line 409
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2, v0}, Lvc/c;->c(Ljava/io/IOException;)V

    .line 416
    .line 417
    .line 418
    throw v0
.end method
