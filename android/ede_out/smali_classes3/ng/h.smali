.class public final Lng/h;
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

.method public static final a(Lng/h;)Ljava/util/ArrayList;
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
    const-string v0, "realmMain"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "serviceInsertion"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lio/realm/RealmQuery;->h(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lio/realm/d0$c;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Lio/realm/d0$c;-><init>(Lio/realm/d0;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lio/realm/internal/OsResults$a;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2}, Lio/realm/internal/OsResults$a;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    .line 49
    .line 50
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 51
    .line 52
    invoke-virtual {p0, v3}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "serviceCode"

    .line 57
    .line 58
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v3, v0, v4}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
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
    const-string v2, "getDefaultInstance()"

    .line 6
    .line 7
    instance-of v3, v0, Lng/h$a;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Lng/h$a;

    .line 13
    .line 14
    iget v4, v3, Lng/h$a;->c:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lng/h$a;->c:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lng/h$a;

    .line 27
    .line 28
    invoke-direct {v3, v1, v0}, Lng/h$a;-><init>(Lng/h;Lp9/d;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v3, Lng/h$a;->a:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lq9/a;->a:Lq9/a;

    .line 34
    .line 35
    iget v5, v3, Lng/h$a;->c:I

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x2

    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    if-eq v5, v6, :cond_2

    .line 42
    .line 43
    if-ne v5, v7, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :try_start_1
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-class v5, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    .line 70
    .line 71
    invoke-virtual {v0, v5}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/util/Collection;

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v5, 0x0

    .line 90
    if-eqz v0, :cond_11

    .line 91
    .line 92
    iget-object v0, v1, Lng/h;->e:Lgf/b;

    .line 93
    .line 94
    if-eqz v0, :cond_10

    .line 95
    .line 96
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_f

    .line 101
    .line 102
    iget-object v0, v1, Lng/h;->a:Lud/d0;

    .line 103
    .line 104
    if-eqz v0, :cond_e

    .line 105
    .line 106
    const-class v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceAPI;

    .line 107
    .line 108
    invoke-virtual {v0, v7}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v7, "mApiClient.create(Editor\u2026ceServiceAPI::class.java)"

    .line 113
    .line 114
    invoke-static {v0, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    move-object v8, v0

    .line 118
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceAPI;

    .line 119
    .line 120
    const-string v9, "EditorsChoice"

    .line 121
    .line 122
    iget-object v10, v1, Lng/h;->b:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz v10, :cond_d

    .line 125
    .line 126
    const-string v11, "android"

    .line 127
    .line 128
    iget-object v12, v1, Lng/h;->d:Ljava/lang/String;

    .line 129
    .line 130
    if-eqz v12, :cond_c

    .line 131
    .line 132
    iget-object v13, v1, Lng/h;->c:Ljava/lang/String;

    .line 133
    .line 134
    if-eqz v13, :cond_b

    .line 135
    .line 136
    invoke-interface/range {v8 .. v13}, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceAPI;->fetchServiceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 137
    .line 138
    .line 139
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :try_start_2
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v7, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 145
    .line 146
    const-string v8, "response"

    .line 147
    .line 148
    invoke-static {v0, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-direct {v7, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catch_0
    move-exception v0

    .line 160
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    new-instance v7, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 164
    .line 165
    invoke-direct {v7, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    :goto_2
    instance-of v0, v7, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 169
    .line 170
    if-eqz v0, :cond_9

    .line 171
    .line 172
    move-object v0, v7

    .line 173
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 174
    .line 175
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 180
    .line 181
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 186
    .line 187
    if-eqz v8, :cond_6

    .line 188
    .line 189
    move-object v0, v7

    .line 190
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 191
    .line 192
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 197
    .line 198
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;->getBaseUrl()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    move-object v8, v7

    .line 207
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 208
    .line 209
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 214
    .line 215
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;->getBaseUrls()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-static {v9, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 231
    .line 232
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 237
    .line 238
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;->getContent()Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    check-cast v2, Ljava/lang/Iterable;

    .line 247
    .line 248
    new-instance v7, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 251
    .line 252
    .line 253
    move-result v10

    .line 254
    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .line 256
    .line 257
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    const/4 v10, 0x0

    .line 262
    const/4 v11, 0x0

    .line 263
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    if-eqz v12, :cond_5

    .line 268
    .line 269
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    add-int/lit8 v13, v11, 0x1

    .line 274
    .line 275
    if-ltz v11, :cond_4

    .line 276
    .line 277
    check-cast v12, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    .line 278
    .line 279
    new-instance v14, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    .line 280
    .line 281
    invoke-direct {v14}, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v12}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceCode()I

    .line 285
    .line 286
    .line 287
    move-result v15

    .line 288
    new-instance v6, Ljava/lang/Integer;

    .line 289
    .line 290
    invoke-direct {v6, v15}, Ljava/lang/Integer;-><init>(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v14, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;->setServiceCode(Ljava/lang/Integer;)V

    .line 294
    .line 295
    .line 296
    new-instance v6, Ljava/lang/Integer;

    .line 297
    .line 298
    invoke-direct {v6, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v14, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;->setServiceInsertion(Ljava/lang/Integer;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v9}, Lio/realm/a;->beginTransaction()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v14}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v9}, Lio/realm/a;->c()V

    .line 311
    .line 312
    .line 313
    invoke-static {v12, v0, v8, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;Ljava/lang/String;Ljava/util/List;Z)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move v11, v13

    .line 321
    const/4 v6, 0x1

    .line 322
    goto :goto_3

    .line 323
    :cond_4
    invoke-static {}, Lb8/f;->k0()V

    .line 324
    .line 325
    .line 326
    throw v5

    .line 327
    :cond_5
    invoke-virtual {v9}, Lio/realm/a;->beginTransaction()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v9, v7}, Lio/realm/g0;->E(Ljava/util/Collection;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v9}, Lio/realm/a;->c()V

    .line 334
    .line 335
    .line 336
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 337
    .line 338
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 339
    .line 340
    new-instance v2, Lng/h$b;

    .line 341
    .line 342
    invoke-direct {v2, v1, v5}, Lng/h$b;-><init>(Lng/h;Lp9/d;)V

    .line 343
    .line 344
    .line 345
    const/4 v5, 0x1

    .line 346
    iput v5, v3, Lng/h$a;->c:I

    .line 347
    .line 348
    invoke-static {v0, v2, v3}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    if-ne v0, v4, :cond_12

    .line 353
    .line 354
    return-object v4

    .line 355
    :cond_6
    instance-of v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 356
    .line 357
    if-eqz v2, :cond_7

    .line 358
    .line 359
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 360
    .line 361
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 362
    .line 363
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_5

    .line 370
    .line 371
    :cond_7
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 372
    .line 373
    if-eqz v0, :cond_8

    .line 374
    .line 375
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 376
    .line 377
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 378
    .line 379
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 380
    .line 381
    .line 382
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 383
    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_8
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 387
    .line 388
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 389
    .line 390
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 394
    .line 395
    .line 396
    goto :goto_5

    .line 397
    :cond_9
    instance-of v0, v7, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 398
    .line 399
    if-eqz v0, :cond_a

    .line 400
    .line 401
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 402
    .line 403
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 404
    .line 405
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 409
    .line 410
    .line 411
    goto :goto_5

    .line 412
    :cond_a
    new-instance v0, Lj7/p;

    .line 413
    .line 414
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 415
    .line 416
    .line 417
    throw v0

    .line 418
    :cond_b
    const-string v0, "mAppMode"

    .line 419
    .line 420
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    throw v5

    .line 424
    :cond_c
    const-string v0, "mLanguage"

    .line 425
    .line 426
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    throw v5

    .line 430
    :cond_d
    const-string v0, "mAppVersion"

    .line 431
    .line 432
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    throw v5

    .line 436
    :cond_e
    const-string v0, "mApiClient"

    .line 437
    .line 438
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    throw v5

    .line 442
    :cond_f
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 443
    .line 444
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 445
    .line 446
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 447
    .line 448
    .line 449
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 450
    .line 451
    .line 452
    goto :goto_5

    .line 453
    :cond_10
    const-string v0, "mNetworkHelper"

    .line 454
    .line 455
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw v5

    .line 459
    :cond_11
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 460
    .line 461
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 462
    .line 463
    new-instance v2, Lng/h$c;

    .line 464
    .line 465
    invoke-direct {v2, v1, v5}, Lng/h$c;-><init>(Lng/h;Lp9/d;)V

    .line 466
    .line 467
    .line 468
    iput v7, v3, Lng/h$a;->c:I

    .line 469
    .line 470
    invoke-static {v0, v2, v3}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    if-ne v0, v4, :cond_12

    .line 475
    .line 476
    return-object v4

    .line 477
    :cond_12
    :goto_4
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 478
    .line 479
    goto :goto_5

    .line 480
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 481
    .line 482
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 483
    .line 484
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 485
    .line 486
    .line 487
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 488
    .line 489
    .line 490
    :goto_5
    return-object v0
.end method
