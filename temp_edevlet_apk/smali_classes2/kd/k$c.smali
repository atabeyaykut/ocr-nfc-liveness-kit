.class public final Lkd/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Lkd/k$b;

.field public final synthetic b:Lkd/k;


# direct methods
.method public constructor <init>(Lkd/k;Lkd/k$b;)V
    .locals 0

    iput-object p1, p0, Lkd/k$c;->b:Lkd/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkd/k$c;->a:Lkd/k$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    sget-boolean v0, Lid/b;->b:Z

    .line 2
    .line 3
    const-string v1, "k"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v0, Lkd/k;->l:I

    .line 9
    .line 10
    const-string v0, "Processing packet"

    .line 11
    .line 12
    new-array v3, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v1, v0, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lkd/k$c;->b:Lkd/k;

    .line 18
    .line 19
    iget-object v0, v0, Lkd/k;->h:Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    sget v0, Lkd/k;->l:I

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "Decoding beacon. First parser layout: "

    .line 32
    .line 33
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lkd/k$c;->b:Lkd/k;

    .line 37
    .line 38
    iget-object v3, v3, Lkd/k;->h:Ljava/util/Set;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lgd/g;

    .line 49
    .line 50
    iget-object v3, v3, Lgd/g;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-array v3, v2, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {v1, v0, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget v0, Lkd/k;->l:I

    .line 66
    .line 67
    const-string v0, "API No beacon parsers registered when decoding beacon"

    .line 68
    .line 69
    new-array v3, v2, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-static {v1, v0, v3}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object v0, p0, Lkd/k$c;->b:Lkd/k;

    .line 75
    .line 76
    iget-object v0, v0, Lkd/k;->h:Ljava/util/Set;

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/4 v3, 0x0

    .line 83
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    move-object v4, v3

    .line 94
    check-cast v4, Lgd/g;

    .line 95
    .line 96
    iget-object v3, p0, Lkd/k$c;->a:Lkd/k$b;

    .line 97
    .line 98
    iget-object v9, v3, Lkd/k$b;->c:[B

    .line 99
    .line 100
    iget v5, v3, Lkd/k$b;->a:I

    .line 101
    .line 102
    iget-object v8, v3, Lkd/k$b;->b:Landroid/bluetooth/BluetoothDevice;

    .line 103
    .line 104
    iget-wide v6, v3, Lkd/k$b;->d:J

    .line 105
    .line 106
    invoke-virtual/range {v4 .. v9}, Lgd/g;->e(IJLandroid/bluetooth/BluetoothDevice;[B)Lgd/c;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    if-eqz v3, :cond_2

    .line 111
    .line 112
    :cond_3
    if-eqz v3, :cond_e

    .line 113
    .line 114
    sget-boolean v0, Lid/b;->b:Z

    .line 115
    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    sget v0, Lkd/k;->l:I

    .line 119
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v4, "Beacon packet detected for: "

    .line 123
    .line 124
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v4, " with rssi "

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget v4, v3, Lgd/c;->e:I

    .line 136
    .line 137
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-array v4, v2, [Ljava/lang/Object;

    .line 145
    .line 146
    invoke-static {v1, v0, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_4
    sget-object v0, Lkd/b;->b:Lkd/b;

    .line 150
    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    iput-wide v4, v0, Lkd/b;->a:J

    .line 156
    .line 157
    iget-object v0, p0, Lkd/k$c;->b:Lkd/k;

    .line 158
    .line 159
    iget-object v0, v0, Lkd/k;->c:Lld/b;

    .line 160
    .line 161
    const/4 v4, 0x1

    .line 162
    if-eqz v0, :cond_6

    .line 163
    .line 164
    iget-boolean v0, v0, Lld/b;->w:Z

    .line 165
    .line 166
    if-nez v0, :cond_6

    .line 167
    .line 168
    iget-object v0, p0, Lkd/k$c;->b:Lkd/k;

    .line 169
    .line 170
    iget-object v0, v0, Lkd/k;->f:Lld/m;

    .line 171
    .line 172
    iget-object v5, p0, Lkd/k$c;->a:Lkd/k$b;

    .line 173
    .line 174
    iget-object v5, v5, Lkd/k$b;->b:Landroid/bluetooth/BluetoothDevice;

    .line 175
    .line 176
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    iget-object v6, p0, Lkd/k$c;->a:Lkd/k$b;

    .line 181
    .line 182
    iget-object v6, v6, Lkd/k$b;->c:[B

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    array-length v7, v5

    .line 192
    array-length v8, v6

    .line 193
    add-int/2addr v7, v8

    .line 194
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 205
    .line 206
    .line 207
    iget-object v0, v0, Lld/m;->a:Ljava/util/HashSet;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    const/16 v6, 0x3e8

    .line 214
    .line 215
    if-ne v5, v6, :cond_5

    .line 216
    .line 217
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    goto :goto_1

    .line 222
    :cond_5
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    :goto_1
    if-nez v0, :cond_6

    .line 227
    .line 228
    sget v0, Lkd/k;->l:I

    .line 229
    .line 230
    const-string v0, "Non-distinct packets detected in a single scan.  Restarting scans unecessary."

    .line 231
    .line 232
    new-array v5, v2, [Ljava/lang/Object;

    .line 233
    .line 234
    invoke-static {v1, v0, v5}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lkd/k$c;->b:Lkd/k;

    .line 238
    .line 239
    iget-object v0, v0, Lkd/k;->c:Lld/b;

    .line 240
    .line 241
    iput-boolean v4, v0, Lld/b;->w:Z

    .line 242
    .line 243
    :cond_6
    iget-object v0, p0, Lkd/k$c;->b:Lkd/k;

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    sget-object v1, Lkd/p;->c:Lkd/p;

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    sget-boolean v1, Lid/b;->b:Z

    .line 254
    .line 255
    if-eqz v1, :cond_7

    .line 256
    .line 257
    const-string v1, "k"

    .line 258
    .line 259
    const-string v5, "beacon detected : %s"

    .line 260
    .line 261
    new-array v6, v4, [Ljava/lang/Object;

    .line 262
    .line 263
    invoke-virtual {v3}, Lgd/c;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    aput-object v7, v6, v2

    .line 268
    .line 269
    invoke-static {v1, v5, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_7
    iget-object v1, v0, Lkd/k;->g:Lkd/c;

    .line 273
    .line 274
    invoke-virtual {v1, v3}, Lkd/c;->a(Lgd/c;)Lgd/c;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    if-nez v1, :cond_8

    .line 279
    .line 280
    sget-boolean v0, Lid/b;->b:Z

    .line 281
    .line 282
    if-eqz v0, :cond_e

    .line 283
    .line 284
    const-string v0, "k"

    .line 285
    .line 286
    const-string v1, "not processing detections for GATT extra data beacon"

    .line 287
    .line 288
    new-array v2, v2, [Ljava/lang/Object;

    .line 289
    .line 290
    invoke-static {v0, v1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_4

    .line 294
    .line 295
    :cond_8
    iget-object v3, v0, Lkd/k;->d:Lkd/e;

    .line 296
    .line 297
    invoke-virtual {v3, v1}, Lkd/e;->l(Lgd/c;)V

    .line 298
    .line 299
    .line 300
    const-string v3, "k"

    .line 301
    .line 302
    const-string v5, "looking for ranging region matches for this beacon"

    .line 303
    .line 304
    new-array v6, v2, [Ljava/lang/Object;

    .line 305
    .line 306
    invoke-static {v3, v5, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    iget-object v3, v0, Lkd/k;->e:Ljava/util/HashMap;

    .line 310
    .line 311
    monitor-enter v3

    .line 312
    :try_start_0
    iget-object v5, v0, Lkd/k;->e:Ljava/util/HashMap;

    .line 313
    .line 314
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    new-instance v6, Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    :cond_9
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-eqz v7, :cond_b

    .line 332
    .line 333
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    check-cast v7, Lgd/l;

    .line 338
    .line 339
    if-eqz v7, :cond_9

    .line 340
    .line 341
    invoke-virtual {v7, v1}, Lgd/l;->c(Lgd/c;)Z

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    if-eqz v8, :cond_a

    .line 346
    .line 347
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    goto :goto_2

    .line 351
    :cond_a
    const/4 v8, 0x2

    .line 352
    new-array v8, v8, [Ljava/lang/Object;

    .line 353
    .line 354
    aput-object v7, v8, v2

    .line 355
    .line 356
    aput-object v1, v8, v4

    .line 357
    .line 358
    const-string v7, "k"

    .line 359
    .line 360
    const-string v9, "This region (%s) does not match beacon: %s"

    .line 361
    .line 362
    invoke-static {v7, v9, v8}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    :cond_c
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v6

    .line 374
    if-eqz v6, :cond_d

    .line 375
    .line 376
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    check-cast v6, Lgd/l;

    .line 381
    .line 382
    const-string v7, "k"

    .line 383
    .line 384
    const-string v8, "matches ranging region: %s"

    .line 385
    .line 386
    new-array v9, v4, [Ljava/lang/Object;

    .line 387
    .line 388
    aput-object v6, v9, v2

    .line 389
    .line 390
    invoke-static {v7, v8, v9}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    iget-object v7, v0, Lkd/k;->e:Ljava/util/HashMap;

    .line 394
    .line 395
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    check-cast v6, Lkd/f;

    .line 400
    .line 401
    if-eqz v6, :cond_c

    .line 402
    .line 403
    invoke-virtual {v6, v1}, Lkd/f;->a(Lgd/c;)V

    .line 404
    .line 405
    .line 406
    goto :goto_3

    .line 407
    :cond_d
    monitor-exit v3

    .line 408
    goto :goto_4

    .line 409
    :catchall_0
    move-exception v0

    .line 410
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    throw v0

    .line 412
    :cond_e
    :goto_4
    return-void
.end method
