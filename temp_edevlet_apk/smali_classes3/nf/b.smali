.class public final Lnf/b;
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

.method public static final a(Lnf/b;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lio/realm/a;->m()V

    .line 9
    .line 10
    .line 11
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "serviceInsertion"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lio/realm/RealmQuery;->h(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lio/realm/d0$c;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lio/realm/d0$c;-><init>(Lio/realm/d0;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lio/realm/internal/OsResults$a;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Lio/realm/internal/OsResults$a;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    .line 47
    .line 48
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "serviceCode"

    .line 55
    .line 56
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v3, v0, v4}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final b(Lp9/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lnf/b$a;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lnf/b$a;

    .line 11
    .line 12
    iget v3, v2, Lnf/b$a;->c:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lnf/b$a;->c:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lnf/b$a;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lnf/b$a;-><init>(Lnf/b;Lp9/d;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lnf/b$a;->a:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lq9/a;->a:Lq9/a;

    .line 32
    .line 33
    iget v4, v2, Lnf/b$a;->c:I

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x2

    .line 37
    if-eqz v4, :cond_3

    .line 38
    .line 39
    if-eq v4, v5, :cond_2

    .line 40
    .line 41
    if-ne v4, v6, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :try_start_1
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lio/realm/a;->m()V

    .line 65
    .line 66
    .line 67
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    .line 68
    .line 69
    invoke-virtual {v0, v4}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Ljava/util/Collection;

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v4, 0x0

    .line 88
    if-eqz v0, :cond_13

    .line 89
    .line 90
    iget-object v0, v1, Lnf/b;->e:Lgf/b;

    .line 91
    .line 92
    if-eqz v0, :cond_12

    .line 93
    .line 94
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_11

    .line 99
    .line 100
    iget-object v0, v1, Lnf/b;->a:Lud/d0;

    .line 101
    .line 102
    if-eqz v0, :cond_10

    .line 103
    .line 104
    const-class v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 105
    .line 106
    invoke-virtual {v0, v6}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v6, "mApiClient.create(ServiceListAPI::class.java)"

    .line 111
    .line 112
    invoke-static {v0, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move-object v7, v0

    .line 116
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 117
    .line 118
    const-string v8, "BarcodedList"

    .line 119
    .line 120
    iget-object v9, v1, Lnf/b;->b:Ljava/lang/String;

    .line 121
    .line 122
    if-eqz v9, :cond_f

    .line 123
    .line 124
    const-string v10, "android"

    .line 125
    .line 126
    iget-object v11, v1, Lnf/b;->d:Ljava/lang/String;

    .line 127
    .line 128
    if-eqz v11, :cond_e

    .line 129
    .line 130
    iget-object v12, v1, Lnf/b;->c:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v12, :cond_d

    .line 133
    .line 134
    invoke-interface/range {v7 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;->fetchServiceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 135
    .line 136
    .line 137
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    :try_start_2
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 143
    .line 144
    const-string v7, "response"

    .line 145
    .line 146
    invoke-static {v0, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-direct {v6, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 162
    .line 163
    invoke-direct {v6, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    :goto_2
    instance-of v0, v6, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 167
    .line 168
    if-eqz v0, :cond_b

    .line 169
    .line 170
    move-object v0, v6

    .line 171
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 172
    .line 173
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 178
    .line 179
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    instance-of v7, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 184
    .line 185
    if-eqz v7, :cond_8

    .line 186
    .line 187
    move-object v0, v6

    .line 188
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 189
    .line 190
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 195
    .line 196
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;->getBaseUrl()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    move-object v7, v6

    .line 205
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 206
    .line 207
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 212
    .line 213
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;->getBaseUrls()Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 226
    .line 227
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 232
    .line 233
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;->getContent()Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    check-cast v6, Ljava/lang/Iterable;

    .line 242
    .line 243
    new-instance v9, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    const/4 v11, 0x0

    .line 257
    if-eqz v10, :cond_6

    .line 258
    .line 259
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    move-object v12, v10

    .line 264
    check-cast v12, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    .line 265
    .line 266
    const-string v13, "realm"

    .line 267
    .line 268
    invoke-static {v8, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const-class v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 272
    .line 273
    invoke-virtual {v8, v13}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    const-string v14, "serviceCode"

    .line 278
    .line 279
    invoke-virtual {v12}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceCode()I

    .line 280
    .line 281
    .line 282
    move-result v15

    .line 283
    new-instance v5, Ljava/lang/Integer;

    .line 284
    .line 285
    invoke-direct {v5, v15}, Ljava/lang/Integer;-><init>(I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v13, v5, v14}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v13}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 296
    .line 297
    new-instance v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    .line 298
    .line 299
    invoke-direct {v13}, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v12}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceCode()I

    .line 303
    .line 304
    .line 305
    move-result v12

    .line 306
    new-instance v14, Ljava/lang/Integer;

    .line 307
    .line 308
    invoke-direct {v14, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v13, v14}, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;->setServiceCode(Ljava/lang/Integer;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v8}, Lio/realm/a;->beginTransaction()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v8, v13}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8}, Lio/realm/a;->c()V

    .line 321
    .line 322
    .line 323
    if-nez v5, :cond_4

    .line 324
    .line 325
    const/4 v11, 0x1

    .line 326
    :cond_4
    if-eqz v11, :cond_5

    .line 327
    .line 328
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    :cond_5
    const/4 v5, 0x1

    .line 332
    goto :goto_3

    .line 333
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-static {v9}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 347
    .line 348
    .line 349
    move-result v9

    .line 350
    if-eqz v9, :cond_7

    .line 351
    .line 352
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v9

    .line 356
    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    .line 357
    .line 358
    invoke-static {v9, v0, v7, v11}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;Ljava/lang/String;Ljava/util/List;Z)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    goto :goto_4

    .line 366
    :cond_7
    invoke-virtual {v8}, Lio/realm/a;->beginTransaction()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v8, v5}, Lio/realm/g0;->E(Ljava/util/Collection;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v8}, Lio/realm/a;->c()V

    .line 373
    .line 374
    .line 375
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 376
    .line 377
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 378
    .line 379
    new-instance v5, Lnf/b$b;

    .line 380
    .line 381
    invoke-direct {v5, v1, v4}, Lnf/b$b;-><init>(Lnf/b;Lp9/d;)V

    .line 382
    .line 383
    .line 384
    const/4 v4, 0x1

    .line 385
    iput v4, v2, Lnf/b$a;->c:I

    .line 386
    .line 387
    invoke-static {v0, v5, v2}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    if-ne v0, v3, :cond_14

    .line 392
    .line 393
    return-object v3

    .line 394
    :cond_8
    instance-of v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 395
    .line 396
    if-eqz v2, :cond_9

    .line 397
    .line 398
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 399
    .line 400
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 401
    .line 402
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 403
    .line 404
    .line 405
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_6

    .line 409
    .line 410
    :cond_9
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 411
    .line 412
    if-eqz v0, :cond_a

    .line 413
    .line 414
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 415
    .line 416
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 417
    .line 418
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 422
    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_a
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 426
    .line 427
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 428
    .line 429
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 430
    .line 431
    .line 432
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 433
    .line 434
    .line 435
    goto :goto_6

    .line 436
    :cond_b
    instance-of v0, v6, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 437
    .line 438
    if-eqz v0, :cond_c

    .line 439
    .line 440
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 441
    .line 442
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 443
    .line 444
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 448
    .line 449
    .line 450
    goto :goto_6

    .line 451
    :cond_c
    new-instance v0, Lj7/p;

    .line 452
    .line 453
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 454
    .line 455
    .line 456
    throw v0

    .line 457
    :cond_d
    const-string v0, "mAppMode"

    .line 458
    .line 459
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw v4

    .line 463
    :cond_e
    const-string v0, "mLanguage"

    .line 464
    .line 465
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    throw v4

    .line 469
    :cond_f
    const-string v0, "mAppVersion"

    .line 470
    .line 471
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    throw v4

    .line 475
    :cond_10
    const-string v0, "mApiClient"

    .line 476
    .line 477
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw v4

    .line 481
    :cond_11
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 482
    .line 483
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 484
    .line 485
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 486
    .line 487
    .line 488
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 489
    .line 490
    .line 491
    goto :goto_6

    .line 492
    :cond_12
    const-string v0, "mNetworkHelper"

    .line 493
    .line 494
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    throw v4

    .line 498
    :cond_13
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 499
    .line 500
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 501
    .line 502
    new-instance v5, Lnf/b$c;

    .line 503
    .line 504
    invoke-direct {v5, v1, v4}, Lnf/b$c;-><init>(Lnf/b;Lp9/d;)V

    .line 505
    .line 506
    .line 507
    iput v6, v2, Lnf/b$a;->c:I

    .line 508
    .line 509
    invoke-static {v0, v5, v2}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    if-ne v0, v3, :cond_14

    .line 514
    .line 515
    return-object v3

    .line 516
    :cond_14
    :goto_5
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 517
    .line 518
    goto :goto_6

    .line 519
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 520
    .line 521
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 522
    .line 523
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 524
    .line 525
    .line 526
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 527
    .line 528
    .line 529
    :goto_6
    return-object v0
.end method
