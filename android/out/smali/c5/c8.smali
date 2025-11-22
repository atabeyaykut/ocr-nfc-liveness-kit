.class public final Lc5/c8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/measurement/h3;

.field public b:Ljava/lang/Long;

.field public c:J

.field public final synthetic d:Lc5/g8;


# direct methods
.method public synthetic constructor <init>(Lc5/g8;)V
    .locals 0

    iput-object p1, p0, Lc5/c8;->d:Lc5/g8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/h3;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/h3;->y()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/h3;->z()Lcom/google/android/gms/internal/measurement/w6;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    iget-object v2, v1, Lc5/c8;->d:Lc5/g8;

    .line 16
    .line 17
    iget-object v4, v2, Lc5/i7;->b:Lc5/o7;

    .line 18
    .line 19
    invoke-virtual {v4}, Lc5/o7;->P()Lc5/q7;

    .line 20
    .line 21
    .line 22
    const-string v4, "_eid"

    .line 23
    .line 24
    invoke-static {v8, v4}, Lc5/q7;->n(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Ljava/io/Serializable;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Ljava/lang/Long;

    .line 29
    .line 30
    const/4 v10, 0x0

    .line 31
    if-eqz v5, :cond_f

    .line 32
    .line 33
    const-string v6, "_ep"

    .line 34
    .line 35
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    iget-object v11, v2, Lc5/x4;->a:Lc5/z4;

    .line 40
    .line 41
    iget-object v12, v2, Lc5/i7;->b:Lc5/o7;

    .line 42
    .line 43
    if-eqz v6, :cond_c

    .line 44
    .line 45
    invoke-virtual {v12}, Lc5/o7;->P()Lc5/q7;

    .line 46
    .line 47
    .line 48
    const-string v0, "_en"

    .line 49
    .line 50
    invoke-static {v8, v0}, Lc5/q7;->n(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Ljava/io/Serializable;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    move-object v15, v0

    .line 55
    check-cast v15, Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v2, 0x0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    check-cast v11, Lc5/i4;

    .line 65
    .line 66
    iget-object v0, v11, Lc5/i4;->j:Lc5/e3;

    .line 67
    .line 68
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 69
    .line 70
    .line 71
    const-string v3, "Extra parameter without an event name. eventId"

    .line 72
    .line 73
    iget-object v0, v0, Lc5/e3;->g:Lc5/c3;

    .line 74
    .line 75
    invoke-virtual {v0, v5, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v2

    .line 79
    :cond_0
    iget-object v0, v1, Lc5/c8;->a:Lcom/google/android/gms/internal/measurement/h3;

    .line 80
    .line 81
    const/4 v6, 0x1

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    iget-object v0, v1, Lc5/c8;->b:Ljava/lang/Long;

    .line 85
    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v16

    .line 92
    iget-object v0, v1, Lc5/c8;->b:Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v18

    .line 98
    cmp-long v0, v16, v18

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    :cond_1
    iget-object v0, v12, Lc5/o7;->c:Lc5/i;

    .line 103
    .line 104
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 105
    .line 106
    .line 107
    iget-object v7, v0, Lc5/x4;->a:Lc5/z4;

    .line 108
    .line 109
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lc5/j7;->c()V

    .line 113
    .line 114
    .line 115
    :try_start_0
    invoke-virtual {v0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v2, 0x2

    .line 120
    new-array v2, v2, [Ljava/lang/String;

    .line 121
    .line 122
    aput-object v3, v2, v10

    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v17

    .line 128
    aput-object v17, v2, v6

    .line 129
    .line 130
    const-string v13, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    .line 131
    .line 132
    invoke-virtual {v0, v13, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 133
    .line 134
    .line 135
    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_2

    .line 141
    .line 142
    move-object v0, v7

    .line 143
    check-cast v0, Lc5/i4;

    .line 144
    .line 145
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 146
    .line 147
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 151
    .line 152
    const-string v13, "Main event not found"

    .line 153
    .line 154
    invoke-virtual {v0, v13}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_2
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 163
    .line 164
    .line 165
    move-result-wide v13

    .line 166
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v13
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/h3;->v()Lcom/google/android/gms/internal/measurement/g3;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    invoke-static {v14, v0}, Lc5/q7;->A(Lcom/google/android/gms/internal/measurement/n6;[B)Lcom/google/android/gms/internal/measurement/n6;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lcom/google/android/gms/internal/measurement/g3;

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    .line 186
    :try_start_3
    invoke-static {v0, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 187
    .line 188
    .line 189
    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    goto/16 :goto_7

    .line 196
    .line 197
    :catch_0
    move-exception v0

    .line 198
    goto :goto_0

    .line 199
    :catch_1
    move-exception v0

    .line 200
    :try_start_4
    move-object v13, v7

    .line 201
    check-cast v13, Lc5/i4;

    .line 202
    .line 203
    iget-object v13, v13, Lc5/i4;->j:Lc5/e3;

    .line 204
    .line 205
    invoke-static {v13}, Lc5/i4;->e(Lc5/y4;)V

    .line 206
    .line 207
    .line 208
    iget-object v13, v13, Lc5/e3;->f:Lc5/c3;

    .line 209
    .line 210
    const-string v14, "Failed to merge main event. appId, eventId"

    .line 211
    .line 212
    invoke-static/range {p2 .. p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-virtual {v13, v14, v10, v5, v0}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :catchall_1
    move-exception v0

    .line 221
    const/4 v2, 0x0

    .line 222
    goto/16 :goto_7

    .line 223
    .line 224
    :catch_2
    move-exception v0

    .line 225
    const/4 v2, 0x0

    .line 226
    :goto_0
    :try_start_5
    check-cast v7, Lc5/i4;

    .line 227
    .line 228
    iget-object v7, v7, Lc5/i4;->j:Lc5/e3;

    .line 229
    .line 230
    invoke-static {v7}, Lc5/i4;->e(Lc5/y4;)V

    .line 231
    .line 232
    .line 233
    iget-object v7, v7, Lc5/e3;->f:Lc5/c3;

    .line 234
    .line 235
    const-string v10, "Error selecting main event"

    .line 236
    .line 237
    invoke-virtual {v7, v0, v10}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    .line 239
    .line 240
    if-eqz v2, :cond_3

    .line 241
    .line 242
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 243
    .line 244
    .line 245
    :cond_3
    const/4 v0, 0x0

    .line 246
    :goto_2
    if-eqz v0, :cond_a

    .line 247
    .line 248
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 249
    .line 250
    if-nez v2, :cond_4

    .line 251
    .line 252
    goto/16 :goto_6

    .line 253
    .line 254
    :cond_4
    check-cast v2, Lcom/google/android/gms/internal/measurement/h3;

    .line 255
    .line 256
    iput-object v2, v1, Lc5/c8;->a:Lcom/google/android/gms/internal/measurement/h3;

    .line 257
    .line 258
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v0, Ljava/lang/Long;

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 263
    .line 264
    .line 265
    move-result-wide v13

    .line 266
    iput-wide v13, v1, Lc5/c8;->c:J

    .line 267
    .line 268
    invoke-virtual {v12}, Lc5/o7;->P()Lc5/q7;

    .line 269
    .line 270
    .line 271
    iget-object v0, v1, Lc5/c8;->a:Lcom/google/android/gms/internal/measurement/h3;

    .line 272
    .line 273
    invoke-static {v0, v4}, Lc5/q7;->n(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Ljava/io/Serializable;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Ljava/lang/Long;

    .line 278
    .line 279
    iput-object v0, v1, Lc5/c8;->b:Ljava/lang/Long;

    .line 280
    .line 281
    :cond_5
    iget-wide v13, v1, Lc5/c8;->c:J

    .line 282
    .line 283
    const-wide/16 v20, -0x1

    .line 284
    .line 285
    add-long v13, v13, v20

    .line 286
    .line 287
    iput-wide v13, v1, Lc5/c8;->c:J

    .line 288
    .line 289
    const-wide/16 v16, 0x0

    .line 290
    .line 291
    cmp-long v0, v13, v16

    .line 292
    .line 293
    if-gtz v0, :cond_6

    .line 294
    .line 295
    iget-object v0, v12, Lc5/o7;->c:Lc5/i;

    .line 296
    .line 297
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 301
    .line 302
    .line 303
    iget-object v2, v0, Lc5/x4;->a:Lc5/z4;

    .line 304
    .line 305
    check-cast v2, Lc5/i4;

    .line 306
    .line 307
    iget-object v4, v2, Lc5/i4;->j:Lc5/e3;

    .line 308
    .line 309
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 310
    .line 311
    .line 312
    const-string v5, "Clearing complex main event info. appId"

    .line 313
    .line 314
    iget-object v4, v4, Lc5/e3;->p:Lc5/c3;

    .line 315
    .line 316
    invoke-virtual {v4, v3, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :try_start_6
    invoke-virtual {v0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    new-array v4, v6, [Ljava/lang/String;

    .line 324
    .line 325
    const/4 v5, 0x0

    .line 326
    aput-object v3, v4, v5

    .line 327
    .line 328
    const-string v3, "delete from main_event_params where app_id=?"

    .line 329
    .line 330
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :catch_3
    move-exception v0

    .line 335
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 336
    .line 337
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 338
    .line 339
    .line 340
    const-string v3, "Error clearing complex main event"

    .line 341
    .line 342
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 343
    .line 344
    invoke-virtual {v2, v0, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_6
    iget-object v2, v12, Lc5/o7;->c:Lc5/i;

    .line 349
    .line 350
    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    .line 351
    .line 352
    .line 353
    iget-wide v6, v1, Lc5/c8;->c:J

    .line 354
    .line 355
    iget-object v0, v1, Lc5/c8;->a:Lcom/google/android/gms/internal/measurement/h3;

    .line 356
    .line 357
    move-object/from16 v3, p2

    .line 358
    .line 359
    move-object v4, v5

    .line 360
    move-wide v5, v6

    .line 361
    move-object v7, v0

    .line 362
    invoke-virtual/range {v2 .. v7}, Lc5/i;->s(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/h3;)V

    .line 363
    .line 364
    .line 365
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .line 369
    .line 370
    iget-object v2, v1, Lc5/c8;->a:Lcom/google/android/gms/internal/measurement/h3;

    .line 371
    .line 372
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/h3;->z()Lcom/google/android/gms/internal/measurement/w6;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-eqz v3, :cond_8

    .line 385
    .line 386
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    check-cast v3, Lcom/google/android/gms/internal/measurement/l3;

    .line 391
    .line 392
    invoke-virtual {v12}, Lc5/o7;->P()Lc5/q7;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    invoke-static {v8, v4}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    if-nez v4, :cond_7

    .line 404
    .line 405
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    goto :goto_4

    .line 409
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-nez v2, :cond_9

    .line 414
    .line 415
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 416
    .line 417
    .line 418
    move-object v9, v0

    .line 419
    goto :goto_5

    .line 420
    :cond_9
    check-cast v11, Lc5/i4;

    .line 421
    .line 422
    iget-object v0, v11, Lc5/i4;->j:Lc5/e3;

    .line 423
    .line 424
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 425
    .line 426
    .line 427
    const-string v2, "No unique parameters in main event. eventName"

    .line 428
    .line 429
    iget-object v0, v0, Lc5/e3;->g:Lc5/c3;

    .line 430
    .line 431
    invoke-virtual {v0, v15, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    :goto_5
    move-object v0, v15

    .line 435
    goto :goto_8

    .line 436
    :cond_a
    :goto_6
    check-cast v11, Lc5/i4;

    .line 437
    .line 438
    iget-object v0, v11, Lc5/i4;->j:Lc5/e3;

    .line 439
    .line 440
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 441
    .line 442
    .line 443
    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    .line 444
    .line 445
    iget-object v0, v0, Lc5/e3;->g:Lc5/c3;

    .line 446
    .line 447
    invoke-virtual {v0, v15, v2, v5}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    const/4 v2, 0x0

    .line 451
    return-object v2

    .line 452
    :goto_7
    if-eqz v2, :cond_b

    .line 453
    .line 454
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 455
    .line 456
    .line 457
    :cond_b
    throw v0

    .line 458
    :cond_c
    iput-object v5, v1, Lc5/c8;->b:Ljava/lang/Long;

    .line 459
    .line 460
    iput-object v8, v1, Lc5/c8;->a:Lcom/google/android/gms/internal/measurement/h3;

    .line 461
    .line 462
    invoke-virtual {v12}, Lc5/o7;->P()Lc5/q7;

    .line 463
    .line 464
    .line 465
    const-wide/16 v6, 0x0

    .line 466
    .line 467
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    const-string v4, "_epc"

    .line 472
    .line 473
    invoke-static {v8, v4}, Lc5/q7;->n(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Ljava/io/Serializable;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    if-eqz v4, :cond_d

    .line 478
    .line 479
    move-object v2, v4

    .line 480
    :cond_d
    check-cast v2, Ljava/lang/Long;

    .line 481
    .line 482
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 483
    .line 484
    .line 485
    move-result-wide v13

    .line 486
    iput-wide v13, v1, Lc5/c8;->c:J

    .line 487
    .line 488
    cmp-long v2, v13, v6

    .line 489
    .line 490
    if-gtz v2, :cond_e

    .line 491
    .line 492
    check-cast v11, Lc5/i4;

    .line 493
    .line 494
    iget-object v2, v11, Lc5/i4;->j:Lc5/e3;

    .line 495
    .line 496
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 497
    .line 498
    .line 499
    const-string v3, "Complex event with zero extra param count. eventName"

    .line 500
    .line 501
    iget-object v2, v2, Lc5/e3;->g:Lc5/c3;

    .line 502
    .line 503
    invoke-virtual {v2, v0, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    goto :goto_8

    .line 507
    :cond_e
    iget-object v2, v12, Lc5/o7;->c:Lc5/i;

    .line 508
    .line 509
    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    .line 510
    .line 511
    .line 512
    iget-wide v6, v1, Lc5/c8;->c:J

    .line 513
    .line 514
    move-object/from16 v3, p2

    .line 515
    .line 516
    move-object v4, v5

    .line 517
    move-wide v5, v6

    .line 518
    move-object/from16 v7, p1

    .line 519
    .line 520
    invoke-virtual/range {v2 .. v7}, Lc5/i;->s(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/h3;)V

    .line 521
    .line 522
    .line 523
    :cond_f
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    check-cast v2, Lcom/google/android/gms/internal/measurement/g3;

    .line 528
    .line 529
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/g3;->s(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    iget-boolean v0, v2, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 533
    .line 534
    if-eqz v0, :cond_10

    .line 535
    .line 536
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 537
    .line 538
    .line 539
    const/4 v3, 0x0

    .line 540
    iput-boolean v3, v2, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 541
    .line 542
    goto :goto_9

    .line 543
    :cond_10
    const/4 v3, 0x0

    .line 544
    :goto_9
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 545
    .line 546
    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    .line 547
    .line 548
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/h3;->D(Lcom/google/android/gms/internal/measurement/h3;)V

    .line 549
    .line 550
    .line 551
    iget-boolean v0, v2, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 552
    .line 553
    if-eqz v0, :cond_11

    .line 554
    .line 555
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 556
    .line 557
    .line 558
    iput-boolean v3, v2, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 559
    .line 560
    :cond_11
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 561
    .line 562
    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    .line 563
    .line 564
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/measurement/h3;->C(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/Iterable;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    .line 572
    .line 573
    return-object v0
.end method
