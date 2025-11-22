.class public final Lyc/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwc/d;


# static fields
.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile a:Lyc/r;

.field public final b:Lrc/w;

.field public volatile c:Z

.field public final d:Lvc/i;

.field public final e:Lwc/f;

.field public final f:Lyc/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsc/c;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyc/p;->g:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsc/c;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyc/p;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lrc/v;Lvc/i;Lwc/f;Lyc/f;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyc/p;->d:Lvc/i;

    iput-object p3, p0, Lyc/p;->e:Lwc/f;

    iput-object p4, p0, Lyc/p;->f:Lyc/f;

    sget-object p2, Lrc/w;->f:Lrc/w;

    iget-object p1, p1, Lrc/v;->t:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lrc/w;->e:Lrc/w;

    :goto_0
    iput-object p2, p0, Lyc/p;->b:Lrc/w;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lyc/p;->a:Lyc/r;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lyc/r;->g()Lyc/r$a;

    move-result-object v0

    invoke-virtual {v0}, Lyc/r$a;->close()V

    return-void
.end method

.method public final b(Lrc/x;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lyc/p;->a:Lyc/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p1, Lrc/x;->e:Lrc/a0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v4, p1, Lrc/x;->d:Lrc/q;

    .line 18
    .line 19
    iget-object v5, v4, Lrc/q;->a:[Ljava/lang/String;

    .line 20
    .line 21
    array-length v5, v5

    .line 22
    div-int/lit8 v5, v5, 0x2

    .line 23
    .line 24
    add-int/lit8 v5, v5, 0x4

    .line 25
    .line 26
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v5, Lyc/c;

    .line 30
    .line 31
    sget-object v6, Lyc/c;->f:Led/h;

    .line 32
    .line 33
    iget-object v7, p1, Lrc/x;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v5, v6, v7}, Lyc/c;-><init>(Led/h;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v5, Lyc/c;

    .line 42
    .line 43
    sget-object v6, Lyc/c;->g:Led/h;

    .line 44
    .line 45
    const-string v7, "url"

    .line 46
    .line 47
    iget-object v8, p1, Lrc/x;->b:Lrc/r;

    .line 48
    .line 49
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8}, Lrc/r;->b()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v8}, Lrc/r;->d()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    if-eqz v9, :cond_2

    .line 61
    .line 62
    new-instance v10, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const/16 v7, 0x3f

    .line 71
    .line 72
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    :cond_2
    invoke-direct {v5, v6, v7}, Lyc/c;-><init>(Led/h;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    const-string v5, "Host"

    .line 89
    .line 90
    iget-object p1, p1, Lrc/x;->d:Lrc/q;

    .line 91
    .line 92
    invoke-virtual {p1, v5}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    new-instance v5, Lyc/c;

    .line 99
    .line 100
    sget-object v6, Lyc/c;->i:Led/h;

    .line 101
    .line 102
    invoke-direct {v5, v6, p1}, Lyc/c;-><init>(Led/h;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    :cond_3
    new-instance p1, Lyc/c;

    .line 109
    .line 110
    sget-object v5, Lyc/c;->h:Led/h;

    .line 111
    .line 112
    iget-object v6, v8, Lrc/r;->b:Ljava/lang/String;

    .line 113
    .line 114
    invoke-direct {p1, v5, v6}, Lyc/c;-><init>(Led/h;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    iget-object p1, v4, Lrc/q;->a:[Ljava/lang/String;

    .line 121
    .line 122
    array-length p1, p1

    .line 123
    div-int/lit8 p1, p1, 0x2

    .line 124
    .line 125
    const/4 v5, 0x0

    .line 126
    :goto_1
    if-ge v5, p1, :cond_7

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Lrc/q;->o(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 133
    .line 134
    const-string v8, "Locale.US"

    .line 135
    .line 136
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    if-eqz v6, :cond_6

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    const-string v7, "(this as java.lang.String).toLowerCase(locale)"

    .line 146
    .line 147
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    sget-object v7, Lyc/p;->g:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_4

    .line 157
    .line 158
    const-string v7, "te"

    .line 159
    .line 160
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-eqz v7, :cond_5

    .line 165
    .line 166
    invoke-virtual {v4, v5}, Lrc/q;->w(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    const-string v8, "trailers"

    .line 171
    .line 172
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_5

    .line 177
    .line 178
    :cond_4
    new-instance v7, Lyc/c;

    .line 179
    .line 180
    invoke-virtual {v4, v5}, Lrc/q;->w(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    invoke-direct {v7, v6, v8}, Lyc/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .line 194
    .line 195
    const-string v0, "null cannot be cast to non-null type java.lang.String"

    .line 196
    .line 197
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p1

    .line 201
    :cond_7
    iget-object p1, p0, Lyc/p;->f:Lyc/f;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    xor-int/lit8 v10, v0, 0x1

    .line 207
    .line 208
    const/4 v8, 0x0

    .line 209
    iget-object v11, p1, Lyc/f;->B:Lyc/s;

    .line 210
    .line 211
    monitor-enter v11

    .line 212
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    :try_start_1
    iget v4, p1, Lyc/f;->f:I

    .line 214
    .line 215
    const v5, 0x3fffffff    # 1.9999999f

    .line 216
    .line 217
    .line 218
    if-le v4, v5, :cond_8

    .line 219
    .line 220
    sget-object v4, Lyc/b;->f:Lyc/b;

    .line 221
    .line 222
    invoke-virtual {p1, v4}, Lyc/f;->f(Lyc/b;)V

    .line 223
    .line 224
    .line 225
    :cond_8
    iget-boolean v4, p1, Lyc/f;->g:Z

    .line 226
    .line 227
    if-nez v4, :cond_e

    .line 228
    .line 229
    iget v12, p1, Lyc/f;->f:I

    .line 230
    .line 231
    add-int/lit8 v4, v12, 0x2

    .line 232
    .line 233
    iput v4, p1, Lyc/f;->f:I

    .line 234
    .line 235
    new-instance v13, Lyc/r;

    .line 236
    .line 237
    const/4 v9, 0x0

    .line 238
    move-object v4, v13

    .line 239
    move v5, v12

    .line 240
    move-object v6, p1

    .line 241
    move v7, v10

    .line 242
    invoke-direct/range {v4 .. v9}, Lyc/r;-><init>(ILyc/f;ZZLrc/q;)V

    .line 243
    .line 244
    .line 245
    if-eqz v0, :cond_9

    .line 246
    .line 247
    iget-wide v4, p1, Lyc/f;->y:J

    .line 248
    .line 249
    iget-wide v6, p1, Lyc/f;->z:J

    .line 250
    .line 251
    cmp-long v0, v4, v6

    .line 252
    .line 253
    if-gez v0, :cond_9

    .line 254
    .line 255
    iget-wide v4, v13, Lyc/r;->c:J

    .line 256
    .line 257
    iget-wide v6, v13, Lyc/r;->d:J

    .line 258
    .line 259
    cmp-long v0, v4, v6

    .line 260
    .line 261
    if-ltz v0, :cond_a

    .line 262
    .line 263
    :cond_9
    const/4 v1, 0x1

    .line 264
    :cond_a
    invoke-virtual {v13}, Lyc/r;->i()Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_b

    .line 269
    .line 270
    iget-object v0, p1, Lyc/f;->c:Ljava/util/LinkedHashMap;

    .line 271
    .line 272
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    :cond_b
    sget-object v0, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    .line 281
    :try_start_2
    monitor-exit p1

    .line 282
    iget-object v0, p1, Lyc/f;->B:Lyc/s;

    .line 283
    .line 284
    invoke-virtual {v0, v12, v10, v3}, Lyc/s;->e(IZLjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 285
    .line 286
    .line 287
    monitor-exit v11

    .line 288
    if-eqz v1, :cond_c

    .line 289
    .line 290
    iget-object p1, p1, Lyc/f;->B:Lyc/s;

    .line 291
    .line 292
    invoke-virtual {p1}, Lyc/s;->flush()V

    .line 293
    .line 294
    .line 295
    :cond_c
    iput-object v13, p0, Lyc/p;->a:Lyc/r;

    .line 296
    .line 297
    iget-boolean p1, p0, Lyc/p;->c:Z

    .line 298
    .line 299
    if-nez p1, :cond_d

    .line 300
    .line 301
    iget-object p1, p0, Lyc/p;->a:Lyc/r;

    .line 302
    .line 303
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    iget-object p1, p1, Lyc/r;->i:Lyc/r$c;

    .line 307
    .line 308
    iget-object v0, p0, Lyc/p;->e:Lwc/f;

    .line 309
    .line 310
    iget v0, v0, Lwc/f;->h:I

    .line 311
    .line 312
    int-to-long v0, v0

    .line 313
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 314
    .line 315
    invoke-virtual {p1, v0, v1, v2}, Led/k0;->g(JLjava/util/concurrent/TimeUnit;)Led/k0;

    .line 316
    .line 317
    .line 318
    iget-object p1, p0, Lyc/p;->a:Lyc/r;

    .line 319
    .line 320
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    iget-object p1, p1, Lyc/r;->j:Lyc/r$c;

    .line 324
    .line 325
    iget-object v0, p0, Lyc/p;->e:Lwc/f;

    .line 326
    .line 327
    iget v0, v0, Lwc/f;->i:I

    .line 328
    .line 329
    int-to-long v0, v0

    .line 330
    invoke-virtual {p1, v0, v1, v2}, Led/k0;->g(JLjava/util/concurrent/TimeUnit;)Led/k0;

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :cond_d
    iget-object p1, p0, Lyc/p;->a:Lyc/r;

    .line 335
    .line 336
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    sget-object v0, Lyc/b;->g:Lyc/b;

    .line 340
    .line 341
    invoke-virtual {p1, v0}, Lyc/r;->e(Lyc/b;)V

    .line 342
    .line 343
    .line 344
    new-instance p1, Ljava/io/IOException;

    .line 345
    .line 346
    const-string v0, "Canceled"

    .line 347
    .line 348
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw p1

    .line 352
    :cond_e
    :try_start_3
    new-instance v0, Lyc/a;

    .line 353
    .line 354
    invoke-direct {v0}, Lyc/a;-><init>()V

    .line 355
    .line 356
    .line 357
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    :catchall_0
    move-exception v0

    .line 359
    :try_start_4
    monitor-exit p1

    .line 360
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 361
    :catchall_1
    move-exception p1

    .line 362
    monitor-exit v11

    .line 363
    throw p1
.end method

.method public final c(Z)Lrc/b0$a;
    .locals 10

    .line 1
    iget-object v0, p0, Lyc/p;->a:Lyc/r;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, v0, Lyc/r;->i:Lyc/r$c;

    .line 8
    .line 9
    invoke-virtual {v1}, Led/a;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    .line 12
    :goto_0
    :try_start_1
    iget-object v1, v0, Lyc/r;->e:Ljava/util/ArrayDeque;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, v0, Lyc/r;->k:Lyc/b;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lyc/r;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_2
    iget-object v1, v0, Lyc/r;->i:Lyc/r$c;

    .line 29
    .line 30
    invoke-virtual {v1}, Lyc/r$c;->l()V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lyc/r;->e:Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    xor-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    if-eqz v1, :cond_6

    .line 42
    .line 43
    iget-object v1, v0, Lyc/r;->e:Ljava/util/ArrayDeque;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "headersQueue.removeFirst()"

    .line 50
    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    check-cast v1, Lrc/q;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    .line 56
    monitor-exit v0

    .line 57
    iget-object v0, p0, Lyc/p;->b:Lrc/w;

    .line 58
    .line 59
    const-string v2, "protocol"

    .line 60
    .line 61
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lrc/q$a;

    .line 65
    .line 66
    invoke-direct {v2}, Lrc/q$a;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v3, v1, Lrc/q;->a:[Ljava/lang/String;

    .line 70
    .line 71
    array-length v3, v3

    .line 72
    div-int/lit8 v3, v3, 0x2

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    move-object v6, v4

    .line 77
    :goto_1
    if-ge v5, v3, :cond_3

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Lrc/q;->o(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v1, v5}, Lrc/q;->w(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    const-string v9, ":status"

    .line 88
    .line 89
    invoke-static {v7, v9}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-eqz v9, :cond_1

    .line 94
    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v7, "HTTP/1.1 "

    .line 98
    .line 99
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static {v6}, Lwc/i$a;->a(Ljava/lang/String;)Lwc/i;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    goto :goto_2

    .line 114
    :cond_1
    sget-object v9, Lyc/p;->h:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-nez v9, :cond_2

    .line 121
    .line 122
    invoke-virtual {v2, v7, v8}, Lrc/q$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    if-eqz v6, :cond_5

    .line 129
    .line 130
    new-instance v1, Lrc/b0$a;

    .line 131
    .line 132
    invoke-direct {v1}, Lrc/b0$a;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v0, v1, Lrc/b0$a;->b:Lrc/w;

    .line 136
    .line 137
    iget v0, v6, Lwc/i;->b:I

    .line 138
    .line 139
    iput v0, v1, Lrc/b0$a;->c:I

    .line 140
    .line 141
    iget-object v0, v6, Lwc/i;->c:Ljava/lang/String;

    .line 142
    .line 143
    const-string v3, "message"

    .line 144
    .line 145
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iput-object v0, v1, Lrc/b0$a;->d:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v2}, Lrc/q$a;->c()Lrc/q;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lrc/q;->u()Lrc/q$a;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iput-object v0, v1, Lrc/b0$a;->f:Lrc/q$a;

    .line 159
    .line 160
    if-eqz p1, :cond_4

    .line 161
    .line 162
    iget p1, v1, Lrc/b0$a;->c:I

    .line 163
    .line 164
    const/16 v0, 0x64

    .line 165
    .line 166
    if-ne p1, v0, :cond_4

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_4
    move-object v4, v1

    .line 170
    :goto_3
    return-object v4

    .line 171
    :cond_5
    new-instance p1, Ljava/net/ProtocolException;

    .line 172
    .line 173
    const-string v0, "Expected \':status\' header not present"

    .line 174
    .line 175
    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :cond_6
    :try_start_3
    iget-object p1, v0, Lyc/r;->l:Ljava/io/IOException;

    .line 180
    .line 181
    if-eqz p1, :cond_7

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_7
    new-instance p1, Lyc/w;

    .line 185
    .line 186
    iget-object v1, v0, Lyc/r;->k:Lyc/b;

    .line 187
    .line 188
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {p1, v1}, Lyc/w;-><init>(Lyc/b;)V

    .line 192
    .line 193
    .line 194
    :goto_4
    throw p1

    .line 195
    :catchall_0
    move-exception p1

    .line 196
    iget-object v1, v0, Lyc/r;->i:Lyc/r$c;

    .line 197
    .line 198
    invoke-virtual {v1}, Lyc/r$c;->l()V

    .line 199
    .line 200
    .line 201
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    :catchall_1
    move-exception p1

    .line 203
    monitor-exit v0

    .line 204
    throw p1
.end method

.method public final cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyc/p;->c:Z

    iget-object v0, p0, Lyc/p;->a:Lyc/r;

    if-eqz v0, :cond_0

    sget-object v1, Lyc/b;->g:Lyc/b;

    invoke-virtual {v0, v1}, Lyc/r;->e(Lyc/b;)V

    :cond_0
    return-void
.end method

.method public final d()Lvc/i;
    .locals 1

    iget-object v0, p0, Lyc/p;->d:Lvc/i;

    return-object v0
.end method

.method public final e(Lrc/b0;)J
    .locals 2

    invoke-static {p1}, Lwc/e;->a(Lrc/b0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lsc/c;->j(Lrc/b0;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final f(Lrc/x;J)Led/h0;
    .locals 0

    iget-object p1, p0, Lyc/p;->a:Lyc/r;

    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lyc/r;->g()Lyc/r$a;

    move-result-object p1

    return-object p1
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lyc/p;->f:Lyc/f;

    invoke-virtual {v0}, Lyc/f;->flush()V

    return-void
.end method

.method public final h(Lrc/b0;)Led/j0;
    .locals 0

    .line 1
    iget-object p1, p0, Lyc/p;->a:Lyc/r;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lyc/r;->g:Lyc/r$b;

    .line 7
    .line 8
    return-object p1
.end method
