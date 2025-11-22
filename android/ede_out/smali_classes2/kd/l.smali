.class public final Lkd/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# static fields
.field public static final e:Ljava/lang/Object;

.field public static volatile f:Lkd/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Long;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public c:Lgd/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkd/l;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkd/l;->a:Ljava/lang/Long;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkd/l;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkd/l;->d:Z

    return-void
.end method

.method public static c()Lkd/l;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lkd/l;->f:Lkd/l;

    if-nez v0, :cond_1

    sget-object v1, Lkd/l;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lkd/l;->f:Lkd/l;

    if-nez v0, :cond_0

    new-instance v0, Lkd/l;

    invoke-direct {v0}, Lkd/l;-><init>()V

    sput-object v0, Lkd/l;->f:Lkd/l;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgd/e;)V
    .locals 10

    .line 1
    const-string v0, "l"

    .line 2
    .line 3
    const-string v1, "Applying settings to ScanJob"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v0, v1, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "jobscheduler"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 18
    .line 19
    invoke-static {p1}, Lkd/m;->d(Landroid/content/Context;)Lkd/m;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/util/HashSet;

    .line 24
    .line 25
    iget-object v3, p2, Lgd/e;->i:Lmd/a;

    .line 26
    .line 27
    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lkd/m;->c:Ljava/util/HashSet;

    .line 31
    .line 32
    iget-wide v3, p2, Lgd/e;->r:J

    .line 33
    .line 34
    iput-wide v3, v0, Lkd/m;->f:J

    .line 35
    .line 36
    iget-wide v3, p2, Lgd/e;->s:J

    .line 37
    .line 38
    iput-wide v3, v0, Lkd/m;->g:J

    .line 39
    .line 40
    iget-wide v3, p2, Lgd/e;->t:J

    .line 41
    .line 42
    iput-wide v3, v0, Lkd/m;->e:J

    .line 43
    .line 44
    iget-boolean v1, p2, Lgd/e;->k:Z

    .line 45
    .line 46
    iput-boolean v1, v0, Lkd/m;->h:Z

    .line 47
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object v3, v0, Lkd/m;->b:Lkd/e;

    .line 51
    .line 52
    invoke-virtual {v3}, Lkd/e;->f()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object v4, v0, Lkd/m;->a:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    .line 69
    .line 70
    new-instance v4, Ljava/util/ArrayList;

    .line 71
    .line 72
    iget-object v5, p2, Lgd/e;->a:Landroid/content/Context;

    .line 73
    .line 74
    invoke-static {v5}, Lkd/e;->c(Landroid/content/Context;)Lkd/e;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    monitor-enter v5

    .line 79
    :try_start_0
    new-instance v6, Ljava/util/HashSet;

    .line 80
    .line 81
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Lkd/e;->d()Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_1

    .line 101
    .line 102
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    check-cast v8, Lgd/l;

    .line 107
    .line 108
    invoke-virtual {v5}, Lkd/e;->d()Ljava/util/Map;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    check-cast v9, Lkd/h;

    .line 117
    .line 118
    iget-boolean v9, v9, Lkd/h;->d:Z

    .line 119
    .line 120
    if-eqz v9, :cond_0

    .line 121
    .line 122
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    monitor-exit v5

    .line 127
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .line 129
    .line 130
    new-instance v5, Ljava/util/ArrayList;

    .line 131
    .line 132
    iget-object p2, p2, Lgd/e;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 133
    .line 134
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    .line 140
    .line 141
    const-string p2, "m"

    .line 142
    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v7, "ranged regions: old="

    .line 146
    .line 147
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v7, " new="

    .line 158
    .line 159
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    new-array v7, v2, [Ljava/lang/Object;

    .line 174
    .line 175
    invoke-static {p2, v6, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    const-string p2, "m"

    .line 179
    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v7, "monitored regions: old="

    .line 183
    .line 184
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v1, " new="

    .line 195
    .line 196
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    new-array v6, v2, [Ljava/lang/Object;

    .line 211
    .line 212
    invoke-static {p2, v1, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_4

    .line 224
    .line 225
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Lgd/l;

    .line 230
    .line 231
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-nez v6, :cond_3

    .line 236
    .line 237
    const-string v6, "m"

    .line 238
    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v8, "Starting ranging region: "

    .line 242
    .line 243
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    new-array v8, v2, [Ljava/lang/Object;

    .line 254
    .line 255
    invoke-static {v6, v7, v8}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    iget-object v6, v0, Lkd/m;->a:Ljava/util/HashMap;

    .line 259
    .line 260
    new-instance v7, Lkd/f;

    .line 261
    .line 262
    new-instance v8, Lkd/a;

    .line 263
    .line 264
    iget-object v9, v0, Lkd/m;->j:Landroid/content/Context;

    .line 265
    .line 266
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    invoke-direct {v8}, Lkd/a;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-direct {v7, v8}, Lkd/f;-><init>(Lkd/a;)V

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    check-cast v6, Lgd/l;

    .line 285
    .line 286
    invoke-virtual {v1, v6}, Lgd/l;->b(Lgd/l;)Z

    .line 287
    .line 288
    .line 289
    move-result v7

    .line 290
    if-eqz v7, :cond_2

    .line 291
    .line 292
    iget-object v7, v0, Lkd/m;->a:Ljava/util/HashMap;

    .line 293
    .line 294
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    iget-object v6, v0, Lkd/m;->a:Ljava/util/HashMap;

    .line 298
    .line 299
    new-instance v7, Lkd/f;

    .line 300
    .line 301
    new-instance v8, Lkd/a;

    .line 302
    .line 303
    iget-object v9, v0, Lkd/m;->j:Landroid/content/Context;

    .line 304
    .line 305
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    invoke-direct {v8}, Lkd/a;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-direct {v7, v8}, Lkd/f;-><init>(Lkd/a;)V

    .line 312
    .line 313
    .line 314
    :goto_2
    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    goto :goto_1

    .line 318
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_6

    .line 327
    .line 328
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    check-cast v1, Lgd/l;

    .line 333
    .line 334
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    if-nez v3, :cond_5

    .line 339
    .line 340
    const-string v3, "m"

    .line 341
    .line 342
    new-instance v6, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    const-string v7, "Stopping ranging region: "

    .line 345
    .line 346
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    new-array v7, v2, [Ljava/lang/Object;

    .line 357
    .line 358
    invoke-static {v3, v6, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    iget-object v3, v0, Lkd/m;->a:Ljava/util/HashMap;

    .line 362
    .line 363
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    goto :goto_3

    .line 367
    :cond_6
    const-string p2, "m"

    .line 368
    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    const-string v3, "Updated state with "

    .line 372
    .line 373
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v3, " ranging regions and "

    .line 384
    .line 385
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    const-string v3, " monitoring regions."

    .line 396
    .line 397
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    new-array v3, v2, [Ljava/lang/Object;

    .line 405
    .line 406
    invoke-static {p2, v1, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Lkd/m;->e()V

    .line 410
    .line 411
    .line 412
    const-string p2, "l"

    .line 413
    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    const-string v3, "Applying scan job settings with background mode "

    .line 417
    .line 418
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Lkd/m;->a()Ljava/lang/Boolean;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    new-array v3, v2, [Ljava/lang/Object;

    .line 433
    .line 434
    invoke-static {p2, v1, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    iget-boolean p2, p0, Lkd/l;->d:Z

    .line 438
    .line 439
    if-eqz p2, :cond_7

    .line 440
    .line 441
    invoke-virtual {v0}, Lkd/m;->a()Ljava/lang/Boolean;

    .line 442
    .line 443
    .line 444
    move-result-object p2

    .line 445
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 446
    .line 447
    .line 448
    move-result p2

    .line 449
    if-eqz p2, :cond_7

    .line 450
    .line 451
    const-string p2, "l"

    .line 452
    .line 453
    const-string v1, "This is the first time we schedule a job and we are in background, set immediate scan flag to true in order to trigger the HW filter install."

    .line 454
    .line 455
    new-array v2, v2, [Ljava/lang/Object;

    .line 456
    .line 457
    invoke-static {p2, v1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    const/4 v2, 0x1

    .line 461
    :cond_7
    invoke-virtual {p0, p1, v0, v2}, Lkd/l;->d(Landroid/content/Context;Lkd/m;Z)V

    .line 462
    .line 463
    .line 464
    return-void

    .line 465
    :catchall_0
    move-exception p1

    .line 466
    monitor-exit v5

    .line 467
    throw p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkd/l;->c:Lgd/d;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lgd/d;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lgd/d;->b:Lgd/d;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lgd/d;

    .line 13
    .line 14
    invoke-direct {v1}, Lgd/d;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lgd/d;->b:Lgd/d;

    .line 18
    .line 19
    :cond_0
    sget-object v1, Lgd/d;->b:Lgd/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    iput-object v1, p0, Lkd/l;->c:Lgd/d;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    .line 27
    throw v1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lkd/l;->c:Lgd/d;

    .line 29
    .line 30
    invoke-virtual {v0}, Lgd/d;->c()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final d(Landroid/content/Context;Lkd/m;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lkd/l;->c:Lgd/d;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lgd/d;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lgd/d;->b:Lgd/d;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lgd/d;

    .line 13
    .line 14
    invoke-direct {v1}, Lgd/d;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lgd/d;->b:Lgd/d;

    .line 18
    .line 19
    :cond_0
    sget-object v1, Lgd/d;->b:Lgd/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    iput-object v1, p0, Lkd/l;->c:Lgd/d;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0

    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lkd/l;->c:Lgd/d;

    .line 29
    .line 30
    invoke-virtual {v0}, Lgd/d;->c()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lkd/m;->b()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p2}, Lkd/m;->c()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    sub-int/2addr v0, v1

    .line 42
    int-to-long v0, v0

    .line 43
    const-string v2, "l"

    .line 44
    .line 45
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    if-eqz p3, :cond_2

    .line 49
    .line 50
    const-string v0, "We just woke up in the background based on a new scan result or first run of the app. Start scan job immediately."

    .line 51
    .line 52
    new-array v1, v5, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {v2, v0, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    cmp-long v6, v0, v3

    .line 59
    .line 60
    if-lez v6, :cond_3

    .line 61
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-virtual {p2}, Lkd/m;->b()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    int-to-long v3, v3

    .line 71
    rem-long v3, v0, v3

    .line 72
    .line 73
    :cond_3
    const-wide/16 v0, 0x32

    .line 74
    .line 75
    cmp-long v6, v3, v0

    .line 76
    .line 77
    if-gez v6, :cond_4

    .line 78
    .line 79
    move-wide v3, v0

    .line 80
    :cond_4
    :goto_1
    const-string v0, "jobscheduler"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 87
    .line 88
    iget-object v1, p2, Lkd/m;->b:Lkd/e;

    .line 89
    .line 90
    invoke-virtual {v1}, Lkd/e;->f()Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget-object v6, p2, Lkd/m;->a:Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    add-int/2addr v6, v1

    .line 105
    if-lez v6, :cond_b

    .line 106
    .line 107
    const-class v1, Lorg/altbeacon/beacon/service/ScanJob;

    .line 108
    .line 109
    const-string v6, " millis"

    .line 110
    .line 111
    const/4 v7, 0x1

    .line 112
    if-nez p3, :cond_6

    .line 113
    .line 114
    invoke-virtual {p2}, Lkd/m;->a()Ljava/lang/Boolean;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    if-nez p3, :cond_5

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    const-string p3, "Not scheduling an immediate scan because we are in background mode.   Cancelling existing immediate ScanJob."

    .line 126
    .line 127
    new-array v3, v5, [Ljava/lang/Object;

    .line 128
    .line 129
    invoke-static {v2, p3, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    const-string p3, "immediateScanJobId"

    .line 133
    .line 134
    invoke-static {p1, p3}, Lorg/altbeacon/beacon/service/ScanJob;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    invoke-virtual {v0, p3}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_6
    :goto_2
    invoke-virtual {p2}, Lkd/m;->b()I

    .line 143
    .line 144
    .line 145
    move-result p3

    .line 146
    add-int/lit8 p3, p3, -0x32

    .line 147
    .line 148
    int-to-long v8, p3

    .line 149
    cmp-long p3, v3, v8

    .line 150
    .line 151
    if-gez p3, :cond_8

    .line 152
    .line 153
    new-instance p3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v8, "Scheduling immediate ScanJob to run in "

    .line 156
    .line 157
    invoke-direct {p3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    new-array v8, v5, [Ljava/lang/Object;

    .line 171
    .line 172
    invoke-static {v2, p3, v8}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    new-instance p3, Landroid/app/job/JobInfo$Builder;

    .line 176
    .line 177
    const-string v8, "immediateScanJobId"

    .line 178
    .line 179
    invoke-static {p1, v8}, Lorg/altbeacon/beacon/service/ScanJob;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    new-instance v9, Landroid/content/ComponentName;

    .line 184
    .line 185
    invoke-direct {v9, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .line 187
    .line 188
    invoke-direct {p3, v8, v9}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3, v7}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    new-instance v8, Landroid/os/PersistableBundle;

    .line 196
    .line 197
    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, v8}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 201
    .line 202
    .line 203
    move-result-object p3

    .line 204
    invoke-virtual {p3, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    invoke-virtual {p3, v3, v4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    invoke-virtual {p3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    invoke-virtual {v0, p3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 217
    .line 218
    .line 219
    move-result p3

    .line 220
    if-gez p3, :cond_7

    .line 221
    .line 222
    const-string v3, "Failed to schedule an immediate scan job.  Beacons will not be detected. Error: "

    .line 223
    .line 224
    invoke-static {v3, p3}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p3

    .line 228
    new-array v3, v5, [Ljava/lang/Object;

    .line 229
    .line 230
    invoke-static {v2, p3, v3}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_7
    iget-boolean p3, p0, Lkd/l;->d:Z

    .line 235
    .line 236
    if-eqz p3, :cond_9

    .line 237
    .line 238
    const-string p3, "First immediate scan job scheduled successful, change the flag to false."

    .line 239
    .line 240
    new-array v3, v5, [Ljava/lang/Object;

    .line 241
    .line 242
    invoke-static {v2, p3, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    iput-boolean v5, p0, Lkd/l;->d:Z

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_8
    const-string p3, "Not scheduling immediate scan, assuming periodic is about to run"

    .line 249
    .line 250
    new-array v3, v5, [Ljava/lang/Object;

    .line 251
    .line 252
    invoke-static {v2, p3, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_9
    :goto_3
    new-instance p3, Landroid/app/job/JobInfo$Builder;

    .line 256
    .line 257
    const-string v3, "periodicScanJobId"

    .line 258
    .line 259
    invoke-static {p1, v3}, Lorg/altbeacon/beacon/service/ScanJob;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    new-instance v4, Landroid/content/ComponentName;

    .line 264
    .line 265
    invoke-direct {v4, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .line 267
    .line 268
    invoke-direct {p3, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p3, v7}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    new-instance p3, Landroid/os/PersistableBundle;

    .line 276
    .line 277
    invoke-direct {p3}, Landroid/os/PersistableBundle;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, p3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 285
    .line 286
    const/16 v1, 0x18

    .line 287
    .line 288
    if-lt p3, v1, :cond_a

    .line 289
    .line 290
    invoke-virtual {p2}, Lkd/m;->b()I

    .line 291
    .line 292
    .line 293
    move-result p3

    .line 294
    int-to-long v3, p3

    .line 295
    invoke-static {p1, v3, v4}, Landroidx/camera/camera2/internal/d;->c(Landroid/app/job/JobInfo$Builder;J)Landroid/app/job/JobInfo$Builder;

    .line 296
    .line 297
    .line 298
    move-result-object p3

    .line 299
    goto :goto_4

    .line 300
    :cond_a
    invoke-virtual {p2}, Lkd/m;->b()I

    .line 301
    .line 302
    .line 303
    move-result p3

    .line 304
    int-to-long v3, p3

    .line 305
    invoke-virtual {p1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 306
    .line 307
    .line 308
    move-result-object p3

    .line 309
    :goto_4
    invoke-virtual {p3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    new-instance p3, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v1, "Scheduling periodic ScanJob "

    .line 319
    .line 320
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v1, " to run every "

    .line 327
    .line 328
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2}, Lkd/m;->b()I

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    new-array p3, v5, [Ljava/lang/Object;

    .line 346
    .line 347
    invoke-static {v2, p2, p3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    if-gez p1, :cond_c

    .line 355
    .line 356
    const-string p2, "Failed to schedule a periodic scan job.  Beacons will not be detected. Error: "

    .line 357
    .line 358
    invoke-static {p2, p1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    new-array p2, v5, [Ljava/lang/Object;

    .line 363
    .line 364
    invoke-static {v2, p1, p2}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_b
    const-string p2, "We are not monitoring or ranging any regions.  We are going to cancel all scan jobs."

    .line 369
    .line 370
    new-array p3, v5, [Ljava/lang/Object;

    .line 371
    .line 372
    invoke-static {v2, p2, p3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    const-string p2, "immediateScanJobId"

    .line 376
    .line 377
    invoke-static {p1, p2}, Lorg/altbeacon/beacon/service/ScanJob;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    move-result p2

    .line 381
    invoke-virtual {v0, p2}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 382
    .line 383
    .line 384
    const-string p2, "periodicScanJobId"

    .line 385
    .line 386
    invoke-static {p1, p2}, Lorg/altbeacon/beacon/service/ScanJob;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    move-result p2

    .line 390
    invoke-virtual {v0, p2}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 391
    .line 392
    .line 393
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 394
    .line 395
    const/16 p3, 0x1a

    .line 396
    .line 397
    if-lt p2, p3, :cond_c

    .line 398
    .line 399
    new-instance p2, Lkd/k;

    .line 400
    .line 401
    invoke-direct {p2, p1}, Lkd/k;-><init>(Landroid/content/Context;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p2}, Lkd/k;->h()V

    .line 405
    .line 406
    .line 407
    :cond_c
    :goto_5
    return-void
.end method
