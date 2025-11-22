.class public final Lh6/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final p:Lh6/i;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lh6/c0;

.field public final c:Lx0/t;

.field public final d:Lh6/f;

.field public final e:Lh6/g0;

.field public final f:Lm6/f;

.field public final g:Lh6/a;

.field public final h:Li6/b;

.field public final i:Le6/a;

.field public final j:Lf6/a;

.field public final k:Lh6/m0;

.field public l:Lh6/b0;

.field public final m:Lh5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh5/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lh5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh5/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lh5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh5/l<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh6/i;

    invoke-direct {v0}, Lh6/i;-><init>()V

    sput-object v0, Lh6/t;->p:Lh6/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lh6/f;Lh6/g0;Lh6/c0;Lm6/f;Lx0/t;Lh6/a;Li6/b;Lh6/m0;Le6/a;Lf6/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh5/l;

    invoke-direct {v0}, Lh5/l;-><init>()V

    iput-object v0, p0, Lh6/t;->m:Lh5/l;

    new-instance v0, Lh5/l;

    invoke-direct {v0}, Lh5/l;-><init>()V

    iput-object v0, p0, Lh6/t;->n:Lh5/l;

    new-instance v0, Lh5/l;

    invoke-direct {v0}, Lh5/l;-><init>()V

    iput-object v0, p0, Lh6/t;->o:Lh5/l;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lh6/t;->a:Landroid/content/Context;

    iput-object p2, p0, Lh6/t;->d:Lh6/f;

    iput-object p3, p0, Lh6/t;->e:Lh6/g0;

    iput-object p4, p0, Lh6/t;->b:Lh6/c0;

    iput-object p5, p0, Lh6/t;->f:Lm6/f;

    iput-object p6, p0, Lh6/t;->c:Lx0/t;

    iput-object p7, p0, Lh6/t;->g:Lh6/a;

    iput-object p8, p0, Lh6/t;->h:Li6/b;

    iput-object p10, p0, Lh6/t;->i:Le6/a;

    iput-object p11, p0, Lh6/t;->j:Lf6/a;

    iput-object p9, p0, Lh6/t;->k:Lh6/m0;

    return-void
.end method

.method public static a(Lh6/t;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x3e8

    .line 11
    .line 12
    div-long/2addr v1, v3

    .line 13
    new-instance v3, Lh6/d;

    .line 14
    .line 15
    iget-object v4, v0, Lh6/t;->e:Lh6/g0;

    .line 16
    .line 17
    invoke-direct {v3, v4}, Lh6/d;-><init>(Lh6/g0;)V

    .line 18
    .line 19
    .line 20
    sget-object v3, Lh6/d;->b:Ljava/lang/String;

    .line 21
    .line 22
    const-string v5, "Opening a new session with ID "

    .line 23
    .line 24
    invoke-static {v5, v3}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-string v11, "FirebaseCrashlytics"

    .line 29
    .line 30
    const/4 v6, 0x3

    .line 31
    invoke-static {v11, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/4 v7, 0x0

    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    invoke-static {v11, v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    new-array v5, v5, [Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    const-string v13, "18.2.6"

    .line 48
    .line 49
    aput-object v13, v5, v6

    .line 50
    .line 51
    const-string v6, "Crashlytics Android SDK/%s"

    .line 52
    .line 53
    invoke-static {v12, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    iget-object v15, v4, Lh6/g0;->c:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v5, v0, Lh6/t;->g:Lh6/a;

    .line 60
    .line 61
    iget-object v6, v5, Lh6/a;->e:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v8, v5, Lh6/a;->f:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v4}, Lh6/g0;->c()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v18

    .line 69
    iget-object v4, v5, Lh6/a;->c:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    const/4 v4, 0x4

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 v4, 0x1

    .line 76
    :goto_0
    invoke-static {v4}, Landroidx/constraintlayout/core/a;->a(I)I

    .line 77
    .line 78
    .line 79
    move-result v19

    .line 80
    iget-object v4, v5, Lh6/a;->g:Le6/d;

    .line 81
    .line 82
    new-instance v5, Lj6/x;

    .line 83
    .line 84
    move-object v14, v5

    .line 85
    move-object/from16 v16, v6

    .line 86
    .line 87
    move-object/from16 v17, v8

    .line 88
    .line 89
    move-object/from16 v20, v4

    .line 90
    .line 91
    invoke-direct/range {v14 .. v20}, Lj6/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILe6/d;)V

    .line 92
    .line 93
    .line 94
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 95
    .line 96
    sget-object v14, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v6, v0, Lh6/t;->a:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v6}, Lh6/e;->j(Landroid/content/Context;)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    new-instance v9, Lj6/z;

    .line 105
    .line 106
    invoke-direct {v9, v4, v14, v8}, Lj6/z;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    new-instance v8, Landroid/os/StatFs;

    .line 110
    .line 111
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-direct {v8, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    move-object/from16 v16, v14

    .line 127
    .line 128
    int-to-long v14, v10

    .line 129
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    move-wide/from16 v17, v1

    .line 134
    .line 135
    int-to-long v1, v8

    .line 136
    mul-long v25, v14, v1

    .line 137
    .line 138
    sget-object v1, Lh6/e$a;->a:Lh6/e$a;

    .line 139
    .line 140
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    sget-object v8, Lh6/e$a;->a:Lh6/e$a;

    .line 147
    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    const/4 v2, 0x2

    .line 151
    invoke-static {v11, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_4

    .line 156
    .line 157
    const-string v2, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    .line 158
    .line 159
    const/4 v10, 0x0

    .line 160
    invoke-static {v11, v2, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {v1, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    sget-object v10, Lh6/e$a;->b:Ljava/util/HashMap;

    .line 169
    .line 170
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Lh6/e$a;

    .line 175
    .line 176
    if-nez v2, :cond_3

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_3
    move-object v8, v2

    .line 180
    :cond_4
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 181
    .line 182
    .line 183
    move-result v20

    .line 184
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 185
    .line 186
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    .line 191
    .line 192
    .line 193
    move-result v22

    .line 194
    invoke-static {}, Lh6/e;->g()J

    .line 195
    .line 196
    .line 197
    move-result-wide v23

    .line 198
    invoke-static {v6}, Lh6/e;->i(Landroid/content/Context;)Z

    .line 199
    .line 200
    .line 201
    move-result v27

    .line 202
    invoke-static {v6}, Lh6/e;->d(Landroid/content/Context;)I

    .line 203
    .line 204
    .line 205
    move-result v28

    .line 206
    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 207
    .line 208
    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 209
    .line 210
    new-instance v6, Lj6/y;

    .line 211
    .line 212
    move-object/from16 v19, v6

    .line 213
    .line 214
    move-object/from16 v21, v2

    .line 215
    .line 216
    move-object/from16 v29, v14

    .line 217
    .line 218
    move-object/from16 v30, v15

    .line 219
    .line 220
    invoke-direct/range {v19 .. v30}, Lj6/y;-><init>(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v8, v0, Lh6/t;->i:Le6/a;

    .line 224
    .line 225
    new-instance v10, Lj6/w;

    .line 226
    .line 227
    invoke-direct {v10, v5, v9, v6}, Lj6/w;-><init>(Lj6/x;Lj6/z;Lj6/y;)V

    .line 228
    .line 229
    .line 230
    move-object v5, v8

    .line 231
    move-object v6, v3

    .line 232
    move-wide/from16 v8, v17

    .line 233
    .line 234
    invoke-interface/range {v5 .. v10}, Le6/a;->c(Ljava/lang/String;Ljava/lang/String;JLj6/c0;)V

    .line 235
    .line 236
    .line 237
    iget-object v5, v0, Lh6/t;->h:Li6/b;

    .line 238
    .line 239
    invoke-virtual {v5, v3}, Li6/b;->a(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object v0, v0, Lh6/t;->k:Lh6/m0;

    .line 243
    .line 244
    iget-object v5, v0, Lh6/m0;->a:Lh6/z;

    .line 245
    .line 246
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    sget-object v6, Lj6/a0;->a:Ljava/nio/charset/Charset;

    .line 250
    .line 251
    new-instance v6, Lj6/b$a;

    .line 252
    .line 253
    invoke-direct {v6}, Lj6/b$a;-><init>()V

    .line 254
    .line 255
    .line 256
    iput-object v13, v6, Lj6/b$a;->a:Ljava/lang/String;

    .line 257
    .line 258
    iget-object v7, v5, Lh6/z;->c:Lh6/a;

    .line 259
    .line 260
    iget-object v8, v7, Lh6/a;->a:Ljava/lang/String;

    .line 261
    .line 262
    if-eqz v8, :cond_11

    .line 263
    .line 264
    iput-object v8, v6, Lj6/b$a;->b:Ljava/lang/String;

    .line 265
    .line 266
    iget-object v8, v5, Lh6/z;->b:Lh6/g0;

    .line 267
    .line 268
    invoke-virtual {v8}, Lh6/g0;->c()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    if-eqz v9, :cond_10

    .line 273
    .line 274
    iput-object v9, v6, Lj6/b$a;->d:Ljava/lang/String;

    .line 275
    .line 276
    iget-object v9, v7, Lh6/a;->e:Ljava/lang/String;

    .line 277
    .line 278
    if-eqz v9, :cond_f

    .line 279
    .line 280
    iput-object v9, v6, Lj6/b$a;->e:Ljava/lang/String;

    .line 281
    .line 282
    iget-object v10, v7, Lh6/a;->f:Ljava/lang/String;

    .line 283
    .line 284
    if-eqz v10, :cond_e

    .line 285
    .line 286
    iput-object v10, v6, Lj6/b$a;->f:Ljava/lang/String;

    .line 287
    .line 288
    const/4 v13, 0x4

    .line 289
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v13

    .line 293
    iput-object v13, v6, Lj6/b$a;->c:Ljava/lang/Integer;

    .line 294
    .line 295
    new-instance v13, Lj6/g$a;

    .line 296
    .line 297
    invoke-direct {v13}, Lj6/g$a;-><init>()V

    .line 298
    .line 299
    .line 300
    move-object/from16 v26, v11

    .line 301
    .line 302
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 303
    .line 304
    iput-object v11, v13, Lj6/g$a;->e:Ljava/lang/Boolean;

    .line 305
    .line 306
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 307
    .line 308
    .line 309
    move-result-object v11

    .line 310
    iput-object v11, v13, Lj6/g$a;->c:Ljava/lang/Long;

    .line 311
    .line 312
    const-string v11, "Null identifier"

    .line 313
    .line 314
    if-eqz v3, :cond_d

    .line 315
    .line 316
    iput-object v3, v13, Lj6/g$a;->b:Ljava/lang/String;

    .line 317
    .line 318
    sget-object v3, Lh6/z;->f:Ljava/lang/String;

    .line 319
    .line 320
    if-eqz v3, :cond_c

    .line 321
    .line 322
    iput-object v3, v13, Lj6/g$a;->a:Ljava/lang/String;

    .line 323
    .line 324
    iget-object v3, v8, Lh6/g0;->c:Ljava/lang/String;

    .line 325
    .line 326
    if-eqz v3, :cond_b

    .line 327
    .line 328
    invoke-virtual {v8}, Lh6/g0;->c()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v23

    .line 332
    iget-object v7, v7, Lh6/a;->g:Le6/d;

    .line 333
    .line 334
    iget-object v8, v7, Le6/d;->b:Le6/d$a;

    .line 335
    .line 336
    if-nez v8, :cond_5

    .line 337
    .line 338
    new-instance v8, Le6/d$a;

    .line 339
    .line 340
    invoke-direct {v8, v7}, Le6/d$a;-><init>(Le6/d;)V

    .line 341
    .line 342
    .line 343
    iput-object v8, v7, Le6/d;->b:Le6/d$a;

    .line 344
    .line 345
    :cond_5
    iget-object v8, v7, Le6/d;->b:Le6/d$a;

    .line 346
    .line 347
    iget-object v11, v8, Le6/d$a;->a:Ljava/lang/String;

    .line 348
    .line 349
    if-nez v8, :cond_6

    .line 350
    .line 351
    new-instance v8, Le6/d$a;

    .line 352
    .line 353
    invoke-direct {v8, v7}, Le6/d$a;-><init>(Le6/d;)V

    .line 354
    .line 355
    .line 356
    iput-object v8, v7, Le6/d;->b:Le6/d$a;

    .line 357
    .line 358
    :cond_6
    iget-object v7, v7, Le6/d;->b:Le6/d$a;

    .line 359
    .line 360
    iget-object v7, v7, Le6/d$a;->b:Ljava/lang/String;

    .line 361
    .line 362
    const-string v8, ""

    .line 363
    .line 364
    move-object/from16 p0, v8

    .line 365
    .line 366
    new-instance v8, Lj6/h;

    .line 367
    .line 368
    move-object/from16 v19, v8

    .line 369
    .line 370
    move-object/from16 v20, v3

    .line 371
    .line 372
    move-object/from16 v21, v9

    .line 373
    .line 374
    move-object/from16 v22, v10

    .line 375
    .line 376
    move-object/from16 v24, v11

    .line 377
    .line 378
    move-object/from16 v25, v7

    .line 379
    .line 380
    invoke-direct/range {v19 .. v25}, Lj6/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    iput-object v8, v13, Lj6/g$a;->f:Lj6/a0$e$a;

    .line 384
    .line 385
    new-instance v3, Lj6/u$a;

    .line 386
    .line 387
    invoke-direct {v3}, Lj6/u$a;-><init>()V

    .line 388
    .line 389
    .line 390
    const/4 v7, 0x3

    .line 391
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    iput-object v7, v3, Lj6/u$a;->a:Ljava/lang/Integer;

    .line 396
    .line 397
    iput-object v4, v3, Lj6/u$a;->b:Ljava/lang/String;

    .line 398
    .line 399
    move-object/from16 v4, v16

    .line 400
    .line 401
    iput-object v4, v3, Lj6/u$a;->c:Ljava/lang/String;

    .line 402
    .line 403
    iget-object v4, v5, Lh6/z;->a:Landroid/content/Context;

    .line 404
    .line 405
    invoke-static {v4}, Lh6/e;->j(Landroid/content/Context;)Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    iput-object v5, v3, Lj6/u$a;->d:Ljava/lang/Boolean;

    .line 414
    .line 415
    invoke-virtual {v3}, Lj6/u$a;->a()Lj6/u;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    iput-object v3, v13, Lj6/g$a;->h:Lj6/a0$e$e;

    .line 420
    .line 421
    new-instance v3, Landroid/os/StatFs;

    .line 422
    .line 423
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    invoke-direct {v3, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 435
    .line 436
    .line 437
    move-result v5

    .line 438
    if-eqz v5, :cond_7

    .line 439
    .line 440
    goto :goto_2

    .line 441
    :cond_7
    sget-object v5, Lh6/z;->e:Ljava/util/HashMap;

    .line 442
    .line 443
    invoke-virtual {v1, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    check-cast v1, Ljava/lang/Integer;

    .line 452
    .line 453
    if-nez v1, :cond_8

    .line 454
    .line 455
    :goto_2
    const/4 v1, 0x7

    .line 456
    goto :goto_3

    .line 457
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    :goto_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    invoke-static {}, Lh6/e;->g()J

    .line 470
    .line 471
    .line 472
    move-result-wide v7

    .line 473
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    .line 474
    .line 475
    .line 476
    move-result v9

    .line 477
    int-to-long v9, v9

    .line 478
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    .line 479
    .line 480
    .line 481
    move-result v3

    .line 482
    int-to-long v11, v3

    .line 483
    mul-long v9, v9, v11

    .line 484
    .line 485
    invoke-static {v4}, Lh6/e;->i(Landroid/content/Context;)Z

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    invoke-static {v4}, Lh6/e;->d(Landroid/content/Context;)I

    .line 490
    .line 491
    .line 492
    move-result v4

    .line 493
    new-instance v11, Lj6/j$a;

    .line 494
    .line 495
    invoke-direct {v11}, Lj6/j$a;-><init>()V

    .line 496
    .line 497
    .line 498
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    iput-object v1, v11, Lj6/j$a;->a:Ljava/lang/Integer;

    .line 503
    .line 504
    iput-object v2, v11, Lj6/j$a;->b:Ljava/lang/String;

    .line 505
    .line 506
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    iput-object v1, v11, Lj6/j$a;->c:Ljava/lang/Integer;

    .line 511
    .line 512
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    iput-object v1, v11, Lj6/j$a;->d:Ljava/lang/Long;

    .line 517
    .line 518
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    iput-object v1, v11, Lj6/j$a;->e:Ljava/lang/Long;

    .line 523
    .line 524
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    iput-object v1, v11, Lj6/j$a;->f:Ljava/lang/Boolean;

    .line 529
    .line 530
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    iput-object v1, v11, Lj6/j$a;->g:Ljava/lang/Integer;

    .line 535
    .line 536
    iput-object v14, v11, Lj6/j$a;->h:Ljava/lang/String;

    .line 537
    .line 538
    iput-object v15, v11, Lj6/j$a;->i:Ljava/lang/String;

    .line 539
    .line 540
    invoke-virtual {v11}, Lj6/j$a;->a()Lj6/j;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    iput-object v1, v13, Lj6/g$a;->i:Lj6/a0$e$c;

    .line 545
    .line 546
    const/4 v1, 0x3

    .line 547
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    iput-object v1, v13, Lj6/g$a;->k:Ljava/lang/Integer;

    .line 552
    .line 553
    invoke-virtual {v13}, Lj6/g$a;->a()Lj6/g;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    iput-object v1, v6, Lj6/b$a;->g:Lj6/a0$e;

    .line 558
    .line 559
    invoke-virtual {v6}, Lj6/b$a;->a()Lj6/b;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    iget-object v0, v0, Lh6/m0;->b:Lm6/e;

    .line 564
    .line 565
    iget-object v0, v0, Lm6/e;->b:Lm6/f;

    .line 566
    .line 567
    iget-object v2, v1, Lj6/b;->h:Lj6/a0$e;

    .line 568
    .line 569
    if-nez v2, :cond_9

    .line 570
    .line 571
    const/4 v0, 0x3

    .line 572
    move-object/from16 v3, v26

    .line 573
    .line 574
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_a

    .line 579
    .line 580
    const-string v0, "Could not get session for report"

    .line 581
    .line 582
    const/4 v1, 0x0

    .line 583
    invoke-static {v3, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    .line 585
    .line 586
    goto :goto_5

    .line 587
    :cond_9
    move-object/from16 v3, v26

    .line 588
    .line 589
    invoke-virtual {v2}, Lj6/a0$e;->g()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v4

    .line 593
    :try_start_0
    sget-object v5, Lm6/e;->f:Lk6/a;

    .line 594
    .line 595
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    sget-object v5, Lk6/a;->a:Lv6/d;

    .line 599
    .line 600
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    new-instance v6, Ljava/io/StringWriter;

    .line 604
    .line 605
    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 606
    .line 607
    .line 608
    :try_start_1
    invoke-virtual {v5, v1, v6}, Lv6/d;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 609
    .line 610
    .line 611
    :catch_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    const-string v5, "report"

    .line 616
    .line 617
    invoke-virtual {v0, v4, v5}, Lm6/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    invoke-static {v5, v1}, Lm6/e;->e(Ljava/io/File;Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    const-string v1, "start-time"

    .line 625
    .line 626
    invoke-virtual {v0, v4, v1}, Lm6/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-virtual {v2}, Lj6/a0$e;->i()J

    .line 631
    .line 632
    .line 633
    move-result-wide v1

    .line 634
    new-instance v5, Ljava/io/OutputStreamWriter;

    .line 635
    .line 636
    new-instance v6, Ljava/io/FileOutputStream;

    .line 637
    .line 638
    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 639
    .line 640
    .line 641
    sget-object v7, Lm6/e;->d:Ljava/nio/charset/Charset;

    .line 642
    .line 643
    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 644
    .line 645
    .line 646
    move-object/from16 v6, p0

    .line 647
    .line 648
    :try_start_3
    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    const-wide/16 v6, 0x3e8

    .line 652
    .line 653
    mul-long v1, v1, v6

    .line 654
    .line 655
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 656
    .line 657
    .line 658
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 659
    .line 660
    .line 661
    goto :goto_5

    .line 662
    :catchall_0
    move-exception v0

    .line 663
    move-object v1, v0

    .line 664
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 665
    .line 666
    .line 667
    goto :goto_4

    .line 668
    :catchall_1
    move-exception v0

    .line 669
    move-object v2, v0

    .line 670
    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 671
    .line 672
    .line 673
    :goto_4
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 674
    :catch_1
    move-exception v0

    .line 675
    const-string v1, "Could not persist report for session "

    .line 676
    .line 677
    invoke-static {v1, v4}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    const/4 v2, 0x3

    .line 682
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 683
    .line 684
    .line 685
    move-result v2

    .line 686
    if-eqz v2, :cond_a

    .line 687
    .line 688
    invoke-static {v3, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    .line 690
    .line 691
    :cond_a
    :goto_5
    return-void

    .line 692
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    .line 693
    .line 694
    invoke-direct {v0, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    throw v0

    .line 698
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 699
    .line 700
    const-string v1, "Null generator"

    .line 701
    .line 702
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    throw v0

    .line 706
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    .line 707
    .line 708
    invoke-direct {v0, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    throw v0

    .line 712
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 713
    .line 714
    const-string v1, "Null displayVersion"

    .line 715
    .line 716
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    throw v0

    .line 720
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    .line 721
    .line 722
    const-string v1, "Null buildVersion"

    .line 723
    .line 724
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    throw v0

    .line 728
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    .line 729
    .line 730
    const-string v1, "Null installationUuid"

    .line 731
    .line 732
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    throw v0

    .line 736
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    .line 737
    .line 738
    const-string v1, "Null gmpAppId"

    .line 739
    .line 740
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    throw v0
.end method

.method public static b(Lh6/t;)Lh5/z;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "FirebaseCrashlytics"

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lh6/t;->p:Lh6/i;

    .line 12
    .line 13
    iget-object v3, p0, Lh6/t;->f:Lm6/f;

    .line 14
    .line 15
    iget-object v3, v3, Lm6/f;->a:Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lm6/f;->d([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/io/File;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/4 v6, 0x3

    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    const/4 v5, 0x1

    .line 56
    :try_start_1
    const-string v9, "com.google.firebase.crash.FirebaseCrash"

    .line 57
    .line 58
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    .line 60
    .line 61
    const/4 v9, 0x1

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    const/4 v9, 0x0

    .line 64
    :goto_1
    if-eqz v9, :cond_0

    .line 65
    .line 66
    :try_start_2
    const-string v5, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    .line 67
    .line 68
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    invoke-static {v4}, Lh5/n;->e(Ljava/lang/Object;)Lh5/z;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    goto :goto_2

    .line 76
    :cond_0
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_1

    .line 81
    .line 82
    const-string v6, "Logging app exception event to Firebase Analytics"

    .line 83
    .line 84
    invoke-static {v0, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    :cond_1
    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 88
    .line 89
    invoke-direct {v6, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 90
    .line 91
    .line 92
    new-instance v5, Lh6/j;

    .line 93
    .line 94
    invoke-direct {v5, p0, v7, v8}, Lh6/j;-><init>(Lh6/t;J)V

    .line 95
    .line 96
    .line 97
    invoke-static {v6, v5}, Lh5/n;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lh5/z;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    :goto_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v6, "Could not parse app exception timestamp from file "

    .line 108
    .line 109
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    invoke-static {v1}, Lh5/n;->f(Ljava/util/List;)Lh5/z;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0
.end method


# virtual methods
.method public final c(ZLo6/d;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    new-instance v3, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v0, v1, Lh6/t;->k:Lh6/m0;

    .line 8
    .line 9
    iget-object v0, v0, Lh6/m0;->b:Lm6/e;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v4, Ljava/util/TreeSet;

    .line 15
    .line 16
    iget-object v0, v0, Lm6/e;->b:Lm6/f;

    .line 17
    .line 18
    iget-object v0, v0, Lm6/f;->b:Ljava/io/File;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lm6/f;->d([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {v4, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v4, 0x2

    .line 43
    const/4 v5, 0x0

    .line 44
    if-gt v0, v2, :cond_1

    .line 45
    .line 46
    const-string v0, "No open sessions to be closed."

    .line 47
    .line 48
    const-string v2, "FirebaseCrashlytics"

    .line 49
    .line 50
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    const-string v2, "FirebaseCrashlytics"

    .line 57
    .line 58
    invoke-static {v2, v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object v6, v0

    .line 67
    check-cast v6, Ljava/lang/String;

    .line 68
    .line 69
    move-object/from16 v0, p2

    .line 70
    .line 71
    check-cast v0, Lo6/c;

    .line 72
    .line 73
    iget-object v0, v0, Lo6/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lp6/d;

    .line 80
    .line 81
    invoke-interface {v0}, Lp6/d;->a()Lp6/b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-boolean v0, v0, Lp6/b;->b:Z

    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    if-eqz v0, :cond_1c

    .line 89
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    const/16 v8, 0x1e

    .line 93
    .line 94
    if-lt v0, v8, :cond_1b

    .line 95
    .line 96
    iget-object v0, v1, Lh6/t;->a:Landroid/content/Context;

    .line 97
    .line 98
    const-string v4, "activity"

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/app/ActivityManager;

    .line 105
    .line 106
    invoke-static {v0}, Landroidx/camera/camera2/internal/a;->e(Landroid/app/ActivityManager;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_1a

    .line 115
    .line 116
    new-instance v8, Li6/b;

    .line 117
    .line 118
    iget-object v0, v1, Lh6/t;->f:Lm6/f;

    .line 119
    .line 120
    invoke-direct {v8, v0, v6}, Li6/b;-><init>(Lm6/f;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance v9, Lh6/n0;

    .line 124
    .line 125
    invoke-direct {v9}, Lh6/n0;-><init>()V

    .line 126
    .line 127
    .line 128
    new-instance v0, Lh6/k0;

    .line 129
    .line 130
    iget-object v0, v1, Lh6/t;->f:Lm6/f;

    .line 131
    .line 132
    const-string v10, "Failed to close user metadata file."

    .line 133
    .line 134
    const-string v11, "keys"

    .line 135
    .line 136
    invoke-virtual {v0, v6, v11}, Lm6/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    if-nez v11, :cond_2

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_2
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    .line 148
    .line 149
    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    .line 151
    .line 152
    :try_start_1
    new-instance v0, Ljava/util/Scanner;

    .line 153
    .line 154
    invoke-direct {v0, v11}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 155
    .line 156
    .line 157
    const-string v5, "\\A"

    .line 158
    .line 159
    invoke-virtual {v0, v5}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_3

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    goto :goto_0

    .line 174
    :cond_3
    const-string v0, ""

    .line 175
    .line 176
    :goto_0
    invoke-static {v0}, Lh6/k0;->a(Ljava/lang/String;)Ljava/util/HashMap;

    .line 177
    .line 178
    .line 179
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-static {v11, v10}, Lh6/e;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    goto/16 :goto_d

    .line 186
    .line 187
    :catch_0
    move-exception v0

    .line 188
    move-object v5, v11

    .line 189
    goto :goto_1

    .line 190
    :catchall_1
    move-exception v0

    .line 191
    goto/16 :goto_c

    .line 192
    .line 193
    :catch_1
    move-exception v0

    .line 194
    :goto_1
    :try_start_2
    const-string v11, "Error deserializing user metadata."

    .line 195
    .line 196
    const-string v12, "FirebaseCrashlytics"

    .line 197
    .line 198
    invoke-static {v12, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    .line 200
    .line 201
    invoke-static {v5, v10}, Lh6/e;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    :goto_3
    iget-object v5, v9, Lh6/n0;->a:Lh6/j0;

    .line 209
    .line 210
    monitor-enter v5

    .line 211
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const/4 v10, 0x0

    .line 220
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v11

    .line 224
    if-eqz v11, :cond_a

    .line 225
    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v11

    .line 230
    check-cast v11, Ljava/util/Map$Entry;

    .line 231
    .line 232
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    check-cast v12, Ljava/lang/String;

    .line 237
    .line 238
    if-eqz v12, :cond_9

    .line 239
    .line 240
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    iget v14, v5, Lh6/j0;->c:I

    .line 249
    .line 250
    if-le v13, v14, :cond_4

    .line 251
    .line 252
    invoke-virtual {v12, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    :cond_4
    iget-object v13, v5, Lh6/j0;->a:Ljava/util/HashMap;

    .line 257
    .line 258
    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    .line 259
    .line 260
    .line 261
    move-result v13

    .line 262
    iget v14, v5, Lh6/j0;->b:I

    .line 263
    .line 264
    if-lt v13, v14, :cond_6

    .line 265
    .line 266
    iget-object v13, v5, Lh6/j0;->a:Ljava/util/HashMap;

    .line 267
    .line 268
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v13

    .line 272
    if-eqz v13, :cond_5

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_6
    :goto_5
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v11

    .line 282
    check-cast v11, Ljava/lang/String;

    .line 283
    .line 284
    iget-object v13, v5, Lh6/j0;->a:Ljava/util/HashMap;

    .line 285
    .line 286
    if-nez v11, :cond_7

    .line 287
    .line 288
    const-string v11, ""

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_7
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 296
    .line 297
    .line 298
    move-result v14

    .line 299
    iget v15, v5, Lh6/j0;->c:I

    .line 300
    .line 301
    if-le v14, v15, :cond_8

    .line 302
    .line 303
    invoke-virtual {v11, v7, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    :cond_8
    :goto_6
    invoke-virtual {v13, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 312
    .line 313
    const-string v2, "Custom attribute key must not be null."

    .line 314
    .line 315
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v0

    .line 319
    :cond_a
    if-lez v10, :cond_b

    .line 320
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    const-string v11, "Ignored "

    .line 327
    .line 328
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v10, " entries when adding custom keys. Maximum allowable: "

    .line 335
    .line 336
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget v10, v5, Lh6/j0;->b:I

    .line 340
    .line 341
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    const-string v10, "FirebaseCrashlytics"

    .line 349
    .line 350
    const/4 v11, 0x0

    .line 351
    invoke-static {v10, v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 352
    .line 353
    .line 354
    :cond_b
    monitor-exit v5

    .line 355
    iget-object v5, v1, Lh6/t;->k:Lh6/m0;

    .line 356
    .line 357
    iget-object v10, v5, Lh6/m0;->b:Lm6/e;

    .line 358
    .line 359
    iget-object v0, v10, Lm6/e;->b:Lm6/f;

    .line 360
    .line 361
    const-string v11, "start-time"

    .line 362
    .line 363
    invoke-virtual {v0, v6, v11}, Lm6/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 368
    .line 369
    .line 370
    move-result-wide v11

    .line 371
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    if-eqz v4, :cond_d

    .line 380
    .line 381
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    check-cast v4, Landroid/app/ApplicationExitInfo;

    .line 386
    .line 387
    invoke-static {v4}, Landroidx/camera/core/impl/utils/e;->c(Landroid/app/ApplicationExitInfo;)J

    .line 388
    .line 389
    .line 390
    move-result-wide v13

    .line 391
    cmp-long v15, v13, v11

    .line 392
    .line 393
    if-gez v15, :cond_c

    .line 394
    .line 395
    goto :goto_8

    .line 396
    :cond_c
    invoke-static {v4}, Landroidx/core/app/j;->b(Landroid/app/ApplicationExitInfo;)I

    .line 397
    .line 398
    .line 399
    move-result v13

    .line 400
    const/4 v14, 0x6

    .line 401
    if-eq v13, v14, :cond_e

    .line 402
    .line 403
    goto :goto_7

    .line 404
    :cond_d
    :goto_8
    const/4 v4, 0x0

    .line 405
    :cond_e
    const-string v11, "FirebaseCrashlytics"

    .line 406
    .line 407
    if-nez v4, :cond_10

    .line 408
    .line 409
    const-string v0, "No relevant ApplicationExitInfo occurred during session: "

    .line 410
    .line 411
    invoke-static {v0, v6}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    const/4 v4, 0x2

    .line 416
    invoke-static {v11, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_f

    .line 421
    .line 422
    const/4 v4, 0x0

    .line 423
    invoke-static {v11, v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    .line 425
    .line 426
    :cond_f
    move-object/from16 v22, v3

    .line 427
    .line 428
    goto/16 :goto_f

    .line 429
    .line 430
    :cond_10
    :try_start_4
    invoke-static {v4}, Landroidx/camera/core/impl/utils/a;->c(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    if-eqz v0, :cond_12

    .line 435
    .line 436
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    .line 437
    .line 438
    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 439
    .line 440
    .line 441
    const/16 v13, 0x2000

    .line 442
    .line 443
    new-array v13, v13, [B

    .line 444
    .line 445
    :goto_9
    invoke-virtual {v0, v13}, Ljava/io/InputStream;->read([B)I

    .line 446
    .line 447
    .line 448
    move-result v14

    .line 449
    const/4 v15, -0x1

    .line 450
    if-eq v14, v15, :cond_11

    .line 451
    .line 452
    invoke-virtual {v12, v13, v7, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 453
    .line 454
    .line 455
    goto :goto_9

    .line 456
    :cond_11
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 457
    .line 458
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 466
    goto :goto_a

    .line 467
    :catch_2
    move-exception v0

    .line 468
    new-instance v7, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    const-string v12, "Could not get input trace in application exit info: "

    .line 471
    .line 472
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-static {v4}, Landroidx/camera/core/impl/utils/b;->d(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v12

    .line 479
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v12, " Error: "

    .line 483
    .line 484
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    const/4 v7, 0x0

    .line 495
    invoke-static {v11, v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    .line 497
    .line 498
    :cond_12
    const/4 v0, 0x0

    .line 499
    :goto_a
    new-instance v7, Lj6/c$a;

    .line 500
    .line 501
    invoke-direct {v7}, Lj6/c$a;-><init>()V

    .line 502
    .line 503
    .line 504
    invoke-static {v4}, Landroidx/camera/core/impl/utils/c;->b(Landroid/app/ApplicationExitInfo;)I

    .line 505
    .line 506
    .line 507
    move-result v12

    .line 508
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    .line 510
    .line 511
    move-result-object v12

    .line 512
    iput-object v12, v7, Lj6/c$a;->d:Ljava/lang/Integer;

    .line 513
    .line 514
    invoke-static {v4}, Landroidx/camera/core/impl/utils/d;->e(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v12

    .line 518
    if-eqz v12, :cond_19

    .line 519
    .line 520
    iput-object v12, v7, Lj6/c$a;->b:Ljava/lang/String;

    .line 521
    .line 522
    invoke-static {v4}, Landroidx/core/app/j;->b(Landroid/app/ApplicationExitInfo;)I

    .line 523
    .line 524
    .line 525
    move-result v12

    .line 526
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 527
    .line 528
    .line 529
    move-result-object v12

    .line 530
    iput-object v12, v7, Lj6/c$a;->c:Ljava/lang/Integer;

    .line 531
    .line 532
    invoke-static {v4}, Landroidx/camera/core/impl/utils/e;->c(Landroid/app/ApplicationExitInfo;)J

    .line 533
    .line 534
    .line 535
    move-result-wide v12

    .line 536
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 537
    .line 538
    .line 539
    move-result-object v12

    .line 540
    iput-object v12, v7, Lj6/c$a;->g:Ljava/lang/Long;

    .line 541
    .line 542
    invoke-static {v4}, Landroidx/camera/camera2/internal/a;->b(Landroid/app/ApplicationExitInfo;)I

    .line 543
    .line 544
    .line 545
    move-result v12

    .line 546
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 547
    .line 548
    .line 549
    move-result-object v12

    .line 550
    iput-object v12, v7, Lj6/c$a;->a:Ljava/lang/Integer;

    .line 551
    .line 552
    invoke-static {v4}, Landroidx/core/app/j;->d(Landroid/app/ApplicationExitInfo;)J

    .line 553
    .line 554
    .line 555
    move-result-wide v12

    .line 556
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 557
    .line 558
    .line 559
    move-result-object v12

    .line 560
    iput-object v12, v7, Lj6/c$a;->e:Ljava/lang/Long;

    .line 561
    .line 562
    invoke-static {v4}, Landroidx/core/graphics/drawable/a;->b(Landroid/app/ApplicationExitInfo;)J

    .line 563
    .line 564
    .line 565
    move-result-wide v12

    .line 566
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 567
    .line 568
    .line 569
    move-result-object v4

    .line 570
    iput-object v4, v7, Lj6/c$a;->f:Ljava/lang/Long;

    .line 571
    .line 572
    iput-object v0, v7, Lj6/c$a;->h:Ljava/lang/String;

    .line 573
    .line 574
    invoke-virtual {v7}, Lj6/c$a;->a()Lj6/c;

    .line 575
    .line 576
    .line 577
    move-result-object v15

    .line 578
    iget-object v0, v5, Lh6/m0;->a:Lh6/z;

    .line 579
    .line 580
    iget-object v4, v0, Lh6/z;->a:Landroid/content/Context;

    .line 581
    .line 582
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 591
    .line 592
    new-instance v5, Lj6/k$a;

    .line 593
    .line 594
    invoke-direct {v5}, Lj6/k$a;-><init>()V

    .line 595
    .line 596
    .line 597
    const-string v7, "anr"

    .line 598
    .line 599
    iput-object v7, v5, Lj6/k$a;->b:Ljava/lang/String;

    .line 600
    .line 601
    iget-wide v12, v15, Lj6/c;->g:J

    .line 602
    .line 603
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    iput-object v7, v5, Lj6/k$a;->a:Ljava/lang/Long;

    .line 608
    .line 609
    iget v7, v15, Lj6/c;->d:I

    .line 610
    .line 611
    const/16 v12, 0x64

    .line 612
    .line 613
    if-eq v7, v12, :cond_13

    .line 614
    .line 615
    const/4 v7, 0x1

    .line 616
    goto :goto_b

    .line 617
    :cond_13
    const/4 v7, 0x0

    .line 618
    :goto_b
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 619
    .line 620
    .line 621
    move-result-object v20

    .line 622
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 623
    .line 624
    .line 625
    move-result-object v7

    .line 626
    const/4 v13, 0x0

    .line 627
    const-wide/16 v16, 0x0

    .line 628
    .line 629
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 630
    .line 631
    .line 632
    move-result-object v12

    .line 633
    const-string v16, ""

    .line 634
    .line 635
    if-nez v12, :cond_14

    .line 636
    .line 637
    const-string v16, " address"

    .line 638
    .line 639
    :cond_14
    move-object/from16 p2, v16

    .line 640
    .line 641
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    .line 642
    .line 643
    .line 644
    move-result v16

    .line 645
    if-eqz v16, :cond_18

    .line 646
    .line 647
    new-instance v14, Lj6/p;

    .line 648
    .line 649
    move-object/from16 v22, v3

    .line 650
    .line 651
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 652
    .line 653
    .line 654
    move-result-wide v2

    .line 655
    const-string v12, "0"

    .line 656
    .line 657
    invoke-direct {v14, v12, v12, v2, v3}, Lj6/p;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0}, Lh6/z;->a()Lj6/b0;

    .line 661
    .line 662
    .line 663
    move-result-object v17

    .line 664
    new-instance v2, Lj6/m;

    .line 665
    .line 666
    move-object v12, v2

    .line 667
    move-object/from16 v16, v14

    .line 668
    .line 669
    const/4 v3, 0x0

    .line 670
    move-object v14, v3

    .line 671
    invoke-direct/range {v12 .. v17}, Lj6/m;-><init>(Lj6/b0;Lj6/a0$e$d$a$b$b;Lj6/a0$a;Lj6/a0$e$d$a$b$c;Lj6/b0;)V

    .line 672
    .line 673
    .line 674
    const-string v3, ""

    .line 675
    .line 676
    if-nez v7, :cond_15

    .line 677
    .line 678
    const-string v12, " uiOrientation"

    .line 679
    .line 680
    invoke-virtual {v3, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 685
    .line 686
    .line 687
    move-result v12

    .line 688
    if-eqz v12, :cond_17

    .line 689
    .line 690
    new-instance v3, Lj6/l;

    .line 691
    .line 692
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 693
    .line 694
    .line 695
    move-result v21

    .line 696
    const/16 v18, 0x0

    .line 697
    .line 698
    const/16 v19, 0x0

    .line 699
    .line 700
    move-object/from16 v16, v3

    .line 701
    .line 702
    move-object/from16 v17, v2

    .line 703
    .line 704
    invoke-direct/range {v16 .. v21}, Lj6/l;-><init>(Lj6/a0$e$d$a$b;Lj6/b0;Lj6/b0;Ljava/lang/Boolean;I)V

    .line 705
    .line 706
    .line 707
    iput-object v3, v5, Lj6/k$a;->c:Lj6/a0$e$d$a;

    .line 708
    .line 709
    invoke-virtual {v0, v4}, Lh6/z;->b(I)Lj6/s;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    iput-object v0, v5, Lj6/k$a;->d:Lj6/a0$e$d$c;

    .line 714
    .line 715
    invoke-virtual {v5}, Lj6/k$a;->a()Lj6/k;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    const-string v2, "Persisting anr for session "

    .line 720
    .line 721
    invoke-static {v2, v6}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    const/4 v3, 0x3

    .line 726
    invoke-static {v11, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 727
    .line 728
    .line 729
    move-result v3

    .line 730
    if-eqz v3, :cond_16

    .line 731
    .line 732
    const/4 v3, 0x0

    .line 733
    invoke-static {v11, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    .line 735
    .line 736
    :cond_16
    invoke-static {v0, v8, v9}, Lh6/m0;->a(Lj6/k;Li6/b;Lh6/n0;)Lj6/k;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    const/4 v2, 0x1

    .line 741
    invoke-virtual {v10, v0, v6, v2}, Lm6/e;->c(Lj6/k;Ljava/lang/String;Z)V

    .line 742
    .line 743
    .line 744
    goto :goto_f

    .line 745
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 746
    .line 747
    const-string v2, "Missing required properties:"

    .line 748
    .line 749
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    throw v0

    .line 757
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 758
    .line 759
    const-string v2, "Missing required properties:"

    .line 760
    .line 761
    move-object/from16 v3, p2

    .line 762
    .line 763
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    throw v0

    .line 771
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    .line 772
    .line 773
    const-string v2, "Null processName"

    .line 774
    .line 775
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    throw v0

    .line 779
    :catchall_2
    move-exception v0

    .line 780
    monitor-exit v5

    .line 781
    throw v0

    .line 782
    :goto_c
    move-object v11, v5

    .line 783
    :goto_d
    invoke-static {v11, v10}, Lh6/e;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    throw v0

    .line 787
    :cond_1a
    move-object/from16 v22, v3

    .line 788
    .line 789
    const-string v0, "No ApplicationExitInfo available. Session: "

    .line 790
    .line 791
    invoke-static {v0, v6}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    const-string v2, "FirebaseCrashlytics"

    .line 796
    .line 797
    const/4 v3, 0x2

    .line 798
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 799
    .line 800
    .line 801
    move-result v2

    .line 802
    if-eqz v2, :cond_1d

    .line 803
    .line 804
    goto :goto_e

    .line 805
    :cond_1b
    move-object/from16 v22, v3

    .line 806
    .line 807
    const-string v2, "ANR feature enabled, but device is API "

    .line 808
    .line 809
    invoke-static {v2, v0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    const-string v2, "FirebaseCrashlytics"

    .line 814
    .line 815
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 816
    .line 817
    .line 818
    move-result v2

    .line 819
    if-eqz v2, :cond_1d

    .line 820
    .line 821
    :goto_e
    const-string v2, "FirebaseCrashlytics"

    .line 822
    .line 823
    const/4 v3, 0x0

    .line 824
    invoke-static {v2, v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    .line 826
    .line 827
    goto :goto_f

    .line 828
    :cond_1c
    move-object/from16 v22, v3

    .line 829
    .line 830
    const-string v0, "ANR feature disabled."

    .line 831
    .line 832
    const-string v2, "FirebaseCrashlytics"

    .line 833
    .line 834
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 835
    .line 836
    .line 837
    move-result v2

    .line 838
    if-eqz v2, :cond_1d

    .line 839
    .line 840
    const-string v2, "FirebaseCrashlytics"

    .line 841
    .line 842
    invoke-static {v2, v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 843
    .line 844
    .line 845
    :cond_1d
    :goto_f
    iget-object v0, v1, Lh6/t;->i:Le6/a;

    .line 846
    .line 847
    invoke-interface {v0, v6}, Le6/a;->d(Ljava/lang/String;)Z

    .line 848
    .line 849
    .line 850
    move-result v0

    .line 851
    if-eqz v0, :cond_1f

    .line 852
    .line 853
    const-string v0, "Finalizing native report for session "

    .line 854
    .line 855
    invoke-static {v0, v6}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    const-string v2, "FirebaseCrashlytics"

    .line 860
    .line 861
    const/4 v3, 0x2

    .line 862
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 863
    .line 864
    .line 865
    move-result v3

    .line 866
    const/4 v4, 0x0

    .line 867
    if-eqz v3, :cond_1e

    .line 868
    .line 869
    invoke-static {v2, v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    .line 871
    .line 872
    :cond_1e
    iget-object v0, v1, Lh6/t;->i:Le6/a;

    .line 873
    .line 874
    invoke-interface {v0, v6}, Le6/a;->a(Ljava/lang/String;)Le6/e;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 879
    .line 880
    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    .line 882
    .line 883
    const-string v3, "No minidump data found for session "

    .line 884
    .line 885
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    invoke-static {v2, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    .line 897
    .line 898
    :cond_1f
    if-eqz p1, :cond_20

    .line 899
    .line 900
    const/4 v0, 0x0

    .line 901
    move-object/from16 v2, v22

    .line 902
    .line 903
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    check-cast v0, Ljava/lang/String;

    .line 908
    .line 909
    goto :goto_10

    .line 910
    :cond_20
    const/4 v0, 0x0

    .line 911
    :goto_10
    iget-object v2, v1, Lh6/t;->k:Lh6/m0;

    .line 912
    .line 913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 914
    .line 915
    .line 916
    move-result-wide v3

    .line 917
    const-wide/16 v5, 0x3e8

    .line 918
    .line 919
    div-long/2addr v3, v5

    .line 920
    iget-object v2, v2, Lh6/m0;->b:Lm6/e;

    .line 921
    .line 922
    iget-object v5, v2, Lm6/e;->b:Lm6/f;

    .line 923
    .line 924
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 925
    .line 926
    .line 927
    const/4 v6, 0x2

    .line 928
    new-array v6, v6, [Ljava/io/File;

    .line 929
    .line 930
    new-instance v7, Ljava/io/File;

    .line 931
    .line 932
    iget-object v8, v5, Lm6/f;->a:Ljava/io/File;

    .line 933
    .line 934
    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v9

    .line 938
    const-string v10, ".com.google.firebase.crashlytics"

    .line 939
    .line 940
    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    const/4 v9, 0x0

    .line 944
    aput-object v7, v6, v9

    .line 945
    .line 946
    new-instance v7, Ljava/io/File;

    .line 947
    .line 948
    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v8

    .line 952
    const-string v9, ".com.google.firebase.crashlytics-ndk"

    .line 953
    .line 954
    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    const/4 v8, 0x1

    .line 958
    aput-object v7, v6, v8

    .line 959
    .line 960
    const/4 v7, 0x0

    .line 961
    :goto_11
    const-string v8, "FirebaseCrashlytics"

    .line 962
    .line 963
    const/4 v9, 0x2

    .line 964
    if-ge v7, v9, :cond_22

    .line 965
    .line 966
    aget-object v9, v6, v7

    .line 967
    .line 968
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 969
    .line 970
    .line 971
    move-result v10

    .line 972
    if-eqz v10, :cond_21

    .line 973
    .line 974
    invoke-static {v9}, Lm6/f;->c(Ljava/io/File;)Z

    .line 975
    .line 976
    .line 977
    move-result v10

    .line 978
    if-eqz v10, :cond_21

    .line 979
    .line 980
    new-instance v10, Ljava/lang/StringBuilder;

    .line 981
    .line 982
    const-string v11, "Deleted legacy Crashlytics files from "

    .line 983
    .line 984
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v9

    .line 991
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v9

    .line 998
    const/4 v10, 0x3

    .line 999
    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1000
    .line 1001
    .line 1002
    move-result v10

    .line 1003
    if-eqz v10, :cond_21

    .line 1004
    .line 1005
    const/4 v10, 0x0

    .line 1006
    invoke-static {v8, v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1007
    .line 1008
    .line 1009
    :cond_21
    add-int/lit8 v7, v7, 0x1

    .line 1010
    .line 1011
    goto :goto_11

    .line 1012
    :cond_22
    new-instance v6, Ljava/util/TreeSet;

    .line 1013
    .line 1014
    iget-object v7, v2, Lm6/e;->b:Lm6/f;

    .line 1015
    .line 1016
    iget-object v7, v7, Lm6/f;->b:Ljava/io/File;

    .line 1017
    .line 1018
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v7

    .line 1022
    invoke-static {v7}, Lm6/f;->d([Ljava/lang/Object;)Ljava/util/List;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v7

    .line 1026
    invoke-direct {v6, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v6}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v6

    .line 1033
    if-eqz v0, :cond_23

    .line 1034
    .line 1035
    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1036
    .line 1037
    .line 1038
    :cond_23
    invoke-interface {v6}, Ljava/util/Set;->size()I

    .line 1039
    .line 1040
    .line 1041
    move-result v0

    .line 1042
    const/16 v7, 0x8

    .line 1043
    .line 1044
    if-gt v0, v7, :cond_24

    .line 1045
    .line 1046
    goto :goto_13

    .line 1047
    :cond_24
    :goto_12
    invoke-interface {v6}, Ljava/util/Set;->size()I

    .line 1048
    .line 1049
    .line 1050
    move-result v0

    .line 1051
    if-le v0, v7, :cond_26

    .line 1052
    .line 1053
    invoke-interface {v6}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    check-cast v0, Ljava/lang/String;

    .line 1058
    .line 1059
    const-string v9, "Removing session over cap: "

    .line 1060
    .line 1061
    invoke-static {v9, v0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v9

    .line 1065
    const/4 v10, 0x3

    .line 1066
    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v10

    .line 1070
    if-eqz v10, :cond_25

    .line 1071
    .line 1072
    const/4 v10, 0x0

    .line 1073
    invoke-static {v8, v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1074
    .line 1075
    .line 1076
    :cond_25
    new-instance v9, Ljava/io/File;

    .line 1077
    .line 1078
    iget-object v10, v5, Lm6/f;->b:Ljava/io/File;

    .line 1079
    .line 1080
    invoke-direct {v9, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    invoke-static {v9}, Lm6/f;->c(Ljava/io/File;)Z

    .line 1084
    .line 1085
    .line 1086
    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1087
    .line 1088
    .line 1089
    goto :goto_12

    .line 1090
    :cond_26
    :goto_13
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v6

    .line 1094
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1095
    .line 1096
    .line 1097
    move-result v0

    .line 1098
    if-eqz v0, :cond_33

    .line 1099
    .line 1100
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    move-object v7, v0

    .line 1105
    check-cast v7, Ljava/lang/String;

    .line 1106
    .line 1107
    const-string v0, "Finalizing report for session "

    .line 1108
    .line 1109
    invoke-static {v0, v7}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v0

    .line 1113
    const/4 v9, 0x2

    .line 1114
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1115
    .line 1116
    .line 1117
    move-result v9

    .line 1118
    if-eqz v9, :cond_27

    .line 1119
    .line 1120
    const/4 v9, 0x0

    .line 1121
    invoke-static {v8, v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    .line 1123
    .line 1124
    :cond_27
    sget-object v0, Lm6/e;->h:Lm6/d;

    .line 1125
    .line 1126
    new-instance v9, Ljava/io/File;

    .line 1127
    .line 1128
    iget-object v10, v5, Lm6/f;->b:Ljava/io/File;

    .line 1129
    .line 1130
    invoke-direct {v9, v10, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v9, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v0

    .line 1140
    invoke-static {v0}, Lm6/f;->d([Ljava/lang/Object;)Ljava/util/List;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1145
    .line 1146
    .line 1147
    move-result v9

    .line 1148
    if-eqz v9, :cond_28

    .line 1149
    .line 1150
    const-string v0, "Session "

    .line 1151
    .line 1152
    const-string v9, " has no events."

    .line 1153
    .line 1154
    invoke-static {v0, v7, v9}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    const/4 v9, 0x2

    .line 1159
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v9

    .line 1163
    if-eqz v9, :cond_32

    .line 1164
    .line 1165
    const/4 v9, 0x0

    .line 1166
    invoke-static {v8, v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    .line 1168
    .line 1169
    goto/16 :goto_1a

    .line 1170
    .line 1171
    :cond_28
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1172
    .line 1173
    .line 1174
    new-instance v9, Ljava/util/ArrayList;

    .line 1175
    .line 1176
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    .line 1178
    .line 1179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v10

    .line 1183
    :cond_29
    const/4 v0, 0x0

    .line 1184
    const/4 v11, 0x0

    .line 1185
    :goto_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1186
    .line 1187
    .line 1188
    move-result v0

    .line 1189
    sget-object v12, Lm6/e;->f:Lk6/a;

    .line 1190
    .line 1191
    if-eqz v0, :cond_2c

    .line 1192
    .line 1193
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v0

    .line 1197
    move-object v13, v0

    .line 1198
    check-cast v13, Ljava/io/File;

    .line 1199
    .line 1200
    :try_start_5
    invoke-static {v13}, Lm6/e;->d(Ljava/io/File;)Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1205
    .line 1206
    .line 1207
    :try_start_6
    new-instance v12, Landroid/util/JsonReader;

    .line 1208
    .line 1209
    new-instance v14, Ljava/io/StringReader;

    .line 1210
    .line 1211
    invoke-direct {v14, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1212
    .line 1213
    .line 1214
    invoke-direct {v12, v14}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1215
    .line 1216
    .line 1217
    :try_start_7
    invoke-static {v12}, Lk6/a;->d(Landroid/util/JsonReader;)Lj6/k;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1221
    :try_start_8
    invoke-virtual {v12}, Landroid/util/JsonReader;->close()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1222
    .line 1223
    .line 1224
    :try_start_9
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    .line 1226
    .line 1227
    if-nez v11, :cond_2b

    .line 1228
    .line 1229
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v0

    .line 1233
    const-string v12, "event"

    .line 1234
    .line 1235
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1236
    .line 1237
    .line 1238
    move-result v12

    .line 1239
    if-eqz v12, :cond_2a

    .line 1240
    .line 1241
    const-string v12, "_"

    .line 1242
    .line 1243
    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1247
    if-eqz v0, :cond_2a

    .line 1248
    .line 1249
    const/4 v0, 0x1

    .line 1250
    goto :goto_16

    .line 1251
    :cond_2a
    const/4 v0, 0x0

    .line 1252
    :goto_16
    if-eqz v0, :cond_29

    .line 1253
    .line 1254
    :cond_2b
    const/4 v11, 0x1

    .line 1255
    goto :goto_15

    .line 1256
    :catchall_3
    move-exception v0

    .line 1257
    move-object v14, v0

    .line 1258
    :try_start_a
    invoke-virtual {v12}, Landroid/util/JsonReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1259
    .line 1260
    .line 1261
    goto :goto_17

    .line 1262
    :catchall_4
    move-exception v0

    .line 1263
    move-object v12, v0

    .line 1264
    :try_start_b
    invoke-virtual {v14, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1265
    .line 1266
    .line 1267
    :goto_17
    throw v14
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 1268
    :catch_3
    move-exception v0

    .line 1269
    :try_start_c
    new-instance v12, Ljava/io/IOException;

    .line 1270
    .line 1271
    invoke-direct {v12, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 1272
    .line 1273
    .line 1274
    throw v12
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 1275
    :catch_4
    move-exception v0

    .line 1276
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    const-string v14, "Could not add event to report for "

    .line 1279
    .line 1280
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v12

    .line 1290
    invoke-static {v8, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1291
    .line 1292
    .line 1293
    goto :goto_15

    .line 1294
    :cond_2c
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1295
    .line 1296
    .line 1297
    move-result v0

    .line 1298
    if-eqz v0, :cond_2d

    .line 1299
    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1301
    .line 1302
    const-string v9, "Could not parse event files for session "

    .line 1303
    .line 1304
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v0

    .line 1314
    const/4 v9, 0x0

    .line 1315
    invoke-static {v8, v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1316
    .line 1317
    .line 1318
    goto/16 :goto_1a

    .line 1319
    .line 1320
    :cond_2d
    const/4 v10, 0x0

    .line 1321
    const-string v0, "user-id"

    .line 1322
    .line 1323
    invoke-virtual {v5, v7, v0}, Lm6/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 1328
    .line 1329
    .line 1330
    move-result v13

    .line 1331
    if-eqz v13, :cond_2e

    .line 1332
    .line 1333
    :try_start_d
    invoke-static {v0}, Lm6/e;->d(Ljava/io/File;)Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v10
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 1337
    goto :goto_18

    .line 1338
    :catch_5
    move-exception v0

    .line 1339
    move-object v13, v0

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1341
    .line 1342
    const-string v14, "Could not read user ID file in "

    .line 1343
    .line 1344
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v0

    .line 1354
    invoke-static {v8, v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1355
    .line 1356
    .line 1357
    :cond_2e
    :goto_18
    const-string v0, "report"

    .line 1358
    .line 1359
    invoke-virtual {v5, v7, v0}, Lm6/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v13

    .line 1363
    :try_start_e
    invoke-static {v13}, Lm6/e;->d(Ljava/io/File;)Ljava/lang/String;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v0

    .line 1367
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1368
    .line 1369
    .line 1370
    invoke-static {v0}, Lk6/a;->g(Ljava/lang/String;)Lj6/b;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v0

    .line 1374
    invoke-virtual {v0, v3, v4, v11, v10}, Lj6/a0;->i(JZLjava/lang/String;)Lj6/b;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v0

    .line 1378
    new-instance v10, Lj6/b0;

    .line 1379
    .line 1380
    invoke-direct {v10, v9}, Lj6/b0;-><init>(Ljava/util/List;)V

    .line 1381
    .line 1382
    .line 1383
    iget-object v9, v0, Lj6/b;->h:Lj6/a0$e;

    .line 1384
    .line 1385
    if-eqz v9, :cond_31

    .line 1386
    .line 1387
    new-instance v9, Lj6/b$a;

    .line 1388
    .line 1389
    invoke-direct {v9, v0}, Lj6/b$a;-><init>(Lj6/a0;)V

    .line 1390
    .line 1391
    .line 1392
    iget-object v0, v0, Lj6/b;->h:Lj6/a0$e;

    .line 1393
    .line 1394
    invoke-virtual {v0}, Lj6/a0$e;->l()Lj6/g$a;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v0

    .line 1398
    iput-object v10, v0, Lj6/g$a;->j:Lj6/b0;

    .line 1399
    .line 1400
    invoke-virtual {v0}, Lj6/g$a;->a()Lj6/g;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v0

    .line 1404
    iput-object v0, v9, Lj6/b$a;->g:Lj6/a0$e;

    .line 1405
    .line 1406
    invoke-virtual {v9}, Lj6/b$a;->a()Lj6/b;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v0

    .line 1410
    iget-object v9, v0, Lj6/b;->h:Lj6/a0$e;

    .line 1411
    .line 1412
    if-nez v9, :cond_2f

    .line 1413
    .line 1414
    goto :goto_1a

    .line 1415
    :cond_2f
    if-eqz v11, :cond_30

    .line 1416
    .line 1417
    invoke-virtual {v9}, Lj6/a0$e;->g()Ljava/lang/String;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v9

    .line 1421
    new-instance v10, Ljava/io/File;

    .line 1422
    .line 1423
    iget-object v11, v5, Lm6/f;->d:Ljava/io/File;

    .line 1424
    .line 1425
    invoke-direct {v10, v11, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1426
    .line 1427
    .line 1428
    goto :goto_19

    .line 1429
    :cond_30
    invoke-virtual {v9}, Lj6/a0$e;->g()Ljava/lang/String;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v9

    .line 1433
    new-instance v10, Ljava/io/File;

    .line 1434
    .line 1435
    iget-object v11, v5, Lm6/f;->c:Ljava/io/File;

    .line 1436
    .line 1437
    invoke-direct {v10, v11, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1438
    .line 1439
    .line 1440
    :goto_19
    sget-object v9, Lk6/a;->a:Lv6/d;

    .line 1441
    .line 1442
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1443
    .line 1444
    .line 1445
    new-instance v11, Ljava/io/StringWriter;

    .line 1446
    .line 1447
    invoke-direct {v11}, Ljava/io/StringWriter;-><init>()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 1448
    .line 1449
    .line 1450
    :try_start_f
    invoke-virtual {v9, v0, v11}, Lv6/d;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 1451
    .line 1452
    .line 1453
    :catch_6
    :try_start_10
    invoke-virtual {v11}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v0

    .line 1457
    invoke-static {v10, v0}, Lm6/e;->e(Ljava/io/File;Ljava/lang/String;)V

    .line 1458
    .line 1459
    .line 1460
    goto :goto_1a

    .line 1461
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1462
    .line 1463
    const-string v9, "Reports without sessions cannot have events added to them."

    .line 1464
    .line 1465
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1466
    .line 1467
    .line 1468
    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 1469
    :catch_7
    move-exception v0

    .line 1470
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1471
    .line 1472
    const-string v10, "Could not synthesize final report file for "

    .line 1473
    .line 1474
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v9

    .line 1484
    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1485
    .line 1486
    .line 1487
    :cond_32
    :goto_1a
    new-instance v0, Ljava/io/File;

    .line 1488
    .line 1489
    iget-object v9, v5, Lm6/f;->b:Ljava/io/File;

    .line 1490
    .line 1491
    invoke-direct {v0, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1492
    .line 1493
    .line 1494
    invoke-static {v0}, Lm6/f;->c(Ljava/io/File;)Z

    .line 1495
    .line 1496
    .line 1497
    goto/16 :goto_14

    .line 1498
    .line 1499
    :cond_33
    iget-object v0, v2, Lm6/e;->c:Lo6/d;

    .line 1500
    .line 1501
    check-cast v0, Lo6/c;

    .line 1502
    .line 1503
    iget-object v0, v0, Lo6/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1504
    .line 1505
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v0

    .line 1509
    check-cast v0, Lp6/d;

    .line 1510
    .line 1511
    invoke-interface {v0}, Lp6/d;->b()Lp6/c;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v0

    .line 1515
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {v2}, Lm6/e;->b()Ljava/util/ArrayList;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v0

    .line 1522
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1523
    .line 1524
    .line 1525
    move-result v2

    .line 1526
    const/4 v3, 0x4

    .line 1527
    if-gt v2, v3, :cond_34

    .line 1528
    .line 1529
    goto :goto_1c

    .line 1530
    :cond_34
    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v0

    .line 1534
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v0

    .line 1538
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1539
    .line 1540
    .line 1541
    move-result v2

    .line 1542
    if-eqz v2, :cond_35

    .line 1543
    .line 1544
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v2

    .line 1548
    check-cast v2, Ljava/io/File;

    .line 1549
    .line 1550
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1551
    .line 1552
    .line 1553
    goto :goto_1b

    .line 1554
    :cond_35
    :goto_1c
    return-void
.end method

.method public final d(Lo6/d;)Z
    .locals 6

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, Lh6/t;->d:Lh6/f;

    .line 4
    .line 5
    iget-object v1, v1, Lh6/f;->d:Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lh6/t;->l:Lh6/b0;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, Lh6/b0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    const/4 v3, 0x0

    .line 35
    const-string v4, "FirebaseCrashlytics"

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const-string p1, "Skipping session finalization because a crash has already occurred."

    .line 40
    .line 41
    invoke-static {v4, p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    return v2

    .line 45
    :cond_1
    const/4 v0, 0x2

    .line 46
    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    const-string v5, "Finalizing previously open sessions."

    .line 53
    .line 54
    invoke-static {v4, v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :cond_2
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lh6/t;->c(ZLo6/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    const-string p1, "Closed all previously open sessions."

    .line 67
    .line 68
    invoke-static {v4, p1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    :cond_3
    return v1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    const-string v0, "Unable to finalize previously open sessions."

    .line 74
    .line 75
    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    return v2

    .line 79
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string v0, "Not running on background worker thread as intended."

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public final e(Lh5/z;)Lh5/k;
    .locals 6

    .line 1
    iget-object v0, p0, Lh6/t;->k:Lh6/m0;

    .line 2
    .line 3
    iget-object v0, v0, Lh6/m0;->b:Lm6/e;

    .line 4
    .line 5
    iget-object v0, v0, Lm6/e;->b:Lm6/f;

    .line 6
    .line 7
    iget-object v1, v0, Lm6/f;->c:Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lm6/f;->d([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, v0, Lm6/f;->d:Ljava/io/File;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lm6/f;->d([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v0, v0, Lm6/f;->e:Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lm6/f;->d([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 59
    :goto_1
    iget-object v1, p0, Lh6/t;->m:Lh5/l;

    .line 60
    .line 61
    const-string v2, "FirebaseCrashlytics"

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    const/4 p1, 0x2

    .line 67
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    const-string p1, "No crash reports are available to be sent."

    .line 74
    .line 75
    invoke-static {v2, p1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v3}, Lh5/n;->e(Ljava/lang/Object;)Lh5/z;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    :cond_3
    sget-object v0, Lc5/y;->g:Lc5/y;

    .line 89
    .line 90
    const-string v4, "Crash reports are available to be sent."

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Lc5/y;->E(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v4, p0, Lh6/t;->b:Lh6/c0;

    .line 96
    .line 97
    invoke-virtual {v4}, Lh6/c0;->a()Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_5

    .line 102
    .line 103
    const/4 v0, 0x3

    .line 104
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    const-string v0, "Automatic data collection is enabled. Allowing upload."

    .line 111
    .line 112
    invoke-static {v2, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .line 114
    .line 115
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-static {v0}, Lh5/n;->e(Ljava/lang/Object;)Lh5/z;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    goto :goto_2

    .line 127
    :cond_5
    const-string v2, "Automatic data collection is disabled."

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Lc5/y;->l(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v2, "Notifying that unsent reports are available."

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Lc5/y;->E(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v4, Lh6/c0;->b:Ljava/lang/Object;

    .line 143
    .line 144
    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v2, v4, Lh6/c0;->c:Lh5/l;

    .line 146
    .line 147
    iget-object v2, v2, Lh5/l;->a:Lh5/z;

    .line 148
    .line 149
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    new-instance v1, Lh6/n;

    .line 151
    .line 152
    invoke-direct {v1}, Lh6/n;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    sget-object v3, Lh5/m;->a:Lh5/y;

    .line 159
    .line 160
    new-instance v4, Lh5/z;

    .line 161
    .line 162
    invoke-direct {v4}, Lh5/z;-><init>()V

    .line 163
    .line 164
    .line 165
    new-instance v5, Lh5/t;

    .line 166
    .line 167
    invoke-direct {v5, v3, v1, v4}, Lh5/t;-><init>(Ljava/util/concurrent/Executor;Lh5/j;Lh5/z;)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v2, Lh5/z;->b:Lh5/w;

    .line 171
    .line 172
    invoke-virtual {v1, v5}, Lh5/w;->a(Lh5/v;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Lh5/z;->u()V

    .line 176
    .line 177
    .line 178
    const-string v1, "Waiting for send/deleteUnsentReports to be called."

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lc5/y;->l(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lh6/t;->n:Lh5/l;

    .line 184
    .line 185
    iget-object v0, v0, Lh5/l;->a:Lh5/z;

    .line 186
    .line 187
    sget-object v1, Lh6/p0;->a:Ljava/util/concurrent/ExecutorService;

    .line 188
    .line 189
    new-instance v1, Lh5/l;

    .line 190
    .line 191
    invoke-direct {v1}, Lh5/l;-><init>()V

    .line 192
    .line 193
    .line 194
    new-instance v2, Landroidx/camera/camera2/interop/d;

    .line 195
    .line 196
    const/4 v3, 0x5

    .line 197
    invoke-direct {v2, v3, v1}, Landroidx/camera/camera2/interop/d;-><init>(ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v2}, Lh5/z;->f(Lh5/b;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v2}, Lh5/z;->f(Lh5/b;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, v1, Lh5/l;->a:Lh5/z;

    .line 207
    .line 208
    :goto_2
    new-instance v1, Lh6/q;

    .line 209
    .line 210
    invoke-direct {v1, p0, p1}, Lh6/q;-><init>(Lh6/t;Lh5/z;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    sget-object p1, Lh5/m;->a:Lh5/y;

    .line 217
    .line 218
    new-instance v2, Lh5/z;

    .line 219
    .line 220
    invoke-direct {v2}, Lh5/z;-><init>()V

    .line 221
    .line 222
    .line 223
    new-instance v3, Lh5/t;

    .line 224
    .line 225
    invoke-direct {v3, p1, v1, v2}, Lh5/t;-><init>(Ljava/util/concurrent/Executor;Lh5/j;Lh5/z;)V

    .line 226
    .line 227
    .line 228
    iget-object p1, v0, Lh5/z;->b:Lh5/w;

    .line 229
    .line 230
    invoke-virtual {p1, v3}, Lh5/w;->a(Lh5/v;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Lh5/z;->u()V

    .line 234
    .line 235
    .line 236
    return-object v2

    .line 237
    :catchall_0
    move-exception p1

    .line 238
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    throw p1
.end method
