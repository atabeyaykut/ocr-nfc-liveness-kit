.class public final Lwg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lud/d0;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lgf/b;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lwg/b;II)Lio/realm/y0;
    .locals 3

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
    const/4 v0, 0x1

    .line 12
    const-string v1, "categoryCode"

    .line 13
    .line 14
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    const/16 v0, 0x5a

    .line 25
    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    const/16 v0, 0x5b

    .line 29
    .line 30
    if-eq p1, v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1, v1}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0, v2}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1, v1}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "cityCode"

    .line 56
    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p0, p2, p1}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {p0}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public static c(II)Ljava/util/List;
    .locals 4

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->m()V

    const/4 v1, 0x1

    const-string v2, "categoryCode"

    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x5b

    if-eq p0, v1, :cond_0

    invoke-virtual {v0, v3}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    const-string p0, "cityCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(IILp9/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v10, p1

    .line 4
    .line 5
    move/from16 v11, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    instance-of v2, v0, Lwg/b$a;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Lwg/b$a;

    .line 15
    .line 16
    iget v3, v2, Lwg/b$a;->c:I

    .line 17
    .line 18
    const/high16 v4, -0x80000000

    .line 19
    .line 20
    and-int v5, v3, v4

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    sub-int/2addr v3, v4

    .line 25
    iput v3, v2, Lwg/b$a;->c:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Lwg/b$a;

    .line 29
    .line 30
    invoke-direct {v2, v1, v0}, Lwg/b$a;-><init>(Lwg/b;Lp9/d;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    move-object v12, v2

    .line 34
    iget-object v0, v12, Lwg/b$a;->a:Ljava/lang/Object;

    .line 35
    .line 36
    sget-object v13, Lq9/a;->a:Lq9/a;

    .line 37
    .line 38
    iget v2, v12, Lwg/b$a;->c:I

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    const/4 v14, 0x1

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    if-eq v2, v14, :cond_2

    .line 45
    .line 46
    if-ne v2, v3, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    .line 59
    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :try_start_1
    invoke-static/range {p1 .. p2}, Lwg/b;->c(II)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, v1, Lwg/b;->f:Ljava/util/List;

    .line 70
    .line 71
    check-cast v0, Ljava/util/Collection;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v15, 0x0

    .line 78
    if-eqz v0, :cond_15

    .line 79
    .line 80
    iget-object v0, v1, Lwg/b;->e:Lgf/b;

    .line 81
    .line 82
    if-eqz v0, :cond_14

    .line 83
    .line 84
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_13

    .line 89
    .line 90
    iget-object v0, v1, Lwg/b;->a:Lud/d0;

    .line 91
    .line 92
    if-eqz v0, :cond_12

    .line 93
    .line 94
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListAPI;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v2, "mApiClient.create(InstitutionListAPI::class.java)"

    .line 101
    .line 102
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    move-object v2, v0

    .line 106
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListAPI;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    const-string v0, "mAppMode"

    .line 109
    .line 110
    const-string v4, "mLanguage"

    .line 111
    .line 112
    const-string v5, "mAppVersion"

    .line 113
    .line 114
    if-eq v10, v14, :cond_7

    .line 115
    .line 116
    if-eq v10, v3, :cond_7

    .line 117
    .line 118
    const/4 v3, 0x5

    .line 119
    if-eq v10, v3, :cond_7

    .line 120
    .line 121
    const/16 v3, 0x5a

    .line 122
    .line 123
    if-eq v10, v3, :cond_7

    .line 124
    .line 125
    const/16 v3, 0x5b

    .line 126
    .line 127
    if-eq v10, v3, :cond_7

    .line 128
    .line 129
    :try_start_2
    const-string v3, "InstitutionList"

    .line 130
    .line 131
    iget-object v6, v1, Lwg/b;->b:Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v6, :cond_6

    .line 134
    .line 135
    const-string v7, "android"

    .line 136
    .line 137
    iget-object v8, v1, Lwg/b;->d:Ljava/lang/String;

    .line 138
    .line 139
    if-eqz v8, :cond_5

    .line 140
    .line 141
    iget-object v9, v1, Lwg/b;->c:Ljava/lang/String;

    .line 142
    .line 143
    if-eqz v9, :cond_4

    .line 144
    .line 145
    move/from16 v4, p1

    .line 146
    .line 147
    move-object v5, v6

    .line 148
    move-object v6, v7

    .line 149
    move-object v7, v8

    .line 150
    move-object v8, v9

    .line 151
    invoke-interface/range {v2 .. v8}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListAPI;->fetchInstitutionList(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    goto :goto_2

    .line 156
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v15

    .line 160
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v15

    .line 164
    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v15

    .line 168
    :cond_7
    const-string v3, "InstitutionList"

    .line 169
    .line 170
    iget-object v6, v1, Lwg/b;->b:Ljava/lang/String;

    .line 171
    .line 172
    if-eqz v6, :cond_11

    .line 173
    .line 174
    const-string v7, "android"

    .line 175
    .line 176
    iget-object v8, v1, Lwg/b;->d:Ljava/lang/String;

    .line 177
    .line 178
    if-eqz v8, :cond_10

    .line 179
    .line 180
    iget-object v9, v1, Lwg/b;->c:Ljava/lang/String;

    .line 181
    .line 182
    if-eqz v9, :cond_f

    .line 183
    .line 184
    move/from16 v4, p1

    .line 185
    .line 186
    move/from16 v5, p2

    .line 187
    .line 188
    invoke-interface/range {v2 .. v9}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListAPI;->fetchInstitutionListWithCity(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 189
    .line 190
    .line 191
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 192
    :goto_2
    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 197
    .line 198
    const-string v3, "response"

    .line 199
    .line 200
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-direct {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :catch_0
    move-exception v0

    .line 212
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    .line 214
    .line 215
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 216
    .line 217
    invoke-direct {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    :goto_3
    instance-of v0, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 221
    .line 222
    if-eqz v0, :cond_d

    .line 223
    .line 224
    move-object v0, v2

    .line 225
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 226
    .line 227
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;

    .line 232
    .line 233
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/InstitutionListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    instance-of v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 238
    .line 239
    if-eqz v3, :cond_a

    .line 240
    .line 241
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    const-string v3, "realm"

    .line 246
    .line 247
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 251
    .line 252
    invoke-virtual {v0, v3}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    const-string v4, "institutionId"

    .line 257
    .line 258
    invoke-virtual {v3, v4}, Lio/realm/RealmQuery;->g(Ljava/lang/String;)Ljava/lang/Number;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    if-eqz v3, :cond_8

    .line 263
    .line 264
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    goto :goto_4

    .line 269
    :cond_8
    const/4 v3, 0x0

    .line 270
    :goto_4
    move-object v4, v2

    .line 271
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 272
    .line 273
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;

    .line 278
    .line 279
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;->getInstitutionListData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->getBaseUrl()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 288
    .line 289
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;

    .line 294
    .line 295
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;->getInstitutionListData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->getInstitutionList()Ljava/util/List;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    check-cast v2, Ljava/lang/Iterable;

    .line 304
    .line 305
    new-instance v5, Ljava/util/ArrayList;

    .line 306
    .line 307
    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    .line 313
    .line 314
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    if-eqz v6, :cond_9

    .line 323
    .line 324
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;

    .line 329
    .line 330
    add-int/2addr v3, v14

    .line 331
    invoke-static {v6, v4, v3, v10, v11}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/InstitutionExtensionKt;->prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;Ljava/lang/String;III)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    goto :goto_5

    .line 339
    :cond_9
    new-instance v2, Lvg/a;

    .line 340
    .line 341
    invoke-direct {v2, v14, v5}, Lvg/a;-><init>(ILjava/util/ArrayList;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v2}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    .line 345
    .line 346
    .line 347
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 348
    .line 349
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 350
    .line 351
    new-instance v2, Lwg/b$b;

    .line 352
    .line 353
    invoke-direct {v2, v1, v10, v11, v15}, Lwg/b$b;-><init>(Lwg/b;IILp9/d;)V

    .line 354
    .line 355
    .line 356
    iput v14, v12, Lwg/b$a;->c:I

    .line 357
    .line 358
    invoke-static {v0, v2, v12}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    if-ne v0, v13, :cond_16

    .line 363
    .line 364
    return-object v13

    .line 365
    :cond_a
    instance-of v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 366
    .line 367
    if-eqz v2, :cond_b

    .line 368
    .line 369
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 370
    .line 371
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 372
    .line 373
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 374
    .line 375
    .line 376
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_7

    .line 380
    .line 381
    :cond_b
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 382
    .line 383
    if-eqz v0, :cond_c

    .line 384
    .line 385
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 386
    .line 387
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 388
    .line 389
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 390
    .line 391
    .line 392
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 393
    .line 394
    .line 395
    goto :goto_7

    .line 396
    :cond_c
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 397
    .line 398
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 399
    .line 400
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 401
    .line 402
    .line 403
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 404
    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_d
    instance-of v0, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 408
    .line 409
    if-eqz v0, :cond_e

    .line 410
    .line 411
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 412
    .line 413
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 414
    .line 415
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 419
    .line 420
    .line 421
    goto :goto_7

    .line 422
    :cond_e
    new-instance v0, Lj7/p;

    .line 423
    .line 424
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 425
    .line 426
    .line 427
    throw v0

    .line 428
    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    throw v15

    .line 432
    :cond_10
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    throw v15

    .line 436
    :cond_11
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    throw v15

    .line 440
    :cond_12
    const-string v0, "mApiClient"

    .line 441
    .line 442
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v15

    .line 446
    :cond_13
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 447
    .line 448
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 449
    .line 450
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 451
    .line 452
    .line 453
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 454
    .line 455
    .line 456
    goto :goto_7

    .line 457
    :cond_14
    const-string v0, "mNetworkHelper"

    .line 458
    .line 459
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw v15

    .line 463
    :cond_15
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 464
    .line 465
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 466
    .line 467
    new-instance v2, Lwg/b$c;

    .line 468
    .line 469
    invoke-direct {v2, v1, v10, v11, v15}, Lwg/b$c;-><init>(Lwg/b;IILp9/d;)V

    .line 470
    .line 471
    .line 472
    iput v3, v12, Lwg/b$a;->c:I

    .line 473
    .line 474
    invoke-static {v0, v2, v12}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    if-ne v0, v13, :cond_16

    .line 479
    .line 480
    return-object v13

    .line 481
    :cond_16
    :goto_6
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 482
    .line 483
    goto :goto_7

    .line 484
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 485
    .line 486
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 487
    .line 488
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 492
    .line 493
    .line 494
    :goto_7
    return-object v0
.end method
