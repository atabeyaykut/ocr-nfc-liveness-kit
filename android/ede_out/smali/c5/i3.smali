.class public final Lc5/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:[B

.field public final c:Lc5/g3;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lc5/j3;


# direct methods
.method public constructor <init>(Lc5/j3;Ljava/lang/String;Ljava/net/URL;[BLandroidx/collection/ArrayMap;Lc5/g3;)V
    .locals 0

    iput-object p1, p0, Lc5/i3;->f:Lc5/j3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lr3/r;->f(Ljava/lang/String;)V

    iput-object p3, p0, Lc5/i3;->a:Ljava/net/URL;

    iput-object p4, p0, Lc5/i3;->b:[B

    iput-object p6, p0, Lc5/i3;->c:Lc5/g3;

    iput-object p2, p0, Lc5/i3;->d:Ljava/lang/String;

    iput-object p5, p0, Lc5/i3;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lc5/i3;->d:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Error closing HTTP compressed POST connection output stream. appId"

    .line 4
    .line 5
    iget-object v2, p0, Lc5/i3;->f:Lc5/j3;

    .line 6
    .line 7
    iget-object v3, v2, Lc5/x4;->a:Lc5/z4;

    .line 8
    .line 9
    check-cast v3, Lc5/i4;

    .line 10
    .line 11
    iget-object v3, v3, Lc5/i4;->k:Lc5/h4;

    .line 12
    .line 13
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Lc5/h4;->g()V

    .line 17
    .line 18
    .line 19
    iget-object v3, v2, Lc5/x4;->a:Lc5/z4;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    :try_start_0
    iget-object v6, p0, Lc5/i3;->a:Ljava/net/URL;

    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    instance-of v7, v6, Ljava/net/HttpURLConnection;

    .line 30
    .line 31
    if-eqz v7, :cond_4

    .line 32
    .line 33
    check-cast v6, Ljava/net/HttpURLConnection;

    .line 34
    .line 35
    invoke-virtual {v6, v4}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 36
    .line 37
    .line 38
    move-object v7, v3

    .line 39
    check-cast v7, Lc5/i4;

    .line 40
    .line 41
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const v7, 0xea60

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 48
    .line 49
    .line 50
    move-object v7, v3

    .line 51
    check-cast v7, Lc5/i4;

    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const v7, 0xee48

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 63
    .line 64
    .line 65
    const/4 v7, 0x1

    .line 66
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 67
    .line 68
    .line 69
    :try_start_1
    iget-object v8, p0, Lc5/i3;->e:Ljava/util/Map;

    .line 70
    .line 71
    if-eqz v8, :cond_0

    .line 72
    .line 73
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_0

    .line 86
    .line 87
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    check-cast v9, Ljava/util/Map$Entry;

    .line 92
    .line 93
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    check-cast v10, Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    check-cast v9, Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v6, v10, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    iget-object v8, p0, Lc5/i3;->b:[B

    .line 110
    .line 111
    if-eqz v8, :cond_1

    .line 112
    .line 113
    :try_start_2
    iget-object v2, v2, Lc5/i7;->b:Lc5/o7;

    .line 114
    .line 115
    iget-object v2, v2, Lc5/o7;->g:Lc5/q7;

    .line 116
    .line 117
    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v8}, Lc5/q7;->L([B)[B

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    move-object v8, v3

    .line 125
    check-cast v8, Lc5/i4;

    .line 126
    .line 127
    iget-object v8, v8, Lc5/i4;->j:Lc5/e3;

    .line 128
    .line 129
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 130
    .line 131
    .line 132
    iget-object v8, v8, Lc5/e3;->p:Lc5/c3;

    .line 133
    .line 134
    array-length v9, v2

    .line 135
    const-string v10, "Uploading data. size"

    .line 136
    .line 137
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    invoke-virtual {v8, v11, v10}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 145
    .line 146
    .line 147
    const-string v7, "Content-Encoding"

    .line 148
    .line 149
    const-string v8, "gzip"

    .line 150
    .line 151
    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 161
    .line 162
    .line 163
    move-result-object v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 164
    :try_start_3
    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :catchall_0
    move-exception v2

    .line 172
    goto/16 :goto_5

    .line 173
    .line 174
    :catch_0
    move-exception v2

    .line 175
    goto/16 :goto_8

    .line 176
    .line 177
    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 178
    .line 179
    .line 180
    move-result v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 181
    :try_start_5
    invoke-virtual {v6}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 182
    .line 183
    .line 184
    move-result-object v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 185
    :try_start_6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 186
    .line 187
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 191
    .line 192
    .line 193
    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 194
    const/16 v8, 0x400

    .line 195
    .line 196
    :try_start_7
    new-array v8, v8, [B

    .line 197
    .line 198
    :goto_2
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    if-lez v9, :cond_2

    .line 203
    .line 204
    invoke-virtual {v2, v8, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 209
    .line 210
    .line 211
    move-result-object v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 212
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 216
    .line 217
    .line 218
    check-cast v3, Lc5/i4;

    .line 219
    .line 220
    iget-object v0, v3, Lc5/i4;->k:Lc5/h4;

    .line 221
    .line 222
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 223
    .line 224
    .line 225
    new-instance v1, Lc5/h3;

    .line 226
    .line 227
    iget-object v8, p0, Lc5/i3;->d:Ljava/lang/String;

    .line 228
    .line 229
    iget-object v9, p0, Lc5/i3;->c:Lc5/g3;

    .line 230
    .line 231
    const/4 v11, 0x0

    .line 232
    move-object v7, v1

    .line 233
    invoke-direct/range {v7 .. v13}, Lc5/h3;-><init>(Ljava/lang/String;Lc5/g3;ILjava/io/IOException;[BLjava/util/Map;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_b

    .line 237
    .line 238
    :catchall_1
    move-exception v2

    .line 239
    goto :goto_3

    .line 240
    :catchall_2
    move-exception v2

    .line 241
    move-object v7, v5

    .line 242
    :goto_3
    if-eqz v7, :cond_3

    .line 243
    .line 244
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 245
    .line 246
    .line 247
    :cond_3
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 248
    :catchall_3
    move-exception v2

    .line 249
    move v7, v10

    .line 250
    move-object v10, v13

    .line 251
    goto :goto_6

    .line 252
    :catch_1
    move-exception v2

    .line 253
    goto :goto_4

    .line 254
    :catchall_4
    move-exception v2

    .line 255
    move v7, v10

    .line 256
    move-object v10, v5

    .line 257
    goto :goto_6

    .line 258
    :catch_2
    move-exception v2

    .line 259
    move-object v13, v5

    .line 260
    :goto_4
    move-object v12, v2

    .line 261
    move v11, v10

    .line 262
    move-object v14, v13

    .line 263
    goto :goto_9

    .line 264
    :catchall_5
    move-exception v2

    .line 265
    move-object v7, v5

    .line 266
    goto :goto_5

    .line 267
    :catch_3
    move-exception v2

    .line 268
    move-object v7, v5

    .line 269
    goto :goto_8

    .line 270
    :cond_4
    :try_start_a
    new-instance v2, Ljava/io/IOException;

    .line 271
    .line 272
    const-string v6, "Failed to obtain HTTP connection"

    .line 273
    .line 274
    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 278
    :catchall_6
    move-exception v2

    .line 279
    move-object v6, v5

    .line 280
    move-object v7, v6

    .line 281
    :goto_5
    move-object v10, v5

    .line 282
    move-object v5, v7

    .line 283
    const/4 v7, 0x0

    .line 284
    :goto_6
    if-eqz v5, :cond_5

    .line 285
    .line 286
    :try_start_b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 287
    .line 288
    .line 289
    goto :goto_7

    .line 290
    :catch_4
    move-exception v4

    .line 291
    move-object v5, v3

    .line 292
    check-cast v5, Lc5/i4;

    .line 293
    .line 294
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 295
    .line 296
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 297
    .line 298
    .line 299
    invoke-static {v0}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iget-object v5, v5, Lc5/e3;->f:Lc5/c3;

    .line 304
    .line 305
    invoke-virtual {v5, v0, v1, v4}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    :cond_5
    :goto_7
    if-eqz v6, :cond_6

    .line 309
    .line 310
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 311
    .line 312
    .line 313
    :cond_6
    check-cast v3, Lc5/i4;

    .line 314
    .line 315
    iget-object v0, v3, Lc5/i4;->k:Lc5/h4;

    .line 316
    .line 317
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 318
    .line 319
    .line 320
    new-instance v1, Lc5/h3;

    .line 321
    .line 322
    iget-object v5, p0, Lc5/i3;->d:Ljava/lang/String;

    .line 323
    .line 324
    iget-object v6, p0, Lc5/i3;->c:Lc5/g3;

    .line 325
    .line 326
    const/4 v8, 0x0

    .line 327
    const/4 v9, 0x0

    .line 328
    move-object v4, v1

    .line 329
    invoke-direct/range {v4 .. v10}, Lc5/h3;-><init>(Ljava/lang/String;Lc5/g3;ILjava/io/IOException;[BLjava/util/Map;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 333
    .line 334
    .line 335
    throw v2

    .line 336
    :catch_5
    move-exception v2

    .line 337
    move-object v6, v5

    .line 338
    move-object v7, v6

    .line 339
    :goto_8
    move-object v12, v2

    .line 340
    move-object v14, v5

    .line 341
    move-object v5, v7

    .line 342
    const/4 v11, 0x0

    .line 343
    :goto_9
    if-eqz v5, :cond_7

    .line 344
    .line 345
    :try_start_c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 346
    .line 347
    .line 348
    goto :goto_a

    .line 349
    :catch_6
    move-exception v2

    .line 350
    move-object v4, v3

    .line 351
    check-cast v4, Lc5/i4;

    .line 352
    .line 353
    iget-object v4, v4, Lc5/i4;->j:Lc5/e3;

    .line 354
    .line 355
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 356
    .line 357
    .line 358
    invoke-static {v0}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iget-object v4, v4, Lc5/e3;->f:Lc5/c3;

    .line 363
    .line 364
    invoke-virtual {v4, v0, v1, v2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    :cond_7
    :goto_a
    if-eqz v6, :cond_8

    .line 368
    .line 369
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 370
    .line 371
    .line 372
    :cond_8
    check-cast v3, Lc5/i4;

    .line 373
    .line 374
    iget-object v0, v3, Lc5/i4;->k:Lc5/h4;

    .line 375
    .line 376
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 377
    .line 378
    .line 379
    new-instance v1, Lc5/h3;

    .line 380
    .line 381
    iget-object v9, p0, Lc5/i3;->d:Ljava/lang/String;

    .line 382
    .line 383
    iget-object v10, p0, Lc5/i3;->c:Lc5/g3;

    .line 384
    .line 385
    const/4 v13, 0x0

    .line 386
    move-object v8, v1

    .line 387
    invoke-direct/range {v8 .. v14}, Lc5/h3;-><init>(Ljava/lang/String;Lc5/g3;ILjava/io/IOException;[BLjava/util/Map;)V

    .line 388
    .line 389
    .line 390
    :goto_b
    invoke-virtual {v0, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 391
    .line 392
    .line 393
    return-void
.end method
