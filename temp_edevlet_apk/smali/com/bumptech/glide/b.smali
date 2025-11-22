.class public final Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b$a;
    }
.end annotation


# static fields
.field public static volatile h:Lcom/bumptech/glide/b;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation
.end field

.field public static volatile j:Z


# instance fields
.field public final a:Ly0/c;

.field public final b:Lz0/h;

.field public final c:Lcom/bumptech/glide/h;

.field public final d:Ly0/b;

.field public final e:Lcom/bumptech/glide/manager/p;

.field public final f:Lcom/bumptech/glide/manager/d;

.field public final g:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "managers"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx0/m;Lz0/h;Ly0/c;Ly0/b;Lcom/bumptech/glide/manager/p;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/c;Landroidx/collection/ArrayMap;Ljava/util/List;Ljava/util/ArrayList;Lk1/a;Lcom/bumptech/glide/i;)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lx0/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lz0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ly0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ly0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/bumptech/glide/manager/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/bumptech/glide/manager/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroidx/collection/ArrayMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lk1/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/bumptech/glide/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/bumptech/glide/b;->a:Ly0/c;

    move-object/from16 v3, p5

    iput-object v3, v0, Lcom/bumptech/glide/b;->d:Ly0/b;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/bumptech/glide/b;->b:Lz0/h;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/manager/p;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/d;

    .line 1
    new-instance v4, Lcom/bumptech/glide/l;

    move-object/from16 v2, p12

    move-object/from16 v1, p13

    invoke-direct {v4, p0, v2, v1}, Lcom/bumptech/glide/l;-><init>(Lcom/bumptech/glide/b;Ljava/util/ArrayList;Lk1/a;)V

    .line 2
    new-instance v5, La2/b;

    invoke-direct {v5}, La2/b;-><init>()V

    new-instance v12, Lcom/bumptech/glide/h;

    move-object v1, v12

    move-object v2, p1

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object v9, p2

    move-object/from16 v10, p14

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/h;-><init>(Landroid/content/Context;Ly0/b;Lcom/bumptech/glide/l;La2/b;Lcom/bumptech/glide/c;Landroidx/collection/ArrayMap;Ljava/util/List;Lx0/m;Lcom/bumptech/glide/i;I)V

    iput-object v12, v0, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/h;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 35
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation

    .line 1
    sget-boolean v0, Lcom/bumptech/glide/b;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_12

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/bumptech/glide/b;->j:Z

    .line 7
    .line 8
    new-instance v11, Landroidx/collection/ArrayMap;

    .line 9
    .line 10
    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/bumptech/glide/i$a;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/bumptech/glide/i$a;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v10, Lcom/bumptech/glide/c;

    .line 19
    .line 20
    invoke-direct {v10}, Lcom/bumptech/glide/c;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v15

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    const-string v2, "Got app info metadata: "

    .line 31
    .line 32
    const-string v3, "ManifestParser"

    .line 33
    .line 34
    const/4 v4, 0x3

    .line 35
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    const-string v5, "Loading Glide modules"

    .line 42
    .line 43
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const/16 v7, 0x80

    .line 60
    .line 61
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 66
    .line 67
    const/4 v7, 0x2

    .line 68
    if-nez v6, :cond_1

    .line 69
    .line 70
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    const-string v2, "Got null app info metadata"

    .line 77
    .line 78
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_2

    .line 87
    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 94
    .line 95
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v6, :cond_4

    .line 120
    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    check-cast v6, Ljava/lang/String;

    .line 126
    .line 127
    const-string v8, "GlideModule"

    .line 128
    .line 129
    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 130
    .line 131
    invoke-virtual {v12, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-eqz v8, :cond_3

    .line 140
    .line 141
    invoke-static {v6}, Lk1/e;->a(Ljava/lang/String;)Lk1/c;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-eqz v8, :cond_3

    .line 153
    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v12, "Loaded Glide module: "

    .line 160
    .line 161
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_5

    .line 180
    .line 181
    const-string v2, "Finished loading Glide modules"

    .line 182
    .line 183
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    :cond_5
    :goto_1
    const-string v2, "Glide"

    .line 187
    .line 188
    if-eqz p1, :cond_8

    .line 189
    .line 190
    new-instance v3, Ljava/util/HashSet;

    .line 191
    .line 192
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-nez v3, :cond_8

    .line 200
    .line 201
    new-instance v3, Ljava/util/HashSet;

    .line 202
    .line 203
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_8

    .line 215
    .line 216
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    check-cast v6, Lk1/c;

    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    if-nez v8, :cond_6

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_6
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    if-eqz v8, :cond_7

    .line 238
    .line 239
    new-instance v8, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v12, "AppGlideModule excludes manifest GlideModule: "

    .line 242
    .line 243
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_8
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-eqz v3, :cond_9

    .line 265
    .line 266
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_9

    .line 275
    .line 276
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    check-cast v4, Lk1/c;

    .line 281
    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v6, "Discovered GlideModule from manifest: "

    .line 285
    .line 286
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_9
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    if-eqz v3, :cond_a

    .line 313
    .line 314
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    check-cast v3, Lk1/c;

    .line 319
    .line 320
    invoke-interface {v3}, Lk1/b;->b()V

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_a
    new-instance v2, La1/a$a;

    .line 325
    .line 326
    invoke-direct {v2}, La1/a$a;-><init>()V

    .line 327
    .line 328
    .line 329
    sget v3, La1/a;->c:I

    .line 330
    .line 331
    const/4 v4, 0x4

    .line 332
    if-nez v3, :cond_b

    .line 333
    .line 334
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    sput v3, La1/a;->c:I

    .line 347
    .line 348
    :cond_b
    sget v18, La1/a;->c:I

    .line 349
    .line 350
    const-string v3, "source"

    .line 351
    .line 352
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-nez v5, :cond_11

    .line 357
    .line 358
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 359
    .line 360
    const-wide/16 v19, 0x0

    .line 361
    .line 362
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 363
    .line 364
    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 365
    .line 366
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 367
    .line 368
    .line 369
    new-instance v6, La1/a$b;

    .line 370
    .line 371
    const/4 v14, 0x0

    .line 372
    invoke-direct {v6, v2, v3, v14}, La1/a$b;-><init>(La1/a$a;Ljava/lang/String;Z)V

    .line 373
    .line 374
    .line 375
    move-object/from16 v16, v5

    .line 376
    .line 377
    move/from16 v17, v18

    .line 378
    .line 379
    move-object/from16 v23, v6

    .line 380
    .line 381
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 382
    .line 383
    .line 384
    new-instance v2, La1/a;

    .line 385
    .line 386
    invoke-direct {v2, v5}, La1/a;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 387
    .line 388
    .line 389
    sget v3, La1/a;->c:I

    .line 390
    .line 391
    new-instance v3, La1/a$a;

    .line 392
    .line 393
    invoke-direct {v3}, La1/a$a;-><init>()V

    .line 394
    .line 395
    .line 396
    const-string v5, "disk-cache"

    .line 397
    .line 398
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    if-nez v6, :cond_10

    .line 403
    .line 404
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 405
    .line 406
    const-wide/16 v19, 0x0

    .line 407
    .line 408
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 409
    .line 410
    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 411
    .line 412
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 413
    .line 414
    .line 415
    new-instance v8, La1/a$b;

    .line 416
    .line 417
    invoke-direct {v8, v3, v5, v0}, La1/a$b;-><init>(La1/a$a;Ljava/lang/String;Z)V

    .line 418
    .line 419
    .line 420
    const/16 v18, 0x1

    .line 421
    .line 422
    move-object/from16 v16, v6

    .line 423
    .line 424
    move/from16 v17, v18

    .line 425
    .line 426
    move-object/from16 v23, v8

    .line 427
    .line 428
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 429
    .line 430
    .line 431
    new-instance v3, La1/a;

    .line 432
    .line 433
    invoke-direct {v3, v6}, La1/a;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 434
    .line 435
    .line 436
    sget v5, La1/a;->c:I

    .line 437
    .line 438
    if-nez v5, :cond_c

    .line 439
    .line 440
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    .line 445
    .line 446
    .line 447
    move-result v5

    .line 448
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    sput v5, La1/a;->c:I

    .line 453
    .line 454
    :cond_c
    sget v5, La1/a;->c:I

    .line 455
    .line 456
    if-lt v5, v4, :cond_d

    .line 457
    .line 458
    const/16 v18, 0x2

    .line 459
    .line 460
    goto :goto_5

    .line 461
    :cond_d
    const/16 v18, 0x1

    .line 462
    .line 463
    :goto_5
    new-instance v4, La1/a$a;

    .line 464
    .line 465
    invoke-direct {v4}, La1/a$a;-><init>()V

    .line 466
    .line 467
    .line 468
    const-string v5, "animation"

    .line 469
    .line 470
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 471
    .line 472
    .line 473
    move-result v6

    .line 474
    if-nez v6, :cond_f

    .line 475
    .line 476
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 477
    .line 478
    const-wide/16 v19, 0x0

    .line 479
    .line 480
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 481
    .line 482
    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 483
    .line 484
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 485
    .line 486
    .line 487
    new-instance v7, La1/a$b;

    .line 488
    .line 489
    invoke-direct {v7, v4, v5, v0}, La1/a$b;-><init>(La1/a$a;Ljava/lang/String;Z)V

    .line 490
    .line 491
    .line 492
    move-object/from16 v16, v6

    .line 493
    .line 494
    move/from16 v17, v18

    .line 495
    .line 496
    move-object/from16 v23, v7

    .line 497
    .line 498
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 499
    .line 500
    .line 501
    new-instance v0, La1/a;

    .line 502
    .line 503
    invoke-direct {v0, v6}, La1/a;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 504
    .line 505
    .line 506
    new-instance v4, Lz0/i$a;

    .line 507
    .line 508
    invoke-direct {v4, v15}, Lz0/i$a;-><init>(Landroid/content/Context;)V

    .line 509
    .line 510
    .line 511
    new-instance v5, Lz0/i;

    .line 512
    .line 513
    invoke-direct {v5, v4}, Lz0/i;-><init>(Lz0/i$a;)V

    .line 514
    .line 515
    .line 516
    new-instance v8, Lcom/bumptech/glide/manager/f;

    .line 517
    .line 518
    invoke-direct {v8}, Lcom/bumptech/glide/manager/f;-><init>()V

    .line 519
    .line 520
    .line 521
    iget v4, v5, Lz0/i;->a:I

    .line 522
    .line 523
    if-lez v4, :cond_e

    .line 524
    .line 525
    new-instance v6, Ly0/i;

    .line 526
    .line 527
    move-object/from16 v16, v10

    .line 528
    .line 529
    int-to-long v9, v4

    .line 530
    invoke-direct {v6, v9, v10}, Ly0/i;-><init>(J)V

    .line 531
    .line 532
    .line 533
    goto :goto_6

    .line 534
    :cond_e
    move-object/from16 v16, v10

    .line 535
    .line 536
    new-instance v4, Ly0/d;

    .line 537
    .line 538
    invoke-direct {v4}, Ly0/d;-><init>()V

    .line 539
    .line 540
    .line 541
    move-object v6, v4

    .line 542
    :goto_6
    new-instance v7, Ly0/h;

    .line 543
    .line 544
    iget v4, v5, Lz0/i;->c:I

    .line 545
    .line 546
    invoke-direct {v7, v4}, Ly0/h;-><init>(I)V

    .line 547
    .line 548
    .line 549
    new-instance v4, Lz0/g;

    .line 550
    .line 551
    iget v5, v5, Lz0/i;->b:I

    .line 552
    .line 553
    int-to-long v9, v5

    .line 554
    invoke-direct {v4, v9, v10}, Lz0/g;-><init>(J)V

    .line 555
    .line 556
    .line 557
    new-instance v5, Lz0/f;

    .line 558
    .line 559
    invoke-direct {v5, v15}, Lz0/f;-><init>(Landroid/content/Context;)V

    .line 560
    .line 561
    .line 562
    new-instance v9, Lx0/m;

    .line 563
    .line 564
    new-instance v10, La1/a;

    .line 565
    .line 566
    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 567
    .line 568
    const/16 v18, 0x0

    .line 569
    .line 570
    sget-wide v20, La1/a;->b:J

    .line 571
    .line 572
    sget-object v22, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 573
    .line 574
    new-instance v23, Ljava/util/concurrent/SynchronousQueue;

    .line 575
    .line 576
    invoke-direct/range {v23 .. v23}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 577
    .line 578
    .line 579
    new-instance v14, La1/a$b;

    .line 580
    .line 581
    move-object/from16 v30, v13

    .line 582
    .line 583
    new-instance v13, La1/a$a;

    .line 584
    .line 585
    invoke-direct {v13}, La1/a$a;-><init>()V

    .line 586
    .line 587
    .line 588
    move-object/from16 v31, v11

    .line 589
    .line 590
    const-string v11, "source-unlimited"

    .line 591
    .line 592
    move-object/from16 v32, v8

    .line 593
    .line 594
    const/4 v8, 0x0

    .line 595
    invoke-direct {v14, v13, v11, v8}, La1/a$b;-><init>(La1/a$a;Ljava/lang/String;Z)V

    .line 596
    .line 597
    .line 598
    const v19, 0x7fffffff

    .line 599
    .line 600
    .line 601
    move-object/from16 v17, v12

    .line 602
    .line 603
    move-object/from16 v24, v14

    .line 604
    .line 605
    invoke-direct/range {v17 .. v24}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 606
    .line 607
    .line 608
    invoke-direct {v10, v12}, La1/a;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 609
    .line 610
    .line 611
    move-object/from16 v23, v9

    .line 612
    .line 613
    move-object/from16 v24, v4

    .line 614
    .line 615
    move-object/from16 v25, v5

    .line 616
    .line 617
    move-object/from16 v26, v3

    .line 618
    .line 619
    move-object/from16 v27, v2

    .line 620
    .line 621
    move-object/from16 v28, v10

    .line 622
    .line 623
    move-object/from16 v29, v0

    .line 624
    .line 625
    invoke-direct/range {v23 .. v29}, Lx0/m;-><init>(Lz0/h;Lz0/a$a;La1/a;La1/a;La1/a;La1/a;)V

    .line 626
    .line 627
    .line 628
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 629
    .line 630
    .line 631
    move-result-object v12

    .line 632
    new-instance v0, Lcom/bumptech/glide/i;

    .line 633
    .line 634
    invoke-direct {v0, v1}, Lcom/bumptech/glide/i;-><init>(Lcom/bumptech/glide/i$a;)V

    .line 635
    .line 636
    .line 637
    new-instance v10, Lcom/bumptech/glide/manager/p;

    .line 638
    .line 639
    const/4 v1, 0x0

    .line 640
    invoke-direct {v10, v1, v0}, Lcom/bumptech/glide/manager/p;-><init>(Lcom/bumptech/glide/manager/p$b;Lcom/bumptech/glide/i;)V

    .line 641
    .line 642
    .line 643
    new-instance v14, Lcom/bumptech/glide/b;

    .line 644
    .line 645
    move-object v1, v14

    .line 646
    move-object v2, v15

    .line 647
    move-object v3, v9

    .line 648
    move-object v5, v6

    .line 649
    move-object v6, v7

    .line 650
    move-object v7, v10

    .line 651
    const/16 v17, 0x0

    .line 652
    .line 653
    move-object/from16 v8, v32

    .line 654
    .line 655
    const/4 v9, 0x4

    .line 656
    move-object/from16 v10, v16

    .line 657
    .line 658
    move-object/from16 v11, v31

    .line 659
    .line 660
    move-object/from16 v13, v30

    .line 661
    .line 662
    move-object/from16 v33, v14

    .line 663
    .line 664
    const/16 v16, 0x0

    .line 665
    .line 666
    move-object/from16 v14, p1

    .line 667
    .line 668
    move-object/from16 v34, v15

    .line 669
    .line 670
    move-object v15, v0

    .line 671
    invoke-direct/range {v1 .. v15}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Lx0/m;Lz0/h;Ly0/c;Ly0/b;Lcom/bumptech/glide/manager/p;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/c;Landroidx/collection/ArrayMap;Ljava/util/List;Ljava/util/ArrayList;Lk1/a;Lcom/bumptech/glide/i;)V

    .line 672
    .line 673
    .line 674
    move-object/from16 v1, v33

    .line 675
    .line 676
    move-object/from16 v0, v34

    .line 677
    .line 678
    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 679
    .line 680
    .line 681
    sput-object v1, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/b;

    .line 682
    .line 683
    sput-boolean v16, Lcom/bumptech/glide/b;->j:Z

    .line 684
    .line 685
    return-void

    .line 686
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 687
    .line 688
    const-string v1, "Name must be non-null and non-empty, but given: animation"

    .line 689
    .line 690
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    throw v0

    .line 694
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 695
    .line 696
    const-string v1, "Name must be non-null and non-empty, but given: disk-cache"

    .line 697
    .line 698
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    throw v0

    .line 702
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 703
    .line 704
    const-string v1, "Name must be non-null and non-empty, but given: source"

    .line 705
    .line 706
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    throw v0

    .line 710
    :catch_0
    move-exception v0

    .line 711
    new-instance v1, Ljava/lang/RuntimeException;

    .line 712
    .line 713
    const-string v2, "Unable to find metadata to parse GlideModules"

    .line 714
    .line 715
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 716
    .line 717
    .line 718
    throw v1

    .line 719
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 720
    .line 721
    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    .line 722
    .line 723
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/b;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    new-array v3, v2, [Ljava/lang/Class;

    .line 17
    .line 18
    const-class v4, Landroid/content/Context;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    aput-object v4, v3, v5

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    aput-object v0, v2, v5

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 46
    .line 47
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :catch_1
    move-exception p0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 55
    .line 56
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :catch_2
    move-exception p0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 64
    .line 65
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :catch_3
    move-exception p0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 73
    .line 74
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :catch_4
    nop

    .line 79
    const-string v0, "Glide"

    .line 80
    .line 81
    const/4 v1, 0x5

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_0

    .line 87
    .line 88
    const-string v1, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 89
    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    const-class v1, Lcom/bumptech/glide/b;

    .line 95
    .line 96
    monitor-enter v1

    .line 97
    :try_start_1
    sget-object v2, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/b;

    .line 98
    .line 99
    if-nez v2, :cond_1

    .line 100
    .line 101
    invoke-static {p0, v0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    monitor-exit v1

    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    throw p0

    .line 109
    :cond_2
    :goto_1
    sget-object p0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/b;

    .line 110
    .line 111
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Lcom/bumptech/glide/o;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/manager/p;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/p;->b(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 15
    .line 16
    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method


# virtual methods
.method public final c(Lcom/bumptech/glide/o;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register already registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Lcom/bumptech/glide/o;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    .line 1
    invoke-static {}, Lq1/m;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lz0/h;

    .line 5
    .line 6
    check-cast v0, Lq1/i;

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lq1/i;->e(J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Ly0/c;

    .line 14
    .line 15
    invoke-interface {v0}, Ly0/c;->b()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/bumptech/glide/b;->d:Ly0/b;

    .line 19
    .line 20
    invoke-interface {v0}, Ly0/b;->b()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 3

    invoke-static {}, Lq1/m;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lz0/h;

    check-cast v0, Lz0/g;

    invoke-virtual {v0, p1}, Lz0/g;->f(I)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Ly0/c;

    invoke-interface {v0, p1}, Ly0/c;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->d:Ly0/b;

    invoke-interface {v0, p1}, Ly0/b;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
