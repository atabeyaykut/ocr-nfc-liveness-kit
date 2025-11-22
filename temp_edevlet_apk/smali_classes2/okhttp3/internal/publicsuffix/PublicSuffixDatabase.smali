.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
        "",
        "<init>",
        "()V",
        "a",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final e:[B

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/CountDownLatch;

.field public c:[B

.field public d:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x2a

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    const-string v0, "*"

    invoke-static {v0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/List;

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    invoke-static {p0, v0}, Lmc/n;->X(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lm9/t;->i1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lm9/t;->X0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "unicodeDomain"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c(Ljava/lang/String;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v4

    .line 40
    :try_start_1
    sget-object v5, Lzc/h;->c:Lzc/h$a;

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-object v5, Lzc/h;->a:Lzc/h;

    .line 46
    .line 47
    const-string v6, "Failed to read public suffix list"

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x5

    .line 53
    invoke-static {v5, v6, v4}, Lzc/h;->i(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_2

    .line 68
    :catch_1
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    goto :goto_0

    .line 73
    :goto_2
    if-eqz v1, :cond_0

    .line 74
    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 80
    .line 81
    .line 82
    :cond_0
    throw p1

    .line 83
    :cond_1
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_3
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    goto :goto_4

    .line 102
    :cond_3
    const/4 v1, 0x0

    .line 103
    :goto_4
    if-eqz v1, :cond_18

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    new-array v4, v1, [[B

    .line 110
    .line 111
    const/4 v5, 0x0

    .line 112
    :goto_5
    if-ge v5, v1, :cond_5

    .line 113
    .line 114
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Ljava/lang/String;

    .line 119
    .line 120
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 121
    .line 122
    const-string v8, "UTF_8"

    .line 123
    .line 124
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    if-eqz v6, :cond_4

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    const-string v7, "(this as java.lang.String).getBytes(charset)"

    .line 134
    .line 135
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    aput-object v6, v4, v5

    .line 139
    .line 140
    add-int/lit8 v5, v5, 0x1

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 144
    .line 145
    const-string v0, "null cannot be cast to non-null type java.lang.String"

    .line 146
    .line 147
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_5
    const/4 v5, 0x0

    .line 152
    :goto_6
    const/4 v6, 0x0

    .line 153
    const-string v7, "publicSuffixListBytes"

    .line 154
    .line 155
    if-ge v5, v1, :cond_8

    .line 156
    .line 157
    iget-object v8, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    .line 158
    .line 159
    if-eqz v8, :cond_7

    .line 160
    .line 161
    invoke-static {v8, v4, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;->a([B[[BI)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    if-eqz v8, :cond_6

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_7
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v6

    .line 175
    :cond_8
    move-object v8, v6

    .line 176
    :goto_7
    if-le v1, v2, :cond_b

    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    check-cast v5, [[B

    .line 183
    .line 184
    array-length v9, v5

    .line 185
    sub-int/2addr v9, v2

    .line 186
    const/4 v10, 0x0

    .line 187
    :goto_8
    if-ge v10, v9, :cond_b

    .line 188
    .line 189
    sget-object v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    .line 190
    .line 191
    aput-object v11, v5, v10

    .line 192
    .line 193
    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    .line 194
    .line 195
    if-eqz v11, :cond_a

    .line 196
    .line 197
    invoke-static {v11, v5, v10}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;->a([B[[BI)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    if-eqz v11, :cond_9

    .line 202
    .line 203
    goto :goto_9

    .line 204
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_a
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v6

    .line 211
    :cond_b
    move-object v11, v6

    .line 212
    :goto_9
    if-eqz v11, :cond_e

    .line 213
    .line 214
    sub-int/2addr v1, v2

    .line 215
    const/4 v5, 0x0

    .line 216
    :goto_a
    if-ge v5, v1, :cond_e

    .line 217
    .line 218
    iget-object v7, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B

    .line 219
    .line 220
    if-eqz v7, :cond_d

    .line 221
    .line 222
    invoke-static {v7, v4, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;->a([B[[BI)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    if-eqz v7, :cond_c

    .line 227
    .line 228
    goto :goto_b

    .line 229
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 230
    .line 231
    goto :goto_a

    .line 232
    :cond_d
    const-string p1, "publicSuffixExceptionListBytes"

    .line 233
    .line 234
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw v6

    .line 238
    :cond_e
    move-object v7, v6

    .line 239
    :goto_b
    const/16 v1, 0x2e

    .line 240
    .line 241
    if-eqz v7, :cond_f

    .line 242
    .line 243
    const-string v4, "!"

    .line 244
    .line 245
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    new-array v5, v2, [C

    .line 250
    .line 251
    aput-char v1, v5, v3

    .line 252
    .line 253
    invoke-static {v4, v5}, Lmc/n;->X(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    goto :goto_e

    .line 258
    :cond_f
    if-nez v8, :cond_10

    .line 259
    .line 260
    if-nez v11, :cond_10

    .line 261
    .line 262
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/List;

    .line 263
    .line 264
    goto :goto_e

    .line 265
    :cond_10
    sget-object v4, Lm9/v;->a:Lm9/v;

    .line 266
    .line 267
    if-eqz v8, :cond_11

    .line 268
    .line 269
    new-array v5, v2, [C

    .line 270
    .line 271
    aput-char v1, v5, v3

    .line 272
    .line 273
    invoke-static {v8, v5}, Lmc/n;->X(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    goto :goto_c

    .line 278
    :cond_11
    move-object v5, v4

    .line 279
    :goto_c
    if-eqz v11, :cond_12

    .line 280
    .line 281
    new-array v4, v2, [C

    .line 282
    .line 283
    aput-char v1, v4, v3

    .line 284
    .line 285
    invoke-static {v11, v4}, Lmc/n;->X(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    goto :goto_d

    .line 290
    :cond_12
    move-object v1, v4

    .line 291
    :goto_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 296
    .line 297
    .line 298
    move-result v7

    .line 299
    if-le v4, v7, :cond_13

    .line 300
    .line 301
    move-object v1, v5

    .line 302
    :cond_13
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    const/16 v7, 0x21

    .line 311
    .line 312
    if-ne v4, v5, :cond_14

    .line 313
    .line 314
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    check-cast v4, Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-eq v4, v7, :cond_14

    .line 325
    .line 326
    return-object v6

    .line 327
    :cond_14
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    check-cast v4, Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-ne v4, v7, :cond_15

    .line 346
    .line 347
    goto :goto_f

    .line 348
    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 349
    .line 350
    :goto_f
    sub-int/2addr v0, v1

    .line 351
    invoke-static {p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c(Ljava/lang/String;)Ljava/util/List;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    check-cast p1, Ljava/lang/Iterable;

    .line 356
    .line 357
    invoke-static {p1}, Lm9/t;->U0(Ljava/lang/Iterable;)Lm9/r;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    invoke-static {p1, v0}, Llc/w;->U0(Llc/h;I)Llc/h;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    const-string v0, "<this>"

    .line 366
    .line 367
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    const-string v1, ""

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 378
    .line 379
    .line 380
    invoke-interface {p1}, Llc/h;->iterator()Ljava/util/Iterator;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-eqz v4, :cond_17

    .line 389
    .line 390
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    add-int/2addr v3, v2

    .line 395
    if-le v3, v2, :cond_16

    .line 396
    .line 397
    const-string v5, "."

    .line 398
    .line 399
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 400
    .line 401
    .line 402
    :cond_16
    invoke-static {v0, v4, v6}, La0/b;->g(Ljava/lang/Appendable;Ljava/lang/Object;Lx9/l;)V

    .line 403
    .line 404
    .line 405
    goto :goto_10

    .line 406
    :cond_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    const-string v0, "joinTo(StringBuilder(), \u2026ed, transform).toString()"

    .line 414
    .line 415
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    return-object p1

    .line 419
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 420
    .line 421
    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    throw p1
.end method

.method public final b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 2
    .line 3
    const-string v1, "publicsuffixes.gz"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Led/p;

    .line 12
    .line 13
    invoke-static {v0}, Led/v;->f(Ljava/io/InputStream;)Led/r;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v0}, Led/p;-><init>(Led/j0;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Led/v;->b(Led/j0;)Led/d0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :try_start_0
    invoke-virtual {v0}, Led/d0;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    int-to-long v1, v1

    .line 29
    invoke-virtual {v0, v1, v2}, Led/d0;->l0(J)V

    .line 30
    .line 31
    .line 32
    iget-object v3, v0, Led/d0;->b:Led/e;

    .line 33
    .line 34
    invoke-virtual {v3, v1, v2}, Led/e;->k(J)[B

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0}, Led/d0;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-long v2, v2

    .line 43
    invoke-virtual {v0, v2, v3}, Led/d0;->l0(J)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v0, Led/d0;->b:Led/e;

    .line 47
    .line 48
    invoke-virtual {v4, v2, v3}, Led/e;->k(J)[B

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sget-object v3, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-static {v0, v3}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    monitor-enter p0

    .line 59
    :try_start_1
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    .line 60
    .line 61
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    monitor-exit p0

    .line 64
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    monitor-exit p0

    .line 72
    throw v0

    .line 73
    :catchall_1
    move-exception v1

    .line 74
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 75
    :catchall_2
    move-exception v2

    .line 76
    invoke-static {v0, v1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw v2

    .line 80
    :cond_0
    return-void
.end method
