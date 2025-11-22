.class public final Lo3/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lc5/w4;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo3/f1;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/f1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lo3/f1;->b:Ljava/lang/String;

    iput-object p3, p0, Lo3/f1;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo3/g1;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo3/f1;->a:I

    .line 2
    iput-object p1, p0, Lo3/f1;->d:Ljava/lang/Object;

    iput-object p2, p0, Lo3/f1;->c:Ljava/lang/Object;

    const-string p1, "ConnectionlessLifecycleHelper"

    iput-object p1, p0, Lo3/f1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lo3/f1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    iget-object v2, p0, Lo3/f1;->b:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lo3/f1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, p0, Lo3/f1;->d:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    check-cast v5, Lo3/g1;

    .line 16
    .line 17
    iget v0, v5, Lo3/g1;->b:I

    .line 18
    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    move-object v0, v4

    .line 22
    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 23
    .line 24
    iget-object v6, v5, Lo3/g1;->c:Landroid/os/Bundle;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :cond_0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget v0, v5, Lo3/g1;->b:I

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    if-lt v0, v2, :cond_2

    .line 39
    .line 40
    move-object v0, v4

    .line 41
    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->f()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget v0, v5, Lo3/g1;->b:I

    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    if-lt v0, v2, :cond_3

    .line 50
    .line 51
    move-object v0, v4

    .line 52
    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->d()V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget v0, v5, Lo3/g1;->b:I

    .line 58
    .line 59
    const/4 v2, 0x4

    .line 60
    if-lt v0, v2, :cond_4

    .line 61
    .line 62
    move-object v0, v4

    .line 63
    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->g()V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget v0, v5, Lo3/g1;->b:I

    .line 69
    .line 70
    if-lt v0, v1, :cond_5

    .line 71
    .line 72
    check-cast v4, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    :cond_5
    return-void

    .line 78
    :goto_0
    check-cast v4, Lc5/w4;

    .line 79
    .line 80
    check-cast v5, Landroid/os/Bundle;

    .line 81
    .line 82
    iget-object v0, v4, Lc5/w4;->a:Lc5/o7;

    .line 83
    .line 84
    iget-object v0, v0, Lc5/o7;->c:Lc5/i;

    .line 85
    .line 86
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lc5/j7;->c()V

    .line 93
    .line 94
    .line 95
    iget-object v4, v0, Lc5/x4;->a:Lc5/z4;

    .line 96
    .line 97
    move-object v6, v4

    .line 98
    check-cast v6, Lc5/i4;

    .line 99
    .line 100
    invoke-static {v2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v7, "dep"

    .line 104
    .line 105
    invoke-static {v7}, Lr3/r;->f(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v7, ""

    .line 109
    .line 110
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    if-eqz v5, :cond_9

    .line 114
    .line 115
    invoke-virtual {v5}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-nez v7, :cond_9

    .line 120
    .line 121
    new-instance v7, Landroid/os/Bundle;

    .line 122
    .line 123
    invoke-direct {v7, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-eqz v8, :cond_8

    .line 139
    .line 140
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    check-cast v8, Ljava/lang/String;

    .line 145
    .line 146
    if-nez v8, :cond_6

    .line 147
    .line 148
    iget-object v8, v6, Lc5/i4;->j:Lc5/e3;

    .line 149
    .line 150
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 151
    .line 152
    .line 153
    const-string v9, "Param name can\'t be null"

    .line 154
    .line 155
    iget-object v8, v8, Lc5/e3;->f:Lc5/c3;

    .line 156
    .line 157
    invoke-virtual {v8, v9}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_6
    iget-object v9, v6, Lc5/i4;->m:Lc5/v7;

    .line 162
    .line 163
    invoke-static {v9}, Lc5/i4;->c(Lc5/y4;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-virtual {v9, v10, v8}, Lc5/v7;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    if-nez v9, :cond_7

    .line 175
    .line 176
    iget-object v9, v6, Lc5/i4;->j:Lc5/e3;

    .line 177
    .line 178
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 179
    .line 180
    .line 181
    iget-object v10, v6, Lc5/i4;->n:Lc5/z2;

    .line 182
    .line 183
    invoke-virtual {v10, v8}, Lc5/z2;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    iget-object v9, v9, Lc5/e3;->j:Lc5/c3;

    .line 188
    .line 189
    const-string v10, "Param value can\'t be null"

    .line 190
    .line 191
    invoke-virtual {v9, v8, v10}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_7
    iget-object v10, v6, Lc5/i4;->m:Lc5/v7;

    .line 199
    .line 200
    invoke-static {v10}, Lc5/i4;->c(Lc5/y4;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v10, v7, v8, v9}, Lc5/v7;->x(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_8
    new-instance v5, Lc5/q;

    .line 208
    .line 209
    invoke-direct {v5, v7}, Lc5/q;-><init>(Landroid/os/Bundle;)V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_9
    new-instance v5, Lc5/q;

    .line 214
    .line 215
    new-instance v7, Landroid/os/Bundle;

    .line 216
    .line 217
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-direct {v5, v7}, Lc5/q;-><init>(Landroid/os/Bundle;)V

    .line 221
    .line 222
    .line 223
    :goto_3
    iget-object v7, v0, Lc5/i7;->b:Lc5/o7;

    .line 224
    .line 225
    iget-object v7, v7, Lc5/o7;->g:Lc5/q7;

    .line 226
    .line 227
    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    .line 228
    .line 229
    .line 230
    invoke-static {}, Lcom/google/android/gms/internal/measurement/h3;->v()Lcom/google/android/gms/internal/measurement/g3;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    iget-boolean v9, v8, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 235
    .line 236
    if-eqz v9, :cond_a

    .line 237
    .line 238
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 239
    .line 240
    .line 241
    const/4 v9, 0x0

    .line 242
    iput-boolean v9, v8, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 243
    .line 244
    :cond_a
    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 245
    .line 246
    check-cast v9, Lcom/google/android/gms/internal/measurement/h3;

    .line 247
    .line 248
    const-wide/16 v10, 0x0

    .line 249
    .line 250
    invoke-static {v10, v11, v9}, Lcom/google/android/gms/internal/measurement/h3;->H(JLcom/google/android/gms/internal/measurement/h3;)V

    .line 251
    .line 252
    .line 253
    iget-object v5, v5, Lc5/q;->a:Landroid/os/Bundle;

    .line 254
    .line 255
    invoke-virtual {v5}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    if-eqz v10, :cond_b

    .line 268
    .line 269
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    check-cast v10, Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->v()Lcom/google/android/gms/internal/measurement/k3;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/measurement/k3;->q(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5, v10}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    invoke-static {v10}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7, v11, v10}, Lc5/q7;->H(Lcom/google/android/gms/internal/measurement/k3;Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/g3;->q(Lcom/google/android/gms/internal/measurement/k3;)V

    .line 293
    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_b
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    check-cast v5, Lcom/google/android/gms/internal/measurement/h3;

    .line 301
    .line 302
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/l5;->i()[B

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    iget-object v7, v6, Lc5/i4;->j:Lc5/e3;

    .line 307
    .line 308
    invoke-static {v7}, Lc5/i4;->e(Lc5/y4;)V

    .line 309
    .line 310
    .line 311
    iget-object v8, v6, Lc5/i4;->n:Lc5/z2;

    .line 312
    .line 313
    invoke-virtual {v8, v2}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    array-length v9, v5

    .line 318
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    iget-object v7, v7, Lc5/e3;->p:Lc5/c3;

    .line 323
    .line 324
    const-string v10, "Saving default event parameters, appId, data size"

    .line 325
    .line 326
    invoke-virtual {v7, v8, v10, v9}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    new-instance v7, Landroid/content/ContentValues;

    .line 330
    .line 331
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v8, "app_id"

    .line 335
    .line 336
    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const-string v8, "parameters"

    .line 340
    .line 341
    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 342
    .line 343
    .line 344
    :try_start_0
    invoke-virtual {v0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    const-string v5, "default_event_params"

    .line 349
    .line 350
    invoke-virtual {v0, v5, v3, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 351
    .line 352
    .line 353
    move-result-wide v0

    .line 354
    const-wide/16 v7, -0x1

    .line 355
    .line 356
    cmp-long v3, v0, v7

    .line 357
    .line 358
    if-nez v3, :cond_c

    .line 359
    .line 360
    check-cast v4, Lc5/i4;

    .line 361
    .line 362
    iget-object v0, v4, Lc5/i4;->j:Lc5/e3;

    .line 363
    .line 364
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 365
    .line 366
    .line 367
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 368
    .line 369
    const-string v1, "Failed to insert default event parameters (got -1). appId"

    .line 370
    .line 371
    invoke-static {v2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v0, v3, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .line 377
    .line 378
    goto :goto_5

    .line 379
    :catch_0
    move-exception v0

    .line 380
    iget-object v1, v6, Lc5/i4;->j:Lc5/e3;

    .line 381
    .line 382
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 383
    .line 384
    .line 385
    invoke-static {v2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 390
    .line 391
    const-string v3, "Error storing default event parameters. appId"

    .line 392
    .line 393
    invoke-virtual {v1, v2, v3, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    :cond_c
    :goto_5
    return-void

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
