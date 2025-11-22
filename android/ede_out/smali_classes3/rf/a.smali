.class public final Lrf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lud/d0;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lgf/b;

.field public f:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILp9/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lrf/a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lrf/a$a;

    .line 7
    .line 8
    iget v1, v0, Lrf/a$a;->c:I

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
    iput v1, v0, Lrf/a$a;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lrf/a$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lrf/a$a;-><init>(Lrf/a;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lrf/a$a;->a:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lrf/a$a;->c:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    :try_start_0
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_2
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    iget-object p2, p0, Lrf/a;->a:Lud/d0;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz p2, :cond_c

    .line 56
    .line 57
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 58
    .line 59
    invoke-virtual {p2, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const-string v4, "mAppRetrofit.create(ServiceListAPI::class.java)"

    .line 64
    .line 65
    invoke-static {p2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move-object v5, p2

    .line 69
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 70
    .line 71
    const-string v6, "ekle"

    .line 72
    .line 73
    iget-object v8, p0, Lrf/a;->b:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v8, :cond_b

    .line 76
    .line 77
    const-string v9, "android"

    .line 78
    .line 79
    iget-object v10, p0, Lrf/a;->d:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v10, :cond_a

    .line 82
    .line 83
    iget-object v11, p0, Lrf/a;->c:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v11, :cond_9

    .line 86
    .line 87
    move v7, p1

    .line 88
    invoke-interface/range {v5 .. v11}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;->makeFavoriteOperation(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 89
    .line 90
    .line 91
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    :try_start_2
    invoke-interface {p2}, Lud/b;->execute()Lud/c0;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 97
    .line 98
    const-string v5, "response"

    .line 99
    .line 100
    invoke-static {p2, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-direct {v4, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catch_0
    move-exception p2

    .line 112
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 116
    .line 117
    invoke-direct {v4, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    instance-of p2, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 121
    .line 122
    if-eqz p2, :cond_7

    .line 123
    .line 124
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 125
    .line 126
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 131
    .line 132
    invoke-static {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeFavOperationRequest(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    instance-of v4, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 137
    .line 138
    if-eqz v4, :cond_4

    .line 139
    .line 140
    sget-object p2, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 141
    .line 142
    sget-object p2, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 143
    .line 144
    new-instance v4, Lrf/a$b;

    .line 145
    .line 146
    invoke-direct {v4, p1, v2}, Lrf/a$b;-><init>(ILp9/d;)V

    .line 147
    .line 148
    .line 149
    iput v3, v0, Lrf/a$a;->c:I

    .line 150
    .line 151
    invoke-static {p2, v4, v0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    if-ne p2, v1, :cond_3

    .line 156
    .line 157
    return-object v1

    .line 158
    :cond_3
    :goto_2
    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_4
    instance-of p1, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 162
    .line 163
    if-eqz p1, :cond_5

    .line 164
    .line 165
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 166
    .line 167
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 168
    .line 169
    invoke-direct {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_5
    instance-of p1, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 177
    .line 178
    if-eqz p1, :cond_6

    .line 179
    .line 180
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 181
    .line 182
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 183
    .line 184
    invoke-direct {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_6
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 192
    .line 193
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 194
    .line 195
    invoke-direct {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_7
    instance-of p1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 203
    .line 204
    if-eqz p1, :cond_8

    .line 205
    .line 206
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 207
    .line 208
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 209
    .line 210
    invoke-direct {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_8
    new-instance p1, Lj7/p;

    .line 218
    .line 219
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 220
    .line 221
    .line 222
    throw p1

    .line 223
    :cond_9
    const-string p1, "mAppMode"

    .line 224
    .line 225
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v2

    .line 229
    :cond_a
    const-string p1, "mLanguage"

    .line 230
    .line 231
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v2

    .line 235
    :cond_b
    const-string p1, "mAppVersion"

    .line 236
    .line 237
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v2

    .line 241
    :cond_c
    const-string p1, "mAppRetrofit"

    .line 242
    .line 243
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 247
    :catch_1
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 248
    .line 249
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 250
    .line 251
    invoke-direct {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 255
    .line 256
    .line 257
    :goto_3
    return-object p2
.end method

.method public final b(Lp9/d;)Ljava/lang/Object;
    .locals 11
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
    instance-of v0, p1, Lrf/a$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lrf/a$c;

    .line 7
    .line 8
    iget v1, v0, Lrf/a$c;->c:I

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
    iput v1, v0, Lrf/a$c;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lrf/a$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lrf/a$c;-><init>(Lrf/a;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lrf/a$c;->a:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lrf/a$c;->c:I

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
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lio/realm/a;->m()V

    .line 61
    .line 62
    .line 63
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Lio/realm/RealmQuery;->a(Ljava/lang/Boolean;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    const/4 v2, 0x0

    .line 87
    if-eqz p1, :cond_12

    .line 88
    .line 89
    iget-object p1, p0, Lrf/a;->e:Lgf/b;

    .line 90
    .line 91
    if-eqz p1, :cond_11

    .line 92
    .line 93
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_10

    .line 98
    .line 99
    iget-object p1, p0, Lrf/a;->a:Lud/d0;

    .line 100
    .line 101
    if-eqz p1, :cond_f

    .line 102
    .line 103
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string v3, "mAppRetrofit.create(ServiceListAPI::class.java)"

    .line 110
    .line 111
    invoke-static {p1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object v5, p1

    .line 115
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 116
    .line 117
    const-string v6, "FavoriteAndInbox"

    .line 118
    .line 119
    iget-object v7, p0, Lrf/a;->b:Ljava/lang/String;

    .line 120
    .line 121
    if-eqz v7, :cond_e

    .line 122
    .line 123
    const-string v8, "android"

    .line 124
    .line 125
    iget-object v9, p0, Lrf/a;->d:Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v9, :cond_d

    .line 128
    .line 129
    iget-object v10, p0, Lrf/a;->c:Ljava/lang/String;

    .line 130
    .line 131
    if-eqz v10, :cond_c

    .line 132
    .line 133
    invoke-interface/range {v5 .. v10}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;->fetchFavoriteServiceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 134
    .line 135
    .line 136
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :try_start_2
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 142
    .line 143
    const-string v5, "response"

    .line 144
    .line 145
    invoke-static {p1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-direct {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catch_0
    move-exception p1

    .line 157
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 161
    .line 162
    invoke-direct {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    :goto_2
    instance-of p1, v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 166
    .line 167
    if-eqz p1, :cond_a

    .line 168
    .line 169
    move-object p1, v3

    .line 170
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 171
    .line 172
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;

    .line 177
    .line 178
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    instance-of v5, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 183
    .line 184
    if-eqz v5, :cond_5

    .line 185
    .line 186
    move-object p1, v3

    .line 187
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 188
    .line 189
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;

    .line 194
    .line 195
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;->getFavoriteServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;->getBaseUrl()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    move-object v5, v3

    .line 204
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 205
    .line 206
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;

    .line 211
    .line 212
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;->getFavoriteServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;->getBaseUrls()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    move-object v6, v3

    .line 221
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 222
    .line 223
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;

    .line 228
    .line 229
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;->getFavoriteServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;->getContent()Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    check-cast v6, Ljava/lang/Iterable;

    .line 238
    .line 239
    new-instance v7, Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-static {v6}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

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
    move-result v8

    .line 256
    if-eqz v8, :cond_4

    .line 257
    .line 258
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;

    .line 263
    .line 264
    invoke-static {v8, p1, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;Ljava/lang/String;Ljava/util/List;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_4
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p1}, Lio/realm/a;->beginTransaction()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v7}, Lio/realm/g0;->E(Ljava/util/Collection;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Lio/realm/a;->c()V

    .line 283
    .line 284
    .line 285
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 286
    .line 287
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;

    .line 292
    .line 293
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;->getFavoriteServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;->getNameSurname()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {p0, p1}, Lrf/a;->c(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 305
    .line 306
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 307
    .line 308
    new-instance v3, Lrf/a$d;

    .line 309
    .line 310
    invoke-direct {v3, v2}, Lrf/a$d;-><init>(Lp9/d;)V

    .line 311
    .line 312
    .line 313
    iput v4, v0, Lrf/a$c;->c:I

    .line 314
    .line 315
    invoke-static {p1, v3, v0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    if-ne p1, v1, :cond_13

    .line 320
    .line 321
    return-object v1

    .line 322
    :cond_5
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 323
    .line 324
    if-eqz v0, :cond_6

    .line 325
    .line 326
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 327
    .line 328
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 329
    .line 330
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_5

    .line 337
    .line 338
    :cond_6
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 339
    .line 340
    if-eqz v0, :cond_7

    .line 341
    .line 342
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 343
    .line 344
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;

    .line 349
    .line 350
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;->getFavoriteServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;->getNameSurname()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-virtual {p0, p1}, Lrf/a;->c(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 362
    .line 363
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 364
    .line 365
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_5

    .line 372
    .line 373
    :cond_7
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    .line 374
    .line 375
    if-eqz v0, :cond_8

    .line 376
    .line 377
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 378
    .line 379
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 380
    .line 381
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 382
    .line 383
    .line 384
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_5

    .line 388
    .line 389
    :cond_8
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkError;

    .line 390
    .line 391
    if-eqz p1, :cond_9

    .line 392
    .line 393
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
    goto/16 :goto_5

    .line 404
    .line 405
    :cond_9
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 406
    .line 407
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 408
    .line 409
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 413
    .line 414
    .line 415
    goto :goto_5

    .line 416
    :cond_a
    instance-of p1, v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 417
    .line 418
    if-eqz p1, :cond_b

    .line 419
    .line 420
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 421
    .line 422
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 423
    .line 424
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 425
    .line 426
    .line 427
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 428
    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_b
    new-instance p1, Lj7/p;

    .line 432
    .line 433
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 434
    .line 435
    .line 436
    throw p1

    .line 437
    :cond_c
    const-string p1, "mAppMode"

    .line 438
    .line 439
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v2

    .line 443
    :cond_d
    const-string p1, "mLanguage"

    .line 444
    .line 445
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw v2

    .line 449
    :cond_e
    const-string p1, "mAppVersion"

    .line 450
    .line 451
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    throw v2

    .line 455
    :cond_f
    const-string p1, "mAppRetrofit"

    .line 456
    .line 457
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    throw v2

    .line 461
    :cond_10
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 462
    .line 463
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 464
    .line 465
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 466
    .line 467
    .line 468
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 469
    .line 470
    .line 471
    goto :goto_5

    .line 472
    :cond_11
    const-string p1, "mNetworkHelper"

    .line 473
    .line 474
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    throw v2

    .line 478
    :cond_12
    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 479
    .line 480
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 481
    .line 482
    new-instance v4, Lrf/a$e;

    .line 483
    .line 484
    invoke-direct {v4, v2}, Lrf/a$e;-><init>(Lp9/d;)V

    .line 485
    .line 486
    .line 487
    iput v3, v0, Lrf/a$c;->c:I

    .line 488
    .line 489
    invoke-static {p1, v4, v0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    if-ne p1, v1, :cond_13

    .line 494
    .line 495
    return-object v1

    .line 496
    :cond_13
    :goto_4
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 497
    .line 498
    goto :goto_5

    .line 499
    :catch_1
    move-exception p1

    .line 500
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 501
    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    const-string v2, "4 "

    .line 505
    .line 506
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-static {p1, v1}, Landroidx/constraintlayout/core/a;->j(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    const/4 v1, 0x0

    .line 514
    new-array v1, v1, [Ljava/lang/Object;

    .line 515
    .line 516
    invoke-virtual {v0, p1, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 520
    .line 521
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 522
    .line 523
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 524
    .line 525
    .line 526
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 527
    .line 528
    .line 529
    :goto_5
    return-object p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrf/a;->f:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "sharedPreferencesEditor"

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string v3, "as"

    .line 9
    .line 10
    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lrf/a;->f:Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lpe/f;

    .line 25
    .line 26
    invoke-direct {v1, p1}, Lpe/f;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1
.end method

.method public final d(ILp9/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lrf/a$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lrf/a$f;

    .line 7
    .line 8
    iget v1, v0, Lrf/a$f;->c:I

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
    iput v1, v0, Lrf/a$f;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lrf/a$f;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lrf/a$f;-><init>(Lrf/a;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lrf/a$f;->a:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lrf/a$f;->c:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    :try_start_0
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_2
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    iget-object p2, p0, Lrf/a;->a:Lud/d0;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz p2, :cond_c

    .line 56
    .line 57
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 58
    .line 59
    invoke-virtual {p2, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const-string v4, "mAppRetrofit.create(ServiceListAPI::class.java)"

    .line 64
    .line 65
    invoke-static {p2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move-object v5, p2

    .line 69
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 70
    .line 71
    const-string v6, "kaldir"

    .line 72
    .line 73
    iget-object v8, p0, Lrf/a;->b:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v8, :cond_b

    .line 76
    .line 77
    const-string v9, "android"

    .line 78
    .line 79
    iget-object v10, p0, Lrf/a;->d:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v10, :cond_a

    .line 82
    .line 83
    iget-object v11, p0, Lrf/a;->c:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v11, :cond_9

    .line 86
    .line 87
    move v7, p1

    .line 88
    invoke-interface/range {v5 .. v11}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;->makeFavoriteOperation(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 89
    .line 90
    .line 91
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    :try_start_2
    invoke-interface {p2}, Lud/b;->execute()Lud/c0;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 97
    .line 98
    const-string v5, "response"

    .line 99
    .line 100
    invoke-static {p2, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-direct {v4, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catch_0
    move-exception p2

    .line 112
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 116
    .line 117
    invoke-direct {v4, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    instance-of p2, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 121
    .line 122
    if-eqz p2, :cond_7

    .line 123
    .line 124
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 125
    .line 126
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 131
    .line 132
    invoke-static {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeFavOperationRequest(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    instance-of v4, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 137
    .line 138
    if-eqz v4, :cond_4

    .line 139
    .line 140
    sget-object p2, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 141
    .line 142
    sget-object p2, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 143
    .line 144
    new-instance v4, Lrf/a$g;

    .line 145
    .line 146
    invoke-direct {v4, p1, v2}, Lrf/a$g;-><init>(ILp9/d;)V

    .line 147
    .line 148
    .line 149
    iput v3, v0, Lrf/a$f;->c:I

    .line 150
    .line 151
    invoke-static {p2, v4, v0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    if-ne p2, v1, :cond_3

    .line 156
    .line 157
    return-object v1

    .line 158
    :cond_3
    :goto_2
    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_4
    instance-of p1, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 162
    .line 163
    if-eqz p1, :cond_5

    .line 164
    .line 165
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 166
    .line 167
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 168
    .line 169
    invoke-direct {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_5
    instance-of p1, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 177
    .line 178
    if-eqz p1, :cond_6

    .line 179
    .line 180
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 181
    .line 182
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 183
    .line 184
    invoke-direct {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_6
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 192
    .line 193
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 194
    .line 195
    invoke-direct {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_7
    instance-of p1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 203
    .line 204
    if-eqz p1, :cond_8

    .line 205
    .line 206
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 207
    .line 208
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 209
    .line 210
    invoke-direct {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_8
    new-instance p1, Lj7/p;

    .line 218
    .line 219
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 220
    .line 221
    .line 222
    throw p1

    .line 223
    :cond_9
    const-string p1, "mAppMode"

    .line 224
    .line 225
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v2

    .line 229
    :cond_a
    const-string p1, "mLanguage"

    .line 230
    .line 231
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v2

    .line 235
    :cond_b
    const-string p1, "mAppVersion"

    .line 236
    .line 237
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v2

    .line 241
    :cond_c
    const-string p1, "mAppRetrofit"

    .line 242
    .line 243
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 247
    :catch_1
    move-exception p1

    .line 248
    sget-object p2, Lyd/a;->a:Lyd/a$a;

    .line 249
    .line 250
    const-string v0, "e "

    .line 251
    .line 252
    invoke-static {v0, p1}, Landroid/support/v4/media/a;->e(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    const/4 v0, 0x0

    .line 257
    new-array v0, v0, [Ljava/lang/Object;

    .line 258
    .line 259
    invoke-virtual {p2, p1, v0}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 263
    .line 264
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 265
    .line 266
    invoke-direct {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 270
    .line 271
    .line 272
    :goto_3
    return-object p2
.end method
