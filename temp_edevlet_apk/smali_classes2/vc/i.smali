.class public final Lvc/i;
.super Lyc/f$c;
.source "SourceFile"


# instance fields
.field public b:Ljava/net/Socket;

.field public c:Ljava/net/Socket;

.field public d:Lrc/p;

.field public e:Lrc/w;

.field public f:Lyc/f;

.field public g:Led/d0;

.field public h:Led/b0;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public final o:Ljava/util/ArrayList;

.field public p:J

.field public final q:Lrc/e0;


# direct methods
.method public constructor <init>(Lvc/k;Lrc/e0;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "route"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lyc/f$c;-><init>()V

    iput-object p2, p0, Lvc/i;->q:Lrc/e0;

    const/4 p1, 0x1

    iput p1, p0, Lvc/i;->n:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lvc/i;->o:Ljava/util/ArrayList;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lvc/i;->p:J

    return-void
.end method

.method public static d(Lrc/v;Lrc/e0;Ljava/io/IOException;)V
    .locals 3

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "failedRoute"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "failure"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lrc/e0;->b:Ljava/net/Proxy;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 23
    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p1, Lrc/e0;->a:Lrc/a;

    .line 27
    .line 28
    iget-object v1, v0, Lrc/a;->k:Ljava/net/ProxySelector;

    .line 29
    .line 30
    iget-object v0, v0, Lrc/a;->a:Lrc/r;

    .line 31
    .line 32
    invoke-virtual {v0}, Lrc/r;->g()Ljava/net/URI;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v2, p1, Lrc/e0;->b:Ljava/net/Proxy;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p0, p0, Lrc/v;->B:Lcom/airbnb/epoxy/a;

    .line 46
    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget-object p2, p0, Lcom/airbnb/epoxy/a;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p2, Ljava/util/Set;

    .line 51
    .line 52
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0

    .line 59
    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Lyc/f;Lyc/v;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "connection"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p1, "settings"

    .line 8
    .line 9
    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget p1, p2, Lyc/v;->a:I

    .line 13
    .line 14
    and-int/lit8 p1, p1, 0x10

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p2, Lyc/v;->b:[I

    .line 19
    .line 20
    const/4 p2, 0x4

    .line 21
    aget p1, p1, p2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const p1, 0x7fffffff

    .line 25
    .line 26
    .line 27
    :goto_0
    iput p1, p0, Lvc/i;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit p0

    .line 33
    throw p1
.end method

.method public final b(Lyc/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lyc/b;->f:Lyc/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lyc/r;->c(Lyc/b;Ljava/io/IOException;)V

    return-void
.end method

.method public final c(IIIZLvc/e;Lrc/n;)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p5

    .line 4
    .line 5
    move-object/from16 v9, p6

    .line 6
    .line 7
    const-string v10, "proxy"

    .line 8
    .line 9
    const-string v11, "inetSocketAddress"

    .line 10
    .line 11
    const-string v0, "call"

    .line 12
    .line 13
    invoke-static {v8, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "eventListener"

    .line 17
    .line 18
    invoke-static {v9, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v7, Lvc/i;->e:Lrc/w;

    .line 22
    .line 23
    const/4 v12, 0x1

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v0, :cond_15

    .line 30
    .line 31
    iget-object v0, v7, Lvc/i;->q:Lrc/e0;

    .line 32
    .line 33
    iget-object v0, v0, Lrc/e0;->a:Lrc/a;

    .line 34
    .line 35
    iget-object v0, v0, Lrc/a;->c:Ljava/util/List;

    .line 36
    .line 37
    new-instance v13, Lvc/b;

    .line 38
    .line 39
    invoke-direct {v13, v0}, Lvc/b;-><init>(Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v7, Lvc/i;->q:Lrc/e0;

    .line 43
    .line 44
    iget-object v1, v1, Lrc/e0;->a:Lrc/a;

    .line 45
    .line 46
    iget-object v2, v1, Lrc/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    sget-object v1, Lrc/i;->f:Lrc/i;

    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, v7, Lvc/i;->q:Lrc/e0;

    .line 59
    .line 60
    iget-object v0, v0, Lrc/e0;->a:Lrc/a;

    .line 61
    .line 62
    iget-object v0, v0, Lrc/a;->a:Lrc/r;

    .line 63
    .line 64
    iget-object v0, v0, Lrc/r;->e:Ljava/lang/String;

    .line 65
    .line 66
    sget-object v1, Lzc/h;->c:Lzc/h$a;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    sget-object v1, Lzc/h;->a:Lzc/h;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lzc/h;->h(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    new-instance v1, Lvc/l;

    .line 81
    .line 82
    new-instance v2, Ljava/net/UnknownServiceException;

    .line 83
    .line 84
    const-string v3, "CLEARTEXT communication to "

    .line 85
    .line 86
    const-string v4, " not permitted by network security policy"

    .line 87
    .line 88
    invoke-static {v3, v0, v4}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, v2}, Lvc/l;-><init>(Ljava/io/IOException;)V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_2
    new-instance v0, Lvc/l;

    .line 100
    .line 101
    new-instance v1, Ljava/net/UnknownServiceException;

    .line 102
    .line 103
    const-string v2, "CLEARTEXT communication not enabled for client"

    .line 104
    .line 105
    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v1}, Lvc/l;-><init>(Ljava/io/IOException;)V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :cond_3
    iget-object v0, v1, Lrc/a;->b:Ljava/util/List;

    .line 113
    .line 114
    sget-object v1, Lrc/w;->f:Lrc/w;

    .line 115
    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_14

    .line 121
    .line 122
    :goto_1
    const/4 v14, 0x0

    .line 123
    move-object v15, v14

    .line 124
    :goto_2
    :try_start_0
    iget-object v0, v7, Lvc/i;->q:Lrc/e0;

    .line 125
    .line 126
    iget-object v1, v0, Lrc/e0;->a:Lrc/a;

    .line 127
    .line 128
    iget-object v1, v1, Lrc/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    .line 129
    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    iget-object v0, v0, Lrc/e0;->b:Ljava/net/Proxy;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 139
    .line 140
    if-ne v0, v1, :cond_4

    .line 141
    .line 142
    const/4 v0, 0x1

    .line 143
    goto :goto_3

    .line 144
    :cond_4
    const/4 v0, 0x0

    .line 145
    :goto_3
    if-eqz v0, :cond_6

    .line 146
    .line 147
    move-object/from16 v1, p0

    .line 148
    .line 149
    move/from16 v2, p1

    .line 150
    .line 151
    move/from16 v3, p2

    .line 152
    .line 153
    move/from16 v4, p3

    .line 154
    .line 155
    move-object/from16 v5, p5

    .line 156
    .line 157
    move-object/from16 v6, p6

    .line 158
    .line 159
    invoke-virtual/range {v1 .. v6}, Lvc/i;->f(IIILvc/e;Lrc/n;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, v7, Lvc/i;->b:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    .line 164
    if-nez v0, :cond_5

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_5
    move/from16 v1, p1

    .line 168
    .line 169
    move/from16 v2, p2

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :goto_4
    move/from16 v1, p1

    .line 173
    .line 174
    move/from16 v2, p2

    .line 175
    .line 176
    goto :goto_9

    .line 177
    :cond_6
    move/from16 v1, p1

    .line 178
    .line 179
    move/from16 v2, p2

    .line 180
    .line 181
    :try_start_1
    invoke-virtual {v7, v1, v2, v8, v9}, Lvc/i;->e(IILvc/e;Lrc/n;)V

    .line 182
    .line 183
    .line 184
    :goto_5
    invoke-virtual {v7, v13, v8, v9}, Lvc/i;->g(Lvc/b;Lvc/e;Lrc/n;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, v7, Lvc/i;->q:Lrc/e0;

    .line 188
    .line 189
    iget-object v3, v0, Lrc/e0;->c:Ljava/net/InetSocketAddress;

    .line 190
    .line 191
    iget-object v0, v0, Lrc/e0;->b:Ljava/net/Proxy;

    .line 192
    .line 193
    sget-object v4, Lrc/n;->a:Lrc/n$a;

    .line 194
    .line 195
    invoke-static {v3, v11}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v0, v10}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    .line 200
    .line 201
    :goto_6
    iget-object v0, v7, Lvc/i;->q:Lrc/e0;

    .line 202
    .line 203
    iget-object v1, v0, Lrc/e0;->a:Lrc/a;

    .line 204
    .line 205
    iget-object v1, v1, Lrc/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    .line 206
    .line 207
    if-eqz v1, :cond_7

    .line 208
    .line 209
    iget-object v0, v0, Lrc/e0;->b:Ljava/net/Proxy;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 216
    .line 217
    if-ne v0, v1, :cond_7

    .line 218
    .line 219
    const/4 v0, 0x1

    .line 220
    goto :goto_7

    .line 221
    :cond_7
    const/4 v0, 0x0

    .line 222
    :goto_7
    if-eqz v0, :cond_9

    .line 223
    .line 224
    iget-object v0, v7, Lvc/i;->b:Ljava/net/Socket;

    .line 225
    .line 226
    if-eqz v0, :cond_8

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_8
    new-instance v0, Lvc/l;

    .line 230
    .line 231
    new-instance v1, Ljava/net/ProtocolException;

    .line 232
    .line 233
    const-string v2, "Too many tunnel connections attempted: 21"

    .line 234
    .line 235
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-direct {v0, v1}, Lvc/l;-><init>(Ljava/io/IOException;)V

    .line 239
    .line 240
    .line 241
    throw v0

    .line 242
    :cond_9
    :goto_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 243
    .line 244
    .line 245
    move-result-wide v0

    .line 246
    iput-wide v0, v7, Lvc/i;->p:J

    .line 247
    .line 248
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    goto :goto_9

    .line 251
    :catch_1
    move-exception v0

    .line 252
    goto :goto_4

    .line 253
    :goto_9
    iget-object v3, v7, Lvc/i;->c:Ljava/net/Socket;

    .line 254
    .line 255
    if-eqz v3, :cond_a

    .line 256
    .line 257
    invoke-static {v3}, Lsc/c;->d(Ljava/net/Socket;)V

    .line 258
    .line 259
    .line 260
    :cond_a
    iget-object v3, v7, Lvc/i;->b:Ljava/net/Socket;

    .line 261
    .line 262
    if-eqz v3, :cond_b

    .line 263
    .line 264
    invoke-static {v3}, Lsc/c;->d(Ljava/net/Socket;)V

    .line 265
    .line 266
    .line 267
    :cond_b
    iput-object v14, v7, Lvc/i;->c:Ljava/net/Socket;

    .line 268
    .line 269
    iput-object v14, v7, Lvc/i;->b:Ljava/net/Socket;

    .line 270
    .line 271
    iput-object v14, v7, Lvc/i;->g:Led/d0;

    .line 272
    .line 273
    iput-object v14, v7, Lvc/i;->h:Led/b0;

    .line 274
    .line 275
    iput-object v14, v7, Lvc/i;->d:Lrc/p;

    .line 276
    .line 277
    iput-object v14, v7, Lvc/i;->e:Lrc/w;

    .line 278
    .line 279
    iput-object v14, v7, Lvc/i;->f:Lyc/f;

    .line 280
    .line 281
    iput v12, v7, Lvc/i;->n:I

    .line 282
    .line 283
    iget-object v3, v7, Lvc/i;->q:Lrc/e0;

    .line 284
    .line 285
    iget-object v4, v3, Lrc/e0;->c:Ljava/net/InetSocketAddress;

    .line 286
    .line 287
    iget-object v3, v3, Lrc/e0;->b:Ljava/net/Proxy;

    .line 288
    .line 289
    invoke-static {v4, v11}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-static {v3, v10}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    if-nez v15, :cond_c

    .line 296
    .line 297
    new-instance v15, Lvc/l;

    .line 298
    .line 299
    invoke-direct {v15, v0}, Lvc/l;-><init>(Ljava/io/IOException;)V

    .line 300
    .line 301
    .line 302
    goto :goto_a

    .line 303
    :cond_c
    iget-object v3, v15, Lvc/l;->b:Ljava/io/IOException;

    .line 304
    .line 305
    invoke-static {v3, v0}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 306
    .line 307
    .line 308
    iput-object v0, v15, Lvc/l;->a:Ljava/io/IOException;

    .line 309
    .line 310
    :goto_a
    if-eqz p4, :cond_13

    .line 311
    .line 312
    iput-boolean v12, v13, Lvc/b;->c:Z

    .line 313
    .line 314
    iget-boolean v3, v13, Lvc/b;->b:Z

    .line 315
    .line 316
    if-nez v3, :cond_d

    .line 317
    .line 318
    goto :goto_b

    .line 319
    :cond_d
    instance-of v3, v0, Ljava/net/ProtocolException;

    .line 320
    .line 321
    if-eqz v3, :cond_e

    .line 322
    .line 323
    goto :goto_b

    .line 324
    :cond_e
    instance-of v3, v0, Ljava/io/InterruptedIOException;

    .line 325
    .line 326
    if-eqz v3, :cond_f

    .line 327
    .line 328
    goto :goto_b

    .line 329
    :cond_f
    instance-of v3, v0, Ljavax/net/ssl/SSLHandshakeException;

    .line 330
    .line 331
    if-eqz v3, :cond_10

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    instance-of v3, v3, Ljava/security/cert/CertificateException;

    .line 338
    .line 339
    if-eqz v3, :cond_10

    .line 340
    .line 341
    goto :goto_b

    .line 342
    :cond_10
    instance-of v3, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 343
    .line 344
    if-eqz v3, :cond_11

    .line 345
    .line 346
    goto :goto_b

    .line 347
    :cond_11
    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    .line 348
    .line 349
    if-eqz v0, :cond_12

    .line 350
    .line 351
    const/4 v0, 0x1

    .line 352
    goto :goto_c

    .line 353
    :cond_12
    :goto_b
    const/4 v0, 0x0

    .line 354
    :goto_c
    if-eqz v0, :cond_13

    .line 355
    .line 356
    goto/16 :goto_2

    .line 357
    .line 358
    :cond_13
    throw v15

    .line 359
    :cond_14
    new-instance v0, Lvc/l;

    .line 360
    .line 361
    new-instance v1, Ljava/net/UnknownServiceException;

    .line 362
    .line 363
    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    .line 364
    .line 365
    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-direct {v0, v1}, Lvc/l;-><init>(Ljava/io/IOException;)V

    .line 369
    .line 370
    .line 371
    throw v0

    .line 372
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 373
    .line 374
    const-string v1, "already connected"

    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v0
.end method

.method public final e(IILvc/e;Lrc/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lvc/i;->q:Lrc/e0;

    .line 2
    .line 3
    iget-object v1, v0, Lrc/e0;->b:Ljava/net/Proxy;

    .line 4
    .line 5
    iget-object v0, v0, Lrc/e0;->a:Lrc/a;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v3, Lvc/f;->a:[I

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    aget v2, v3, v2

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v2, v3, :cond_1

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    if-eq v2, v3, :cond_1

    .line 27
    .line 28
    :goto_0
    new-instance v0, Ljava/net/Socket;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, v0, Lrc/a;->e:Ljavax/net/SocketFactory;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    iput-object v0, p0, Lvc/i;->b:Ljava/net/Socket;

    .line 44
    .line 45
    iget-object v1, p0, Lvc/i;->q:Lrc/e0;

    .line 46
    .line 47
    iget-object v1, v1, Lrc/e0;->c:Ljava/net/InetSocketAddress;

    .line 48
    .line 49
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string p4, "call"

    .line 53
    .line 54
    invoke-static {p3, p4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p3, "inetSocketAddress"

    .line 58
    .line 59
    invoke-static {v1, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 63
    .line 64
    .line 65
    :try_start_0
    sget-object p2, Lzc/h;->c:Lzc/h$a;

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    sget-object p2, Lzc/h;->a:Lzc/h;

    .line 71
    .line 72
    iget-object p3, p0, Lvc/i;->q:Lrc/e0;

    .line 73
    .line 74
    iget-object p3, p3, Lrc/e0;->c:Ljava/net/InetSocketAddress;

    .line 75
    .line 76
    invoke-virtual {p2, v0, p3, p1}, Lzc/h;->e(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    .line 78
    .line 79
    :try_start_1
    invoke-static {v0}, Led/v;->e(Ljava/net/Socket;)Led/c;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Led/v;->b(Led/j0;)Led/d0;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lvc/i;->g:Led/d0;

    .line 88
    .line 89
    invoke-static {v0}, Led/v;->d(Ljava/net/Socket;)Led/b;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Led/v;->a(Led/h0;)Led/b0;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lvc/i;->h:Led/b0;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const-string p3, "throw with null exception"

    .line 106
    .line 107
    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-nez p2, :cond_2

    .line 112
    .line 113
    :goto_2
    return-void

    .line 114
    :cond_2
    new-instance p2, Ljava/io/IOException;

    .line 115
    .line 116
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    throw p2

    .line 120
    :catch_1
    move-exception p1

    .line 121
    new-instance p2, Ljava/net/ConnectException;

    .line 122
    .line 123
    new-instance p3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string p4, "Failed to connect to "

    .line 126
    .line 127
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p4, p0, Lvc/i;->q:Lrc/e0;

    .line 131
    .line 132
    iget-object p4, p4, Lrc/e0;->c:Ljava/net/InetSocketAddress;

    .line 133
    .line 134
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 145
    .line 146
    .line 147
    throw p2
.end method

.method public final f(IIILvc/e;Lrc/n;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p2

    .line 3
    .line 4
    new-instance v2, Lrc/x$a;

    .line 5
    .line 6
    invoke-direct {v2}, Lrc/x$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v3, v0, Lvc/i;->q:Lrc/e0;

    .line 10
    .line 11
    iget-object v4, v3, Lrc/e0;->a:Lrc/a;

    .line 12
    .line 13
    iget-object v4, v4, Lrc/a;->a:Lrc/r;

    .line 14
    .line 15
    const-string v5, "url"

    .line 16
    .line 17
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v4, v2, Lrc/x$a;->a:Lrc/r;

    .line 21
    .line 22
    const-string v4, "CONNECT"

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-virtual {v2, v4, v5}, Lrc/x$a;->d(Ljava/lang/String;Lrc/a0;)V

    .line 26
    .line 27
    .line 28
    iget-object v4, v3, Lrc/e0;->a:Lrc/a;

    .line 29
    .line 30
    iget-object v6, v4, Lrc/a;->a:Lrc/r;

    .line 31
    .line 32
    const/4 v7, 0x1

    .line 33
    invoke-static {v6, v7}, Lsc/c;->u(Lrc/r;Z)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const-string v8, "Host"

    .line 38
    .line 39
    invoke-virtual {v2, v8, v6}, Lrc/x$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v6, "Proxy-Connection"

    .line 43
    .line 44
    const-string v8, "Keep-Alive"

    .line 45
    .line 46
    invoke-virtual {v2, v6, v8}, Lrc/x$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v6, "User-Agent"

    .line 50
    .line 51
    const-string v8, "okhttp/4.9.3"

    .line 52
    .line 53
    invoke-virtual {v2, v6, v8}, Lrc/x$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lrc/x$a;->a()Lrc/x;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v6, Lrc/b0$a;

    .line 61
    .line 62
    invoke-direct {v6}, Lrc/b0$a;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v2, v6, Lrc/b0$a;->a:Lrc/x;

    .line 66
    .line 67
    sget-object v8, Lrc/w;->c:Lrc/w;

    .line 68
    .line 69
    iput-object v8, v6, Lrc/b0$a;->b:Lrc/w;

    .line 70
    .line 71
    const/16 v8, 0x197

    .line 72
    .line 73
    iput v8, v6, Lrc/b0$a;->c:I

    .line 74
    .line 75
    const-string v9, "Preemptive Authenticate"

    .line 76
    .line 77
    iput-object v9, v6, Lrc/b0$a;->d:Ljava/lang/String;

    .line 78
    .line 79
    sget-object v9, Lsc/c;->c:Lrc/c0;

    .line 80
    .line 81
    iput-object v9, v6, Lrc/b0$a;->g:Lrc/d0;

    .line 82
    .line 83
    const-wide/16 v9, -0x1

    .line 84
    .line 85
    iput-wide v9, v6, Lrc/b0$a;->k:J

    .line 86
    .line 87
    iput-wide v9, v6, Lrc/b0$a;->l:J

    .line 88
    .line 89
    iget-object v11, v6, Lrc/b0$a;->f:Lrc/q$a;

    .line 90
    .line 91
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    sget-object v12, Lrc/q;->b:Lrc/q$b;

    .line 95
    .line 96
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    const-string v12, "Proxy-Authenticate"

    .line 100
    .line 101
    invoke-static {v12}, Lrc/q$b;->a(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v13, "OkHttp-Preemptive"

    .line 105
    .line 106
    invoke-static {v13, v12}, Lrc/q$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11, v12}, Lrc/q$a;->d(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v11, v12, v13}, Lrc/q$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Lrc/b0$a;->a()Lrc/b0;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    iget-object v11, v4, Lrc/a;->i:Lrc/b;

    .line 120
    .line 121
    invoke-interface {v11, v3, v6}, Lrc/b;->b(Lrc/e0;Lrc/b0;)V

    .line 122
    .line 123
    .line 124
    move/from16 v6, p1

    .line 125
    .line 126
    move-object/from16 v11, p4

    .line 127
    .line 128
    move-object/from16 v12, p5

    .line 129
    .line 130
    invoke-virtual {p0, v6, v1, v11, v12}, Lvc/i;->e(IILvc/e;Lrc/n;)V

    .line 131
    .line 132
    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v11, "CONNECT "

    .line 136
    .line 137
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v11, v2, Lrc/x;->b:Lrc/r;

    .line 141
    .line 142
    invoke-static {v11, v7}, Lsc/c;->u(Lrc/r;Z)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v7, " HTTP/1.1"

    .line 150
    .line 151
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    iget-object v7, v0, Lvc/i;->g:Led/d0;

    .line 159
    .line 160
    invoke-static {v7}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    iget-object v11, v0, Lvc/i;->h:Led/b0;

    .line 164
    .line 165
    invoke-static {v11}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    new-instance v12, Lxc/b;

    .line 169
    .line 170
    invoke-direct {v12, v5, p0, v7, v11}, Lxc/b;-><init>(Lrc/v;Lvc/i;Led/g;Led/f;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7}, Led/d0;->h()Led/k0;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    int-to-long v13, v1

    .line 178
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 179
    .line 180
    invoke-virtual {v5, v13, v14, v1}, Led/k0;->g(JLjava/util/concurrent/TimeUnit;)Led/k0;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v11}, Led/b0;->h()Led/k0;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    move/from16 v13, p3

    .line 188
    .line 189
    int-to-long v13, v13

    .line 190
    invoke-virtual {v5, v13, v14, v1}, Led/k0;->g(JLjava/util/concurrent/TimeUnit;)Led/k0;

    .line 191
    .line 192
    .line 193
    iget-object v5, v2, Lrc/x;->d:Lrc/q;

    .line 194
    .line 195
    invoke-virtual {v12, v5, v6}, Lxc/b;->k(Lrc/q;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v12}, Lxc/b;->a()V

    .line 199
    .line 200
    .line 201
    const/4 v5, 0x0

    .line 202
    invoke-virtual {v12, v5}, Lxc/b;->c(Z)Lrc/b0$a;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    iput-object v2, v5, Lrc/b0$a;->a:Lrc/x;

    .line 210
    .line 211
    invoke-virtual {v5}, Lrc/b0$a;->a()Lrc/b0;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-static {v2}, Lsc/c;->j(Lrc/b0;)J

    .line 216
    .line 217
    .line 218
    move-result-wide v5

    .line 219
    cmp-long v13, v5, v9

    .line 220
    .line 221
    if-nez v13, :cond_0

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v12, v5, v6}, Lxc/b;->j(J)Lxc/b$d;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    const v6, 0x7fffffff

    .line 229
    .line 230
    .line 231
    invoke-static {v5, v6, v1}, Lsc/c;->s(Led/j0;ILjava/util/concurrent/TimeUnit;)Z

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5}, Lxc/b$d;->close()V

    .line 235
    .line 236
    .line 237
    :goto_0
    const/16 v1, 0xc8

    .line 238
    .line 239
    iget v5, v2, Lrc/b0;->e:I

    .line 240
    .line 241
    if-eq v5, v1, :cond_2

    .line 242
    .line 243
    if-ne v5, v8, :cond_1

    .line 244
    .line 245
    iget-object v1, v4, Lrc/a;->i:Lrc/b;

    .line 246
    .line 247
    invoke-interface {v1, v3, v2}, Lrc/b;->b(Lrc/e0;Lrc/b0;)V

    .line 248
    .line 249
    .line 250
    new-instance v1, Ljava/io/IOException;

    .line 251
    .line 252
    const-string v2, "Failed to authenticate with proxy"

    .line 253
    .line 254
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v1

    .line 258
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 259
    .line 260
    const-string v2, "Unexpected response code for CONNECT: "

    .line 261
    .line 262
    invoke-static {v2, v5}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v1

    .line 270
    :cond_2
    iget-object v1, v7, Led/d0;->b:Led/e;

    .line 271
    .line 272
    invoke-virtual {v1}, Led/e;->I()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-eqz v1, :cond_3

    .line 277
    .line 278
    iget-object v1, v11, Led/b0;->b:Led/e;

    .line 279
    .line 280
    invoke-virtual {v1}, Led/e;->I()Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_3

    .line 285
    .line 286
    return-void

    .line 287
    :cond_3
    new-instance v1, Ljava/io/IOException;

    .line 288
    .line 289
    const-string v2, "TLS tunnel buffered too many bytes!"

    .line 290
    .line 291
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v1
.end method

.method public final g(Lvc/b;Lvc/e;Lrc/n;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lvc/i;->q:Lrc/e0;

    .line 2
    .line 3
    iget-object v0, v0, Lrc/e0;->a:Lrc/a;

    .line 4
    .line 5
    iget-object v1, v0, Lrc/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    .line 6
    .line 7
    sget-object v2, Lrc/w;->c:Lrc/w;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object p1, v0, Lrc/a;->b:Ljava/util/List;

    .line 12
    .line 13
    sget-object p2, Lrc/w;->f:Lrc/w;

    .line 14
    .line 15
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lvc/i;->b:Ljava/net/Socket;

    .line 22
    .line 23
    iput-object p1, p0, Lvc/i;->c:Ljava/net/Socket;

    .line 24
    .line 25
    iput-object p2, p0, Lvc/i;->e:Lrc/w;

    .line 26
    .line 27
    invoke-virtual {p0}, Lvc/i;->m()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object p1, p0, Lvc/i;->b:Ljava/net/Socket;

    .line 32
    .line 33
    iput-object p1, p0, Lvc/i;->c:Ljava/net/Socket;

    .line 34
    .line 35
    iput-object v2, p0, Lvc/i;->e:Lrc/w;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const-string p3, "call"

    .line 42
    .line 43
    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p2, "\n              |Hostname "

    .line 47
    .line 48
    const-string p3, "Hostname "

    .line 49
    .line 50
    iget-object v0, p0, Lvc/i;->q:Lrc/e0;

    .line 51
    .line 52
    iget-object v0, v0, Lrc/e0;->a:Lrc/a;

    .line 53
    .line 54
    iget-object v1, v0, Lrc/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    :try_start_0
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lvc/i;->b:Ljava/net/Socket;

    .line 61
    .line 62
    iget-object v5, v0, Lrc/a;->a:Lrc/r;

    .line 63
    .line 64
    iget-object v6, v5, Lrc/r;->e:Ljava/lang/String;

    .line 65
    .line 66
    iget v5, v5, Lrc/r;->f:I

    .line 67
    .line 68
    const/4 v7, 0x1

    .line 69
    invoke-virtual {v1, v4, v6, v5, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_9

    .line 74
    .line 75
    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    .line 77
    :try_start_1
    invoke-virtual {p1, v1}, Lvc/b;->a(Ljavax/net/ssl/SSLSocket;)Lrc/i;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-boolean v4, p1, Lrc/i;->b:Z

    .line 82
    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    sget-object v4, Lzc/h;->c:Lzc/h$a;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object v4, Lzc/h;->a:Lzc/h;

    .line 91
    .line 92
    iget-object v5, v0, Lrc/a;->a:Lrc/r;

    .line 93
    .line 94
    iget-object v5, v5, Lrc/r;->e:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v6, v0, Lrc/a;->b:Ljava/util/List;

    .line 97
    .line 98
    invoke-virtual {v4, v1, v5, v6}, Lzc/h;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    sget-object v5, Lrc/p;->e:Lrc/p$a;

    .line 109
    .line 110
    const-string v6, "sslSocketSession"

    .line 111
    .line 112
    invoke-static {v4, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {v4}, Lrc/p$a;->a(Ljavax/net/ssl/SSLSession;)Lrc/p;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    iget-object v6, v0, Lrc/a;->g:Ljavax/net/ssl/HostnameVerifier;

    .line 123
    .line 124
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v8, v0, Lrc/a;->a:Lrc/r;

    .line 128
    .line 129
    iget-object v8, v8, Lrc/r;->e:Ljava/lang/String;

    .line 130
    .line 131
    invoke-interface {v6, v8, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_5

    .line 136
    .line 137
    invoke-virtual {v5}, Lrc/p;->a()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    move-object v2, p1

    .line 142
    check-cast v2, Ljava/util/Collection;

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    xor-int/2addr v2, v7

    .line 149
    if-eqz v2, :cond_4

    .line 150
    .line 151
    const/4 p3, 0x0

    .line 152
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-nez p1, :cond_3

    .line 157
    .line 158
    new-instance p1, Ljava/lang/NullPointerException;

    .line 159
    .line 160
    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    .line 161
    .line 162
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :cond_3
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 167
    .line 168
    new-instance p3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 169
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object p2, v0, Lrc/a;->a:Lrc/r;

    .line 176
    .line 177
    iget-object p2, p2, Lrc/r;->e:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p2, " not verified:\n              |    certificate: "

    .line 183
    .line 184
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    sget-object p2, Lrc/f;->d:Lrc/f$a;

    .line 188
    .line 189
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v0, "sha256/"

    .line 195
    .line 196
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sget-object v0, Led/h;->d:Led/h;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v3, "publicKey"

    .line 206
    .line 207
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const-string v3, "publicKey.encoded"

    .line 215
    .line 216
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v0}, Led/h$a;->c([B)Led/h;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const-string v3, "SHA-256"

    .line 224
    .line 225
    invoke-virtual {v0, v3}, Led/h;->q(Ljava/lang/String;)Led/h;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0}, Led/h;->n()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string p2, "\n              |    DN: "

    .line 244
    .line 245
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    const-string v0, "cert.subjectDN"

    .line 253
    .line 254
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-interface {p2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string p2, "\n              |    subjectAltNames: "

    .line 265
    .line 266
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const/4 p2, 0x7

    .line 270
    invoke-static {p1, p2}, Lcd/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    const/4 v0, 0x2

    .line 275
    invoke-static {p1, v0}, Lcd/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    check-cast p2, Ljava/util/Collection;

    .line 280
    .line 281
    check-cast p1, Ljava/lang/Iterable;

    .line 282
    .line 283
    invoke-static {p1, p2}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string p1, "\n              "

    .line 291
    .line 292
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-static {p1}, Lmc/f;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-direct {p3, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw p3

    .line 307
    :cond_4
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 308
    .line 309
    new-instance p2, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget-object p3, v0, Lrc/a;->a:Lrc/r;

    .line 315
    .line 316
    iget-object p3, p3, Lrc/r;->e:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string p3, " not verified (no certificates)"

    .line 322
    .line 323
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw p1

    .line 334
    :cond_5
    iget-object p2, v0, Lrc/a;->h:Lrc/f;

    .line 335
    .line 336
    invoke-static {p2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    new-instance p3, Lrc/p;

    .line 340
    .line 341
    iget-object v4, v5, Lrc/p;->b:Lrc/f0;

    .line 342
    .line 343
    iget-object v6, v5, Lrc/p;->c:Lrc/h;

    .line 344
    .line 345
    iget-object v7, v5, Lrc/p;->d:Ljava/util/List;

    .line 346
    .line 347
    new-instance v8, Lvc/g;

    .line 348
    .line 349
    invoke-direct {v8, p2, v5, v0}, Lvc/g;-><init>(Lrc/f;Lrc/p;Lrc/a;)V

    .line 350
    .line 351
    .line 352
    invoke-direct {p3, v4, v6, v7, v8}, Lrc/p;-><init>(Lrc/f0;Lrc/h;Ljava/util/List;Lx9/a;)V

    .line 353
    .line 354
    .line 355
    iput-object p3, p0, Lvc/i;->d:Lrc/p;

    .line 356
    .line 357
    iget-object p3, v0, Lrc/a;->a:Lrc/r;

    .line 358
    .line 359
    iget-object p3, p3, Lrc/r;->e:Ljava/lang/String;

    .line 360
    .line 361
    new-instance v0, Lvc/h;

    .line 362
    .line 363
    invoke-direct {v0, p0}, Lvc/h;-><init>(Lvc/i;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2, p3, v0}, Lrc/f;->a(Ljava/lang/String;Lx9/a;)V

    .line 367
    .line 368
    .line 369
    iget-boolean p1, p1, Lrc/i;->b:Z

    .line 370
    .line 371
    if-eqz p1, :cond_6

    .line 372
    .line 373
    sget-object p1, Lzc/h;->c:Lzc/h$a;

    .line 374
    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    sget-object p1, Lzc/h;->a:Lzc/h;

    .line 379
    .line 380
    invoke-virtual {p1, v1}, Lzc/h;->f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    :cond_6
    iput-object v1, p0, Lvc/i;->c:Ljava/net/Socket;

    .line 385
    .line 386
    invoke-static {v1}, Led/v;->e(Ljava/net/Socket;)Led/c;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    invoke-static {p1}, Led/v;->b(Led/j0;)Led/d0;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    iput-object p1, p0, Lvc/i;->g:Led/d0;

    .line 395
    .line 396
    invoke-static {v1}, Led/v;->d(Ljava/net/Socket;)Led/b;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-static {p1}, Led/v;->a(Led/h0;)Led/b0;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    iput-object p1, p0, Lvc/i;->h:Led/b0;

    .line 405
    .line 406
    if-eqz v3, :cond_7

    .line 407
    .line 408
    invoke-static {v3}, Lrc/w$a;->a(Ljava/lang/String;)Lrc/w;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    :cond_7
    iput-object v2, p0, Lvc/i;->e:Lrc/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    .line 414
    sget-object p1, Lzc/h;->c:Lzc/h$a;

    .line 415
    .line 416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    sget-object p1, Lzc/h;->a:Lzc/h;

    .line 420
    .line 421
    invoke-virtual {p1, v1}, Lzc/h;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 422
    .line 423
    .line 424
    iget-object p1, p0, Lvc/i;->e:Lrc/w;

    .line 425
    .line 426
    sget-object p2, Lrc/w;->e:Lrc/w;

    .line 427
    .line 428
    if-ne p1, p2, :cond_8

    .line 429
    .line 430
    invoke-virtual {p0}, Lvc/i;->m()V

    .line 431
    .line 432
    .line 433
    :cond_8
    return-void

    .line 434
    :catchall_0
    move-exception p1

    .line 435
    move-object v3, v1

    .line 436
    goto :goto_0

    .line 437
    :cond_9
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 438
    .line 439
    const-string p2, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    .line 440
    .line 441
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 445
    :catchall_1
    move-exception p1

    .line 446
    :goto_0
    if-eqz v3, :cond_a

    .line 447
    .line 448
    sget-object p2, Lzc/h;->c:Lzc/h$a;

    .line 449
    .line 450
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    .line 452
    .line 453
    sget-object p2, Lzc/h;->a:Lzc/h;

    .line 454
    .line 455
    invoke-virtual {p2, v3}, Lzc/h;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 456
    .line 457
    .line 458
    :cond_a
    if-eqz v3, :cond_b

    .line 459
    .line 460
    invoke-static {v3}, Lsc/c;->d(Ljava/net/Socket;)V

    .line 461
    .line 462
    .line 463
    :cond_b
    throw p1
.end method

.method public final declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lvc/i;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvc/i;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i(Lrc/a;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrc/a;",
            "Ljava/util/List<",
            "Lrc/e0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "address"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lsc/c;->a:[B

    .line 7
    .line 8
    iget-object v0, p0, Lvc/i;->o:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lvc/i;->n:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-ge v0, v1, :cond_10

    .line 18
    .line 19
    iget-boolean v0, p0, Lvc/i;->i:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_7

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lvc/i;->q:Lrc/e0;

    .line 26
    .line 27
    iget-object v1, v0, Lrc/e0;->a:Lrc/a;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Lrc/a;->a(Lrc/a;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    iget-object v1, p1, Lrc/a;->a:Lrc/r;

    .line 37
    .line 38
    iget-object v3, v1, Lrc/r;->e:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v4, v0, Lrc/e0;->a:Lrc/a;

    .line 41
    .line 42
    iget-object v5, v4, Lrc/a;->a:Lrc/r;

    .line 43
    .line 44
    iget-object v5, v5, Lrc/r;->e:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/4 v5, 0x1

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    return v5

    .line 54
    :cond_2
    iget-object v3, p0, Lvc/i;->f:Lyc/f;

    .line 55
    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    return v2

    .line 59
    :cond_3
    if-eqz p2, :cond_10

    .line 60
    .line 61
    check-cast p2, Ljava/lang/Iterable;

    .line 62
    .line 63
    instance-of v3, p2, Ljava/util/Collection;

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    move-object v3, p2

    .line 68
    check-cast v3, Ljava/util/Collection;

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_7

    .line 86
    .line 87
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lrc/e0;

    .line 92
    .line 93
    iget-object v6, v3, Lrc/e0;->b:Ljava/net/Proxy;

    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 100
    .line 101
    if-ne v6, v7, :cond_6

    .line 102
    .line 103
    iget-object v6, v0, Lrc/e0;->b:Ljava/net/Proxy;

    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 110
    .line 111
    if-ne v6, v7, :cond_6

    .line 112
    .line 113
    iget-object v6, v0, Lrc/e0;->c:Ljava/net/InetSocketAddress;

    .line 114
    .line 115
    iget-object v3, v3, Lrc/e0;->c:Ljava/net/InetSocketAddress;

    .line 116
    .line 117
    invoke-static {v6, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_6

    .line 122
    .line 123
    const/4 v3, 0x1

    .line 124
    goto :goto_0

    .line 125
    :cond_6
    const/4 v3, 0x0

    .line 126
    :goto_0
    if-eqz v3, :cond_5

    .line 127
    .line 128
    const/4 p2, 0x1

    .line 129
    goto :goto_2

    .line 130
    :cond_7
    :goto_1
    const/4 p2, 0x0

    .line 131
    :goto_2
    if-nez p2, :cond_8

    .line 132
    .line 133
    goto/16 :goto_7

    .line 134
    .line 135
    :cond_8
    sget-object p2, Lcd/d;->a:Lcd/d;

    .line 136
    .line 137
    iget-object v0, p1, Lrc/a;->g:Ljavax/net/ssl/HostnameVerifier;

    .line 138
    .line 139
    if-eq v0, p2, :cond_9

    .line 140
    .line 141
    return v2

    .line 142
    :cond_9
    sget-object p2, Lsc/c;->a:[B

    .line 143
    .line 144
    iget-object p2, v4, Lrc/a;->a:Lrc/r;

    .line 145
    .line 146
    iget v0, p2, Lrc/r;->f:I

    .line 147
    .line 148
    iget-object v3, v1, Lrc/r;->e:Ljava/lang/String;

    .line 149
    .line 150
    iget v1, v1, Lrc/r;->f:I

    .line 151
    .line 152
    if-eq v1, v0, :cond_a

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_a
    iget-object p2, p2, Lrc/r;->e:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v3, p2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-eqz p2, :cond_b

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_b
    iget-boolean p2, p0, Lvc/i;->j:Z

    .line 165
    .line 166
    if-nez p2, :cond_e

    .line 167
    .line 168
    iget-object p2, p0, Lvc/i;->d:Lrc/p;

    .line 169
    .line 170
    if-eqz p2, :cond_e

    .line 171
    .line 172
    invoke-virtual {p2}, Lrc/p;->a()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    move-object v0, p2

    .line 177
    check-cast v0, Ljava/util/Collection;

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    xor-int/2addr v0, v5

    .line 184
    if-eqz v0, :cond_d

    .line 185
    .line 186
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    if-eqz p2, :cond_c

    .line 191
    .line 192
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 193
    .line 194
    invoke-static {v3, p2}, Lcd/d;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    if-eqz p2, :cond_d

    .line 199
    .line 200
    const/4 p2, 0x1

    .line 201
    goto :goto_3

    .line 202
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 203
    .line 204
    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    .line 205
    .line 206
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p1

    .line 210
    :cond_d
    const/4 p2, 0x0

    .line 211
    :goto_3
    if-eqz p2, :cond_e

    .line 212
    .line 213
    :goto_4
    const/4 p2, 0x1

    .line 214
    goto :goto_6

    .line 215
    :cond_e
    :goto_5
    const/4 p2, 0x0

    .line 216
    :goto_6
    if-nez p2, :cond_f

    .line 217
    .line 218
    return v2

    .line 219
    :cond_f
    :try_start_0
    iget-object p1, p1, Lrc/a;->h:Lrc/f;

    .line 220
    .line 221
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    iget-object p2, p0, Lvc/i;->d:Lrc/p;

    .line 225
    .line 226
    invoke-static {p2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2}, Lrc/p;->a()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    const-string v0, "hostname"

    .line 234
    .line 235
    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const-string v0, "peerCertificates"

    .line 239
    .line 240
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    new-instance v0, Lrc/g;

    .line 244
    .line 245
    invoke-direct {v0, p1, p2, v3}, Lrc/g;-><init>(Lrc/f;Ljava/util/List;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v3, v0}, Lrc/f;->a(Ljava/lang/String;Lx9/a;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .line 250
    .line 251
    return v5

    .line 252
    :catch_0
    :cond_10
    :goto_7
    return v2
.end method

.method public final j(Z)Z
    .locals 9

    .line 1
    sget-object v0, Lsc/c;->a:[B

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lvc/i;->b:Ljava/net/Socket;

    .line 8
    .line 9
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lvc/i;->c:Ljava/net/Socket;

    .line 13
    .line 14
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v4, p0, Lvc/i;->g:Led/d0;

    .line 18
    .line 19
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v5, 0x0

    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-object v2, p0, Lvc/i;->f:Lyc/f;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, v0, v1}, Lyc/f;->d(J)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_1
    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v6, p0, Lvc/i;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    .line 60
    sub-long/2addr v0, v6

    .line 61
    monitor-exit p0

    .line 62
    const-wide v6, 0x2540be400L

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    cmp-long v8, v0, v6

    .line 69
    .line 70
    if-ltz v8, :cond_2

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    :try_start_1
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    .line 75
    .line 76
    .line 77
    move-result p1
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :try_start_2
    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Led/d0;->I()Z

    .line 82
    .line 83
    .line 84
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    xor-int/2addr v0, v2

    .line 86
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 87
    .line 88
    .line 89
    move v5, v0

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 93
    .line 94
    .line 95
    throw v0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 96
    :catch_0
    const/4 v5, 0x1

    .line 97
    :catch_1
    :goto_0
    return v5

    .line 98
    :cond_2
    return v2

    .line 99
    :catchall_1
    move-exception p1

    .line 100
    monitor-exit p0

    .line 101
    throw p1

    .line 102
    :cond_3
    :goto_1
    return v5
.end method

.method public final k(Lrc/v;Lwc/f;)Lwc/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lvc/i;->c:Ljava/net/Socket;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lvc/i;->g:Led/d0;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    iget-object v2, p0, Lvc/i;->h:Led/b0;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    iget-object v3, p0, Lvc/i;->f:Lyc/f;

    if-eqz v3, :cond_0

    new-instance v0, Lyc/p;

    invoke-direct {v0, p1, p0, p2, v3}, Lyc/p;-><init>(Lrc/v;Lvc/i;Lwc/f;Lyc/f;)V

    goto :goto_0

    :cond_0
    iget v3, p2, Lwc/f;->h:I

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v1}, Led/d0;->h()Led/k0;

    move-result-object v0

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Led/k0;->g(JLjava/util/concurrent/TimeUnit;)Led/k0;

    invoke-virtual {v2}, Led/b0;->h()Led/k0;

    move-result-object v0

    iget p2, p2, Lwc/f;->i:I

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4, v5}, Led/k0;->g(JLjava/util/concurrent/TimeUnit;)Led/k0;

    new-instance v0, Lxc/b;

    invoke-direct {v0, p1, p0, v1, v2}, Lxc/b;-><init>(Lrc/v;Lvc/i;Led/g;Led/f;)V

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized l()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lvc/i;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lvc/i;->c:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lvc/i;->g:Led/d0;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lvc/i;->h:Led/b0;

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lyc/f$b;

    .line 21
    .line 22
    sget-object v5, Luc/d;->h:Luc/d;

    .line 23
    .line 24
    invoke-direct {v4, v5}, Lyc/f$b;-><init>(Luc/d;)V

    .line 25
    .line 26
    .line 27
    iget-object v6, p0, Lvc/i;->q:Lrc/e0;

    .line 28
    .line 29
    iget-object v6, v6, Lrc/e0;->a:Lrc/a;

    .line 30
    .line 31
    iget-object v6, v6, Lrc/a;->a:Lrc/r;

    .line 32
    .line 33
    iget-object v6, v6, Lrc/r;->e:Ljava/lang/String;

    .line 34
    .line 35
    const-string v7, "peerName"

    .line 36
    .line 37
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, v4, Lyc/f$b;->a:Ljava/net/Socket;

    .line 41
    .line 42
    iget-boolean v0, v4, Lyc/f$b;->h:Z

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    sget-object v7, Lsc/c;->f:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v7, 0x20

    .line 57
    .line 58
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const-string v0, "MockWebServer "

    .line 70
    .line 71
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_0
    iput-object v0, v4, Lyc/f$b;->b:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v1, v4, Lyc/f$b;->c:Led/g;

    .line 78
    .line 79
    iput-object v2, v4, Lyc/f$b;->d:Led/f;

    .line 80
    .line 81
    iput-object p0, v4, Lyc/f$b;->e:Lyc/f$c;

    .line 82
    .line 83
    iput v3, v4, Lyc/f$b;->g:I

    .line 84
    .line 85
    new-instance v0, Lyc/f;

    .line 86
    .line 87
    invoke-direct {v0, v4}, Lyc/f;-><init>(Lyc/f$b;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lvc/i;->f:Lyc/f;

    .line 91
    .line 92
    sget-object v1, Lyc/f;->E:Lyc/v;

    .line 93
    .line 94
    iget v2, v1, Lyc/v;->a:I

    .line 95
    .line 96
    and-int/lit8 v2, v2, 0x10

    .line 97
    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    iget-object v1, v1, Lyc/v;->b:[I

    .line 101
    .line 102
    const/4 v2, 0x4

    .line 103
    aget v1, v1, v2

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    const v1, 0x7fffffff

    .line 107
    .line 108
    .line 109
    :goto_1
    iput v1, p0, Lvc/i;->n:I

    .line 110
    .line 111
    iget-object v1, v0, Lyc/f;->B:Lyc/s;

    .line 112
    .line 113
    const-string v2, ">> CONNECTION "

    .line 114
    .line 115
    monitor-enter v1

    .line 116
    :try_start_0
    iget-boolean v4, v1, Lyc/s;->c:Z

    .line 117
    .line 118
    if-nez v4, :cond_5

    .line 119
    .line 120
    iget-boolean v4, v1, Lyc/s;->f:Z

    .line 121
    .line 122
    if-nez v4, :cond_2

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    sget-object v4, Lyc/s;->g:Ljava/util/logging/Logger;

    .line 126
    .line 127
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 128
    .line 129
    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_3

    .line 134
    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sget-object v2, Lyc/e;->a:Led/h;

    .line 141
    .line 142
    invoke-virtual {v2}, Led/h;->t()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    new-array v6, v3, [Ljava/lang/Object;

    .line 154
    .line 155
    invoke-static {v2, v6}, Lsc/c;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    iget-object v2, v1, Lyc/s;->e:Led/f;

    .line 163
    .line 164
    sget-object v4, Lyc/e;->a:Led/h;

    .line 165
    .line 166
    invoke-interface {v2, v4}, Led/f;->C(Led/h;)Led/f;

    .line 167
    .line 168
    .line 169
    iget-object v2, v1, Lyc/s;->e:Led/f;

    .line 170
    .line 171
    invoke-interface {v2}, Led/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .line 173
    .line 174
    :goto_2
    monitor-exit v1

    .line 175
    iget-object v1, v0, Lyc/f;->B:Lyc/s;

    .line 176
    .line 177
    iget-object v2, v0, Lyc/f;->t:Lyc/v;

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Lyc/s;->i(Lyc/v;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lyc/f;->t:Lyc/v;

    .line 183
    .line 184
    invoke-virtual {v1}, Lyc/v;->a()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    const v2, 0xffff

    .line 189
    .line 190
    .line 191
    if-eq v1, v2, :cond_4

    .line 192
    .line 193
    iget-object v4, v0, Lyc/f;->B:Lyc/s;

    .line 194
    .line 195
    sub-int/2addr v1, v2

    .line 196
    int-to-long v1, v1

    .line 197
    invoke-virtual {v4, v3, v1, v2}, Lyc/s;->j(IJ)V

    .line 198
    .line 199
    .line 200
    :cond_4
    invoke-virtual {v5}, Luc/d;->f()Luc/c;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    iget-object v2, v0, Lyc/f;->d:Ljava/lang/String;

    .line 205
    .line 206
    iget-object v0, v0, Lyc/f;->C:Lyc/f$d;

    .line 207
    .line 208
    new-instance v3, Luc/b;

    .line 209
    .line 210
    invoke-direct {v3, v0, v2}, Luc/b;-><init>(Lyc/f$d;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const-wide/16 v4, 0x0

    .line 214
    .line 215
    invoke-virtual {v1, v3, v4, v5}, Luc/c;->c(Luc/a;J)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_5
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 220
    .line 221
    const-string v2, "closed"

    .line 222
    .line 223
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :catchall_0
    move-exception v0

    .line 228
    monitor-exit v1

    .line 229
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Connection{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lvc/i;->q:Lrc/e0;

    .line 9
    .line 10
    iget-object v2, v1, Lrc/e0;->a:Lrc/a;

    .line 11
    .line 12
    iget-object v2, v2, Lrc/a;->a:Lrc/r;

    .line 13
    .line 14
    iget-object v2, v2, Lrc/r;->e:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x3a

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, v1, Lrc/e0;->a:Lrc/a;

    .line 25
    .line 26
    iget-object v2, v2, Lrc/a;->a:Lrc/r;

    .line 27
    .line 28
    iget v2, v2, Lrc/r;->f:I

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", proxy="

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, v1, Lrc/e0;->b:Ljava/net/Proxy;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " hostAddress="

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, v1, Lrc/e0;->c:Ljava/net/InetSocketAddress;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " cipherSuite="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lvc/i;->d:Lrc/p;

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    iget-object v1, v1, Lrc/p;->c:Lrc/h;

    .line 63
    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string v1, "none"

    .line 68
    .line 69
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, " protocol="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lvc/i;->e:Lrc/w;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const/16 v1, 0x7d

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0
.end method
