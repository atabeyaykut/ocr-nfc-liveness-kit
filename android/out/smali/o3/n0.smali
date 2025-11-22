.class public final Lo3/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo3/n0;->a:I

    iput-object p2, p0, Lo3/n0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lo3/n0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lh5/z;Ljava/util/concurrent/Callable;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lo3/n0;->a:I

    .line 2
    iput-object p1, p0, Lo3/n0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo3/n0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo3/n0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh5/s;

    .line 4
    .line 5
    iget-object v0, v0, Lh5/s;->c:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lo3/n0;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lh5/s;

    .line 11
    .line 12
    iget-object v1, v1, Lh5/s;->d:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    check-cast v2, Lh5/g;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    check-cast v1, Lh5/g;

    .line 20
    .line 21
    iget-object v2, p0, Lo3/n0;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lh5/k;

    .line 24
    .line 25
    invoke-virtual {v2}, Lh5/k;->i()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v1, v2}, Lh5/g;->onSuccess(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lo3/n0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_9

    .line 9
    .line 10
    :pswitch_0
    invoke-direct {p0}, Lo3/n0;->a()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_1
    iget-object v0, p0, Lo3/n0;->c:Ljava/lang/Object;

    .line 15
    .line 16
    :try_start_0
    move-object v1, v0

    .line 17
    check-cast v1, Lh5/s;

    .line 18
    .line 19
    iget-object v1, v1, Lh5/s;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lh5/b;

    .line 22
    .line 23
    iget-object v2, p0, Lo3/n0;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lh5/k;

    .line 26
    .line 27
    invoke-interface {v1, v2}, Lh5/b;->c(Lh5/k;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lh5/k;
    :try_end_0
    .catch Lh5/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    check-cast v0, Lh5/s;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/NullPointerException;

    .line 38
    .line 39
    const-string v2, "Continuation returned null"

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lh5/s;->e(Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_0
    sget-object v2, Lh5/m;->b:Lh5/x;

    .line 49
    .line 50
    check-cast v0, Lh5/s;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v0}, Lh5/k;->d(Ljava/util/concurrent/Executor;Lh5/g;)Lh5/z;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2, v0}, Lh5/k;->c(Ljava/util/concurrent/Executor;Lh5/f;)Lh5/z;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, v0}, Lh5/k;->a(Lh5/x;Lh5/d;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception v1

    .line 63
    check-cast v0, Lh5/s;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    instance-of v2, v2, Ljava/lang/Exception;

    .line 72
    .line 73
    check-cast v0, Lh5/s;

    .line 74
    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    iget-object v0, v0, Lh5/s;->d:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Lh5/z;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/Exception;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    iget-object v0, v0, Lh5/s;->d:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Lh5/z;

    .line 91
    .line 92
    :goto_1
    invoke-virtual {v0, v1}, Lh5/z;->q(Ljava/lang/Exception;)V

    .line 93
    .line 94
    .line 95
    :goto_2
    return-void

    .line 96
    :pswitch_2
    iget-object v0, p0, Lo3/n0;->c:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 99
    .line 100
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 101
    .line 102
    iget-object v3, v3, Lc5/i4;->m:Lc5/v7;

    .line 103
    .line 104
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    .line 105
    .line 106
    .line 107
    iget-object v4, p0, Lo3/n0;->b:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v4, Lcom/google/android/gms/internal/measurement/y0;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 112
    .line 113
    iget-object v5, v0, Lc5/i4;->D:Ljava/lang/Boolean;

    .line 114
    .line 115
    if-eqz v5, :cond_2

    .line 116
    .line 117
    iget-object v0, v0, Lc5/i4;->D:Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    const/4 v1, 0x1

    .line 126
    :cond_2
    invoke-virtual {v3, v4, v1}, Lc5/v7;->y(Lcom/google/android/gms/internal/measurement/y0;Z)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_3
    iget-object v0, p0, Lo3/n0;->c:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 135
    .line 136
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 137
    .line 138
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 139
    .line 140
    .line 141
    iget-object v3, p0, Lo3/n0;->b:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v3, Lcom/google/android/gms/internal/clearcut/f;

    .line 144
    .line 145
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lc5/r3;->c()V

    .line 149
    .line 150
    .line 151
    if-eqz v3, :cond_4

    .line 152
    .line 153
    iget-object v4, v0, Lc5/v5;->d:Lcom/google/android/gms/internal/clearcut/f;

    .line 154
    .line 155
    if-eq v3, v4, :cond_4

    .line 156
    .line 157
    if-nez v4, :cond_3

    .line 158
    .line 159
    const/4 v1, 0x1

    .line 160
    :cond_3
    const-string v2, "EventInterceptor already set."

    .line 161
    .line 162
    invoke-static {v2, v1}, Lr3/r;->k(Ljava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    :cond_4
    iput-object v3, v0, Lc5/v5;->d:Lcom/google/android/gms/internal/clearcut/f;

    .line 166
    .line 167
    return-void

    .line 168
    :pswitch_4
    iget-object v0, p0, Lo3/n0;->c:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Lc5/v5;

    .line 171
    .line 172
    iget-object v1, p0, Lo3/n0;->b:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v1, Ljava/lang/Boolean;

    .line 175
    .line 176
    invoke-virtual {v0, v1, v2}, Lc5/v5;->y(Ljava/lang/Boolean;Z)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :pswitch_5
    iget-object v0, p0, Lo3/n0;->b:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 183
    .line 184
    monitor-enter v0

    .line 185
    :try_start_1
    iget-object v1, p0, Lo3/n0;->b:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 188
    .line 189
    iget-object v2, p0, Lo3/n0;->c:Ljava/lang/Object;

    .line 190
    .line 191
    move-object v3, v2

    .line 192
    check-cast v3, Lc5/v5;

    .line 193
    .line 194
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 195
    .line 196
    check-cast v3, Lc5/i4;

    .line 197
    .line 198
    iget-object v3, v3, Lc5/i4;->g:Lc5/e;

    .line 199
    .line 200
    check-cast v2, Lc5/v5;

    .line 201
    .line 202
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 203
    .line 204
    check-cast v2, Lc5/i4;

    .line 205
    .line 206
    invoke-virtual {v2}, Lc5/i4;->o()Lc5/w2;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v2}, Lc5/w2;->h()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    sget-object v4, Lc5/r2;->K:Lc5/q2;

    .line 215
    .line 216
    invoke-virtual {v3, v2, v4}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    .line 226
    .line 227
    :try_start_2
    iget-object v1, p0, Lo3/n0;->b:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 232
    .line 233
    .line 234
    monitor-exit v0

    .line 235
    return-void

    .line 236
    :catchall_0
    move-exception v1

    .line 237
    iget-object v2, p0, Lo3/n0;->b:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 242
    .line 243
    .line 244
    throw v1

    .line 245
    :catchall_1
    move-exception v1

    .line 246
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    throw v1

    .line 248
    :pswitch_6
    iget-object v0, p0, Lo3/n0;->c:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v0, Lc5/w4;

    .line 251
    .line 252
    iget-object v1, v0, Lc5/w4;->a:Lc5/o7;

    .line 253
    .line 254
    invoke-virtual {v1}, Lc5/o7;->a()V

    .line 255
    .line 256
    .line 257
    iget-object v0, v0, Lc5/w4;->a:Lc5/o7;

    .line 258
    .line 259
    iget-object v1, p0, Lo3/n0;->b:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v1, Lc5/y7;

    .line 262
    .line 263
    invoke-virtual {v0}, Lc5/o7;->l()Lc5/h4;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v2}, Lc5/h4;->b()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Lc5/o7;->b()V

    .line 271
    .line 272
    .line 273
    iget-object v2, v1, Lc5/y7;->a:Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {v2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v1}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :pswitch_7
    iget-object v0, p0, Lo3/n0;->c:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v0, Lo3/p0;

    .line 285
    .line 286
    iget-object v3, p0, Lo3/n0;->b:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v3, Lf5/l;

    .line 289
    .line 290
    iget-object v4, v3, Lf5/l;->b:Lm3/b;

    .line 291
    .line 292
    iget v5, v4, Lm3/b;->b:I

    .line 293
    .line 294
    if-nez v5, :cond_5

    .line 295
    .line 296
    const/4 v5, 0x1

    .line 297
    goto :goto_3

    .line 298
    :cond_5
    const/4 v5, 0x0

    .line 299
    :goto_3
    if-eqz v5, :cond_c

    .line 300
    .line 301
    iget-object v3, v3, Lf5/l;->c:Lr3/l0;

    .line 302
    .line 303
    invoke-static {v3}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    iget-object v4, v3, Lr3/l0;->c:Lm3/b;

    .line 307
    .line 308
    iget v5, v4, Lm3/b;->b:I

    .line 309
    .line 310
    if-nez v5, :cond_6

    .line 311
    .line 312
    const/4 v1, 0x1

    .line 313
    :cond_6
    if-nez v1, :cond_7

    .line 314
    .line 315
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    new-instance v2, Ljava/lang/Exception;

    .line 320
    .line 321
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 322
    .line 323
    .line 324
    const-string v3, "Sign-in succeeded with resolve account failure: "

    .line 325
    .line 326
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    const-string v3, "SignInCoordinator"

    .line 331
    .line 332
    invoke-static {v3, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_7
    iget-object v1, v0, Lo3/p0;->g:Lo3/o0;

    .line 337
    .line 338
    iget-object v2, v3, Lr3/l0;->b:Landroid/os/IBinder;

    .line 339
    .line 340
    if-nez v2, :cond_8

    .line 341
    .line 342
    const/4 v2, 0x0

    .line 343
    goto :goto_5

    .line 344
    :cond_8
    sget v3, Lr3/k$a;->a:I

    .line 345
    .line 346
    const-string v3, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 347
    .line 348
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    instance-of v4, v3, Lr3/k;

    .line 353
    .line 354
    if-eqz v4, :cond_9

    .line 355
    .line 356
    check-cast v3, Lr3/k;

    .line 357
    .line 358
    goto :goto_4

    .line 359
    :cond_9
    new-instance v3, Lr3/n1;

    .line 360
    .line 361
    invoke-direct {v3, v2}, Lr3/n1;-><init>(Landroid/os/IBinder;)V

    .line 362
    .line 363
    .line 364
    :goto_4
    move-object v2, v3

    .line 365
    :goto_5
    check-cast v1, Lo3/d0;

    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    if-eqz v2, :cond_b

    .line 371
    .line 372
    iget-object v3, v0, Lo3/p0;->d:Ljava/util/Set;

    .line 373
    .line 374
    if-nez v3, :cond_a

    .line 375
    .line 376
    goto :goto_6

    .line 377
    :cond_a
    iput-object v2, v1, Lo3/d0;->c:Lr3/k;

    .line 378
    .line 379
    iput-object v3, v1, Lo3/d0;->d:Ljava/util/Set;

    .line 380
    .line 381
    iget-boolean v4, v1, Lo3/d0;->e:Z

    .line 382
    .line 383
    if-eqz v4, :cond_d

    .line 384
    .line 385
    iget-object v1, v1, Lo3/d0;->a:Ln3/a$e;

    .line 386
    .line 387
    invoke-interface {v1, v2, v3}, Ln3/a$e;->j(Lr3/k;Ljava/util/Set;)V

    .line 388
    .line 389
    .line 390
    goto :goto_8

    .line 391
    :cond_b
    :goto_6
    new-instance v2, Ljava/lang/Exception;

    .line 392
    .line 393
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 394
    .line 395
    .line 396
    const-string v3, "GoogleApiManager"

    .line 397
    .line 398
    const-string v4, "Received null response from onSignInSuccess"

    .line 399
    .line 400
    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .line 402
    .line 403
    new-instance v2, Lm3/b;

    .line 404
    .line 405
    const/4 v3, 0x4

    .line 406
    invoke-direct {v2, v3}, Lm3/b;-><init>(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1, v2}, Lo3/d0;->b(Lm3/b;)V

    .line 410
    .line 411
    .line 412
    goto :goto_8

    .line 413
    :cond_c
    :goto_7
    iget-object v1, v0, Lo3/p0;->g:Lo3/o0;

    .line 414
    .line 415
    check-cast v1, Lo3/d0;

    .line 416
    .line 417
    invoke-virtual {v1, v4}, Lo3/d0;->b(Lm3/b;)V

    .line 418
    .line 419
    .line 420
    :cond_d
    :goto_8
    iget-object v0, v0, Lo3/p0;->f:Le5/f;

    .line 421
    .line 422
    invoke-interface {v0}, Ln3/a$e;->h()V

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :goto_9
    iget-object v0, p0, Lo3/n0;->b:Ljava/lang/Object;

    .line 427
    .line 428
    :try_start_3
    move-object v1, v0

    .line 429
    check-cast v1, Lh5/z;

    .line 430
    .line 431
    iget-object v2, p0, Lo3/n0;->c:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v2, Ljava/util/concurrent/Callable;

    .line 434
    .line 435
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v1, v2}, Lh5/z;->r(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 440
    .line 441
    .line 442
    goto :goto_a

    .line 443
    :catchall_2
    move-exception v1

    .line 444
    check-cast v0, Lh5/z;

    .line 445
    .line 446
    new-instance v2, Ljava/lang/RuntimeException;

    .line 447
    .line 448
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v2}, Lh5/z;->q(Ljava/lang/Exception;)V

    .line 452
    .line 453
    .line 454
    goto :goto_a

    .line 455
    :catch_2
    move-exception v1

    .line 456
    check-cast v0, Lh5/z;

    .line 457
    .line 458
    invoke-virtual {v0, v1}, Lh5/z;->q(Ljava/lang/Exception;)V

    .line 459
    .line 460
    .line 461
    :goto_a
    return-void

    .line 462
    nop

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
