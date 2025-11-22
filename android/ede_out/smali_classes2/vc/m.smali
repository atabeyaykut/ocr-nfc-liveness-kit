.class public final Lvc/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvc/m$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/ArrayList;

.field public final e:Lrc/a;

.field public final f:Lcom/airbnb/epoxy/a;

.field public final g:Lrc/d;

.field public final h:Lrc/n;


# direct methods
.method public constructor <init>(Lrc/a;Lcom/airbnb/epoxy/a;Lvc/e;Lrc/n;)V
    .locals 1

    .line 1
    const-string v0, "address"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "routeDatabase"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "call"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "eventListener"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lvc/m;->e:Lrc/a;

    .line 25
    .line 26
    iput-object p2, p0, Lvc/m;->f:Lcom/airbnb/epoxy/a;

    .line 27
    .line 28
    iput-object p3, p0, Lvc/m;->g:Lrc/d;

    .line 29
    .line 30
    iput-object p4, p0, Lvc/m;->h:Lrc/n;

    .line 31
    .line 32
    sget-object p2, Lm9/v;->a:Lm9/v;

    .line 33
    .line 34
    iput-object p2, p0, Lvc/m;->a:Ljava/util/List;

    .line 35
    .line 36
    iput-object p2, p0, Lvc/m;->c:Ljava/util/List;

    .line 37
    .line 38
    new-instance p2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lvc/m;->d:Ljava/util/ArrayList;

    .line 44
    .line 45
    new-instance p2, Lvc/n;

    .line 46
    .line 47
    iget-object p3, p1, Lrc/a;->j:Ljava/net/Proxy;

    .line 48
    .line 49
    iget-object p1, p1, Lrc/a;->a:Lrc/r;

    .line 50
    .line 51
    invoke-direct {p2, p0, p3, p1}, Lvc/n;-><init>(Lvc/m;Ljava/net/Proxy;Lrc/r;)V

    .line 52
    .line 53
    .line 54
    const-string p3, "url"

    .line 55
    .line 56
    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lvc/n;->a()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lvc/m;->a:Ljava/util/List;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lvc/m;->b:I

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget v0, p0, Lvc/m;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lvc/m;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lvc/m;->d:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    xor-int/2addr v0, v2

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v2, 0x0

    .line 29
    :cond_2
    :goto_1
    return v2
.end method

.method public final b()Lvc/m$a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lvc/m;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v1, p0, Lvc/m;->b:I

    .line 13
    .line 14
    iget-object v2, p0, Lvc/m;->a:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    if-eqz v1, :cond_e

    .line 28
    .line 29
    iget v1, p0, Lvc/m;->b:I

    .line 30
    .line 31
    iget-object v2, p0, Lvc/m;->a:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ge v1, v2, :cond_2

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    :cond_2
    const-string v1, "No route to "

    .line 41
    .line 42
    iget-object v2, p0, Lvc/m;->e:Lrc/a;

    .line 43
    .line 44
    if-eqz v3, :cond_d

    .line 45
    .line 46
    iget-object v3, p0, Lvc/m;->a:Ljava/util/List;

    .line 47
    .line 48
    iget v5, p0, Lvc/m;->b:I

    .line 49
    .line 50
    add-int/lit8 v6, v5, 0x1

    .line 51
    .line 52
    iput v6, p0, Lvc/m;->b:I

    .line 53
    .line 54
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/net/Proxy;

    .line 59
    .line 60
    new-instance v5, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v5, p0, Lvc/m;->c:Ljava/util/List;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 72
    .line 73
    if-eq v6, v7, :cond_6

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 80
    .line 81
    if-ne v6, v7, :cond_3

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    instance-of v7, v6, Ljava/net/InetSocketAddress;

    .line 89
    .line 90
    if-eqz v7, :cond_5

    .line 91
    .line 92
    check-cast v6, Ljava/net/InetSocketAddress;

    .line 93
    .line 94
    const-string v7, "$this$socketHost"

    .line 95
    .line 96
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    if-eqz v7, :cond_4

    .line 104
    .line 105
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    const-string v8, "address.hostAddress"

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    const-string v8, "hostName"

    .line 117
    .line 118
    :goto_1
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    goto :goto_3

    .line 126
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v1, "Proxy.address() is not an InetSocketAddress: "

    .line 129
    .line 130
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v1

    .line 154
    :cond_6
    :goto_2
    iget-object v6, v2, Lrc/a;->a:Lrc/r;

    .line 155
    .line 156
    iget-object v7, v6, Lrc/r;->e:Ljava/lang/String;

    .line 157
    .line 158
    iget v6, v6, Lrc/r;->f:I

    .line 159
    .line 160
    :goto_3
    if-gt v4, v6, :cond_c

    .line 161
    .line 162
    const v8, 0xffff

    .line 163
    .line 164
    .line 165
    if-lt v8, v6, :cond_c

    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    sget-object v8, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 172
    .line 173
    if-ne v1, v8, :cond_7

    .line 174
    .line 175
    invoke-static {v7, v6}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_7
    iget-object v1, p0, Lvc/m;->h:Lrc/n;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lvc/m;->g:Lrc/d;

    .line 189
    .line 190
    const-string v8, "call"

    .line 191
    .line 192
    invoke-static {v1, v8}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v1, "domainName"

    .line 196
    .line 197
    invoke-static {v7, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v2, Lrc/a;->d:Lrc/m;

    .line 201
    .line 202
    invoke-interface {v1, v7}, Lrc/m;->b(Ljava/lang/String;)Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-nez v8, :cond_b

    .line 211
    .line 212
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_8

    .line 221
    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Ljava/net/InetAddress;

    .line 227
    .line 228
    new-instance v7, Ljava/net/InetSocketAddress;

    .line 229
    .line 230
    invoke-direct {v7, v2, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_8
    :goto_5
    iget-object v1, p0, Lvc/m;->c:Ljava/util/List;

    .line 238
    .line 239
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_a

    .line 248
    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 254
    .line 255
    new-instance v5, Lrc/e0;

    .line 256
    .line 257
    iget-object v6, p0, Lvc/m;->e:Lrc/a;

    .line 258
    .line 259
    invoke-direct {v5, v6, v3, v2}, Lrc/e0;-><init>(Lrc/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 260
    .line 261
    .line 262
    iget-object v2, p0, Lvc/m;->f:Lcom/airbnb/epoxy/a;

    .line 263
    .line 264
    monitor-enter v2

    .line 265
    :try_start_0
    iget-object v6, v2, Lcom/airbnb/epoxy/a;->b:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v6, Ljava/util/Set;

    .line 268
    .line 269
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit v2

    .line 274
    if-eqz v6, :cond_9

    .line 275
    .line 276
    iget-object v2, p0, Lvc/m;->d:Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    goto :goto_6

    .line 286
    :catchall_0
    move-exception v0

    .line 287
    monitor-exit v2

    .line 288
    throw v0

    .line 289
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    xor-int/2addr v1, v4

    .line 294
    if-eqz v1, :cond_0

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_b
    new-instance v0, Ljava/net/UnknownHostException;

    .line 298
    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    iget-object v2, v2, Lrc/a;->d:Lrc/m;

    .line 305
    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v2, " returned no addresses for "

    .line 310
    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v0

    .line 325
    :cond_c
    new-instance v0, Ljava/net/SocketException;

    .line 326
    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const/16 v1, 0x3a

    .line 336
    .line 337
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v1, "; port is out of range"

    .line 344
    .line 345
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v0

    .line 356
    :cond_d
    new-instance v0, Ljava/net/SocketException;

    .line 357
    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iget-object v1, v2, Lrc/a;->a:Lrc/r;

    .line 364
    .line 365
    iget-object v1, v1, Lrc/r;->e:Ljava/lang/String;

    .line 366
    .line 367
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v1, "; exhausted proxy configurations: "

    .line 371
    .line 372
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    iget-object v1, p0, Lvc/m;->a:Ljava/util/List;

    .line 376
    .line 377
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw v0

    .line 388
    :cond_e
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-eqz v1, :cond_f

    .line 393
    .line 394
    iget-object v1, p0, Lvc/m;->d:Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-static {v1, v0}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 397
    .line 398
    .line 399
    iget-object v1, p0, Lvc/m;->d:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 402
    .line 403
    .line 404
    :cond_f
    new-instance v1, Lvc/m$a;

    .line 405
    .line 406
    invoke-direct {v1, v0}, Lvc/m$a;-><init>(Ljava/util/ArrayList;)V

    .line 407
    .line 408
    .line 409
    return-object v1

    .line 410
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 411
    .line 412
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 413
    .line 414
    .line 415
    throw v0
.end method
