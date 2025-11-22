.class public final Luf/b;
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

.method public static final a(Luf/b;II)Lio/realm/y0;
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
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v11, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    instance-of v3, v0, Luf/b$a;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    move-object v3, v0

    .line 14
    check-cast v3, Luf/b$a;

    .line 15
    .line 16
    iget v4, v3, Luf/b$a;->c:I

    .line 17
    .line 18
    const/high16 v5, -0x80000000

    .line 19
    .line 20
    and-int v6, v4, v5

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    sub-int/2addr v4, v5

    .line 25
    iput v4, v3, Luf/b$a;->c:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v3, Luf/b$a;

    .line 29
    .line 30
    invoke-direct {v3, v1, v0}, Luf/b$a;-><init>(Luf/b;Lp9/d;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    move-object v12, v3

    .line 34
    iget-object v0, v12, Luf/b$a;->a:Ljava/lang/Object;

    .line 35
    .line 36
    sget-object v13, Lq9/a;->a:Lq9/a;

    .line 37
    .line 38
    iget v3, v12, Luf/b$a;->c:I

    .line 39
    .line 40
    const/4 v14, 0x2

    .line 41
    const/4 v15, 0x1

    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    if-eq v3, v15, :cond_2

    .line 45
    .line 46
    if-ne v3, v14, :cond_1

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
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :try_start_1
    invoke-static/range {p1 .. p2}, Luf/b;->c(II)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, v1, Luf/b;->f:Ljava/util/List;

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
    const/4 v10, 0x0

    .line 78
    if-eqz v0, :cond_11

    .line 79
    .line 80
    iget-object v0, v1, Luf/b;->e:Lgf/b;

    .line 81
    .line 82
    if-eqz v0, :cond_10

    .line 83
    .line 84
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_f

    .line 89
    .line 90
    iget-object v0, v1, Luf/b;->a:Lud/d0;

    .line 91
    .line 92
    if-eqz v0, :cond_e

    .line 93
    .line 94
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListAPI;

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v3, "mApiClient.create(InstitutionListAPI::class.java)"

    .line 101
    .line 102
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    move-object v3, v0

    .line 106
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListAPI;

    .line 107
    .line 108
    const-string v4, "InstitutionList"

    .line 109
    .line 110
    const/16 v5, 0x5b

    .line 111
    .line 112
    iget-object v7, v1, Luf/b;->b:Ljava/lang/String;

    .line 113
    .line 114
    if-eqz v7, :cond_d

    .line 115
    .line 116
    const-string v8, "android"

    .line 117
    .line 118
    iget-object v9, v1, Luf/b;->d:Ljava/lang/String;

    .line 119
    .line 120
    if-eqz v9, :cond_c

    .line 121
    .line 122
    iget-object v0, v1, Luf/b;->c:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz v0, :cond_b

    .line 125
    .line 126
    move/from16 v6, p2

    .line 127
    .line 128
    move-object v10, v0

    .line 129
    invoke-interface/range {v3 .. v10}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListAPI;->fetchInstitutionListWithCity(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 130
    .line 131
    .line 132
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :try_start_2
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 138
    .line 139
    const-string v4, "response"

    .line 140
    .line 141
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {v3, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :catch_0
    move-exception v0

    .line 153
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 157
    .line 158
    invoke-direct {v3, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    :goto_2
    instance-of v0, v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 162
    .line 163
    if-eqz v0, :cond_9

    .line 164
    .line 165
    move-object v0, v3

    .line 166
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 167
    .line 168
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;

    .line 173
    .line 174
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/InstitutionListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 179
    .line 180
    if-eqz v4, :cond_6

    .line 181
    .line 182
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const-string v4, "realm"

    .line 187
    .line 188
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 192
    .line 193
    invoke-virtual {v0, v4}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    const-string v5, "institutionId"

    .line 198
    .line 199
    invoke-virtual {v4, v5}, Lio/realm/RealmQuery;->g(Ljava/lang/String;)Ljava/lang/Number;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    if-eqz v4, :cond_4

    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    goto :goto_3

    .line 210
    :cond_4
    const/4 v4, 0x0

    .line 211
    :goto_3
    move-object v5, v3

    .line 212
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 213
    .line 214
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;

    .line 219
    .line 220
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;->getInstitutionListData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->getBaseUrl()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 229
    .line 230
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;

    .line 235
    .line 236
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;->getInstitutionListData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->getInstitutionList()Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    check-cast v3, Ljava/lang/Iterable;

    .line 245
    .line 246
    new-instance v6, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .line 254
    .line 255
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    if-eqz v7, :cond_5

    .line 264
    .line 265
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;

    .line 270
    .line 271
    add-int/2addr v4, v15

    .line 272
    invoke-static {v7, v5, v4, v2, v11}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/InstitutionExtensionKt;->prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;Ljava/lang/String;III)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_5
    new-instance v3, Landroidx/camera/core/impl/k;

    .line 281
    .line 282
    invoke-direct {v3, v14, v6}, Landroidx/camera/core/impl/k;-><init>(ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v3}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    .line 286
    .line 287
    .line 288
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 289
    .line 290
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 291
    .line 292
    new-instance v3, Luf/b$b;

    .line 293
    .line 294
    const/4 v4, 0x0

    .line 295
    invoke-direct {v3, v1, v2, v11, v4}, Luf/b$b;-><init>(Luf/b;IILp9/d;)V

    .line 296
    .line 297
    .line 298
    iput v15, v12, Luf/b$a;->c:I

    .line 299
    .line 300
    invoke-static {v0, v3, v12}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    if-ne v0, v13, :cond_12

    .line 305
    .line 306
    return-object v13

    .line 307
    :cond_6
    instance-of v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 308
    .line 309
    if-eqz v2, :cond_7

    .line 310
    .line 311
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 312
    .line 313
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 314
    .line 315
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_6

    .line 322
    .line 323
    :cond_7
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 324
    .line 325
    if-eqz v0, :cond_8

    .line 326
    .line 327
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 328
    .line 329
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 330
    .line 331
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 332
    .line 333
    .line 334
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_6

    .line 338
    .line 339
    :cond_8
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 340
    .line 341
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 342
    .line 343
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 347
    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_9
    instance-of v0, v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 351
    .line 352
    if-eqz v0, :cond_a

    .line 353
    .line 354
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 355
    .line 356
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 357
    .line 358
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 362
    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_a
    new-instance v0, Lj7/p;

    .line 366
    .line 367
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 368
    .line 369
    .line 370
    throw v0

    .line 371
    :cond_b
    move-object v4, v10

    .line 372
    const-string v0, "mAppMode"

    .line 373
    .line 374
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v4

    .line 378
    :cond_c
    move-object v4, v10

    .line 379
    const-string v0, "mLanguage"

    .line 380
    .line 381
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    throw v4

    .line 385
    :cond_d
    move-object v4, v10

    .line 386
    const-string v0, "mAppVersion"

    .line 387
    .line 388
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw v4

    .line 392
    :cond_e
    move-object v4, v10

    .line 393
    const-string v0, "mApiClient"

    .line 394
    .line 395
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw v4

    .line 399
    :cond_f
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 400
    .line 401
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 402
    .line 403
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 407
    .line 408
    .line 409
    goto :goto_6

    .line 410
    :cond_10
    move-object v4, v10

    .line 411
    const-string v0, "mNetworkHelper"

    .line 412
    .line 413
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw v4

    .line 417
    :cond_11
    move-object v4, v10

    .line 418
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 419
    .line 420
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 421
    .line 422
    new-instance v3, Luf/b$c;

    .line 423
    .line 424
    invoke-direct {v3, v1, v2, v11, v4}, Luf/b$c;-><init>(Luf/b;IILp9/d;)V

    .line 425
    .line 426
    .line 427
    iput v14, v12, Luf/b$a;->c:I

    .line 428
    .line 429
    invoke-static {v0, v3, v12}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    if-ne v0, v13, :cond_12

    .line 434
    .line 435
    return-object v13

    .line 436
    :cond_12
    :goto_5
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 437
    .line 438
    goto :goto_6

    .line 439
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 440
    .line 441
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 442
    .line 443
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 444
    .line 445
    .line 446
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 447
    .line 448
    .line 449
    :goto_6
    return-object v0
.end method
