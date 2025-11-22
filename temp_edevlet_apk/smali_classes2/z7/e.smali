.class public final Lz7/e;
.super Lv7/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv7/f<",
        "Ljava/util/List<",
        "Lx7/a;",
        ">;",
        "La8/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Lb8/d;

.field public static k:Z = true
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final d:Lx7/c;

.field public final e:Lz7/f;

.field public final f:Lp4/v9;

.field public final g:Lp4/x9;

.field public final h:Lb8/a;

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lb8/d;->a:Lb8/d;

    .line 2
    .line 3
    sput-object v0, Lz7/e;->j:Lb8/d;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lv7/h;Lx7/c;Lz7/f;Lp4/v9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv7/f;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb8/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lb8/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lz7/e;->h:Lb8/a;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iput-object p2, p0, Lz7/e;->d:Lx7/c;

    .line 14
    .line 15
    iput-object p3, p0, Lz7/e;->e:Lz7/f;

    .line 16
    .line 17
    iput-object p4, p0, Lz7/e;->f:Lp4/v9;

    .line 18
    .line 19
    invoke-virtual {p1}, Lv7/h;->b()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Lp4/x9;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Lp4/x9;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lz7/e;->g:Lp4/x9;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 32
    .line 33
    const-string p2, "MlKitContext can not be null"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz7/e;->e:Lz7/f;

    invoke-interface {v0}, Lz7/f;->c()Z

    move-result v0

    iput-boolean v0, p0, Lz7/e;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz7/e;->e:Lz7/f;

    invoke-interface {v0}, Lz7/f;->b()V

    const/4 v0, 0x1

    sput-boolean v0, Lz7/e;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(La8/a;)Ljava/lang/Object;
    .locals 9
    .param p1    # La8/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 3
    .line 4
    .line 5
    move-result-wide v6

    .line 6
    iget-object v0, p0, Lz7/e;->h:Lb8/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lb8/a;->a(La8/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    iget-object v0, p0, Lz7/e;->e:Lz7/f;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lz7/f;->a(La8/a;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    sget-object v1, Lp4/o7;->b:Lp4/o7;

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    move-wide v2, v6

    .line 21
    move-object v4, p1

    .line 22
    move-object v5, v8

    .line 23
    invoke-virtual/range {v0 .. v5}, Lz7/e;->e(Lp4/o7;JLa8/a;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lz7/e;->k:Z
    :try_end_1
    .catch Lr7/a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-object v8

    .line 31
    :catch_0
    move-exception v0

    .line 32
    move-object v8, v0

    .line 33
    :try_start_2
    iget v0, v8, Lr7/a;->a:I

    .line 34
    .line 35
    const/16 v1, 0xe

    .line 36
    .line 37
    if-ne v0, v1, :cond_0

    .line 38
    .line 39
    sget-object v0, Lp4/o7;->c:Lp4/o7;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lp4/o7;->f:Lp4/o7;

    .line 43
    .line 44
    :goto_0
    move-object v1, v0

    .line 45
    const/4 v5, 0x0

    .line 46
    move-object v0, p0

    .line 47
    move-wide v2, v6

    .line 48
    move-object v4, p1

    .line 49
    invoke-virtual/range {v0 .. v5}, Lz7/e;->e(Lp4/o7;JLa8/a;Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0

    .line 55
    throw p1
.end method

.method public final e(Lp4/o7;JLa8/a;Ljava/util/List;)V
    .locals 21
    .param p4    # La8/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp4/o7;",
            "J",
            "La8/a;",
            "Ljava/util/List<",
            "Lx7/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    new-instance v10, Lp4/q0;

    .line 6
    .line 7
    invoke-direct {v10}, Lp4/q0;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v11, Lp4/q0;

    .line 11
    .line 12
    invoke-direct {v11}, Lp4/q0;-><init>()V

    .line 13
    .line 14
    .line 15
    if-eqz p5, :cond_4

    .line 16
    .line 17
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_4

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lx7/a;

    .line 32
    .line 33
    iget-object v3, v2, Lx7/a;->a:Lz7/g;

    .line 34
    .line 35
    invoke-interface {v3}, Lz7/g;->a()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/16 v4, 0x1000

    .line 40
    .line 41
    const/4 v5, -0x1

    .line 42
    if-gt v3, v4, :cond_0

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const/4 v3, -0x1

    .line 48
    :cond_1
    move v5, v3

    .line 49
    :goto_1
    sget-object v3, Lz7/a;->a:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lp4/z7;

    .line 56
    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    sget-object v3, Lp4/z7;->b:Lp4/z7;

    .line 60
    .line 61
    :cond_2
    invoke-virtual {v10, v3}, Lp4/q0;->a(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v2, Lx7/a;->a:Lz7/g;

    .line 65
    .line 66
    invoke-interface {v2}, Lz7/g;->b()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    sget-object v3, Lz7/a;->b:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lp4/a8;

    .line 77
    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    sget-object v2, Lp4/a8;->b:Lp4/a8;

    .line 81
    .line 82
    :cond_3
    invoke-virtual {v11, v2}, Lp4/q0;->a(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    sub-long v12, v1, p2

    .line 91
    .line 92
    new-instance v14, Lz7/d;

    .line 93
    .line 94
    move-object v1, v14

    .line 95
    move-object/from16 v2, p0

    .line 96
    .line 97
    move-wide v3, v12

    .line 98
    move-object/from16 v5, p1

    .line 99
    .line 100
    move-object v6, v10

    .line 101
    move-object v7, v11

    .line 102
    move-object/from16 v8, p4

    .line 103
    .line 104
    invoke-direct/range {v1 .. v8}, Lz7/d;-><init>(Lz7/e;JLp4/o7;Lp4/q0;Lp4/q0;La8/a;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v9, Lz7/e;->f:Lp4/v9;

    .line 108
    .line 109
    sget-object v2, Lp4/p7;->b:Lp4/p7;

    .line 110
    .line 111
    invoke-virtual {v1, v14, v2}, Lp4/v9;->b(Lp4/t9;Lp4/p7;)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Lp4/z1;

    .line 115
    .line 116
    invoke-direct {v1}, Lp4/z1;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v0, v1, Lp4/z1;->a:Lp4/o7;

    .line 120
    .line 121
    sget-boolean v2, Lz7/e;->k:Z

    .line 122
    .line 123
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iput-object v2, v1, Lp4/z1;->b:Ljava/lang/Boolean;

    .line 128
    .line 129
    iget-object v2, v9, Lz7/e;->d:Lx7/c;

    .line 130
    .line 131
    invoke-static {v2}, Lz7/a;->a(Lx7/c;)Lp4/k9;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iput-object v2, v1, Lp4/z1;->c:Lp4/k9;

    .line 136
    .line 137
    invoke-virtual {v10}, Lp4/q0;->d()Lp4/d1;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iput-object v2, v1, Lp4/z1;->d:Lp4/u0;

    .line 142
    .line 143
    invoke-virtual {v11}, Lp4/q0;->d()Lp4/d1;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iput-object v2, v1, Lp4/z1;->e:Lp4/u0;

    .line 148
    .line 149
    new-instance v2, Lp4/a2;

    .line 150
    .line 151
    invoke-direct {v2, v1}, Lp4/a2;-><init>(Lp4/z1;)V

    .line 152
    .line 153
    .line 154
    new-instance v1, Lcom/google/android/gms/internal/measurement/w5;

    .line 155
    .line 156
    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/measurement/w5;-><init>(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget-object v3, v9, Lz7/e;->f:Lp4/v9;

    .line 160
    .line 161
    sget-object v4, Lp4/p7;->e:Lp4/p7;

    .line 162
    .line 163
    iget-object v5, v3, Lp4/v9;->i:Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-nez v6, :cond_5

    .line 170
    .line 171
    new-instance v6, Lp4/b0;

    .line 172
    .line 173
    invoke-direct {v6}, Lp4/b0;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    :cond_5
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    check-cast v6, Lp4/v0;

    .line 184
    .line 185
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-interface {v6, v2, v7}, Lp4/b1;->b(Lp4/a2;Ljava/lang/Long;)Z

    .line 190
    .line 191
    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 193
    .line 194
    .line 195
    move-result-wide v7

    .line 196
    invoke-virtual {v3, v4, v7, v8}, Lp4/v9;->e(Lp4/p7;J)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_6

    .line 201
    .line 202
    goto/16 :goto_4

    .line 203
    .line 204
    :cond_6
    iget-object v2, v3, Lp4/v9;->h:Ljava/util/HashMap;

    .line 205
    .line 206
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    invoke-interface {v6}, Lp4/b1;->j()Ljava/util/Set;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    if-eqz v7, :cond_8

    .line 226
    .line 227
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-interface {v6, v7}, Lp4/v0;->a(Ljava/lang/Object;)Lp4/x;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 236
    .line 237
    .line 238
    new-instance v11, Lp4/y6;

    .line 239
    .line 240
    invoke-direct {v11}, Lp4/y6;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v8}, Lp4/v;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v14

    .line 247
    const-wide/16 v15, 0x0

    .line 248
    .line 249
    :goto_3
    move-object/from16 v17, v14

    .line 250
    .line 251
    check-cast v17, Lp4/u;

    .line 252
    .line 253
    invoke-virtual/range {v17 .. v17}, Lp4/u;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v18

    .line 257
    if-eqz v18, :cond_7

    .line 258
    .line 259
    invoke-virtual/range {v17 .. v17}, Lp4/u;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v17

    .line 263
    check-cast v17, Ljava/lang/Long;

    .line 264
    .line 265
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    .line 266
    .line 267
    .line 268
    move-result-wide v17

    .line 269
    add-long v15, v17, v15

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_7
    invoke-virtual {v8}, Lp4/v;->size()I

    .line 273
    .line 274
    .line 275
    move-result v14

    .line 276
    move-object/from16 p3, v11

    .line 277
    .line 278
    int-to-long v10, v14

    .line 279
    div-long/2addr v15, v10

    .line 280
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 285
    .line 286
    .line 287
    move-result-wide v10

    .line 288
    const-wide v14, 0x7fffffffffffffffL

    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    and-long/2addr v10, v14

    .line 294
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 295
    .line 296
    .line 297
    move-result-object v10

    .line 298
    move-object/from16 v11, p3

    .line 299
    .line 300
    iput-object v10, v11, Lp4/y6;->c:Ljava/lang/Long;

    .line 301
    .line 302
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    .line 303
    .line 304
    invoke-static {v8, v14, v15}, Lp4/v9;->a(Ljava/util/List;D)J

    .line 305
    .line 306
    .line 307
    move-result-wide v14

    .line 308
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 313
    .line 314
    .line 315
    move-result-wide v14

    .line 316
    const-wide v16, 0x7fffffffffffffffL

    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    and-long v14, v14, v16

    .line 322
    .line 323
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 324
    .line 325
    .line 326
    move-result-object v10

    .line 327
    iput-object v10, v11, Lp4/y6;->a:Ljava/lang/Long;

    .line 328
    .line 329
    const-wide v14, 0x4052c00000000000L    # 75.0

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    invoke-static {v8, v14, v15}, Lp4/v9;->a(Ljava/util/List;D)J

    .line 335
    .line 336
    .line 337
    move-result-wide v14

    .line 338
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 343
    .line 344
    .line 345
    move-result-wide v14

    .line 346
    and-long v14, v14, v16

    .line 347
    .line 348
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 349
    .line 350
    .line 351
    move-result-object v10

    .line 352
    iput-object v10, v11, Lp4/y6;->f:Ljava/lang/Long;

    .line 353
    .line 354
    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    .line 355
    .line 356
    invoke-static {v8, v14, v15}, Lp4/v9;->a(Ljava/util/List;D)J

    .line 357
    .line 358
    .line 359
    move-result-wide v14

    .line 360
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 361
    .line 362
    .line 363
    move-result-object v10

    .line 364
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 365
    .line 366
    .line 367
    move-result-wide v14

    .line 368
    and-long v14, v14, v16

    .line 369
    .line 370
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 371
    .line 372
    .line 373
    move-result-object v10

    .line 374
    iput-object v10, v11, Lp4/y6;->e:Ljava/lang/Long;

    .line 375
    .line 376
    const-wide/high16 v14, 0x4039000000000000L    # 25.0

    .line 377
    .line 378
    invoke-static {v8, v14, v15}, Lp4/v9;->a(Ljava/util/List;D)J

    .line 379
    .line 380
    .line 381
    move-result-wide v14

    .line 382
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 383
    .line 384
    .line 385
    move-result-object v10

    .line 386
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 387
    .line 388
    .line 389
    move-result-wide v14

    .line 390
    and-long v14, v14, v16

    .line 391
    .line 392
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 393
    .line 394
    .line 395
    move-result-object v10

    .line 396
    iput-object v10, v11, Lp4/y6;->d:Ljava/lang/Long;

    .line 397
    .line 398
    const-wide/16 v14, 0x0

    .line 399
    .line 400
    invoke-static {v8, v14, v15}, Lp4/v9;->a(Ljava/util/List;D)J

    .line 401
    .line 402
    .line 403
    move-result-wide v14

    .line 404
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 405
    .line 406
    .line 407
    move-result-object v8

    .line 408
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 409
    .line 410
    .line 411
    move-result-wide v14

    .line 412
    and-long v14, v14, v16

    .line 413
    .line 414
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 415
    .line 416
    .line 417
    move-result-object v8

    .line 418
    iput-object v8, v11, Lp4/y6;->b:Ljava/lang/Long;

    .line 419
    .line 420
    new-instance v8, Lp4/z6;

    .line 421
    .line 422
    invoke-direct {v8, v11}, Lp4/z6;-><init>(Lp4/y6;)V

    .line 423
    .line 424
    .line 425
    invoke-interface {v6, v7}, Lp4/v0;->a(Ljava/lang/Object;)Lp4/x;

    .line 426
    .line 427
    .line 428
    move-result-object v10

    .line 429
    invoke-virtual {v10}, Lp4/v;->size()I

    .line 430
    .line 431
    .line 432
    move-result v10

    .line 433
    iget-object v11, v1, Lcom/google/android/gms/internal/measurement/w5;->a:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v11, Lz7/e;

    .line 436
    .line 437
    check-cast v7, Lp4/a2;

    .line 438
    .line 439
    new-instance v14, Lp4/q7;

    .line 440
    .line 441
    invoke-direct {v14}, Lp4/q7;-><init>()V

    .line 442
    .line 443
    .line 444
    iget-boolean v11, v11, Lz7/e;->i:Z

    .line 445
    .line 446
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 447
    .line 448
    .line 449
    move-result-object v11

    .line 450
    iput-object v11, v14, Lp4/q7;->c:Ljava/lang/Boolean;

    .line 451
    .line 452
    new-instance v11, Lp4/y1;

    .line 453
    .line 454
    invoke-direct {v11}, Lp4/y1;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object v10

    .line 461
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 462
    .line 463
    .line 464
    move-result v10

    .line 465
    const v15, 0x7fffffff

    .line 466
    .line 467
    .line 468
    and-int/2addr v10, v15

    .line 469
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v10

    .line 473
    iput-object v10, v11, Lp4/y1;->b:Ljava/lang/Integer;

    .line 474
    .line 475
    iput-object v7, v11, Lp4/y1;->a:Lp4/a2;

    .line 476
    .line 477
    iput-object v8, v11, Lp4/y1;->c:Lp4/z6;

    .line 478
    .line 479
    new-instance v7, Lp4/b2;

    .line 480
    .line 481
    invoke-direct {v7, v11}, Lp4/b2;-><init>(Lp4/y1;)V

    .line 482
    .line 483
    .line 484
    iput-object v7, v14, Lp4/q7;->f:Lp4/b2;

    .line 485
    .line 486
    new-instance v7, Lp4/y9;

    .line 487
    .line 488
    const/4 v8, 0x0

    .line 489
    invoke-direct {v7, v14, v8}, Lp4/y9;-><init>(Lp4/q7;I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v3}, Lp4/v9;->d()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v8

    .line 496
    invoke-virtual {v3, v7, v4, v8}, Lp4/v9;->c(Lp4/y9;Lp4/p7;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    goto/16 :goto_2

    .line 500
    .line 501
    :cond_8
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 505
    .line 506
    .line 507
    move-result-wide v19

    .line 508
    iget-boolean v1, v9, Lz7/e;->i:Z

    .line 509
    .line 510
    sub-long v17, v19, v12

    .line 511
    .line 512
    iget-object v2, v9, Lz7/e;->g:Lp4/x9;

    .line 513
    .line 514
    const/4 v3, 0x1

    .line 515
    if-eq v3, v1, :cond_9

    .line 516
    .line 517
    const/16 v1, 0x5eed

    .line 518
    .line 519
    const/16 v15, 0x5eed

    .line 520
    .line 521
    goto :goto_5

    .line 522
    :cond_9
    const/16 v1, 0x5eee

    .line 523
    .line 524
    const/16 v15, 0x5eee

    .line 525
    .line 526
    :goto_5
    iget v0, v0, Lp4/o7;->a:I

    .line 527
    .line 528
    monitor-enter v2

    .line 529
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 530
    .line 531
    .line 532
    move-result-wide v4

    .line 533
    iget-object v1, v2, Lp4/x9;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 534
    .line 535
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 536
    .line 537
    .line 538
    move-result-wide v6

    .line 539
    const-wide/16 v10, -0x1

    .line 540
    .line 541
    cmp-long v1, v6, v10

    .line 542
    .line 543
    if-nez v1, :cond_a

    .line 544
    .line 545
    goto :goto_6

    .line 546
    :cond_a
    iget-object v1, v2, Lp4/x9;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 547
    .line 548
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 549
    .line 550
    .line 551
    move-result-wide v6

    .line 552
    sub-long v6, v4, v6

    .line 553
    .line 554
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 555
    .line 556
    const-wide/16 v10, 0x1e

    .line 557
    .line 558
    invoke-virtual {v1, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 559
    .line 560
    .line 561
    move-result-wide v10

    .line 562
    cmp-long v1, v6, v10

    .line 563
    .line 564
    if-gtz v1, :cond_b

    .line 565
    .line 566
    goto :goto_7

    .line 567
    :cond_b
    :goto_6
    iget-object v1, v2, Lp4/x9;->a:Lt3/c;

    .line 568
    .line 569
    new-instance v6, Lr3/v;

    .line 570
    .line 571
    new-array v3, v3, [Lr3/o;

    .line 572
    .line 573
    new-instance v7, Lr3/o;

    .line 574
    .line 575
    move-object v14, v7

    .line 576
    move/from16 v16, v0

    .line 577
    .line 578
    invoke-direct/range {v14 .. v20}, Lr3/o;-><init>(IIJJ)V

    .line 579
    .line 580
    .line 581
    const/4 v0, 0x0

    .line 582
    aput-object v7, v3, v0

    .line 583
    .line 584
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    invoke-direct {v6, v0, v3}, Lr3/v;-><init>(ILjava/util/List;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1, v6}, Lt3/c;->d(Lr3/v;)Lh5/z;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    new-instance v1, Lp4/w9;

    .line 596
    .line 597
    invoke-direct {v1, v2, v4, v5}, Lp4/w9;-><init>(Lp4/x9;J)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v0, v1}, Lh5/z;->p(Lh5/f;)Lh5/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    .line 602
    .line 603
    :goto_7
    monitor-exit v2

    .line 604
    return-void

    .line 605
    :catchall_0
    move-exception v0

    .line 606
    monitor-exit v2

    .line 607
    throw v0
.end method
