.class public final Lmf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lud/d0;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lgf/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Ljava/util/List;
    .locals 2

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->m()V

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    invoke-virtual {v0, v1}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    move-result-object v0

    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lp9/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lmf/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lmf/c$a;

    .line 7
    .line 8
    iget v1, v0, Lmf/c$a;->c:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lmf/c$a;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lmf/c$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lmf/c$a;-><init>(Lmf/c;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lmf/c$a;->a:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lmf/c$a;->c:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    if-eq v2, v4, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :try_start_1
    invoke-static {}, Lmf/c;->b()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/util/Collection;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/4 v2, 0x0

    .line 67
    if-eqz p1, :cond_10

    .line 68
    .line 69
    iget-object p1, p0, Lmf/c;->e:Lgf/b;

    .line 70
    .line 71
    if-eqz p1, :cond_f

    .line 72
    .line 73
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_e

    .line 78
    .line 79
    iget-object p1, p0, Lmf/c;->a:Lud/d0;

    .line 80
    .line 81
    if-eqz p1, :cond_d

    .line 82
    .line 83
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 84
    .line 85
    invoke-virtual {p1, v3}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v3, "mApiClient.create(ServiceListAPI::class.java)"

    .line 90
    .line 91
    invoke-static {p1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 95
    .line 96
    iget-object v3, p0, Lmf/c;->b:Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v3, :cond_c

    .line 99
    .line 100
    const-string v5, "android"

    .line 101
    .line 102
    iget-object v6, p0, Lmf/c;->d:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v6, :cond_b

    .line 105
    .line 106
    iget-object v7, p0, Lmf/c;->c:Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v7, :cond_a

    .line 109
    .line 110
    invoke-interface {p1, v3, v5, v6, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;->fetchAboutPages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 111
    .line 112
    .line 113
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    :try_start_2
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 119
    .line 120
    const-string v5, "response"

    .line 121
    .line 122
    invoke-static {p1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catch_0
    move-exception p1

    .line 134
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 138
    .line 139
    invoke-direct {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :goto_2
    instance-of p1, v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 143
    .line 144
    if-eqz p1, :cond_8

    .line 145
    .line 146
    move-object p1, v3

    .line 147
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 148
    .line 149
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageModel;

    .line 154
    .line 155
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    instance-of v5, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 160
    .line 161
    if-eqz v5, :cond_5

    .line 162
    .line 163
    move-object p1, v3

    .line 164
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 165
    .line 166
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageModel;

    .line 171
    .line 172
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageModel;->getAboutPageData()Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageDataModel;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageDataModel;->getBaseUrl()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 185
    .line 186
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageModel;

    .line 191
    .line 192
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageModel;->getAboutPageData()Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageDataModel;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageDataModel;->getStaticPages()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    check-cast v3, Ljava/lang/Iterable;

    .line 201
    .line 202
    new-instance v6, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .line 210
    .line 211
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    if-eqz v7, :cond_4

    .line 220
    .line 221
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageItemModel;

    .line 226
    .line 227
    new-instance v8, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    .line 228
    .line 229
    invoke-direct {v8}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageItemModel;->getId()I

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    invoke-virtual {v8, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->setId(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageItemModel;->getName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    invoke-virtual {v8, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->setName(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageItemModel;->getUrl()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    invoke-virtual {v8, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->setUrl(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    new-instance v9, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageItemModel;->getIconName()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-virtual {v8, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->setIconName(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_4
    invoke-virtual {v5}, Lio/realm/a;->beginTransaction()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5, v6}, Lio/realm/g0;->E(Ljava/util/Collection;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5}, Lio/realm/a;->c()V

    .line 286
    .line 287
    .line 288
    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 289
    .line 290
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 291
    .line 292
    new-instance v3, Lmf/c$b;

    .line 293
    .line 294
    invoke-direct {v3, p0, v2}, Lmf/c$b;-><init>(Lmf/c;Lp9/d;)V

    .line 295
    .line 296
    .line 297
    iput v4, v0, Lmf/c$a;->c:I

    .line 298
    .line 299
    invoke-static {p1, v3, v0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    if-ne p1, v1, :cond_11

    .line 304
    .line 305
    return-object v1

    .line 306
    :cond_5
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 307
    .line 308
    if-eqz v0, :cond_6

    .line 309
    .line 310
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 311
    .line 312
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 313
    .line 314
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_5

    .line 321
    .line 322
    :cond_6
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 323
    .line 324
    if-eqz p1, :cond_7

    .line 325
    .line 326
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 327
    .line 328
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 329
    .line 330
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 334
    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_7
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 338
    .line 339
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 340
    .line 341
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 345
    .line 346
    .line 347
    goto :goto_5

    .line 348
    :cond_8
    instance-of p1, v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 349
    .line 350
    if-eqz p1, :cond_9

    .line 351
    .line 352
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 353
    .line 354
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 355
    .line 356
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 360
    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_9
    new-instance p1, Lj7/p;

    .line 364
    .line 365
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 366
    .line 367
    .line 368
    throw p1

    .line 369
    :cond_a
    const-string p1, "mAppMode"

    .line 370
    .line 371
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    throw v2

    .line 375
    :cond_b
    const-string p1, "mLanguage"

    .line 376
    .line 377
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v2

    .line 381
    :cond_c
    const-string p1, "mAppVersion"

    .line 382
    .line 383
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v2

    .line 387
    :cond_d
    const-string p1, "mApiClient"

    .line 388
    .line 389
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw v2

    .line 393
    :cond_e
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 394
    .line 395
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 396
    .line 397
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 398
    .line 399
    .line 400
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 401
    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_f
    const-string p1, "mNetworkHelper"

    .line 405
    .line 406
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw v2

    .line 410
    :cond_10
    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 411
    .line 412
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 413
    .line 414
    new-instance v4, Lmf/c$c;

    .line 415
    .line 416
    invoke-direct {v4, p0, v2}, Lmf/c$c;-><init>(Lmf/c;Lp9/d;)V

    .line 417
    .line 418
    .line 419
    iput v3, v0, Lmf/c$a;->c:I

    .line 420
    .line 421
    invoke-static {p1, v4, v0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    if-ne p1, v1, :cond_11

    .line 426
    .line 427
    return-object v1

    .line 428
    :cond_11
    :goto_4
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 429
    .line 430
    goto :goto_5

    .line 431
    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 432
    .line 433
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 434
    .line 435
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 439
    .line 440
    .line 441
    :goto_5
    return-object p1
.end method
