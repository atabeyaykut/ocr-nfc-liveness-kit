.class public final Ltc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltc/a$a;
    }
.end annotation


# static fields
.field public static final a:Ltc/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltc/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Ltc/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ltc/a;->a:Ltc/a$a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lwc/f;)Lrc/b0;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lwc/f;->f:Lrc/x;

    .line 7
    .line 8
    const-string v2, "request"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Ltc/b;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v3, v1, v4}, Ltc/b;-><init>(Lrc/x;Lrc/b0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lrc/x;->a()Lrc/c;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-boolean v5, v5, Lrc/c;->j:Z

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    new-instance v3, Ltc/b;

    .line 28
    .line 29
    invoke-direct {v3, v4, v4}, Ltc/b;-><init>(Lrc/x;Lrc/b0;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v5, v0, Lwc/f;->b:Lvc/e;

    .line 33
    .line 34
    instance-of v6, v5, Lvc/e;

    .line 35
    .line 36
    if-nez v6, :cond_1

    .line 37
    .line 38
    move-object v6, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v6, v5

    .line 41
    :goto_0
    if-eqz v6, :cond_2

    .line 42
    .line 43
    iget-object v6, v6, Lvc/e;->b:Lrc/n;

    .line 44
    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    sget-object v6, Lrc/n;->a:Lrc/n$a;

    .line 49
    .line 50
    :goto_1
    const-string v7, "call"

    .line 51
    .line 52
    iget-object v8, v3, Ltc/b;->a:Lrc/x;

    .line 53
    .line 54
    iget-object v3, v3, Ltc/b;->b:Lrc/b0;

    .line 55
    .line 56
    if-nez v8, :cond_3

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    new-instance v0, Lrc/b0$a;

    .line 61
    .line 62
    invoke-direct {v0}, Lrc/b0$a;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, v0, Lrc/b0$a;->a:Lrc/x;

    .line 69
    .line 70
    sget-object v1, Lrc/w;->c:Lrc/w;

    .line 71
    .line 72
    iput-object v1, v0, Lrc/b0$a;->b:Lrc/w;

    .line 73
    .line 74
    const/16 v1, 0x1f8

    .line 75
    .line 76
    iput v1, v0, Lrc/b0$a;->c:I

    .line 77
    .line 78
    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 79
    .line 80
    iput-object v1, v0, Lrc/b0$a;->d:Ljava/lang/String;

    .line 81
    .line 82
    sget-object v1, Lsc/c;->c:Lrc/c0;

    .line 83
    .line 84
    iput-object v1, v0, Lrc/b0$a;->g:Lrc/d0;

    .line 85
    .line 86
    const-wide/16 v1, -0x1

    .line 87
    .line 88
    iput-wide v1, v0, Lrc/b0$a;->k:J

    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    iput-wide v1, v0, Lrc/b0$a;->l:J

    .line 95
    .line 96
    invoke-virtual {v0}, Lrc/b0$a;->a()Lrc/b0;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {v5, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_3
    const-string v1, "cacheResponse"

    .line 108
    .line 109
    sget-object v2, Ltc/a;->a:Ltc/a$a;

    .line 110
    .line 111
    if-nez v8, :cond_4

    .line 112
    .line 113
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lrc/b0$a;

    .line 117
    .line 118
    invoke-direct {v0, v3}, Lrc/b0$a;-><init>(Lrc/b0;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v2, v3}, Ltc/a$a;->a(Ltc/a$a;Lrc/b0;)Lrc/b0;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v1, v2}, Lrc/b0$a;->b(Ljava/lang/String;Lrc/b0;)V

    .line 126
    .line 127
    .line 128
    iput-object v2, v0, Lrc/b0$a;->i:Lrc/b0;

    .line 129
    .line 130
    invoke-virtual {v0}, Lrc/b0$a;->a()Lrc/b0;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {v5, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_4
    if-eqz v3, :cond_5

    .line 142
    .line 143
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-static {v5, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    :try_start_0
    invoke-virtual {v0, v8}, Lwc/f;->c(Lrc/x;)Lrc/b0;

    .line 150
    .line 151
    .line 152
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    const-string v5, "networkResponse"

    .line 154
    .line 155
    if-eqz v3, :cond_12

    .line 156
    .line 157
    const/16 v6, 0x130

    .line 158
    .line 159
    iget v7, v0, Lrc/b0;->e:I

    .line 160
    .line 161
    if-ne v7, v6, :cond_11

    .line 162
    .line 163
    new-instance v6, Lrc/b0$a;

    .line 164
    .line 165
    invoke-direct {v6, v3}, Lrc/b0$a;-><init>(Lrc/b0;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    new-instance v7, Lrc/q$a;

    .line 172
    .line 173
    invoke-direct {v7}, Lrc/q$a;-><init>()V

    .line 174
    .line 175
    .line 176
    iget-object v8, v3, Lrc/b0;->g:Lrc/q;

    .line 177
    .line 178
    iget-object v9, v8, Lrc/q;->a:[Ljava/lang/String;

    .line 179
    .line 180
    array-length v9, v9

    .line 181
    div-int/lit8 v9, v9, 0x2

    .line 182
    .line 183
    const/4 v11, 0x0

    .line 184
    :goto_2
    const-string v12, "Content-Type"

    .line 185
    .line 186
    const-string v13, "Content-Encoding"

    .line 187
    .line 188
    const-string v14, "Content-Length"

    .line 189
    .line 190
    iget-object v15, v0, Lrc/b0;->g:Lrc/q;

    .line 191
    .line 192
    if-ge v11, v9, :cond_c

    .line 193
    .line 194
    invoke-virtual {v8, v11}, Lrc/q;->o(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v8, v11}, Lrc/q;->w(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    move-object/from16 v16, v8

    .line 203
    .line 204
    const-string v8, "Warning"

    .line 205
    .line 206
    invoke-static {v8, v4}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-eqz v8, :cond_6

    .line 211
    .line 212
    const-string v8, "1"

    .line 213
    .line 214
    move/from16 v17, v9

    .line 215
    .line 216
    const/4 v9, 0x0

    .line 217
    invoke-static {v10, v8, v9}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    if-eqz v8, :cond_7

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_6
    move/from16 v17, v9

    .line 225
    .line 226
    const/4 v9, 0x0

    .line 227
    :cond_7
    invoke-static {v14, v4}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    if-nez v8, :cond_9

    .line 232
    .line 233
    invoke-static {v13, v4}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    if-nez v8, :cond_9

    .line 238
    .line 239
    invoke-static {v12, v4}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    if-eqz v8, :cond_8

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_8
    const/4 v8, 0x0

    .line 247
    goto :goto_4

    .line 248
    :cond_9
    :goto_3
    const/4 v8, 0x1

    .line 249
    :goto_4
    if-nez v8, :cond_a

    .line 250
    .line 251
    invoke-static {v4}, Ltc/a$a;->b(Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    if-eqz v8, :cond_a

    .line 256
    .line 257
    invoke-virtual {v15, v4}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    if-nez v8, :cond_b

    .line 262
    .line 263
    :cond_a
    invoke-virtual {v7, v4, v10}, Lrc/q$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :cond_b
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 267
    .line 268
    move-object/from16 v8, v16

    .line 269
    .line 270
    move/from16 v9, v17

    .line 271
    .line 272
    const/4 v4, 0x0

    .line 273
    goto :goto_2

    .line 274
    :cond_c
    const/4 v9, 0x0

    .line 275
    iget-object v4, v15, Lrc/q;->a:[Ljava/lang/String;

    .line 276
    .line 277
    array-length v4, v4

    .line 278
    div-int/lit8 v4, v4, 0x2

    .line 279
    .line 280
    const/4 v8, 0x0

    .line 281
    :goto_6
    if-ge v8, v4, :cond_10

    .line 282
    .line 283
    invoke-virtual {v15, v8}, Lrc/q;->o(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    invoke-static {v14, v10}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    if-nez v11, :cond_e

    .line 292
    .line 293
    invoke-static {v13, v10}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result v11

    .line 297
    if-nez v11, :cond_e

    .line 298
    .line 299
    invoke-static {v12, v10}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result v11

    .line 303
    if-eqz v11, :cond_d

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_d
    const/4 v11, 0x0

    .line 307
    goto :goto_8

    .line 308
    :cond_e
    :goto_7
    const/4 v11, 0x1

    .line 309
    :goto_8
    if-nez v11, :cond_f

    .line 310
    .line 311
    invoke-static {v10}, Ltc/a$a;->b(Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    move-result v11

    .line 315
    if-eqz v11, :cond_f

    .line 316
    .line 317
    invoke-virtual {v15, v8}, Lrc/q;->w(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    invoke-virtual {v7, v10, v11}, Lrc/q$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    :cond_f
    add-int/lit8 v8, v8, 0x1

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_10
    invoke-virtual {v7}, Lrc/q$a;->c()Lrc/q;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-virtual {v4}, Lrc/q;->u()Lrc/q$a;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    iput-object v4, v6, Lrc/b0$a;->f:Lrc/q$a;

    .line 336
    .line 337
    iget-wide v7, v0, Lrc/b0;->m:J

    .line 338
    .line 339
    iput-wide v7, v6, Lrc/b0$a;->k:J

    .line 340
    .line 341
    iget-wide v7, v0, Lrc/b0;->n:J

    .line 342
    .line 343
    iput-wide v7, v6, Lrc/b0$a;->l:J

    .line 344
    .line 345
    invoke-static {v2, v3}, Ltc/a$a;->a(Ltc/a$a;Lrc/b0;)Lrc/b0;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-static {v1, v3}, Lrc/b0$a;->b(Ljava/lang/String;Lrc/b0;)V

    .line 350
    .line 351
    .line 352
    iput-object v3, v6, Lrc/b0$a;->i:Lrc/b0;

    .line 353
    .line 354
    invoke-static {v2, v0}, Ltc/a$a;->a(Ltc/a$a;Lrc/b0;)Lrc/b0;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-static {v5, v1}, Lrc/b0$a;->b(Ljava/lang/String;Lrc/b0;)V

    .line 359
    .line 360
    .line 361
    iput-object v1, v6, Lrc/b0$a;->h:Lrc/b0;

    .line 362
    .line 363
    invoke-virtual {v6}, Lrc/b0$a;->a()Lrc/b0;

    .line 364
    .line 365
    .line 366
    iget-object v0, v0, Lrc/b0;->h:Lrc/d0;

    .line 367
    .line 368
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0}, Lrc/d0;->close()V

    .line 372
    .line 373
    .line 374
    const/4 v0, 0x0

    .line 375
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    throw v0

    .line 379
    :cond_11
    iget-object v4, v3, Lrc/b0;->h:Lrc/d0;

    .line 380
    .line 381
    if-eqz v4, :cond_12

    .line 382
    .line 383
    invoke-static {v4}, Lsc/c;->c(Ljava/io/Closeable;)V

    .line 384
    .line 385
    .line 386
    :cond_12
    new-instance v4, Lrc/b0$a;

    .line 387
    .line 388
    invoke-direct {v4, v0}, Lrc/b0$a;-><init>(Lrc/b0;)V

    .line 389
    .line 390
    .line 391
    invoke-static {v2, v3}, Ltc/a$a;->a(Ltc/a$a;Lrc/b0;)Lrc/b0;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    invoke-static {v1, v3}, Lrc/b0$a;->b(Ljava/lang/String;Lrc/b0;)V

    .line 396
    .line 397
    .line 398
    iput-object v3, v4, Lrc/b0$a;->i:Lrc/b0;

    .line 399
    .line 400
    invoke-static {v2, v0}, Ltc/a$a;->a(Ltc/a$a;Lrc/b0;)Lrc/b0;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {v5, v0}, Lrc/b0$a;->b(Ljava/lang/String;Lrc/b0;)V

    .line 405
    .line 406
    .line 407
    iput-object v0, v4, Lrc/b0$a;->h:Lrc/b0;

    .line 408
    .line 409
    invoke-virtual {v4}, Lrc/b0$a;->a()Lrc/b0;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    return-object v0

    .line 414
    :catchall_0
    move-exception v0

    .line 415
    move-object v1, v0

    .line 416
    throw v1
.end method
