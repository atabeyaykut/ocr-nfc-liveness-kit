.class public final synthetic Lb3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lb3/r;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lb3/r;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lb3/k;->a:I

    iput-object p1, p0, Lb3/k;->b:Lb3/r;

    iput-object p2, p0, Lb3/k;->c:Ljava/lang/Object;

    iput-object p3, p0, Lb3/k;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lb3/k;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lb3/k;->b:Lb3/r;

    .line 4
    .line 5
    iget-object v2, p0, Lb3/k;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lb3/k;->c:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :pswitch_0
    check-cast v3, Lu2/n;

    .line 16
    .line 17
    check-cast v2, Lu2/s;

    .line 18
    .line 19
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    .line 21
    invoke-virtual {v1}, Lb3/r;->d()Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v5, "PRAGMA page_count"

    .line 26
    .line 27
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-virtual {v1}, Lb3/r;->d()Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v7, "PRAGMA page_size"

    .line 40
    .line 41
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    mul-long v7, v7, v5

    .line 50
    .line 51
    iget-object v0, v1, Lb3/r;->d:Lb3/e;

    .line 52
    .line 53
    invoke-virtual {v0}, Lb3/e;->e()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v10, 0x1

    .line 59
    cmp-long v11, v7, v5

    .line 60
    .line 61
    if-ltz v11, :cond_0

    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v5, 0x0

    .line 66
    :goto_0
    if-eqz v5, :cond_1

    .line 67
    .line 68
    sget-object p1, Ly2/c$a;->d:Ly2/c$a;

    .line 69
    .line 70
    invoke-virtual {v3}, Lu2/n;->g()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-wide/16 v2, 0x1

    .line 75
    .line 76
    invoke-virtual {v1, v2, v3, p1, v0}, Lb3/r;->c(JLy2/c$a;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-wide/16 v0, -0x1

    .line 80
    .line 81
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_1
    invoke-static {p1, v2}, Lb3/r;->e(Landroid/database/sqlite/SQLiteDatabase;Lu2/s;)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v1

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    .line 99
    .line 100
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Lu2/s;->b()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const-string v6, "backend_name"

    .line 108
    .line 109
    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Lu2/s;->d()Lr2/d;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v5}, Le3/a;->a(Lr2/d;)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const-string v6, "priority"

    .line 125
    .line 126
    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    .line 128
    .line 129
    const-string v5, "next_request_ms"

    .line 130
    .line 131
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Lu2/s;->c()[B

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    if-eqz v5, :cond_3

    .line 143
    .line 144
    invoke-virtual {v2}, Lu2/s;->c()[B

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const-string v5, "extras"

    .line 153
    .line 154
    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    const-string v2, "transport_contexts"

    .line 158
    .line 159
    invoke-virtual {p1, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v1

    .line 163
    :goto_1
    invoke-virtual {v0}, Lb3/e;->d()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-virtual {v3}, Lu2/n;->d()Lu2/m;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    iget-object v5, v5, Lu2/m;->b:[B

    .line 172
    .line 173
    array-length v6, v5

    .line 174
    if-gt v6, v0, :cond_4

    .line 175
    .line 176
    const/4 v6, 0x1

    .line 177
    goto :goto_2

    .line 178
    :cond_4
    const/4 v6, 0x0

    .line 179
    :goto_2
    new-instance v7, Landroid/content/ContentValues;

    .line 180
    .line 181
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v8, "context_id"

    .line 185
    .line 186
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    .line 192
    .line 193
    const-string v1, "transport_name"

    .line 194
    .line 195
    invoke-virtual {v3}, Lu2/n;->g()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Lu2/n;->e()J

    .line 203
    .line 204
    .line 205
    move-result-wide v1

    .line 206
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    const-string v2, "timestamp_ms"

    .line 211
    .line 212
    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3}, Lu2/n;->h()J

    .line 216
    .line 217
    .line 218
    move-result-wide v1

    .line 219
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const-string v2, "uptime_ms"

    .line 224
    .line 225
    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Lu2/n;->d()Lu2/m;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    iget-object v1, v1, Lu2/m;->a:Lr2/b;

    .line 233
    .line 234
    iget-object v1, v1, Lr2/b;->a:Ljava/lang/String;

    .line 235
    .line 236
    const-string v2, "payload_encoding"

    .line 237
    .line 238
    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v1, "code"

    .line 242
    .line 243
    invoke-virtual {v3}, Lu2/n;->c()Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    .line 249
    .line 250
    const-string v1, "num_attempts"

    .line 251
    .line 252
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    .line 258
    .line 259
    const-string v1, "inline"

    .line 260
    .line 261
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 266
    .line 267
    .line 268
    if-eqz v6, :cond_5

    .line 269
    .line 270
    move-object v1, v5

    .line 271
    goto :goto_3

    .line 272
    :cond_5
    new-array v1, v9, [B

    .line 273
    .line 274
    :goto_3
    const-string v2, "payload"

    .line 275
    .line 276
    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 277
    .line 278
    .line 279
    const-string v1, "events"

    .line 280
    .line 281
    invoke-virtual {p1, v1, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 282
    .line 283
    .line 284
    move-result-wide v1

    .line 285
    const-string v7, "event_id"

    .line 286
    .line 287
    if-nez v6, :cond_6

    .line 288
    .line 289
    array-length v6, v5

    .line 290
    int-to-double v8, v6

    .line 291
    int-to-double v11, v0

    .line 292
    div-double/2addr v8, v11

    .line 293
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 294
    .line 295
    .line 296
    move-result-wide v8

    .line 297
    double-to-int v6, v8

    .line 298
    :goto_4
    if-gt v10, v6, :cond_6

    .line 299
    .line 300
    add-int/lit8 v8, v10, -0x1

    .line 301
    .line 302
    mul-int v8, v8, v0

    .line 303
    .line 304
    mul-int v9, v10, v0

    .line 305
    .line 306
    array-length v11, v5

    .line 307
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    .line 308
    .line 309
    .line 310
    move-result v9

    .line 311
    invoke-static {v5, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    new-instance v9, Landroid/content/ContentValues;

    .line 316
    .line 317
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 321
    .line 322
    .line 323
    move-result-object v11

    .line 324
    invoke-virtual {v9, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 325
    .line 326
    .line 327
    const-string v11, "sequence_num"

    .line 328
    .line 329
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object v12

    .line 333
    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    .line 335
    .line 336
    const-string v11, "bytes"

    .line 337
    .line 338
    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 339
    .line 340
    .line 341
    const-string v8, "event_payloads"

    .line 342
    .line 343
    invoke-virtual {p1, v8, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 344
    .line 345
    .line 346
    add-int/lit8 v10, v10, 0x1

    .line 347
    .line 348
    goto :goto_4

    .line 349
    :cond_6
    invoke-virtual {v3}, Lu2/n;->b()Ljava/util/Map;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-eqz v3, :cond_7

    .line 370
    .line 371
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    check-cast v3, Ljava/util/Map$Entry;

    .line 376
    .line 377
    new-instance v5, Landroid/content/ContentValues;

    .line 378
    .line 379
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 380
    .line 381
    .line 382
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    .line 388
    .line 389
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    check-cast v6, Ljava/lang/String;

    .line 394
    .line 395
    const-string v8, "name"

    .line 396
    .line 397
    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    check-cast v3, Ljava/lang/String;

    .line 405
    .line 406
    const-string v6, "value"

    .line 407
    .line 408
    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    const-string v3, "event_metadata"

    .line 412
    .line 413
    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 414
    .line 415
    .line 416
    goto :goto_5

    .line 417
    :cond_7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    :goto_6
    return-object p1

    .line 422
    :goto_7
    check-cast v3, Ljava/lang/String;

    .line 423
    .line 424
    check-cast v2, Ljava/lang/String;

    .line 425
    .line 426
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 427
    .line 428
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    new-instance v2, Landroidx/camera/camera2/interop/d;

    .line 443
    .line 444
    const/4 v3, 0x3

    .line 445
    invoke-direct {v2, v3, v1}, Landroidx/camera/camera2/interop/d;-><init>(ILjava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    invoke-static {v0, v2}, Lb3/r;->i(Landroid/database/Cursor;Lb3/r$a;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    const-string v0, "DELETE FROM events WHERE num_attempts >= 16"

    .line 452
    .line 453
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 458
    .line 459
    .line 460
    return-object v4

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
