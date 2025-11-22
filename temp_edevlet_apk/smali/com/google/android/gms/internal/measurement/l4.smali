.class public final synthetic Lcom/google/android/gms/internal/measurement/l4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/g5;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/l4;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/l4;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l4;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/l4;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_2

    .line 11
    :pswitch_0
    check-cast v3, Lcom/google/android/gms/internal/measurement/n4;

    .line 12
    .line 13
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/n4;->a:Landroid/content/ContentResolver;

    .line 14
    .line 15
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/n4;->b:Landroid/net/Uri;

    .line 16
    .line 17
    sget-object v6, Lcom/google/android/gms/internal/measurement/n4;->h:[Ljava/lang/String;

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 44
    .line 45
    .line 46
    move-object v0, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/16 v4, 0x100

    .line 49
    .line 50
    if-gt v3, v4, :cond_2

    .line 51
    .line 52
    :try_start_1
    new-instance v4, Landroidx/collection/ArrayMap;

    .line 53
    .line 54
    invoke-direct {v4, v3}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    .line 59
    .line 60
    const/high16 v5, 0x3f800000    # 1.0f

    .line 61
    .line 62
    invoke-direct {v4, v3, v5}, Ljava/util/HashMap;-><init>(IF)V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 84
    .line 85
    .line 86
    move-object v0, v4

    .line 87
    :goto_1
    return-object v0

    .line 88
    :catchall_0
    move-exception v1

    .line 89
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 90
    .line 91
    .line 92
    throw v1

    .line 93
    :goto_2
    const-string v0, "HermeticFileOverrides"

    .line 94
    .line 95
    check-cast v3, Landroid/content/Context;

    .line 96
    .line 97
    sget-object v4, Lcom/google/android/gms/internal/measurement/b5;->f:Ljava/lang/Object;

    .line 98
    .line 99
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 100
    .line 101
    sget-object v5, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 102
    .line 103
    const-string v6, "eng"

    .line 104
    .line 105
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-nez v6, :cond_4

    .line 110
    .line 111
    const-string v6, "userdebug"

    .line 112
    .line 113
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_4

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    const-string v4, "dev-keys"

    .line 121
    .line 122
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_6

    .line 127
    .line 128
    const-string v4, "test-keys"

    .line 129
    .line 130
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_5

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_5
    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/d5;->a:Lcom/google/android/gms/internal/measurement/d5;

    .line 138
    .line 139
    goto/16 :goto_a

    .line 140
    .line 141
    :cond_6
    :goto_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    .line 143
    const/16 v5, 0x18

    .line 144
    .line 145
    if-lt v4, v5, :cond_7

    .line 146
    .line 147
    const/4 v4, 0x1

    .line 148
    goto :goto_5

    .line 149
    :cond_7
    const/4 v4, 0x0

    .line 150
    :goto_5
    if-eqz v4, :cond_8

    .line 151
    .line 152
    invoke-static {v3}, Landroidx/core/app/e;->m(Landroid/content/Context;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_8

    .line 157
    .line 158
    invoke-static {v3}, Landroidx/core/app/g;->c(Landroid/content/Context;)Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    :cond_8
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    :try_start_2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 167
    .line 168
    .line 169
    :try_start_3
    new-instance v5, Ljava/io/File;

    .line 170
    .line 171
    const-string v6, "phenotype_hermetic"

    .line 172
    .line 173
    invoke-virtual {v3, v6, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const-string v6, "overrides.txt"

    .line 178
    .line 179
    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 180
    .line 181
    .line 182
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_9

    .line 187
    .line 188
    new-instance v3, Lcom/google/android/gms/internal/measurement/f5;

    .line 189
    .line 190
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/measurement/f5;-><init>(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto :goto_6

    .line 194
    :catch_0
    move-exception v3

    .line 195
    const-string v5, "no data dir"

    .line 196
    .line 197
    invoke-static {v0, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .line 199
    .line 200
    :cond_9
    sget-object v3, Lcom/google/android/gms/internal/measurement/d5;->a:Lcom/google/android/gms/internal/measurement/d5;

    .line 201
    .line 202
    :goto_6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/e5;->b()Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_10

    .line 207
    .line 208
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/e5;->a()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    check-cast v3, Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 213
    .line 214
    :try_start_5
    new-instance v5, Ljava/io/BufferedReader;

    .line 215
    .line 216
    new-instance v6, Ljava/io/InputStreamReader;

    .line 217
    .line 218
    new-instance v7, Ljava/io/FileInputStream;

    .line 219
    .line 220
    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 221
    .line 222
    .line 223
    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 224
    .line 225
    .line 226
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 227
    .line 228
    .line 229
    :try_start_6
    new-instance v6, Ljava/util/HashMap;

    .line 230
    .line 231
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 232
    .line 233
    .line 234
    new-instance v7, Ljava/util/HashMap;

    .line 235
    .line 236
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 237
    .line 238
    .line 239
    :goto_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    if-eqz v8, :cond_f

    .line 244
    .line 245
    const-string v9, " "

    .line 246
    .line 247
    const/4 v10, 0x3

    .line 248
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    array-length v11, v9

    .line 253
    if-eq v11, v10, :cond_b

    .line 254
    .line 255
    const-string v9, "Invalid: "

    .line 256
    .line 257
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 258
    .line 259
    .line 260
    move-result v10

    .line 261
    if-eqz v10, :cond_a

    .line 262
    .line 263
    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    goto :goto_8

    .line 268
    :cond_a
    new-instance v8, Ljava/lang/String;

    .line 269
    .line 270
    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :goto_8
    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_b
    aget-object v8, v9, v2

    .line 278
    .line 279
    new-instance v10, Ljava/lang/String;

    .line 280
    .line 281
    invoke-direct {v10, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    aget-object v8, v9, v1

    .line 285
    .line 286
    new-instance v11, Ljava/lang/String;

    .line 287
    .line 288
    invoke-direct {v11, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    const/4 v11, 0x2

    .line 296
    aget-object v12, v9, v11

    .line 297
    .line 298
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v12

    .line 302
    check-cast v12, Ljava/lang/String;

    .line 303
    .line 304
    if-nez v12, :cond_d

    .line 305
    .line 306
    aget-object v9, v9, v11

    .line 307
    .line 308
    new-instance v11, Ljava/lang/String;

    .line 309
    .line 310
    invoke-direct {v11, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    const/16 v13, 0x400

    .line 322
    .line 323
    if-lt v9, v13, :cond_c

    .line 324
    .line 325
    if-ne v12, v11, :cond_d

    .line 326
    .line 327
    :cond_c
    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    :cond_d
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v9

    .line 334
    if-nez v9, :cond_e

    .line 335
    .line 336
    new-instance v9, Ljava/util/HashMap;

    .line 337
    .line 338
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    :cond_e
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v9

    .line 348
    check-cast v9, Ljava/util/Map;

    .line 349
    .line 350
    invoke-interface {v9, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_f
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    add-int/lit8 v2, v2, 0x7

    .line 363
    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 367
    .line 368
    .line 369
    const-string v2, "Parsed "

    .line 370
    .line 371
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    new-instance v0, Lcom/google/android/gms/internal/measurement/s4;

    .line 385
    .line 386
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/s4;-><init>(Ljava/util/HashMap;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 387
    .line 388
    .line 389
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 390
    .line 391
    .line 392
    :try_start_8
    new-instance v1, Lcom/google/android/gms/internal/measurement/f5;

    .line 393
    .line 394
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/f5;-><init>(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 395
    .line 396
    .line 397
    move-object v0, v1

    .line 398
    goto :goto_9

    .line 399
    :catchall_1
    move-exception v0

    .line 400
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 401
    .line 402
    .line 403
    :catchall_2
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 404
    :catch_1
    move-exception v0

    .line 405
    :try_start_b
    new-instance v1, Ljava/lang/RuntimeException;

    .line 406
    .line 407
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 408
    .line 409
    .line 410
    throw v1

    .line 411
    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/measurement/d5;->a:Lcom/google/android/gms/internal/measurement/d5;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 412
    .line 413
    :goto_9
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 414
    .line 415
    .line 416
    :goto_a
    return-object v0

    .line 417
    :catchall_3
    move-exception v0

    .line 418
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 419
    .line 420
    .line 421
    throw v0

    .line 422
    nop

    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
