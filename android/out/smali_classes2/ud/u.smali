.class public final Lud/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lud/u$c;,
        Lud/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lud/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lud/b0;

.field public final b:[Ljava/lang/Object;

.field public final c:Lrc/d$a;

.field public final d:Lud/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lud/f<",
            "Lrc/d0;",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile e:Z

.field public f:Lrc/d;

.field public g:Ljava/lang/Throwable;

.field public h:Z


# direct methods
.method public constructor <init>(Lud/b0;[Ljava/lang/Object;Lrc/d$a;Lud/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/b0;",
            "[",
            "Ljava/lang/Object;",
            "Lrc/d$a;",
            "Lud/f<",
            "Lrc/d0;",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud/u;->a:Lud/b0;

    iput-object p2, p0, Lud/u;->b:[Ljava/lang/Object;

    iput-object p3, p0, Lud/u;->c:Lrc/d$a;

    iput-object p4, p0, Lud/u;->d:Lud/f;

    return-void
.end method


# virtual methods
.method public final b()Lrc/d;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lud/u;->a:Lud/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lud/u;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    iget-object v3, v0, Lud/b0;->j:[Lud/y;

    .line 10
    .line 11
    array-length v4, v3

    .line 12
    if-ne v2, v4, :cond_d

    .line 13
    .line 14
    new-instance v4, Lud/a0;

    .line 15
    .line 16
    iget-object v6, v0, Lud/b0;->c:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v7, v0, Lud/b0;->b:Lrc/r;

    .line 19
    .line 20
    iget-object v8, v0, Lud/b0;->d:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v9, v0, Lud/b0;->e:Lrc/q;

    .line 23
    .line 24
    iget-object v10, v0, Lud/b0;->f:Lrc/t;

    .line 25
    .line 26
    iget-boolean v11, v0, Lud/b0;->g:Z

    .line 27
    .line 28
    iget-boolean v12, v0, Lud/b0;->h:Z

    .line 29
    .line 30
    iget-boolean v13, v0, Lud/b0;->i:Z

    .line 31
    .line 32
    move-object v5, v4

    .line 33
    invoke-direct/range {v5 .. v13}, Lud/a0;-><init>(Ljava/lang/String;Lrc/r;Ljava/lang/String;Lrc/q;Lrc/t;ZZZ)V

    .line 34
    .line 35
    .line 36
    iget-boolean v5, v0, Lud/b0;->k:Z

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    add-int/lit8 v2, v2, -0x1

    .line 41
    .line 42
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    :goto_0
    if-ge v7, v2, :cond_1

    .line 50
    .line 51
    aget-object v8, v1, v7

    .line 52
    .line 53
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    aget-object v8, v3, v7

    .line 57
    .line 58
    aget-object v9, v1, v7

    .line 59
    .line 60
    invoke-virtual {v8, v4, v9}, Lud/y;->a(Lud/a0;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v7, v7, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, v4, Lud/a0;->d:Lrc/r$a;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1}, Lrc/r$a;->a()Lrc/r;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    goto :goto_3

    .line 76
    :cond_2
    iget-object v1, v4, Lud/a0;->c:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v3, v4, Lud/a0;->b:Lrc/r;

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const-string v7, "link"

    .line 84
    .line 85
    invoke-static {v1, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :try_start_0
    new-instance v7, Lrc/r$a;

    .line 89
    .line 90
    invoke-direct {v7}, Lrc/r$a;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v3, v1}, Lrc/r$a;->c(Lrc/r;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    nop

    .line 98
    move-object v7, v2

    .line 99
    :goto_1
    if-eqz v7, :cond_3

    .line 100
    .line 101
    invoke-virtual {v7}, Lrc/r$a;->a()Lrc/r;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    move-object v1, v2

    .line 107
    :goto_2
    if-eqz v1, :cond_c

    .line 108
    .line 109
    :goto_3
    iget-object v3, v4, Lud/a0;->k:Lrc/a0;

    .line 110
    .line 111
    if-nez v3, :cond_8

    .line 112
    .line 113
    iget-object v7, v4, Lud/a0;->j:Lrc/o$a;

    .line 114
    .line 115
    if-eqz v7, :cond_4

    .line 116
    .line 117
    new-instance v3, Lrc/o;

    .line 118
    .line 119
    iget-object v2, v7, Lrc/o$a;->a:Ljava/util/ArrayList;

    .line 120
    .line 121
    iget-object v6, v7, Lrc/o$a;->b:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v3, v2, v6}, Lrc/o;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_4
    iget-object v7, v4, Lud/a0;->i:Lrc/u$a;

    .line 128
    .line 129
    if-eqz v7, :cond_6

    .line 130
    .line 131
    iget-object v2, v7, Lrc/u$a;->c:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    xor-int/lit8 v3, v3, 0x1

    .line 138
    .line 139
    if-eqz v3, :cond_5

    .line 140
    .line 141
    new-instance v3, Lrc/u;

    .line 142
    .line 143
    iget-object v6, v7, Lrc/u$a;->a:Led/h;

    .line 144
    .line 145
    iget-object v7, v7, Lrc/u$a;->b:Lrc/t;

    .line 146
    .line 147
    invoke-static {v2}, Lsc/c;->v(Ljava/util/List;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-direct {v3, v6, v7, v2}, Lrc/u;-><init>(Led/h;Lrc/t;Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 156
    .line 157
    const-string v1, "Multipart body must have at least one part."

    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_6
    iget-boolean v7, v4, Lud/a0;->h:Z

    .line 168
    .line 169
    if-eqz v7, :cond_8

    .line 170
    .line 171
    new-array v3, v6, [B

    .line 172
    .line 173
    sget-object v7, Lrc/a0;->a:Lrc/a0$a;

    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    int-to-long v7, v6

    .line 179
    sget-object v9, Lsc/c;->a:[B

    .line 180
    .line 181
    or-long v9, v7, v7

    .line 182
    .line 183
    const-wide/16 v11, 0x0

    .line 184
    .line 185
    cmp-long v13, v9, v11

    .line 186
    .line 187
    if-ltz v13, :cond_7

    .line 188
    .line 189
    cmp-long v9, v7, v7

    .line 190
    .line 191
    if-gtz v9, :cond_7

    .line 192
    .line 193
    sub-long v9, v7, v7

    .line 194
    .line 195
    cmp-long v11, v9, v7

    .line 196
    .line 197
    if-ltz v11, :cond_7

    .line 198
    .line 199
    new-instance v7, Lrc/z;

    .line 200
    .line 201
    invoke-direct {v7, v2, v3, v6, v6}, Lrc/z;-><init>(Lrc/t;[BII)V

    .line 202
    .line 203
    .line 204
    move-object v3, v7

    .line 205
    goto :goto_4

    .line 206
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 207
    .line 208
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :cond_8
    :goto_4
    iget-object v2, v4, Lud/a0;->g:Lrc/t;

    .line 213
    .line 214
    iget-object v6, v4, Lud/a0;->f:Lrc/q$a;

    .line 215
    .line 216
    if-eqz v2, :cond_a

    .line 217
    .line 218
    if-eqz v3, :cond_9

    .line 219
    .line 220
    new-instance v7, Lud/a0$a;

    .line 221
    .line 222
    invoke-direct {v7, v3, v2}, Lud/a0$a;-><init>(Lrc/a0;Lrc/t;)V

    .line 223
    .line 224
    .line 225
    move-object v3, v7

    .line 226
    goto :goto_5

    .line 227
    :cond_9
    const-string v7, "Content-Type"

    .line 228
    .line 229
    iget-object v2, v2, Lrc/t;->a:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v6, v7, v2}, Lrc/q$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_a
    :goto_5
    iget-object v2, v4, Lud/a0;->e:Lrc/x$a;

    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    iput-object v1, v2, Lrc/x$a;->a:Lrc/r;

    .line 240
    .line 241
    invoke-virtual {v6}, Lrc/q$a;->c()Lrc/q;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lrc/q;->u()Lrc/q$a;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    iput-object v1, v2, Lrc/x$a;->c:Lrc/q$a;

    .line 250
    .line 251
    iget-object v1, v4, Lud/a0;->a:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v2, v1, v3}, Lrc/x$a;->d(Ljava/lang/String;Lrc/a0;)V

    .line 254
    .line 255
    .line 256
    new-instance v1, Lud/m;

    .line 257
    .line 258
    iget-object v0, v0, Lud/b0;->a:Ljava/lang/reflect/Method;

    .line 259
    .line 260
    invoke-direct {v1, v0, v5}, Lud/m;-><init>(Ljava/lang/reflect/Method;Ljava/util/ArrayList;)V

    .line 261
    .line 262
    .line 263
    const-class v0, Lud/m;

    .line 264
    .line 265
    invoke-virtual {v2, v0, v1}, Lrc/x$a;->e(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Lrc/x$a;->a()Lrc/x;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iget-object v1, p0, Lud/u;->c:Lrc/d$a;

    .line 273
    .line 274
    invoke-interface {v1, v0}, Lrc/d$a;->b(Lrc/x;)Lvc/e;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    if-eqz v0, :cond_b

    .line 279
    .line 280
    return-object v0

    .line 281
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    .line 282
    .line 283
    const-string v1, "Call.Factory returned null."

    .line 284
    .line 285
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v0

    .line 289
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 290
    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v2, "Malformed URL. Base: "

    .line 294
    .line 295
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v2, ", Relative: "

    .line 302
    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-object v2, v4, Lud/a0;->c:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v0

    .line 319
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 320
    .line 321
    const-string v1, "Argument count ("

    .line 322
    .line 323
    const-string v4, ") doesn\'t match expected count ("

    .line 324
    .line 325
    invoke-static {v1, v2, v4}, Landroidx/appcompat/widget/v;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    array-length v2, v3

    .line 330
    const-string v3, ")"

    .line 331
    .line 332
    invoke-static {v1, v2, v3}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v0
.end method

.method public final c()Lrc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lud/u;->f:Lrc/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lud/u;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lud/u;->b()Lrc/d;

    move-result-object v0

    iput-object v0, p0, Lud/u;->f:Lrc/d;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-static {v0}, Lud/h0;->n(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lud/u;->g:Ljava/lang/Throwable;

    throw v0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lud/u;->e:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lud/u;->f:Lrc/d;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrc/d;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lud/u;

    iget-object v1, p0, Lud/u;->a:Lud/b0;

    iget-object v2, p0, Lud/u;->b:[Ljava/lang/Object;

    iget-object v3, p0, Lud/u;->c:Lrc/d$a;

    iget-object v4, p0, Lud/u;->d:Lud/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lud/u;-><init>(Lud/b0;[Ljava/lang/Object;Lrc/d$a;Lud/f;)V

    return-object v0
.end method

.method public final clone()Lud/b;
    .locals 5

    .line 2
    new-instance v0, Lud/u;

    iget-object v1, p0, Lud/u;->a:Lud/b0;

    iget-object v2, p0, Lud/u;->b:[Ljava/lang/Object;

    iget-object v3, p0, Lud/u;->c:Lrc/d$a;

    iget-object v4, p0, Lud/u;->d:Lud/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lud/u;-><init>(Lud/b0;[Ljava/lang/Object;Lrc/d$a;Lud/f;)V

    return-object v0
.end method

.method public final d(Lrc/b0;)Lud/c0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrc/b0;",
            ")",
            "Lud/c0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lrc/b0;->h:Lrc/d0;

    .line 2
    .line 3
    new-instance v1, Lrc/b0$a;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lrc/b0$a;-><init>(Lrc/b0;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lud/u$c;

    .line 9
    .line 10
    invoke-virtual {v0}, Lrc/d0;->b()Lrc/t;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0}, Lrc/d0;->a()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-direct {p1, v2, v3, v4}, Lud/u$c;-><init>(Lrc/t;J)V

    .line 19
    .line 20
    .line 21
    iput-object p1, v1, Lrc/b0$a;->g:Lrc/d0;

    .line 22
    .line 23
    invoke-virtual {v1}, Lrc/b0$a;->a()Lrc/b0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/16 v1, 0xc8

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iget v3, p1, Lrc/b0;->e:I

    .line 31
    .line 32
    if-lt v3, v1, :cond_6

    .line 33
    .line 34
    const/16 v1, 0x12c

    .line 35
    .line 36
    if-lt v3, v1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/16 v1, 0xcc

    .line 40
    .line 41
    const-string v4, "rawResponse must be successful response"

    .line 42
    .line 43
    if-eq v3, v1, :cond_4

    .line 44
    .line 45
    const/16 v1, 0xcd

    .line 46
    .line 47
    if-ne v3, v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance v1, Lud/u$b;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Lud/u$b;-><init>(Lrc/d0;)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    iget-object v0, p0, Lud/u;->d:Lud/f;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Lud/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lrc/b0;->c()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    new-instance v2, Lud/c0;

    .line 68
    .line 69
    invoke-direct {v2, p1, v0}, Lud/c0;-><init>(Lrc/b0;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    iget-object v0, v1, Lud/u$b;->d:Ljava/io/IOException;

    .line 81
    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    throw p1

    .line 85
    :cond_3
    throw v0

    .line 86
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lrc/d0;->close()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lrc/b0;->c()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    new-instance v0, Lud/c0;

    .line 96
    .line 97
    invoke-direct {v0, p1, v2}, Lud/c0;-><init>(Lrc/b0;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_6
    :goto_1
    :try_start_1
    invoke-static {v0}, Lud/h0;->a(Lrc/d0;)Lrc/c0;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lrc/b0;->c()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_7

    .line 115
    .line 116
    new-instance v1, Lud/c0;

    .line 117
    .line 118
    invoke-direct {v1, p1, v2}, Lud/c0;-><init>(Lrc/b0;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lrc/d0;->close()V

    .line 122
    .line 123
    .line 124
    return-object v1

    .line 125
    :cond_7
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    const-string v1, "rawResponse should not be successful response"

    .line 128
    .line 129
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :catchall_0
    move-exception p1

    .line 134
    invoke-virtual {v0}, Lrc/d0;->close()V

    .line 135
    .line 136
    .line 137
    throw p1
.end method

.method public final execute()Lud/c0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lud/c0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lud/u;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lud/u;->h:Z

    invoke-virtual {p0}, Lud/u;->c()Lrc/d;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lud/u;->e:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lrc/d;->cancel()V

    :cond_0
    invoke-interface {v0}, Lrc/d;->execute()Lrc/b0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lud/u;->d(Lrc/b0;)Lud/c0;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final m()Z
    .locals 2

    iget-boolean v0, p0, Lud/u;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lud/u;->f:Lrc/d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lrc/d;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final n0(Lud/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/d<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lud/u;->h:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lud/u;->h:Z

    iget-object v0, p0, Lud/u;->f:Lrc/d;

    iget-object v1, p0, Lud/u;->g:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lud/u;->b()Lrc/d;

    move-result-object v2

    iput-object v2, p0, Lud/u;->f:Lrc/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lud/h0;->n(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lud/u;->g:Ljava/lang/Throwable;

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {p1, p0, v1}, Lud/d;->onFailure(Lud/b;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lud/u;->e:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lrc/d;->cancel()V

    :cond_2
    new-instance v1, Lud/u$a;

    invoke-direct {v1, p0, p1}, Lud/u$a;-><init>(Lud/u;Lud/d;)V

    invoke-interface {v0, v1}, Lrc/d;->y(Lrc/e;)V

    return-void

    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final declared-synchronized o()Lrc/x;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lud/u;->c()Lrc/d;

    move-result-object v0

    invoke-interface {v0}, Lrc/d;->o()Lrc/x;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method
