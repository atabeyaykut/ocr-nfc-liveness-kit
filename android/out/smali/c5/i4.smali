.class public final Lc5/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/z4;


# static fields
.field public static volatile L:Lc5/i4;


# instance fields
.field public A:Z

.field public B:Ljava/lang/Boolean;

.field public C:J

.field public volatile D:Ljava/lang/Boolean;

.field public final E:Ljava/lang/Boolean;

.field public final F:Ljava/lang/Boolean;

.field public volatile G:Z

.field public H:I

.field public final I:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final K:J

.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lcom/google/android/gms/internal/clearcut/z;

.field public final g:Lc5/e;

.field public final h:Lc5/s3;

.field public final j:Lc5/e3;

.field public final k:Lc5/h4;

.field public final l:Lc5/e7;

.field public final m:Lc5/v7;

.field public final n:Lc5/z2;

.field public final p:Lc5/w;

.field public final q:Lc5/f6;

.field public final r:Lc5/v5;

.field public final s:Lc5/u1;

.field public final t:Lc5/z5;

.field public final v:Ljava/lang/String;

.field public w:Lc5/y2;

.field public x:Lc5/t6;

.field public y:Lc5/m;

.field public z:Lc5/w2;


# direct methods
.method public constructor <init>(Lc5/c5;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lc5/i4;->A:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lc5/i4;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    iget-object v1, p1, Lc5/c5;->a:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v2, Lcom/google/android/gms/internal/clearcut/z;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/clearcut/z;-><init>(Lab/b;)V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lc5/i4;->f:Lcom/google/android/gms/internal/clearcut/z;

    .line 23
    .line 24
    sput-object v2, Lx5/a;->h:Lcom/google/android/gms/internal/clearcut/z;

    .line 25
    .line 26
    iput-object v1, p0, Lc5/i4;->a:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v2, p1, Lc5/c5;->b:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v2, p0, Lc5/i4;->b:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v2, p1, Lc5/c5;->c:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v2, p0, Lc5/i4;->c:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, p1, Lc5/c5;->d:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v2, p0, Lc5/i4;->d:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v2, p1, Lc5/c5;->h:Z

    .line 41
    .line 42
    iput-boolean v2, p0, Lc5/i4;->e:Z

    .line 43
    .line 44
    iget-object v2, p1, Lc5/c5;->e:Ljava/lang/Boolean;

    .line 45
    .line 46
    iput-object v2, p0, Lc5/i4;->D:Ljava/lang/Boolean;

    .line 47
    .line 48
    iget-object v2, p1, Lc5/c5;->j:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v2, p0, Lc5/i4;->v:Ljava/lang/String;

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    iput-boolean v2, p0, Lc5/i4;->G:Z

    .line 54
    .line 55
    iget-object v3, p1, Lc5/c5;->g:Lcom/google/android/gms/internal/measurement/e1;

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/e1;->g:Landroid/os/Bundle;

    .line 60
    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    const-string v5, "measurementEnabled"

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    instance-of v5, v4, Ljava/lang/Boolean;

    .line 70
    .line 71
    if-eqz v5, :cond_0

    .line 72
    .line 73
    check-cast v4, Ljava/lang/Boolean;

    .line 74
    .line 75
    iput-object v4, p0, Lc5/i4;->E:Ljava/lang/Boolean;

    .line 76
    .line 77
    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/e1;->g:Landroid/os/Bundle;

    .line 78
    .line 79
    const-string v4, "measurementDeactivated"

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    instance-of v4, v3, Ljava/lang/Boolean;

    .line 86
    .line 87
    if-eqz v4, :cond_1

    .line 88
    .line 89
    check-cast v3, Ljava/lang/Boolean;

    .line 90
    .line 91
    iput-object v3, p0, Lc5/i4;->F:Ljava/lang/Boolean;

    .line 92
    .line 93
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/measurement/b5;->f:Ljava/lang/Object;

    .line 94
    .line 95
    monitor-enter v3

    .line 96
    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/measurement/b5;->g:Lcom/google/android/gms/internal/measurement/k4;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    if-eqz v5, :cond_2

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    move-object v5, v1

    .line 106
    :goto_0
    if-eqz v4, :cond_3

    .line 107
    .line 108
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/k4;->a:Landroid/content/Context;

    .line 109
    .line 110
    if-eq v4, v5, :cond_4

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/n4;->d()V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/google/android/gms/internal/measurement/c5;->c()V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lcom/google/android/gms/internal/measurement/r4;->d()V

    .line 123
    .line 124
    .line 125
    new-instance v4, Lcom/google/android/gms/internal/measurement/l4;

    .line 126
    .line 127
    invoke-direct {v4, v2, v5}, Lcom/google/android/gms/internal/measurement/l4;-><init>(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v4}, Lb8/f;->y0(Lcom/google/android/gms/internal/measurement/g5;)Lcom/google/android/gms/internal/measurement/g5;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    new-instance v6, Lcom/google/android/gms/internal/measurement/k4;

    .line 135
    .line 136
    invoke-direct {v6, v5, v4}, Lcom/google/android/gms/internal/measurement/k4;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/g5;)V

    .line 137
    .line 138
    .line 139
    sput-object v6, Lcom/google/android/gms/internal/measurement/b5;->g:Lcom/google/android/gms/internal/measurement/k4;

    .line 140
    .line 141
    sget-object v4, Lcom/google/android/gms/internal/measurement/b5;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 144
    .line 145
    .line 146
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    sget-object v3, Lc5/w;->h:Lc5/w;

    .line 148
    .line 149
    iput-object v3, p0, Lc5/i4;->p:Lc5/w;

    .line 150
    .line 151
    iget-object v3, p1, Lc5/c5;->i:Ljava/lang/Long;

    .line 152
    .line 153
    if-eqz v3, :cond_5

    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 156
    .line 157
    .line 158
    move-result-wide v3

    .line 159
    goto :goto_2

    .line 160
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 161
    .line 162
    .line 163
    move-result-wide v3

    .line 164
    :goto_2
    iput-wide v3, p0, Lc5/i4;->K:J

    .line 165
    .line 166
    new-instance v3, Lc5/e;

    .line 167
    .line 168
    invoke-direct {v3, p0}, Lc5/e;-><init>(Lc5/i4;)V

    .line 169
    .line 170
    .line 171
    iput-object v3, p0, Lc5/i4;->g:Lc5/e;

    .line 172
    .line 173
    new-instance v3, Lc5/s3;

    .line 174
    .line 175
    invoke-direct {v3, p0}, Lc5/s3;-><init>(Lc5/i4;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Lc5/y4;->e()V

    .line 179
    .line 180
    .line 181
    iput-object v3, p0, Lc5/i4;->h:Lc5/s3;

    .line 182
    .line 183
    new-instance v3, Lc5/e3;

    .line 184
    .line 185
    invoke-direct {v3, p0}, Lc5/e3;-><init>(Lc5/i4;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Lc5/y4;->e()V

    .line 189
    .line 190
    .line 191
    iput-object v3, p0, Lc5/i4;->j:Lc5/e3;

    .line 192
    .line 193
    new-instance v4, Lc5/v7;

    .line 194
    .line 195
    invoke-direct {v4, p0}, Lc5/v7;-><init>(Lc5/i4;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Lc5/y4;->e()V

    .line 199
    .line 200
    .line 201
    iput-object v4, p0, Lc5/i4;->m:Lc5/v7;

    .line 202
    .line 203
    new-instance v4, Lcom/google/android/gms/internal/measurement/w5;

    .line 204
    .line 205
    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/measurement/w5;-><init>(Lc5/i4;)V

    .line 206
    .line 207
    .line 208
    new-instance v5, Lc5/z2;

    .line 209
    .line 210
    invoke-direct {v5, v4}, Lc5/z2;-><init>(Lcom/google/android/gms/internal/measurement/w5;)V

    .line 211
    .line 212
    .line 213
    iput-object v5, p0, Lc5/i4;->n:Lc5/z2;

    .line 214
    .line 215
    new-instance v4, Lc5/u1;

    .line 216
    .line 217
    invoke-direct {v4, p0}, Lc5/u1;-><init>(Lc5/i4;)V

    .line 218
    .line 219
    .line 220
    iput-object v4, p0, Lc5/i4;->s:Lc5/u1;

    .line 221
    .line 222
    new-instance v4, Lc5/f6;

    .line 223
    .line 224
    invoke-direct {v4, p0}, Lc5/f6;-><init>(Lc5/i4;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Lc5/r3;->d()V

    .line 228
    .line 229
    .line 230
    iput-object v4, p0, Lc5/i4;->q:Lc5/f6;

    .line 231
    .line 232
    new-instance v4, Lc5/v5;

    .line 233
    .line 234
    invoke-direct {v4, p0}, Lc5/v5;-><init>(Lc5/i4;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4}, Lc5/r3;->d()V

    .line 238
    .line 239
    .line 240
    iput-object v4, p0, Lc5/i4;->r:Lc5/v5;

    .line 241
    .line 242
    new-instance v5, Lc5/e7;

    .line 243
    .line 244
    invoke-direct {v5, p0}, Lc5/e7;-><init>(Lc5/i4;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5}, Lc5/r3;->d()V

    .line 248
    .line 249
    .line 250
    iput-object v5, p0, Lc5/i4;->l:Lc5/e7;

    .line 251
    .line 252
    new-instance v5, Lc5/z5;

    .line 253
    .line 254
    invoke-direct {v5, p0}, Lc5/z5;-><init>(Lc5/i4;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5}, Lc5/y4;->e()V

    .line 258
    .line 259
    .line 260
    iput-object v5, p0, Lc5/i4;->t:Lc5/z5;

    .line 261
    .line 262
    new-instance v5, Lc5/h4;

    .line 263
    .line 264
    invoke-direct {v5, p0}, Lc5/h4;-><init>(Lc5/i4;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Lc5/y4;->e()V

    .line 268
    .line 269
    .line 270
    iput-object v5, p0, Lc5/i4;->k:Lc5/h4;

    .line 271
    .line 272
    iget-object v6, p1, Lc5/c5;->g:Lcom/google/android/gms/internal/measurement/e1;

    .line 273
    .line 274
    if-eqz v6, :cond_6

    .line 275
    .line 276
    iget-wide v6, v6, Lcom/google/android/gms/internal/measurement/e1;->b:J

    .line 277
    .line 278
    const-wide/16 v8, 0x0

    .line 279
    .line 280
    cmp-long v10, v6, v8

    .line 281
    .line 282
    if-eqz v10, :cond_6

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_6
    const/4 v0, 0x1

    .line 286
    :goto_3
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    instance-of v1, v1, Landroid/app/Application;

    .line 291
    .line 292
    if-eqz v1, :cond_8

    .line 293
    .line 294
    invoke-static {v4}, Lc5/i4;->d(Lc5/r3;)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v4, Lc5/x4;->a:Lc5/z4;

    .line 298
    .line 299
    check-cast v1, Lc5/i4;

    .line 300
    .line 301
    iget-object v1, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 302
    .line 303
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    instance-of v1, v1, Landroid/app/Application;

    .line 308
    .line 309
    if-eqz v1, :cond_9

    .line 310
    .line 311
    iget-object v1, v4, Lc5/x4;->a:Lc5/z4;

    .line 312
    .line 313
    check-cast v1, Lc5/i4;

    .line 314
    .line 315
    iget-object v1, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 316
    .line 317
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    check-cast v1, Landroid/app/Application;

    .line 322
    .line 323
    iget-object v3, v4, Lc5/v5;->c:Lc5/t5;

    .line 324
    .line 325
    if-nez v3, :cond_7

    .line 326
    .line 327
    new-instance v3, Lc5/t5;

    .line 328
    .line 329
    invoke-direct {v3, v4}, Lc5/t5;-><init>(Lc5/v5;)V

    .line 330
    .line 331
    .line 332
    iput-object v3, v4, Lc5/v5;->c:Lc5/t5;

    .line 333
    .line 334
    :cond_7
    if-eqz v0, :cond_9

    .line 335
    .line 336
    iget-object v0, v4, Lc5/v5;->c:Lc5/t5;

    .line 337
    .line 338
    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 339
    .line 340
    .line 341
    iget-object v0, v4, Lc5/v5;->c:Lc5/t5;

    .line 342
    .line 343
    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 344
    .line 345
    .line 346
    iget-object v0, v4, Lc5/x4;->a:Lc5/z4;

    .line 347
    .line 348
    check-cast v0, Lc5/i4;

    .line 349
    .line 350
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 351
    .line 352
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 353
    .line 354
    .line 355
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 356
    .line 357
    const-string v1, "Registered activity lifecycle callback"

    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_8
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 361
    .line 362
    .line 363
    iget-object v0, v3, Lc5/e3;->j:Lc5/c3;

    .line 364
    .line 365
    const-string v1, "Application context is not an Application"

    .line 366
    .line 367
    :goto_4
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :cond_9
    new-instance v0, Lc5/k;

    .line 371
    .line 372
    invoke-direct {v0, v2, p0, p1}, Lc5/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v5, v0}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 376
    .line 377
    .line 378
    return-void

    .line 379
    :goto_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    throw p1
.end method

.method public static final c(Lc5/y4;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Lc5/r3;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    iget-boolean v0, p0, Lc5/r3;->b:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "Component not initialized: "

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "Component not created"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public static final e(Lc5/y4;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    iget-boolean v0, p0, Lc5/y4;->b:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "Component not initialized: "

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "Component not created"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public static r(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/e1;Ljava/lang/Long;)Lc5/i4;
    .locals 12

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/e1;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/e1;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/e1;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/e1;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/e1;->b:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/e1;->c:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/e1;->d:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/e1;->g:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/measurement/e1;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-static {p0}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    sget-object v0, Lc5/i4;->L:Lc5/i4;

    if-nez v0, :cond_3

    const-class v0, Lc5/i4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc5/i4;->L:Lc5/i4;

    if-nez v1, :cond_2

    new-instance v1, Lc5/c5;

    invoke-direct {v1, p0, p1, p2}, Lc5/c5;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/e1;Ljava/lang/Long;)V

    new-instance p0, Lc5/i4;

    invoke-direct {p0, v1}, Lc5/i4;-><init>(Lc5/c5;)V

    sput-object p0, Lc5/i4;->L:Lc5/i4;

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/e1;->g:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lc5/i4;->L:Lc5/i4;

    invoke-static {p0}, Lr3/r;->i(Ljava/lang/Object;)V

    sget-object p0, Lc5/i4;->L:Lc5/i4;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/e1;->g:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lc5/i4;->D:Ljava/lang/Boolean;

    :cond_4
    :goto_0
    sget-object p0, Lc5/i4;->L:Lc5/i4;

    invoke-static {p0}, Lr3/r;->i(Ljava/lang/Object;)V

    sget-object p0, Lc5/i4;->L:Lc5/i4;

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/i4;->f()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lc5/i4;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lc5/i4;->k:Lc5/h4;

    .line 6
    .line 7
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lc5/i4;->B:Ljava/lang/Boolean;

    .line 14
    .line 15
    iget-object v1, p0, Lc5/i4;->p:Lc5/w;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-wide v2, p0, Lc5/i4;->C:J

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    cmp-long v6, v2, v4

    .line 24
    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_5

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-wide v4, p0, Lc5/i4;->C:J

    .line 41
    .line 42
    sub-long/2addr v2, v4

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    const-wide/16 v4, 0x3e8

    .line 48
    .line 49
    cmp-long v0, v2, v4

    .line 50
    .line 51
    if-lez v0, :cond_5

    .line 52
    .line 53
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    iput-wide v0, p0, Lc5/i4;->C:J

    .line 61
    .line 62
    iget-object v0, p0, Lc5/i4;->m:Lc5/v7;

    .line 63
    .line 64
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 65
    .line 66
    .line 67
    const-string v1, "android.permission.INTERNET"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lc5/v7;->O(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v3, 0x1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lc5/v7;->O(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    iget-object v1, p0, Lc5/i4;->a:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {v1}, Ly3/c;->a(Landroid/content/Context;)Ly3/b;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Ly3/b;->c()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_1

    .line 96
    .line 97
    iget-object v4, p0, Lc5/i4;->g:Lc5/e;

    .line 98
    .line 99
    invoke-virtual {v4}, Lc5/e;->t()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_1

    .line 104
    .line 105
    invoke-static {v1}, Lc5/v7;->U(Landroid/content/Context;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    invoke-static {v1}, Lc5/v7;->V(Landroid/content/Context;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    :cond_1
    const/4 v1, 0x1

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    const/4 v1, 0x0

    .line 120
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, p0, Lc5/i4;->B:Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    invoke-virtual {p0}, Lc5/i4;->o()Lc5/w2;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lc5/w2;->n()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p0}, Lc5/i4;->o()Lc5/w2;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4}, Lc5/r3;->c()V

    .line 145
    .line 146
    .line 147
    iget-object v4, v4, Lc5/w2;->m:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p0}, Lc5/i4;->o()Lc5/w2;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v5}, Lc5/r3;->c()V

    .line 154
    .line 155
    .line 156
    iget-object v6, v5, Lc5/w2;->n:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v6}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    iget-object v5, v5, Lc5/w2;->n:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1, v4, v5}, Lc5/v7;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_3

    .line 168
    .line 169
    invoke-virtual {p0}, Lc5/i4;->o()Lc5/w2;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lc5/r3;->c()V

    .line 174
    .line 175
    .line 176
    iget-object v0, v0, Lc5/w2;->m:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_4

    .line 183
    .line 184
    :cond_3
    const/4 v2, 0x1

    .line 185
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iput-object v0, p0, Lc5/i4;->B:Ljava/lang/Boolean;

    .line 190
    .line 191
    :cond_5
    iget-object v0, p0, Lc5/i4;->B:Ljava/lang/Boolean;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    return v0

    .line 198
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 199
    .line 200
    const-string v1, "AppMeasurement is not initialized"

    .line 201
    .line 202
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v0
.end method

.method public final f()I
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/i4;->k:Lc5/h4;

    .line 2
    .line 3
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lc5/i4;->g:Lc5/e;

    .line 10
    .line 11
    invoke-virtual {v0}, Lc5/e;->r()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    iget-object v0, p0, Lc5/i4;->F:Ljava/lang/Boolean;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x2

    .line 31
    return v0

    .line 32
    :cond_2
    :goto_0
    iget-object v0, p0, Lc5/i4;->k:Lc5/h4;

    .line 33
    .line 34
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 38
    .line 39
    .line 40
    iget-boolean v0, p0, Lc5/i4;->G:Z

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    const/16 v0, 0x8

    .line 45
    .line 46
    return v0

    .line 47
    :cond_3
    iget-object v0, p0, Lc5/i4;->h:Lc5/s3;

    .line 48
    .line 49
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lc5/s3;->o()Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    return v1

    .line 66
    :cond_4
    const/4 v0, 0x3

    .line 67
    return v0

    .line 68
    :cond_5
    iget-object v0, p0, Lc5/i4;->g:Lc5/e;

    .line 69
    .line 70
    iget-object v2, v0, Lc5/x4;->a:Lc5/z4;

    .line 71
    .line 72
    check-cast v2, Lc5/i4;

    .line 73
    .line 74
    iget-object v2, v2, Lc5/i4;->f:Lcom/google/android/gms/internal/clearcut/z;

    .line 75
    .line 76
    const-string v2, "firebase_analytics_collection_enabled"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lc5/e;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    return v1

    .line 91
    :cond_6
    const/4 v0, 0x4

    .line 92
    return v0

    .line 93
    :cond_7
    iget-object v0, p0, Lc5/i4;->E:Ljava/lang/Boolean;

    .line 94
    .line 95
    if-eqz v0, :cond_9

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_8

    .line 102
    .line 103
    return v1

    .line 104
    :cond_8
    const/4 v0, 0x5

    .line 105
    return v0

    .line 106
    :cond_9
    iget-object v0, p0, Lc5/i4;->g:Lc5/e;

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    sget-object v3, Lc5/r2;->T:Lc5/q2;

    .line 110
    .line 111
    invoke-virtual {v0, v2, v3}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_b

    .line 116
    .line 117
    iget-object v0, p0, Lc5/i4;->D:Ljava/lang/Boolean;

    .line 118
    .line 119
    if-eqz v0, :cond_b

    .line 120
    .line 121
    iget-object v0, p0, Lc5/i4;->D:Ljava/lang/Boolean;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_a

    .line 128
    .line 129
    return v1

    .line 130
    :cond_a
    const/4 v0, 0x7

    .line 131
    return v0

    .line 132
    :cond_b
    return v1
.end method

.method public final g()Lc5/u1;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lc5/i4;->s:Lc5/u1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Lc5/e;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lc5/i4;->g:Lc5/e;

    return-object v0
.end method

.method public final i()Lw3/a;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lc5/i4;->p:Lc5/w;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/clearcut/z;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lc5/i4;->f:Lcom/google/android/gms/internal/clearcut/z;

    return-object v0
.end method

.method public final k()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lc5/i4;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final l()Lc5/h4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lc5/i4;->k:Lc5/h4;

    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    return-object v0
.end method

.method public final m()Lc5/e3;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lc5/i4;->j:Lc5/e3;

    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    return-object v0
.end method

.method public final n()Lc5/m;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lc5/i4;->y:Lc5/m;

    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    iget-object v0, p0, Lc5/i4;->y:Lc5/m;

    return-object v0
.end method

.method public final o()Lc5/w2;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lc5/i4;->z:Lc5/w2;

    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    iget-object v0, p0, Lc5/i4;->z:Lc5/w2;

    return-object v0
.end method

.method public final p()Lc5/y2;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lc5/i4;->w:Lc5/y2;

    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    iget-object v0, p0, Lc5/i4;->w:Lc5/y2;

    return-object v0
.end method

.method public final q()Lc5/z2;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lc5/i4;->n:Lc5/z2;

    return-object v0
.end method

.method public final s()Lc5/t6;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lc5/i4;->x:Lc5/t6;

    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    iget-object v0, p0, Lc5/i4;->x:Lc5/t6;

    return-object v0
.end method
