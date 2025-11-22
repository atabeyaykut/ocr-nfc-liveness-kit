.class public final Lc5/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc5/w4;Lc5/s;Lc5/y7;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc5/r4;->a:I

    .line 1
    iput-object p1, p0, Lc5/r4;->d:Ljava/lang/Object;

    iput-object p2, p0, Lc5/r4;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc5/r4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc5/x6;Lc5/e3;Landroid/app/job/JobParameters;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc5/r4;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/r4;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc5/r4;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc5/r4;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lc5/r4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lc5/r4;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lc5/r4;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lc5/r4;->d:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :pswitch_0
    check-cast v3, Lc5/w4;

    .line 15
    .line 16
    check-cast v2, Lc5/s;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v0, v2, Lc5/s;->a:Ljava/lang/String;

    .line 22
    .line 23
    const-string v4, "_cmp"

    .line 24
    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v3, v3, Lc5/w4;->a:Lc5/o7;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, v2, Lc5/s;->b:Lc5/q;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, v0, Lc5/q;->a:Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/os/BaseBundle;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v4, "_cis"

    .line 47
    .line 48
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v4, "referrer broadcast"

    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_1

    .line 59
    .line 60
    const-string v4, "referrer API"

    .line 61
    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    :cond_1
    invoke-virtual {v3}, Lc5/o7;->m()Lc5/e3;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2}, Lc5/s;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v0, v0, Lc5/e3;->m:Lc5/c3;

    .line 77
    .line 78
    const-string v5, "Event has been filtered "

    .line 79
    .line 80
    invoke-virtual {v0, v4, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lc5/s;

    .line 84
    .line 85
    const-string v7, "_cmpx"

    .line 86
    .line 87
    iget-object v8, v2, Lc5/s;->b:Lc5/q;

    .line 88
    .line 89
    iget-object v9, v2, Lc5/s;->c:Ljava/lang/String;

    .line 90
    .line 91
    iget-wide v10, v2, Lc5/s;->d:J

    .line 92
    .line 93
    move-object v6, v0

    .line 94
    invoke-direct/range {v6 .. v11}, Lc5/s;-><init>(Ljava/lang/String;Lc5/q;Ljava/lang/String;J)V

    .line 95
    .line 96
    .line 97
    move-object v2, v0

    .line 98
    :cond_2
    :goto_0
    iget-object v0, v2, Lc5/s;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {}, Lcom/google/android/gms/internal/measurement/qb;->c()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Lc5/o7;->K()Lc5/e;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    sget-object v5, Lc5/r2;->q0:Lc5/q2;

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    invoke-virtual {v4, v6, v5}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    check-cast v1, Lc5/y7;

    .line 115
    .line 116
    if-eqz v4, :cond_a

    .line 117
    .line 118
    iget-object v4, v3, Lc5/o7;->a:Lc5/c4;

    .line 119
    .line 120
    iget-object v7, v3, Lc5/o7;->g:Lc5/q7;

    .line 121
    .line 122
    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    .line 123
    .line 124
    .line 125
    iget-object v8, v1, Lc5/y7;->a:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v4, v8}, Lc5/c4;->n(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-nez v4, :cond_3

    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :cond_3
    invoke-virtual {v3}, Lc5/o7;->m()Lc5/e3;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    iget-object v4, v4, Lc5/e3;->p:Lc5/c3;

    .line 140
    .line 141
    iget-object v8, v1, Lc5/y7;->a:Ljava/lang/String;

    .line 142
    .line 143
    const-string v9, "EES config found for"

    .line 144
    .line 145
    invoke-virtual {v4, v8, v9}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v4, v3, Lc5/o7;->a:Lc5/c4;

    .line 149
    .line 150
    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lcom/google/android/gms/internal/measurement/qb;->c()V

    .line 154
    .line 155
    .line 156
    iget-object v9, v4, Lc5/x4;->a:Lc5/z4;

    .line 157
    .line 158
    check-cast v9, Lc5/i4;

    .line 159
    .line 160
    iget-object v9, v9, Lc5/i4;->g:Lc5/e;

    .line 161
    .line 162
    invoke-virtual {v9, v6, v5}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_5

    .line 167
    .line 168
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_4

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    iget-object v4, v4, Lc5/c4;->j:Lc5/a4;

    .line 176
    .line 177
    invoke-virtual {v4, v8}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    move-object v6, v4

    .line 182
    check-cast v6, Lcom/google/android/gms/internal/measurement/s0;

    .line 183
    .line 184
    :cond_5
    :goto_1
    if-eqz v6, :cond_9

    .line 185
    .line 186
    :try_start_0
    iget-object v4, v6, Lcom/google/android/gms/internal/measurement/s0;->c:Lcom/google/android/gms/internal/measurement/c;

    .line 187
    .line 188
    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    .line 189
    .line 190
    .line 191
    iget-object v5, v2, Lc5/s;->b:Lc5/q;

    .line 192
    .line 193
    invoke-virtual {v5}, Lc5/q;->E()Landroid/os/Bundle;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    const/4 v8, 0x1

    .line 198
    invoke-virtual {v7, v5, v8}, Lc5/q7;->G(Landroid/os/Bundle;Z)Ljava/util/HashMap;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    sget-object v9, La6/a;->e:[Ljava/lang/String;

    .line 203
    .line 204
    sget-object v10, La6/a;->c:[Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {v9, v0, v10}, Lb8/f;->H0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    if-nez v9, :cond_6

    .line 211
    .line 212
    move-object v9, v0

    .line 213
    :cond_6
    new-instance v10, Lcom/google/android/gms/internal/measurement/b;

    .line 214
    .line 215
    iget-wide v11, v2, Lc5/s;->d:J

    .line 216
    .line 217
    invoke-direct {v10, v9, v11, v12, v5}, Lcom/google/android/gms/internal/measurement/b;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/s0;->b(Lcom/google/android/gms/internal/measurement/b;)Z

    .line 221
    .line 222
    .line 223
    move-result v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/n1; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    if-nez v5, :cond_7

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_7
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/c;->b:Lcom/google/android/gms/internal/measurement/b;

    .line 228
    .line 229
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/c;->a:Lcom/google/android/gms/internal/measurement/b;

    .line 230
    .line 231
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/b;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    xor-int/2addr v5, v8

    .line 236
    if-eqz v5, :cond_8

    .line 237
    .line 238
    invoke-virtual {v3}, Lc5/o7;->m()Lc5/e3;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    const-string v5, "EES edited event"

    .line 243
    .line 244
    iget-object v2, v2, Lc5/e3;->p:Lc5/c3;

    .line 245
    .line 246
    invoke-virtual {v2, v0, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/c;->b:Lcom/google/android/gms/internal/measurement/b;

    .line 253
    .line 254
    invoke-virtual {v7, v0}, Lc5/q7;->z(Lcom/google/android/gms/internal/measurement/b;)Lc5/s;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    :cond_8
    invoke-virtual {v3}, Lc5/o7;->a()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v2, v1}, Lc5/o7;->d(Lc5/s;Lc5/y7;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/c;->c:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    xor-int/2addr v0, v8

    .line 271
    if-eqz v0, :cond_b

    .line 272
    .line 273
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/c;->c:Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-eqz v2, :cond_b

    .line 284
    .line 285
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    check-cast v2, Lcom/google/android/gms/internal/measurement/b;

    .line 290
    .line 291
    invoke-virtual {v3}, Lc5/o7;->m()Lc5/e3;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/b;->a:Ljava/lang/String;

    .line 296
    .line 297
    iget-object v4, v4, Lc5/e3;->p:Lc5/c3;

    .line 298
    .line 299
    const-string v6, "EES logging created event"

    .line 300
    .line 301
    invoke-virtual {v4, v5, v6}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7, v2}, Lc5/q7;->z(Lcom/google/android/gms/internal/measurement/b;)Lc5/s;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v3}, Lc5/o7;->a()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v3, v2, v1}, Lc5/o7;->d(Lc5/s;Lc5/y7;)V

    .line 315
    .line 316
    .line 317
    goto :goto_2

    .line 318
    :catch_0
    invoke-virtual {v3}, Lc5/o7;->m()Lc5/e3;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    iget-object v5, v1, Lc5/y7;->b:Ljava/lang/String;

    .line 323
    .line 324
    iget-object v4, v4, Lc5/e3;->f:Lc5/c3;

    .line 325
    .line 326
    const-string v6, "EES error. appId, eventName"

    .line 327
    .line 328
    invoke-virtual {v4, v5, v6, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    :goto_3
    invoke-virtual {v3}, Lc5/o7;->m()Lc5/e3;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    iget-object v4, v4, Lc5/e3;->p:Lc5/c3;

    .line 336
    .line 337
    const-string v5, "EES was not applied to event"

    .line 338
    .line 339
    invoke-virtual {v4, v0, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    goto :goto_4

    .line 343
    :cond_9
    invoke-virtual {v3}, Lc5/o7;->m()Lc5/e3;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    const-string v4, "EES not loaded for"

    .line 348
    .line 349
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 350
    .line 351
    invoke-virtual {v0, v8, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    :goto_4
    invoke-virtual {v3}, Lc5/o7;->a()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3, v2, v1}, Lc5/o7;->d(Lc5/s;Lc5/y7;)V

    .line 358
    .line 359
    .line 360
    goto :goto_5

    .line 361
    :cond_a
    invoke-virtual {v3}, Lc5/o7;->a()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3, v2, v1}, Lc5/o7;->d(Lc5/s;Lc5/y7;)V

    .line 365
    .line 366
    .line 367
    :cond_b
    :goto_5
    return-void

    .line 368
    :goto_6
    check-cast v2, Lc5/x6;

    .line 369
    .line 370
    check-cast v1, Lc5/e3;

    .line 371
    .line 372
    check-cast v3, Landroid/app/job/JobParameters;

    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    iget-object v0, v1, Lc5/e3;->p:Lc5/c3;

    .line 378
    .line 379
    const-string v1, "AppMeasurementJobService processed last upload request."

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object v0, v2, Lc5/x6;->a:Landroid/content/Context;

    .line 385
    .line 386
    check-cast v0, Lc5/w6;

    .line 387
    .line 388
    invoke-interface {v0, v3}, Lc5/w6;->c(Landroid/app/job/JobParameters;)V

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    nop

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
