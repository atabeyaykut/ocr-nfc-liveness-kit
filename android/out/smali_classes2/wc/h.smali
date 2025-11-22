.class public final Lwc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc/s;


# instance fields
.field public final a:Lrc/v;


# direct methods
.method public constructor <init>(Lrc/v;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc/h;->a:Lrc/v;

    return-void
.end method

.method public static d(Lrc/b0;I)I
    .locals 1

    .line 1
    const-string v0, "Retry-After"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lrc/b0;->b(Lrc/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    const-string p1, "\\d+"

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "compile(pattern)"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "Integer.valueOf(header)"

    .line 35
    .line 36
    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_0
    const p0, 0x7fffffff

    .line 45
    .line 46
    .line 47
    return p0

    .line 48
    :cond_1
    return p1
.end method


# virtual methods
.method public final a(Lwc/f;)Lrc/b0;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v0, v2, Lwc/f;->f:Lrc/x;

    .line 6
    .line 7
    iget-object v3, v2, Lwc/f;->b:Lvc/e;

    .line 8
    .line 9
    sget-object v4, Lm9/v;->a:Lm9/v;

    .line 10
    .line 11
    const/4 v7, 0x1

    .line 12
    move-object v8, v4

    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v10, 0x0

    .line 15
    move-object v4, v0

    .line 16
    const/4 v0, 0x1

    .line 17
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v11, "request"

    .line 21
    .line 22
    invoke-static {v4, v11}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v11, v3, Lvc/e;->j:Lvc/c;

    .line 26
    .line 27
    if-nez v11, :cond_0

    .line 28
    .line 29
    const/4 v11, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v11, 0x0

    .line 32
    :goto_1
    if-eqz v11, :cond_12

    .line 33
    .line 34
    monitor-enter v3

    .line 35
    :try_start_0
    iget-boolean v11, v3, Lvc/e;->l:Z

    .line 36
    .line 37
    xor-int/2addr v11, v7

    .line 38
    if-eqz v11, :cond_11

    .line 39
    .line 40
    iget-boolean v11, v3, Lvc/e;->k:Z

    .line 41
    .line 42
    xor-int/2addr v11, v7

    .line 43
    if-eqz v11, :cond_10

    .line 44
    .line 45
    sget-object v11, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    .line 47
    monitor-exit v3

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    new-instance v0, Lvc/d;

    .line 51
    .line 52
    iget-object v11, v3, Lvc/e;->a:Lvc/k;

    .line 53
    .line 54
    iget-object v12, v4, Lrc/x;->b:Lrc/r;

    .line 55
    .line 56
    iget-boolean v13, v12, Lrc/r;->a:Z

    .line 57
    .line 58
    iget-object v14, v3, Lvc/e;->r:Lrc/v;

    .line 59
    .line 60
    if-eqz v13, :cond_2

    .line 61
    .line 62
    iget-object v13, v14, Lrc/v;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 63
    .line 64
    if-eqz v13, :cond_1

    .line 65
    .line 66
    iget-object v15, v14, Lrc/v;->v:Ljavax/net/ssl/HostnameVerifier;

    .line 67
    .line 68
    iget-object v6, v14, Lrc/v;->w:Lrc/f;

    .line 69
    .line 70
    move-object/from16 v23, v6

    .line 71
    .line 72
    move-object/from16 v21, v13

    .line 73
    .line 74
    move-object/from16 v22, v15

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v2, "CLEARTEXT-only client"

    .line 80
    .line 81
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_2
    const/16 v21, 0x0

    .line 86
    .line 87
    const/16 v22, 0x0

    .line 88
    .line 89
    const/16 v23, 0x0

    .line 90
    .line 91
    :goto_2
    new-instance v6, Lrc/a;

    .line 92
    .line 93
    iget-object v13, v12, Lrc/r;->e:Ljava/lang/String;

    .line 94
    .line 95
    iget v12, v12, Lrc/r;->f:I

    .line 96
    .line 97
    iget-object v15, v14, Lrc/v;->l:Lrc/m;

    .line 98
    .line 99
    iget-object v7, v14, Lrc/v;->p:Ljavax/net/SocketFactory;

    .line 100
    .line 101
    iget-object v5, v14, Lrc/v;->n:Lrc/b;

    .line 102
    .line 103
    move-object/from16 v28, v8

    .line 104
    .line 105
    iget-object v8, v14, Lrc/v;->t:Ljava/util/List;

    .line 106
    .line 107
    move/from16 v29, v9

    .line 108
    .line 109
    iget-object v9, v14, Lrc/v;->s:Ljava/util/List;

    .line 110
    .line 111
    iget-object v14, v14, Lrc/v;->m:Ljava/net/ProxySelector;

    .line 112
    .line 113
    move-object/from16 v16, v6

    .line 114
    .line 115
    move-object/from16 v17, v13

    .line 116
    .line 117
    move/from16 v18, v12

    .line 118
    .line 119
    move-object/from16 v19, v15

    .line 120
    .line 121
    move-object/from16 v20, v7

    .line 122
    .line 123
    move-object/from16 v24, v5

    .line 124
    .line 125
    move-object/from16 v25, v8

    .line 126
    .line 127
    move-object/from16 v26, v9

    .line 128
    .line 129
    move-object/from16 v27, v14

    .line 130
    .line 131
    invoke-direct/range {v16 .. v27}, Lrc/a;-><init>(Ljava/lang/String;ILrc/m;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lrc/f;Lrc/b;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 132
    .line 133
    .line 134
    iget-object v5, v3, Lvc/e;->b:Lrc/n;

    .line 135
    .line 136
    invoke-direct {v0, v11, v6, v3, v5}, Lvc/d;-><init>(Lvc/k;Lrc/a;Lvc/e;Lrc/n;)V

    .line 137
    .line 138
    .line 139
    iput-object v0, v3, Lvc/e;->f:Lvc/d;

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_3
    move-object/from16 v28, v8

    .line 143
    .line 144
    move/from16 v29, v9

    .line 145
    .line 146
    :goto_3
    :try_start_1
    iget-boolean v0, v3, Lvc/e;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    if-nez v0, :cond_f

    .line 149
    .line 150
    :try_start_2
    invoke-virtual {v2, v4}, Lwc/f;->c(Lrc/x;)Lrc/b0;

    .line 151
    .line 152
    .line 153
    move-result-object v0
    :try_end_2
    .catch Lvc/l; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    if-eqz v10, :cond_6

    .line 155
    .line 156
    :try_start_3
    new-instance v4, Lrc/b0$a;

    .line 157
    .line 158
    invoke-direct {v4, v0}, Lrc/b0$a;-><init>(Lrc/b0;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Lrc/b0$a;

    .line 162
    .line 163
    invoke-direct {v0, v10}, Lrc/b0$a;-><init>(Lrc/b0;)V

    .line 164
    .line 165
    .line 166
    const/4 v5, 0x0

    .line 167
    iput-object v5, v0, Lrc/b0$a;->g:Lrc/d0;

    .line 168
    .line 169
    invoke-virtual {v0}, Lrc/b0$a;->a()Lrc/b0;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v6, v0, Lrc/b0;->h:Lrc/d0;

    .line 174
    .line 175
    if-nez v6, :cond_4

    .line 176
    .line 177
    const/4 v6, 0x1

    .line 178
    goto :goto_4

    .line 179
    :cond_4
    const/4 v6, 0x0

    .line 180
    :goto_4
    if-eqz v6, :cond_5

    .line 181
    .line 182
    iput-object v0, v4, Lrc/b0$a;->j:Lrc/b0;

    .line 183
    .line 184
    invoke-virtual {v4}, Lrc/b0$a;->a()Lrc/b0;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    goto :goto_5

    .line 189
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 190
    .line 191
    const-string v2, "priorResponse.body != null"

    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v0

    .line 201
    :cond_6
    const/4 v5, 0x0

    .line 202
    :goto_5
    move-object v10, v0

    .line 203
    iget-object v0, v3, Lvc/e;->j:Lvc/c;

    .line 204
    .line 205
    invoke-virtual {v1, v10, v0}, Lwc/h;->b(Lrc/b0;Lvc/c;)Lrc/x;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    if-nez v4, :cond_9

    .line 210
    .line 211
    if-eqz v0, :cond_8

    .line 212
    .line 213
    iget-boolean v0, v0, Lvc/c;->a:Z

    .line 214
    .line 215
    if-eqz v0, :cond_8

    .line 216
    .line 217
    iget-boolean v0, v3, Lvc/e;->h:Z

    .line 218
    .line 219
    const/4 v2, 0x1

    .line 220
    xor-int/2addr v0, v2

    .line 221
    if-eqz v0, :cond_7

    .line 222
    .line 223
    iput-boolean v2, v3, Lvc/e;->h:Z

    .line 224
    .line 225
    iget-object v0, v3, Lvc/e;->c:Lvc/e$c;

    .line 226
    .line 227
    invoke-virtual {v0}, Led/a;->i()Z

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 232
    .line 233
    const-string v2, "Check failed."

    .line 234
    .line 235
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    :cond_8
    :goto_6
    const/4 v2, 0x0

    .line 244
    invoke-virtual {v3, v2}, Lvc/e;->e(Z)V

    .line 245
    .line 246
    .line 247
    return-object v10

    .line 248
    :cond_9
    :try_start_4
    iget-object v0, v10, Lrc/b0;->h:Lrc/d0;

    .line 249
    .line 250
    if-eqz v0, :cond_a

    .line 251
    .line 252
    invoke-static {v0}, Lsc/c;->c(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 253
    .line 254
    .line 255
    :cond_a
    add-int/lit8 v9, v29, 0x1

    .line 256
    .line 257
    const/16 v0, 0x14

    .line 258
    .line 259
    if-gt v9, v0, :cond_b

    .line 260
    .line 261
    const/4 v6, 0x1

    .line 262
    invoke-virtual {v3, v6}, Lvc/e;->e(Z)V

    .line 263
    .line 264
    .line 265
    const/4 v0, 0x1

    .line 266
    const/4 v8, 0x0

    .line 267
    goto :goto_9

    .line 268
    :cond_b
    :try_start_5
    new-instance v0, Ljava/net/ProtocolException;

    .line 269
    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v4, "Too many follow-up requests: "

    .line 276
    .line 277
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    const/4 v5, 0x0

    .line 293
    move-object v6, v0

    .line 294
    nop

    .line 295
    instance-of v0, v6, Lyc/a;

    .line 296
    .line 297
    if-nez v0, :cond_c

    .line 298
    .line 299
    const/4 v0, 0x1

    .line 300
    goto :goto_7

    .line 301
    :cond_c
    const/4 v0, 0x0

    .line 302
    :goto_7
    invoke-virtual {v1, v6, v3, v4, v0}, Lwc/h;->c(Ljava/io/IOException;Lvc/e;Lrc/x;Z)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_d

    .line 307
    .line 308
    move-object/from16 v8, v28

    .line 309
    .line 310
    check-cast v8, Ljava/util/Collection;

    .line 311
    .line 312
    invoke-static {v6, v8}, Lm9/t;->n1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    const/4 v6, 0x1

    .line 317
    const/4 v8, 0x0

    .line 318
    goto :goto_8

    .line 319
    :cond_d
    move-object/from16 v7, v28

    .line 320
    .line 321
    invoke-static {v6, v7}, Lsc/c;->y(Ljava/io/IOException;Ljava/util/List;)V

    .line 322
    .line 323
    .line 324
    throw v6

    .line 325
    :catch_1
    move-exception v0

    .line 326
    move-object/from16 v7, v28

    .line 327
    .line 328
    const/4 v5, 0x0

    .line 329
    move-object v6, v0

    .line 330
    iget-object v0, v6, Lvc/l;->a:Ljava/io/IOException;

    .line 331
    .line 332
    const/4 v8, 0x0

    .line 333
    invoke-virtual {v1, v0, v3, v4, v8}, Lwc/h;->c(Ljava/io/IOException;Lvc/e;Lrc/x;Z)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_e

    .line 338
    .line 339
    move-object v0, v7

    .line 340
    check-cast v0, Ljava/util/Collection;

    .line 341
    .line 342
    iget-object v6, v6, Lvc/l;->b:Ljava/io/IOException;

    .line 343
    .line 344
    invoke-static {v6, v0}, Lm9/t;->n1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 345
    .line 346
    .line 347
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 348
    const/4 v6, 0x1

    .line 349
    :goto_8
    invoke-virtual {v3, v6}, Lvc/e;->e(Z)V

    .line 350
    .line 351
    .line 352
    move-object/from16 v28, v0

    .line 353
    .line 354
    move/from16 v9, v29

    .line 355
    .line 356
    const/4 v0, 0x0

    .line 357
    :goto_9
    move-object/from16 v8, v28

    .line 358
    .line 359
    const/4 v7, 0x1

    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :cond_e
    :try_start_6
    iget-object v0, v6, Lvc/l;->b:Ljava/io/IOException;

    .line 363
    .line 364
    invoke-static {v0, v7}, Lsc/c;->y(Ljava/io/IOException;Ljava/util/List;)V

    .line 365
    .line 366
    .line 367
    throw v0

    .line 368
    :cond_f
    new-instance v0, Ljava/io/IOException;

    .line 369
    .line 370
    const-string v2, "Canceled"

    .line 371
    .line 372
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 376
    :catchall_0
    move-exception v0

    .line 377
    const/4 v2, 0x1

    .line 378
    invoke-virtual {v3, v2}, Lvc/e;->e(Z)V

    .line 379
    .line 380
    .line 381
    throw v0

    .line 382
    :cond_10
    :try_start_7
    const-string v0, "Check failed."

    .line 383
    .line 384
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    throw v2

    .line 394
    :cond_11
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 395
    .line 396
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 406
    :catchall_1
    move-exception v0

    .line 407
    monitor-exit v3

    .line 408
    throw v0

    .line 409
    :cond_12
    const-string v0, "Check failed."

    .line 410
    .line 411
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v2
.end method

.method public final b(Lrc/b0;Lvc/c;)Lrc/x;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object v1, p2, Lvc/c;->b:Lvc/i;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lvc/i;->q:Lrc/e0;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    iget v2, p1, Lrc/b0;->e:I

    .line 13
    .line 14
    iget-object v3, p1, Lrc/b0;->b:Lrc/x;

    .line 15
    .line 16
    iget-object v3, v3, Lrc/x;->c:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    const/16 v6, 0x134

    .line 21
    .line 22
    const/16 v7, 0x133

    .line 23
    .line 24
    if-eq v2, v7, :cond_e

    .line 25
    .line 26
    if-eq v2, v6, :cond_e

    .line 27
    .line 28
    const/16 v8, 0x191

    .line 29
    .line 30
    if-eq v2, v8, :cond_d

    .line 31
    .line 32
    const/16 v8, 0x1a5

    .line 33
    .line 34
    if-eq v2, v8, :cond_a

    .line 35
    .line 36
    const/16 p2, 0x1f7

    .line 37
    .line 38
    if-eq v2, p2, :cond_7

    .line 39
    .line 40
    const/16 p2, 0x197

    .line 41
    .line 42
    if-eq v2, p2, :cond_5

    .line 43
    .line 44
    const/16 p2, 0x198

    .line 45
    .line 46
    if-eq v2, p2, :cond_1

    .line 47
    .line 48
    packed-switch v2, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_1
    iget-object v1, p0, Lwc/h;->a:Lrc/v;

    .line 53
    .line 54
    iget-boolean v1, v1, Lrc/v;->f:Z

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    iget-object v1, p1, Lrc/b0;->l:Lrc/b0;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget v1, v1, Lrc/b0;->e:I

    .line 64
    .line 65
    if-ne v1, p2, :cond_3

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_3
    invoke-static {p1, v5}, Lwc/h;->d(Lrc/b0;I)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-lez p2, :cond_4

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_4
    iget-object p1, p1, Lrc/b0;->b:Lrc/x;

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, v1, Lrc/e0;->b:Ljava/net/Proxy;

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 88
    .line 89
    if-ne p2, v2, :cond_6

    .line 90
    .line 91
    iget-object p2, p0, Lwc/h;->a:Lrc/v;

    .line 92
    .line 93
    iget-object p2, p2, Lrc/v;->n:Lrc/b;

    .line 94
    .line 95
    :goto_1
    invoke-interface {p2, v1, p1}, Lrc/b;->b(Lrc/e0;Lrc/b0;)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    .line 100
    .line 101
    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_7
    iget-object v1, p1, Lrc/b0;->l:Lrc/b0;

    .line 108
    .line 109
    if-eqz v1, :cond_8

    .line 110
    .line 111
    iget v1, v1, Lrc/b0;->e:I

    .line 112
    .line 113
    if-ne v1, p2, :cond_8

    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_8
    const p2, 0x7fffffff

    .line 117
    .line 118
    .line 119
    invoke-static {p1, p2}, Lwc/h;->d(Lrc/b0;I)I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-nez p2, :cond_9

    .line 124
    .line 125
    iget-object p1, p1, Lrc/b0;->b:Lrc/x;

    .line 126
    .line 127
    return-object p1

    .line 128
    :cond_9
    return-object v0

    .line 129
    :cond_a
    if-eqz p2, :cond_c

    .line 130
    .line 131
    iget-object v1, p2, Lvc/c;->e:Lvc/d;

    .line 132
    .line 133
    iget-object v1, v1, Lvc/d;->h:Lrc/a;

    .line 134
    .line 135
    iget-object v1, v1, Lrc/a;->a:Lrc/r;

    .line 136
    .line 137
    iget-object v1, v1, Lrc/r;->e:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v2, p2, Lvc/c;->b:Lvc/i;

    .line 140
    .line 141
    iget-object v2, v2, Lvc/i;->q:Lrc/e0;

    .line 142
    .line 143
    iget-object v2, v2, Lrc/e0;->a:Lrc/a;

    .line 144
    .line 145
    iget-object v2, v2, Lrc/a;->a:Lrc/r;

    .line 146
    .line 147
    iget-object v2, v2, Lrc/r;->e:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    xor-int/2addr v1, v4

    .line 154
    if-nez v1, :cond_b

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_b
    iget-object p2, p2, Lvc/c;->b:Lvc/i;

    .line 158
    .line 159
    monitor-enter p2

    .line 160
    :try_start_0
    iput-boolean v4, p2, Lvc/i;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    monitor-exit p2

    .line 163
    iget-object p1, p1, Lrc/b0;->b:Lrc/x;

    .line 164
    .line 165
    return-object p1

    .line 166
    :catchall_0
    move-exception p1

    .line 167
    monitor-exit p2

    .line 168
    throw p1

    .line 169
    :cond_c
    :goto_2
    return-object v0

    .line 170
    :cond_d
    iget-object p2, p0, Lwc/h;->a:Lrc/v;

    .line 171
    .line 172
    iget-object p2, p2, Lrc/v;->g:Lrc/b;

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_e
    :pswitch_0
    iget-object p2, p0, Lwc/h;->a:Lrc/v;

    .line 176
    .line 177
    iget-boolean v1, p2, Lrc/v;->h:Z

    .line 178
    .line 179
    if-nez v1, :cond_f

    .line 180
    .line 181
    goto/16 :goto_6

    .line 182
    .line 183
    :cond_f
    const-string v1, "Location"

    .line 184
    .line 185
    invoke-static {p1, v1}, Lrc/b0;->b(Lrc/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_18

    .line 190
    .line 191
    iget-object v2, p1, Lrc/b0;->b:Lrc/x;

    .line 192
    .line 193
    iget-object v8, v2, Lrc/x;->b:Lrc/r;

    .line 194
    .line 195
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    :try_start_1
    new-instance v9, Lrc/r$a;

    .line 199
    .line 200
    invoke-direct {v9}, Lrc/r$a;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v9, v8, v1}, Lrc/r$a;->c(Lrc/r;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :catch_0
    nop

    .line 208
    move-object v9, v0

    .line 209
    :goto_3
    if-eqz v9, :cond_10

    .line 210
    .line 211
    invoke-virtual {v9}, Lrc/r$a;->a()Lrc/r;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    goto :goto_4

    .line 216
    :cond_10
    move-object v1, v0

    .line 217
    :goto_4
    if-eqz v1, :cond_18

    .line 218
    .line 219
    iget-object v8, v2, Lrc/x;->b:Lrc/r;

    .line 220
    .line 221
    iget-object v8, v8, Lrc/r;->b:Ljava/lang/String;

    .line 222
    .line 223
    iget-object v9, v1, Lrc/r;->b:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v9, v8}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-nez v8, :cond_11

    .line 230
    .line 231
    iget-boolean p2, p2, Lrc/v;->j:Z

    .line 232
    .line 233
    if-nez p2, :cond_11

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_11
    new-instance p2, Lrc/x$a;

    .line 237
    .line 238
    invoke-direct {p2, v2}, Lrc/x$a;-><init>(Lrc/x;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v3}, La0/b;->o(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-eqz v8, :cond_16

    .line 246
    .line 247
    const-string v8, "PROPFIND"

    .line 248
    .line 249
    invoke-static {v3, v8}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    iget p1, p1, Lrc/b0;->e:I

    .line 254
    .line 255
    if-nez v9, :cond_12

    .line 256
    .line 257
    if-eq p1, v6, :cond_12

    .line 258
    .line 259
    if-ne p1, v7, :cond_13

    .line 260
    .line 261
    :cond_12
    const/4 v5, 0x1

    .line 262
    :cond_13
    invoke-static {v3, v8}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    xor-int/2addr v4, v8

    .line 267
    if-eqz v4, :cond_14

    .line 268
    .line 269
    if-eq p1, v6, :cond_14

    .line 270
    .line 271
    if-eq p1, v7, :cond_14

    .line 272
    .line 273
    const-string v3, "GET"

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_14
    if-eqz v5, :cond_15

    .line 277
    .line 278
    iget-object v0, v2, Lrc/x;->e:Lrc/a0;

    .line 279
    .line 280
    :cond_15
    :goto_5
    invoke-virtual {p2, v3, v0}, Lrc/x$a;->d(Ljava/lang/String;Lrc/a0;)V

    .line 281
    .line 282
    .line 283
    if-nez v5, :cond_16

    .line 284
    .line 285
    const-string p1, "Transfer-Encoding"

    .line 286
    .line 287
    iget-object v0, p2, Lrc/x$a;->c:Lrc/q$a;

    .line 288
    .line 289
    invoke-virtual {v0, p1}, Lrc/q$a;->d(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const-string p1, "Content-Length"

    .line 293
    .line 294
    iget-object v0, p2, Lrc/x$a;->c:Lrc/q$a;

    .line 295
    .line 296
    invoke-virtual {v0, p1}, Lrc/q$a;->d(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string p1, "Content-Type"

    .line 300
    .line 301
    iget-object v0, p2, Lrc/x$a;->c:Lrc/q$a;

    .line 302
    .line 303
    invoke-virtual {v0, p1}, Lrc/q$a;->d(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_16
    iget-object p1, v2, Lrc/x;->b:Lrc/r;

    .line 307
    .line 308
    invoke-static {p1, v1}, Lsc/c;->a(Lrc/r;Lrc/r;)Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-nez p1, :cond_17

    .line 313
    .line 314
    const-string p1, "Authorization"

    .line 315
    .line 316
    iget-object v0, p2, Lrc/x$a;->c:Lrc/q$a;

    .line 317
    .line 318
    invoke-virtual {v0, p1}, Lrc/q$a;->d(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    :cond_17
    iput-object v1, p2, Lrc/x$a;->a:Lrc/r;

    .line 322
    .line 323
    invoke-virtual {p2}, Lrc/x$a;->a()Lrc/x;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    :cond_18
    :goto_6
    return-object v0

    .line 328
    nop

    .line 329
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/io/IOException;Lvc/e;Lrc/x;Z)Z
    .locals 3

    .line 1
    iget-object p3, p0, Lwc/h;->a:Lrc/v;

    .line 2
    .line 3
    iget-boolean p3, p3, Lrc/v;->f:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    if-eqz p4, :cond_1

    .line 10
    .line 11
    instance-of p3, p1, Ljava/io/FileNotFoundException;

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    instance-of p3, p1, Ljava/net/ProtocolException;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz p3, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    instance-of p3, p1, Ljava/io/InterruptedIOException;

    .line 23
    .line 24
    if-eqz p3, :cond_3

    .line 25
    .line 26
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    .line 27
    .line 28
    if-eqz p1, :cond_5

    .line 29
    .line 30
    if-nez p4, :cond_5

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 34
    .line 35
    if-eqz p3, :cond_4

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    instance-of p3, p3, Ljava/security/cert/CertificateException;

    .line 42
    .line 43
    if-eqz p3, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 47
    .line 48
    if-eqz p1, :cond_6

    .line 49
    .line 50
    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 51
    goto :goto_2

    .line 52
    :cond_6
    :goto_1
    const/4 p1, 0x1

    .line 53
    :goto_2
    if-nez p1, :cond_7

    .line 54
    .line 55
    return v0

    .line 56
    :cond_7
    iget-object p1, p2, Lvc/e;->f:Lvc/d;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget p2, p1, Lvc/d;->c:I

    .line 62
    .line 63
    if-nez p2, :cond_8

    .line 64
    .line 65
    iget p3, p1, Lvc/d;->d:I

    .line 66
    .line 67
    if-nez p3, :cond_8

    .line 68
    .line 69
    iget p3, p1, Lvc/d;->e:I

    .line 70
    .line 71
    if-nez p3, :cond_8

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    goto :goto_6

    .line 75
    :cond_8
    iget-object p3, p1, Lvc/d;->f:Lrc/e0;

    .line 76
    .line 77
    if-eqz p3, :cond_9

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_9
    const/4 p3, 0x0

    .line 81
    if-gt p2, v1, :cond_d

    .line 82
    .line 83
    iget p2, p1, Lvc/d;->d:I

    .line 84
    .line 85
    if-gt p2, v1, :cond_d

    .line 86
    .line 87
    iget p2, p1, Lvc/d;->e:I

    .line 88
    .line 89
    if-lez p2, :cond_a

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_a
    iget-object p2, p1, Lvc/d;->i:Lvc/e;

    .line 93
    .line 94
    iget-object p2, p2, Lvc/e;->g:Lvc/i;

    .line 95
    .line 96
    if-eqz p2, :cond_d

    .line 97
    .line 98
    monitor-enter p2

    .line 99
    :try_start_0
    iget p4, p2, Lvc/i;->k:I

    .line 100
    .line 101
    if-eqz p4, :cond_b

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_b
    iget-object p4, p2, Lvc/i;->q:Lrc/e0;

    .line 105
    .line 106
    iget-object p4, p4, Lrc/e0;->a:Lrc/a;

    .line 107
    .line 108
    iget-object p4, p4, Lrc/a;->a:Lrc/r;

    .line 109
    .line 110
    iget-object v2, p1, Lvc/d;->h:Lrc/a;

    .line 111
    .line 112
    iget-object v2, v2, Lrc/a;->a:Lrc/r;

    .line 113
    .line 114
    invoke-static {p4, v2}, Lsc/c;->a(Lrc/r;Lrc/r;)Z

    .line 115
    .line 116
    .line 117
    move-result p4

    .line 118
    if-nez p4, :cond_c

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_c
    iget-object p3, p2, Lvc/i;->q:Lrc/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    :goto_3
    monitor-exit p2

    .line 124
    goto :goto_4

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    monitor-exit p2

    .line 127
    throw p1

    .line 128
    :cond_d
    :goto_4
    if-eqz p3, :cond_e

    .line 129
    .line 130
    iput-object p3, p1, Lvc/d;->f:Lrc/e0;

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_e
    iget-object p2, p1, Lvc/d;->a:Lvc/m$a;

    .line 134
    .line 135
    if-eqz p2, :cond_f

    .line 136
    .line 137
    invoke-virtual {p2}, Lvc/m$a;->a()Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-ne p2, v1, :cond_f

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_f
    iget-object p1, p1, Lvc/d;->b:Lvc/m;

    .line 145
    .line 146
    if-eqz p1, :cond_10

    .line 147
    .line 148
    invoke-virtual {p1}, Lvc/m;->a()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    goto :goto_6

    .line 153
    :cond_10
    :goto_5
    const/4 p1, 0x1

    .line 154
    :goto_6
    if-nez p1, :cond_11

    .line 155
    .line 156
    return v0

    .line 157
    :cond_11
    return v1
.end method
