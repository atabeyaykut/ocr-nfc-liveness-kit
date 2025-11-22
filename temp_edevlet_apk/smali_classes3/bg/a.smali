.class public final Lbg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lud/d0;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


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
    instance-of v0, p2, Lbg/a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lbg/a$a;

    .line 7
    .line 8
    iget v1, v0, Lbg/a$a;->c:I

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
    iput v1, v0, Lbg/a$a;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lbg/a$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lbg/a$a;-><init>(Lbg/a;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lbg/a$a;->a:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lbg/a$a;->c:I

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
    iget-object p2, p0, Lbg/a;->a:Lud/d0;

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
    iget-object v8, p0, Lbg/a;->b:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v8, :cond_b

    .line 76
    .line 77
    const-string v9, "android"

    .line 78
    .line 79
    iget-object v10, p0, Lbg/a;->d:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v10, :cond_a

    .line 82
    .line 83
    iget-object v11, p0, Lbg/a;->c:Ljava/lang/String;

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
    new-instance v4, Lbg/a$b;

    .line 145
    .line 146
    invoke-direct {v4, p1, v2}, Lbg/a$b;-><init>(ILp9/d;)V

    .line 147
    .line 148
    .line 149
    iput v3, v0, Lbg/a$a;->c:I

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

.method public final b(ILp9/d;)Ljava/lang/Object;
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
    instance-of v0, p2, Lbg/a$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lbg/a$c;

    .line 7
    .line 8
    iget v1, v0, Lbg/a$c;->c:I

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
    iput v1, v0, Lbg/a$c;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lbg/a$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lbg/a$c;-><init>(Lbg/a;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lbg/a$c;->a:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lbg/a$c;->c:I

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
    iget-object p2, p0, Lbg/a;->a:Lud/d0;

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
    iget-object v8, p0, Lbg/a;->b:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v8, :cond_b

    .line 76
    .line 77
    const-string v9, "android"

    .line 78
    .line 79
    iget-object v10, p0, Lbg/a;->d:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v10, :cond_a

    .line 82
    .line 83
    iget-object v11, p0, Lbg/a;->c:Ljava/lang/String;

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
    new-instance v4, Lbg/a$d;

    .line 145
    .line 146
    invoke-direct {v4, p1, v2}, Lbg/a$d;-><init>(ILp9/d;)V

    .line 147
    .line 148
    .line 149
    iput v3, v0, Lbg/a$c;->c:I

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
