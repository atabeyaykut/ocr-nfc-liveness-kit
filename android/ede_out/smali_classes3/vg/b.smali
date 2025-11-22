.class public final Lvg/b;
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

.method public static final a(Lvg/b;II)Lio/realm/y0;
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
    instance-of v2, v0, Lvg/b$a;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Lvg/b$a;

    .line 15
    .line 16
    iget v3, v2, Lvg/b$a;->c:I

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
    iput v3, v2, Lvg/b$a;->c:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Lvg/b$a;

    .line 29
    .line 30
    invoke-direct {v2, v1, v0}, Lvg/b$a;-><init>(Lvg/b;Lp9/d;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    move-object v12, v2

    .line 34
    iget-object v0, v12, Lvg/b$a;->a:Ljava/lang/Object;

    .line 35
    .line 36
    sget-object v13, Lq9/a;->a:Lq9/a;

    .line 37
    .line 38
    iget v2, v12, Lvg/b$a;->c:I

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
    invoke-static/range {p1 .. p2}, Lvg/b;->c(II)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, v1, Lvg/b;->f:Ljava/util/List;

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
    iget-object v0, v1, Lvg/b;->e:Lgf/b;

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
    iget-object v0, v1, Lvg/b;->a:Lud/d0;

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
    iget-object v6, v1, Lvg/b;->b:Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v6, :cond_6

    .line 134
    .line 135
    const-string v7, "android"

    .line 136
    .line 137
    iget-object v8, v1, Lvg/b;->d:Ljava/lang/String;

    .line 138
    .line 139
    if-eqz v8, :cond_5

    .line 140
    .line 141
    iget-object v9, v1, Lvg/b;->c:Ljava/lang/String;

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
    iget-object v6, v1, Lvg/b;->b:Ljava/lang/String;

    .line 171
    .line 172
    if-eqz v6, :cond_11

    .line 173
    .line 174
    const-string v7, "android"

    .line 175
    .line 176
    iget-object v8, v1, Lvg/b;->d:Ljava/lang/String;

    .line 177
    .line 178
    if-eqz v8, :cond_10

    .line 179
    .line 180
    iget-object v9, v1, Lvg/b;->c:Ljava/lang/String;

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
    const/4 v4, 0x0

    .line 263
    if-eqz v3, :cond_8

    .line 264
    .line 265
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    goto :goto_4

    .line 270
    :cond_8
    const/4 v3, 0x0

    .line 271
    :goto_4
    move-object v5, v2

    .line 272
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 273
    .line 274
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;

    .line 279
    .line 280
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;->getInstitutionListData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->getBaseUrl()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 289
    .line 290
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;

    .line 295
    .line 296
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;->getInstitutionListData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->getInstitutionList()Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    check-cast v2, Ljava/lang/Iterable;

    .line 305
    .line 306
    new-instance v6, Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    .line 314
    .line 315
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    if-eqz v7, :cond_9

    .line 324
    .line 325
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;

    .line 330
    .line 331
    add-int/2addr v3, v14

    .line 332
    invoke-static {v7, v5, v3, v10, v11}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/InstitutionExtensionKt;->prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;Ljava/lang/String;III)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_9
    new-instance v2, Lvg/a;

    .line 341
    .line 342
    invoke-direct {v2, v4, v6}, Lvg/a;-><init>(ILjava/util/ArrayList;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v2}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    .line 346
    .line 347
    .line 348
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 349
    .line 350
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 351
    .line 352
    new-instance v2, Lvg/b$b;

    .line 353
    .line 354
    invoke-direct {v2, v1, v10, v11, v15}, Lvg/b$b;-><init>(Lvg/b;IILp9/d;)V

    .line 355
    .line 356
    .line 357
    iput v14, v12, Lvg/b$a;->c:I

    .line 358
    .line 359
    invoke-static {v0, v2, v12}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    if-ne v0, v13, :cond_16

    .line 364
    .line 365
    return-object v13

    .line 366
    :cond_a
    instance-of v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 367
    .line 368
    if-eqz v2, :cond_b

    .line 369
    .line 370
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 371
    .line 372
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 373
    .line 374
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 375
    .line 376
    .line 377
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 378
    .line 379
    .line 380
    goto/16 :goto_7

    .line 381
    .line 382
    :cond_b
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 383
    .line 384
    if-eqz v0, :cond_c

    .line 385
    .line 386
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 387
    .line 388
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 389
    .line 390
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 394
    .line 395
    .line 396
    goto :goto_7

    .line 397
    :cond_c
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 398
    .line 399
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 400
    .line 401
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 405
    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_d
    instance-of v0, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 409
    .line 410
    if-eqz v0, :cond_e

    .line 411
    .line 412
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 413
    .line 414
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 415
    .line 416
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 420
    .line 421
    .line 422
    goto :goto_7

    .line 423
    :cond_e
    new-instance v0, Lj7/p;

    .line 424
    .line 425
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 426
    .line 427
    .line 428
    throw v0

    .line 429
    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw v15

    .line 433
    :cond_10
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    throw v15

    .line 437
    :cond_11
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v15

    .line 441
    :cond_12
    const-string v0, "mApiClient"

    .line 442
    .line 443
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v15

    .line 447
    :cond_13
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 448
    .line 449
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 450
    .line 451
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 455
    .line 456
    .line 457
    goto :goto_7

    .line 458
    :cond_14
    const-string v0, "mNetworkHelper"

    .line 459
    .line 460
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v15

    .line 464
    :cond_15
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 465
    .line 466
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 467
    .line 468
    new-instance v2, Lvg/b$c;

    .line 469
    .line 470
    invoke-direct {v2, v1, v10, v11, v15}, Lvg/b$c;-><init>(Lvg/b;IILp9/d;)V

    .line 471
    .line 472
    .line 473
    iput v3, v12, Lvg/b$a;->c:I

    .line 474
    .line 475
    invoke-static {v0, v2, v12}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    if-ne v0, v13, :cond_16

    .line 480
    .line 481
    return-object v13

    .line 482
    :cond_16
    :goto_6
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 483
    .line 484
    goto :goto_7

    .line 485
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 486
    .line 487
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 488
    .line 489
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 490
    .line 491
    .line 492
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 493
    .line 494
    .line 495
    :goto_7
    return-object v0
.end method
