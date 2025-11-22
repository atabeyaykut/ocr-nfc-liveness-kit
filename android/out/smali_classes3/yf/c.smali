.class public final Lyf/c;
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

.method public static final a(Lyf/c;)Ljava/util/ArrayList;
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
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

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
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

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
    instance-of v2, v0, Lyf/c$a;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lyf/c$a;

    .line 11
    .line 12
    iget v3, v2, Lyf/c$a;->c:I

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
    iput v3, v2, Lyf/c$a;->c:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lyf/c$a;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lyf/c$a;-><init>(Lyf/c;Lp9/d;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lyf/c$a;->a:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lq9/a;->a:Lq9/a;

    .line 32
    .line 33
    iget v4, v2, Lyf/c$a;->c:I

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
    goto/16 :goto_6

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
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

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
    if-eqz v0, :cond_14

    .line 88
    .line 89
    iget-object v0, v1, Lyf/c;->e:Lgf/b;

    .line 90
    .line 91
    if-eqz v0, :cond_13

    .line 92
    .line 93
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_12

    .line 98
    .line 99
    iget-object v0, v1, Lyf/c;->a:Lud/d0;

    .line 100
    .line 101
    if-eqz v0, :cond_11

    .line 102
    .line 103
    const-class v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 104
    .line 105
    invoke-virtual {v0, v6}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v6, "mApiClient.create(ServiceListAPI::class.java)"

    .line 110
    .line 111
    invoke-static {v0, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object v7, v0

    .line 115
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 116
    .line 117
    const-string v8, "WonderList"

    .line 118
    .line 119
    iget-object v9, v1, Lyf/c;->b:Ljava/lang/String;

    .line 120
    .line 121
    if-eqz v9, :cond_10

    .line 122
    .line 123
    const-string v10, "android"

    .line 124
    .line 125
    iget-object v11, v1, Lyf/c;->d:Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v11, :cond_f

    .line 128
    .line 129
    iget-object v12, v1, Lyf/c;->c:Ljava/lang/String;

    .line 130
    .line 131
    if-eqz v12, :cond_e

    .line 132
    .line 133
    invoke-interface/range {v7 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;->fetchServiceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 134
    .line 135
    .line 136
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :try_start_2
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 142
    .line 143
    const-string v7, "response"

    .line 144
    .line 145
    invoke-static {v0, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-direct {v6, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 161
    .line 162
    invoke-direct {v6, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    :goto_2
    instance-of v0, v6, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 166
    .line 167
    if-eqz v0, :cond_c

    .line 168
    .line 169
    move-object v0, v6

    .line 170
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 171
    .line 172
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 177
    .line 178
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    instance-of v7, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 183
    .line 184
    if-eqz v7, :cond_9

    .line 185
    .line 186
    move-object v0, v6

    .line 187
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 188
    .line 189
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 194
    .line 195
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;->getBaseUrl()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    move-object v7, v6

    .line 204
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 205
    .line 206
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 211
    .line 212
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;->getBaseUrls()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    const-string v9, "getDefaultInstance()"

    .line 225
    .line 226
    invoke-static {v8, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 230
    .line 231
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 236
    .line 237
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;->getContent()Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    check-cast v6, Ljava/lang/Iterable;

    .line 246
    .line 247
    new-instance v9, Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    const/4 v11, 0x0

    .line 257
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v12

    .line 261
    if-eqz v12, :cond_7

    .line 262
    .line 263
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    add-int/lit8 v13, v11, 0x1

    .line 268
    .line 269
    if-ltz v11, :cond_6

    .line 270
    .line 271
    move-object v14, v12

    .line 272
    check-cast v14, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    .line 273
    .line 274
    const-class v15, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 275
    .line 276
    invoke-virtual {v8, v15}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 277
    .line 278
    .line 279
    move-result-object v15

    .line 280
    const-string v5, "serviceCode"

    .line 281
    .line 282
    invoke-virtual {v14}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceCode()I

    .line 283
    .line 284
    .line 285
    move-result v10

    .line 286
    new-instance v4, Ljava/lang/Integer;

    .line 287
    .line 288
    invoke-direct {v4, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v15, v4, v5}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v15}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 299
    .line 300
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    .line 301
    .line 302
    invoke-direct {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v14}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceCode()I

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    new-instance v15, Ljava/lang/Integer;

    .line 310
    .line 311
    invoke-direct {v15, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, v15}, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->setServiceCode(Ljava/lang/Integer;)V

    .line 315
    .line 316
    .line 317
    new-instance v10, Ljava/lang/Integer;

    .line 318
    .line 319
    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->setServiceInsertion(Ljava/lang/Integer;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v14}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getQuestion()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    invoke-virtual {v5, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->setQuestion(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8}, Lio/realm/a;->beginTransaction()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v8, v5}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v8}, Lio/realm/a;->c()V

    .line 339
    .line 340
    .line 341
    if-nez v4, :cond_4

    .line 342
    .line 343
    const/4 v4, 0x1

    .line 344
    goto :goto_4

    .line 345
    :cond_4
    const/4 v4, 0x0

    .line 346
    :goto_4
    if-eqz v4, :cond_5

    .line 347
    .line 348
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    :cond_5
    move v11, v13

    .line 352
    const/4 v5, 0x1

    .line 353
    goto :goto_3

    .line 354
    :cond_6
    invoke-static {}, Lb8/f;->k0()V

    .line 355
    .line 356
    .line 357
    const/4 v2, 0x0

    .line 358
    throw v2

    .line 359
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    .line 360
    .line 361
    invoke-static {v9}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    if-eqz v6, :cond_8

    .line 377
    .line 378
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    .line 383
    .line 384
    const/4 v9, 0x0

    .line 385
    invoke-static {v6, v0, v7, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;Ljava/lang/String;Ljava/util/List;Z)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_8
    invoke-virtual {v8}, Lio/realm/a;->beginTransaction()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v8, v4}, Lio/realm/g0;->E(Ljava/util/Collection;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v8}, Lio/realm/a;->c()V

    .line 400
    .line 401
    .line 402
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 403
    .line 404
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 405
    .line 406
    new-instance v4, Lyf/c$b;

    .line 407
    .line 408
    const/4 v5, 0x0

    .line 409
    invoke-direct {v4, v1, v5}, Lyf/c$b;-><init>(Lyf/c;Lp9/d;)V

    .line 410
    .line 411
    .line 412
    const/4 v5, 0x1

    .line 413
    iput v5, v2, Lyf/c$a;->c:I

    .line 414
    .line 415
    invoke-static {v0, v4, v2}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    if-ne v0, v3, :cond_15

    .line 420
    .line 421
    return-object v3

    .line 422
    :cond_9
    instance-of v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 423
    .line 424
    if-eqz v2, :cond_a

    .line 425
    .line 426
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 427
    .line 428
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 429
    .line 430
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 431
    .line 432
    .line 433
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_7

    .line 437
    .line 438
    :cond_a
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 439
    .line 440
    if-eqz v0, :cond_b

    .line 441
    .line 442
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 443
    .line 444
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 445
    .line 446
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 447
    .line 448
    .line 449
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 450
    .line 451
    .line 452
    goto :goto_7

    .line 453
    :cond_b
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 454
    .line 455
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 456
    .line 457
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 461
    .line 462
    .line 463
    goto :goto_7

    .line 464
    :cond_c
    instance-of v0, v6, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 465
    .line 466
    if-eqz v0, :cond_d

    .line 467
    .line 468
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 469
    .line 470
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 471
    .line 472
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 473
    .line 474
    .line 475
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 476
    .line 477
    .line 478
    goto :goto_7

    .line 479
    :cond_d
    new-instance v0, Lj7/p;

    .line 480
    .line 481
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 482
    .line 483
    .line 484
    throw v0

    .line 485
    :cond_e
    const-string v0, "mAppMode"

    .line 486
    .line 487
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    const/4 v2, 0x0

    .line 491
    throw v2

    .line 492
    :cond_f
    const/4 v2, 0x0

    .line 493
    const-string v0, "mLanguage"

    .line 494
    .line 495
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw v2

    .line 499
    :cond_10
    const/4 v2, 0x0

    .line 500
    const-string v0, "mAppVersion"

    .line 501
    .line 502
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    throw v2

    .line 506
    :cond_11
    const-string v0, "mApiClient"

    .line 507
    .line 508
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    const/4 v2, 0x0

    .line 512
    throw v2

    .line 513
    :cond_12
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 514
    .line 515
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 516
    .line 517
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 518
    .line 519
    .line 520
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 521
    .line 522
    .line 523
    goto :goto_7

    .line 524
    :cond_13
    const-string v0, "mNetworkHelper"

    .line 525
    .line 526
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    const/4 v2, 0x0

    .line 530
    throw v2

    .line 531
    :cond_14
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 532
    .line 533
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 534
    .line 535
    new-instance v4, Lyf/c$c;

    .line 536
    .line 537
    const/4 v5, 0x0

    .line 538
    invoke-direct {v4, v1, v5}, Lyf/c$c;-><init>(Lyf/c;Lp9/d;)V

    .line 539
    .line 540
    .line 541
    iput v6, v2, Lyf/c$a;->c:I

    .line 542
    .line 543
    invoke-static {v0, v4, v2}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    if-ne v0, v3, :cond_15

    .line 548
    .line 549
    return-object v3

    .line 550
    :cond_15
    :goto_6
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 551
    .line 552
    goto :goto_7

    .line 553
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 554
    .line 555
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 556
    .line 557
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 558
    .line 559
    .line 560
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 561
    .line 562
    .line 563
    :goto_7
    return-object v0
.end method
