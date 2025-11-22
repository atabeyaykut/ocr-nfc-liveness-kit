.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Landroidx/work/ListenableWorker$Result;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteListWorker$doWork$2$1"
    f = "FavoriteListWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;Lp9/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnc/a0;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;

    .line 2
    .line 3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;->a:Lud/d0;

    .line 7
    .line 8
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "apiClientSession.create(\u2026rviceListAPI::class.java)"

    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v2, p1

    .line 20
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 21
    .line 22
    const-string v3, "FavoriteAndInbox"

    .line 23
    .line 24
    iget-object v4, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;->b:Ljava/lang/String;

    .line 25
    .line 26
    const-string v5, "android"

    .line 27
    .line 28
    iget-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v7, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface/range {v2 .. v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;->fetchFavoriteServiceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 41
    .line 42
    const-string v2, "response"

    .line 43
    .line 44
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 60
    .line 61
    invoke-direct {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    instance-of p1, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    move-object p1, v1

    .line 69
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 70
    .line 71
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;

    .line 76
    .line 77
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    .line 83
    const-string v3, "as"

    .line 84
    .line 85
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;->e:Landroid/content/SharedPreferences$Editor;

    .line 86
    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    :try_start_3
    move-object p1, v1

    .line 90
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 91
    .line 92
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;

    .line 97
    .line 98
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;->getFavoriteServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;->getBaseUrl()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    move-object v2, v1

    .line 107
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 108
    .line 109
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;

    .line 114
    .line 115
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;->getFavoriteServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;->getBaseUrls()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    move-object v5, v1

    .line 128
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 129
    .line 130
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;

    .line 135
    .line 136
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;->getFavoriteServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;->getContent()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    check-cast v5, Ljava/lang/Iterable;

    .line 145
    .line 146
    new-instance v6, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-static {v5}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-eqz v7, :cond_0

    .line 164
    .line 165
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;

    .line 170
    .line 171
    invoke-static {v7, p1, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;Ljava/lang/String;Ljava/util/List;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {v4}, Lio/realm/a;->beginTransaction()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v6}, Lio/realm/g0;->E(Ljava/util/Collection;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Lio/realm/a;->c()V

    .line 186
    .line 187
    .line 188
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 189
    .line 190
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;

    .line 195
    .line 196
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;->getFavoriteServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;->getNameSurname()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    .line 206
    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    new-instance v1, Lpe/f;

    .line 215
    .line 216
    invoke-direct {v1, p1}, Lpe/f;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    goto :goto_3

    .line 227
    :cond_1
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 228
    .line 229
    if-eqz v2, :cond_2

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_2
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 233
    .line 234
    if-eqz p1, :cond_4

    .line 235
    .line 236
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 237
    .line 238
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;

    .line 243
    .line 244
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;->getFavoriteServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;->getNameSurname()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    .line 254
    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 256
    .line 257
    .line 258
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    new-instance v1, Lpe/f;

    .line 263
    .line 264
    invoke-direct {v1, p1}, Lpe/f;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v1}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_3
    instance-of p1, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 272
    .line 273
    if-eqz p1, :cond_5

    .line 274
    .line 275
    :cond_4
    :goto_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    goto :goto_3

    .line 280
    :cond_5
    new-instance p1, Lj7/p;

    .line 281
    .line 282
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 283
    .line 284
    .line 285
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 286
    :catch_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    :goto_3
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 291
    .line 292
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    return-object p1
.end method
