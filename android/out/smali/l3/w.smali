.class public final synthetic Ll3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/b;
.implements Lc5/g3;
.implements Lid/c;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lc5/o7;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll3/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Ll3/w;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll3/w;->a:Ljava/lang/Object;

    iput-object p2, p0, Ll3/w;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 8

    .line 1
    iget-object p1, p0, Ll3/w;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lc5/o7;

    .line 4
    .line 5
    invoke-virtual {p1}, Lc5/o7;->l()Lc5/h4;

    .line 6
    .line 7
    .line 8
    move-result-object p5

    .line 9
    invoke-virtual {p5}, Lc5/h4;->b()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lc5/o7;->b()V

    .line 13
    .line 14
    .line 15
    const/4 p5, 0x0

    .line 16
    if-nez p4, :cond_0

    .line 17
    .line 18
    :try_start_0
    new-array p4, p5, [B

    .line 19
    .line 20
    :cond_0
    iget-object v0, p1, Lc5/o7;->A:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-object v1, p1, Lc5/o7;->A:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    const/16 v2, 0xc8

    .line 29
    .line 30
    if-eq p2, v2, :cond_1

    .line 31
    .line 32
    const/16 v2, 0xcc

    .line 33
    .line 34
    if-ne p2, v2, :cond_6

    .line 35
    .line 36
    const/16 p2, 0xcc

    .line 37
    .line 38
    :cond_1
    if-nez p3, :cond_6

    .line 39
    .line 40
    :try_start_1
    iget-object p3, p1, Lc5/o7;->j:Lc5/u6;

    .line 41
    .line 42
    iget-object p3, p3, Lc5/u6;->j:Lc5/o3;

    .line 43
    .line 44
    invoke-virtual {p1}, Lc5/o7;->i()Lw3/a;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lc5/w;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {p3, v2, v3}, Lc5/o3;->b(J)V

    .line 58
    .line 59
    .line 60
    iget-object p3, p1, Lc5/o7;->j:Lc5/u6;

    .line 61
    .line 62
    iget-object p3, p3, Lc5/u6;->k:Lc5/o3;

    .line 63
    .line 64
    const-wide/16 v2, 0x0

    .line 65
    .line 66
    invoke-virtual {p3, v2, v3}, Lc5/o3;->b(J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lc5/o7;->D()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lc5/o7;->m()Lc5/e3;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    iget-object p3, p3, Lc5/e3;->p:Lc5/c3;

    .line 77
    .line 78
    const-string v4, "Successful upload. Got network response. code, size"

    .line 79
    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    array-length p4, p4

    .line 85
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    invoke-virtual {p3, p2, v4, p4}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p1, Lc5/o7;->c:Lc5/i;

    .line 93
    .line 94
    invoke-static {p2}, Lc5/o7;->I(Lc5/j7;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Lc5/i;->P()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .line 99
    .line 100
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    if-eqz p3, :cond_4

    .line 109
    .line 110
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    check-cast p3, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .line 116
    :try_start_3
    iget-object p4, p1, Lc5/o7;->c:Lc5/i;

    .line 117
    .line 118
    invoke-static {p4}, Lc5/o7;->I(Lc5/j7;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    invoke-virtual {p4}, Lc5/x4;->b()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p4}, Lc5/j7;->c()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p4}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const/4 v6, 0x1

    .line 136
    new-array v7, v6, [Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    aput-object v4, v7, p5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    .line 144
    :try_start_4
    const-string v4, "queue"

    .line 145
    .line 146
    const-string v5, "rowid=?"

    .line 147
    .line 148
    invoke-virtual {v0, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-ne v0, v6, :cond_2

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    .line 156
    .line 157
    const-string v4, "Deleted fewer rows from queue than expected"

    .line 158
    .line 159
    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    :try_start_5
    iget-object p4, p4, Lc5/x4;->a:Lc5/z4;

    .line 165
    .line 166
    check-cast p4, Lc5/i4;

    .line 167
    .line 168
    iget-object p4, p4, Lc5/i4;->j:Lc5/e3;

    .line 169
    .line 170
    invoke-static {p4}, Lc5/i4;->e(Lc5/y4;)V

    .line 171
    .line 172
    .line 173
    iget-object p4, p4, Lc5/e3;->f:Lc5/c3;

    .line 174
    .line 175
    const-string v4, "Failed to delete a bundle in a queue table"

    .line 176
    .line 177
    invoke-virtual {p4, v0, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    :catch_1
    move-exception p4

    .line 182
    :try_start_6
    iget-object v0, p1, Lc5/o7;->B:Ljava/util/ArrayList;

    .line 183
    .line 184
    if-eqz v0, :cond_3

    .line 185
    .line 186
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    if-eqz p3, :cond_3

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_3
    throw p4

    .line 194
    :cond_4
    iget-object p2, p1, Lc5/o7;->c:Lc5/i;

    .line 195
    .line 196
    invoke-static {p2}, Lc5/o7;->I(Lc5/j7;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Lc5/i;->n()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 200
    .line 201
    .line 202
    :try_start_7
    iget-object p2, p1, Lc5/o7;->c:Lc5/i;

    .line 203
    .line 204
    invoke-static {p2}, Lc5/o7;->I(Lc5/j7;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Lc5/i;->R()V

    .line 208
    .line 209
    .line 210
    iput-object v1, p1, Lc5/o7;->B:Ljava/util/ArrayList;

    .line 211
    .line 212
    iget-object p2, p1, Lc5/o7;->b:Lc5/j3;

    .line 213
    .line 214
    invoke-static {p2}, Lc5/o7;->I(Lc5/j7;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2}, Lc5/j3;->g()Z

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    if-eqz p2, :cond_5

    .line 222
    .line 223
    invoke-virtual {p1}, Lc5/o7;->G()Z

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    if-eqz p2, :cond_5

    .line 228
    .line 229
    invoke-virtual {p1}, Lc5/o7;->t()V

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_5
    const-wide/16 p2, -0x1

    .line 234
    .line 235
    iput-wide p2, p1, Lc5/o7;->C:J

    .line 236
    .line 237
    invoke-virtual {p1}, Lc5/o7;->D()V

    .line 238
    .line 239
    .line 240
    :goto_1
    iput-wide v2, p1, Lc5/o7;->q:J

    .line 241
    .line 242
    goto/16 :goto_3

    .line 243
    .line 244
    :catch_2
    move-exception p2

    .line 245
    goto :goto_2

    .line 246
    :catchall_0
    move-exception p2

    .line 247
    iget-object p3, p1, Lc5/o7;->c:Lc5/i;

    .line 248
    .line 249
    invoke-static {p3}, Lc5/o7;->I(Lc5/j7;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p3}, Lc5/i;->R()V

    .line 253
    .line 254
    .line 255
    throw p2
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 256
    :goto_2
    :try_start_8
    invoke-virtual {p1}, Lc5/o7;->m()Lc5/e3;

    .line 257
    .line 258
    .line 259
    move-result-object p3

    .line 260
    iget-object p3, p3, Lc5/e3;->f:Lc5/c3;

    .line 261
    .line 262
    const-string p4, "Database error while trying to delete uploaded bundles"

    .line 263
    .line 264
    invoke-virtual {p3, p2, p4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1}, Lc5/o7;->i()Lw3/a;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    check-cast p2, Lc5/w;

    .line 272
    .line 273
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 277
    .line 278
    .line 279
    move-result-wide p2

    .line 280
    iput-wide p2, p1, Lc5/o7;->q:J

    .line 281
    .line 282
    invoke-virtual {p1}, Lc5/o7;->m()Lc5/e3;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    iget-object p2, p2, Lc5/e3;->p:Lc5/c3;

    .line 287
    .line 288
    const-string p3, "Disable upload, time"

    .line 289
    .line 290
    iget-wide v0, p1, Lc5/o7;->q:J

    .line 291
    .line 292
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 293
    .line 294
    .line 295
    move-result-object p4

    .line 296
    invoke-virtual {p2, p4, p3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_6
    invoke-virtual {p1}, Lc5/o7;->m()Lc5/e3;

    .line 301
    .line 302
    .line 303
    move-result-object p4

    .line 304
    iget-object p4, p4, Lc5/e3;->p:Lc5/c3;

    .line 305
    .line 306
    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 307
    .line 308
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {p4, v2, v1, p3}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    iget-object p3, p1, Lc5/o7;->j:Lc5/u6;

    .line 316
    .line 317
    iget-object p3, p3, Lc5/u6;->k:Lc5/o3;

    .line 318
    .line 319
    invoke-virtual {p1}, Lc5/o7;->i()Lw3/a;

    .line 320
    .line 321
    .line 322
    move-result-object p4

    .line 323
    check-cast p4, Lc5/w;

    .line 324
    .line 325
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 329
    .line 330
    .line 331
    move-result-wide v1

    .line 332
    invoke-virtual {p3, v1, v2}, Lc5/o3;->b(J)V

    .line 333
    .line 334
    .line 335
    const/16 p3, 0x1f7

    .line 336
    .line 337
    if-eq p2, p3, :cond_7

    .line 338
    .line 339
    const/16 p3, 0x1ad

    .line 340
    .line 341
    if-ne p2, p3, :cond_8

    .line 342
    .line 343
    :cond_7
    iget-object p2, p1, Lc5/o7;->j:Lc5/u6;

    .line 344
    .line 345
    iget-object p2, p2, Lc5/u6;->h:Lc5/o3;

    .line 346
    .line 347
    invoke-virtual {p1}, Lc5/o7;->i()Lw3/a;

    .line 348
    .line 349
    .line 350
    move-result-object p3

    .line 351
    check-cast p3, Lc5/w;

    .line 352
    .line 353
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 357
    .line 358
    .line 359
    move-result-wide p3

    .line 360
    invoke-virtual {p2, p3, p4}, Lc5/o3;->b(J)V

    .line 361
    .line 362
    .line 363
    :cond_8
    iget-object p2, p1, Lc5/o7;->c:Lc5/i;

    .line 364
    .line 365
    invoke-static {p2}, Lc5/o7;->I(Lc5/j7;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2, v0}, Lc5/i;->S(Ljava/util/List;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p1}, Lc5/o7;->D()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 372
    .line 373
    .line 374
    :goto_3
    iput-boolean p5, p1, Lc5/o7;->w:Z

    .line 375
    .line 376
    invoke-virtual {p1}, Lc5/o7;->A()V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :catchall_1
    move-exception p2

    .line 381
    iput-boolean p5, p1, Lc5/o7;->w:Z

    .line 382
    .line 383
    invoke-virtual {p1}, Lc5/o7;->A()V

    .line 384
    .line 385
    .line 386
    throw p2
.end method

.method public final varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p2}, Ll3/w;->h(Ljava/lang/String;)V

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ll3/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c(Lh5/k;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ll3/w;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll3/c;

    .line 4
    .line 5
    iget-object v1, p0, Ll3/w;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lh5/k;->m()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lh5/k;->i()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/os/Bundle;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const-string v3, "google.messenger"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-nez v2, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v0, v1}, Ll3/c;->a(Landroid/os/Bundle;)Lh5/z;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object v0, Ll3/y;->a:Ll3/y;

    .line 46
    .line 47
    sget-object v1, Lb8/f;->f:Lb8/f;

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Lh5/z;->n(Ljava/util/concurrent/Executor;Lh5/j;)Lh5/k;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_1
    return-object p1
.end method

.method public final varargs d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    array-length v0, p2

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :catch_0
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final varargs e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p3}, Ll3/w;->h(Ljava/lang/String;)V

    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Ll3/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final varargs f(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p3}, Ll3/w;->h(Ljava/lang/String;)V

    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Ll3/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final varargs g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p2}, Ll3/w;->h(Ljava/lang/String;)V

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ll3/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "API"

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Lmc/n;->N(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ll3/w;->b:Ljava/lang/Object;

    check-cast v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ll3/w;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final varargs j(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p2}, Ll3/w;->h(Ljava/lang/String;)V

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ll3/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final varargs l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p2}, Ll3/w;->h(Ljava/lang/String;)V

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ll3/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
