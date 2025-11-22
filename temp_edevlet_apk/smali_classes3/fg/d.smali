.class public final Lfg/d;
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


# virtual methods
.method public final a(Lp9/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfg/d$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lfg/d$a;

    .line 7
    .line 8
    iget v1, v0, Lfg/d$a;->c:I

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
    iput v1, v0, Lfg/d$a;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lfg/d$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lfg/d$a;-><init>(Lfg/d;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lfg/d$a;->a:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lfg/d$a;->c:I

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
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
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
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_2
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    iget-object p1, p0, Lfg/d;->e:Lgf/b;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz p1, :cond_d

    .line 56
    .line 57
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_c

    .line 62
    .line 63
    iget-object p1, p0, Lfg/d;->a:Lud/d0;

    .line 64
    .line 65
    if-eqz p1, :cond_b

    .line 66
    .line 67
    const-class v4, Lhg/a;

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v4, "mApiClient.create(ProfileServiceAPI::class.java)"

    .line 74
    .line 75
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object v5, p1

    .line 79
    check-cast v5, Lhg/a;

    .line 80
    .line 81
    const-string v6, "info"

    .line 82
    .line 83
    iget-object v7, p0, Lfg/d;->b:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v7, :cond_a

    .line 86
    .line 87
    const-string v8, "android"

    .line 88
    .line 89
    iget-object v9, p0, Lfg/d;->d:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v9, :cond_9

    .line 92
    .line 93
    iget-object v10, p0, Lfg/d;->c:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v10, :cond_8

    .line 96
    .line 97
    invoke-interface/range {v5 .. v10}, Lhg/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 98
    .line 99
    .line 100
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :try_start_2
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 106
    .line 107
    const-string v5, "response"

    .line 108
    .line 109
    invoke-static {p1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {v4, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catch_0
    move-exception p1

    .line 121
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    .line 123
    .line 124
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 125
    .line 126
    invoke-direct {v4, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    :goto_1
    instance-of p1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    move-object p1, v4

    .line 134
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 135
    .line 136
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;

    .line 141
    .line 142
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    instance-of v5, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 147
    .line 148
    if-eqz v5, :cond_4

    .line 149
    .line 150
    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 151
    .line 152
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 153
    .line 154
    new-instance v5, Lfg/d$b;

    .line 155
    .line 156
    invoke-direct {v5, v4, v2}, Lfg/d$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;Lp9/d;)V

    .line 157
    .line 158
    .line 159
    iput v3, v0, Lfg/d$a;->c:I

    .line 160
    .line 161
    invoke-static {p1, v5, v0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-ne p1, v1, :cond_3

    .line 166
    .line 167
    return-object v1

    .line 168
    :cond_3
    :goto_2
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 172
    .line 173
    if-eqz p1, :cond_5

    .line 174
    .line 175
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 176
    .line 177
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 178
    .line 179
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 187
    .line 188
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 189
    .line 190
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_6
    instance-of p1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 198
    .line 199
    if-eqz p1, :cond_7

    .line 200
    .line 201
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 202
    .line 203
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 204
    .line 205
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_7
    new-instance p1, Lj7/p;

    .line 213
    .line 214
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 215
    .line 216
    .line 217
    throw p1

    .line 218
    :cond_8
    const-string p1, "mAppMode"

    .line 219
    .line 220
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v2

    .line 224
    :cond_9
    const-string p1, "mLanguage"

    .line 225
    .line 226
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v2

    .line 230
    :cond_a
    const-string p1, "mAppVersion"

    .line 231
    .line 232
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v2

    .line 236
    :cond_b
    const-string p1, "mApiClient"

    .line 237
    .line 238
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw v2

    .line 242
    :cond_c
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 243
    .line 244
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 245
    .line 246
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_d
    const-string p1, "mNetworkHelper"

    .line 254
    .line 255
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 259
    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 260
    .line 261
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 262
    .line 263
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 267
    .line 268
    .line 269
    :goto_3
    return-object p1
.end method

.method public final b(Lp9/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfg/d$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lfg/d$c;

    .line 7
    .line 8
    iget v1, v0, Lfg/d$c;->c:I

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
    iput v1, v0, Lfg/d$c;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lfg/d$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lfg/d$c;-><init>(Lfg/d;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lfg/d$c;->a:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lfg/d$c;->c:I

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
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
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
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_2
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    iget-object p1, p0, Lfg/d;->e:Lgf/b;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz p1, :cond_d

    .line 56
    .line 57
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_c

    .line 62
    .line 63
    iget-object p1, p0, Lfg/d;->a:Lud/d0;

    .line 64
    .line 65
    if-eqz p1, :cond_b

    .line 66
    .line 67
    const-class v4, Lhg/a;

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v4, "mApiClient.create(ProfileServiceAPI::class.java)"

    .line 74
    .line 75
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    check-cast p1, Lhg/a;

    .line 79
    .line 80
    iget-object v4, p0, Lfg/d;->b:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v4, :cond_a

    .line 83
    .line 84
    const-string v5, "android"

    .line 85
    .line 86
    iget-object v6, p0, Lfg/d;->d:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v6, :cond_9

    .line 89
    .line 90
    iget-object v7, p0, Lfg/d;->c:Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v7, :cond_8

    .line 93
    .line 94
    invoke-interface {p1, v4, v5, v6, v7}, Lhg/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 95
    .line 96
    .line 97
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :try_start_2
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 103
    .line 104
    const-string v5, "response"

    .line 105
    .line 106
    invoke-static {p1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {v4, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catch_0
    move-exception p1

    .line 118
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 122
    .line 123
    invoke-direct {v4, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    :goto_1
    instance-of p1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 127
    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    move-object p1, v4

    .line 131
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 132
    .line 133
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;

    .line 138
    .line 139
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    instance-of v5, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 144
    .line 145
    if-eqz v5, :cond_4

    .line 146
    .line 147
    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 148
    .line 149
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 150
    .line 151
    new-instance v5, Lfg/d$d;

    .line 152
    .line 153
    invoke-direct {v5, v4, v2}, Lfg/d$d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;Lp9/d;)V

    .line 154
    .line 155
    .line 156
    iput v3, v0, Lfg/d$c;->c:I

    .line 157
    .line 158
    invoke-static {p1, v5, v0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    if-ne p1, v1, :cond_3

    .line 163
    .line 164
    return-object v1

    .line 165
    :cond_3
    :goto_2
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_4
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 169
    .line 170
    if-eqz p1, :cond_5

    .line 171
    .line 172
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 173
    .line 174
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 175
    .line 176
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_5
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 184
    .line 185
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 186
    .line 187
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_6
    instance-of p1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 195
    .line 196
    if-eqz p1, :cond_7

    .line 197
    .line 198
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 199
    .line 200
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 201
    .line 202
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_7
    new-instance p1, Lj7/p;

    .line 210
    .line 211
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 212
    .line 213
    .line 214
    throw p1

    .line 215
    :cond_8
    const-string p1, "mAppMode"

    .line 216
    .line 217
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v2

    .line 221
    :cond_9
    const-string p1, "mLanguage"

    .line 222
    .line 223
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v2

    .line 227
    :cond_a
    const-string p1, "mAppVersion"

    .line 228
    .line 229
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v2

    .line 233
    :cond_b
    const-string p1, "mApiClient"

    .line 234
    .line 235
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v2

    .line 239
    :cond_c
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 240
    .line 241
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 242
    .line 243
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_d
    const-string p1, "mNetworkHelper"

    .line 251
    .line 252
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 256
    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 257
    .line 258
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 259
    .line 260
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    :goto_3
    return-object p1
.end method

.method public final c(Lp9/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfg/d$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lfg/d$e;

    .line 7
    .line 8
    iget v1, v0, Lfg/d$e;->c:I

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
    iput v1, v0, Lfg/d$e;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lfg/d$e;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lfg/d$e;-><init>(Lfg/d;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lfg/d$e;->a:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lfg/d$e;->c:I

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
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
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
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_2
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    iget-object p1, p0, Lfg/d;->e:Lgf/b;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz p1, :cond_d

    .line 56
    .line 57
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_c

    .line 62
    .line 63
    iget-object p1, p0, Lfg/d;->a:Lud/d0;

    .line 64
    .line 65
    if-eqz p1, :cond_b

    .line 66
    .line 67
    const-class v4, Lhg/a;

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v4, "mApiClient.create(ProfileServiceAPI::class.java)"

    .line 74
    .line 75
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object v5, p1

    .line 79
    check-cast v5, Lhg/a;

    .line 80
    .line 81
    const-string v6, "info"

    .line 82
    .line 83
    iget-object v7, p0, Lfg/d;->b:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v7, :cond_a

    .line 86
    .line 87
    const-string v8, "android"

    .line 88
    .line 89
    iget-object v9, p0, Lfg/d;->d:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v9, :cond_9

    .line 92
    .line 93
    iget-object v10, p0, Lfg/d;->c:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v10, :cond_8

    .line 96
    .line 97
    invoke-interface/range {v5 .. v10}, Lhg/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 98
    .line 99
    .line 100
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :try_start_2
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 106
    .line 107
    const-string v5, "response"

    .line 108
    .line 109
    invoke-static {p1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {v4, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catch_0
    move-exception p1

    .line 121
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    .line 123
    .line 124
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 125
    .line 126
    invoke-direct {v4, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    :goto_1
    instance-of p1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    move-object p1, v4

    .line 134
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 135
    .line 136
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;

    .line 141
    .line 142
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    instance-of v5, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 147
    .line 148
    if-eqz v5, :cond_4

    .line 149
    .line 150
    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 151
    .line 152
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 153
    .line 154
    new-instance v5, Lfg/d$f;

    .line 155
    .line 156
    invoke-direct {v5, v4, v2}, Lfg/d$f;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;Lp9/d;)V

    .line 157
    .line 158
    .line 159
    iput v3, v0, Lfg/d$e;->c:I

    .line 160
    .line 161
    invoke-static {p1, v5, v0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-ne p1, v1, :cond_3

    .line 166
    .line 167
    return-object v1

    .line 168
    :cond_3
    :goto_2
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 172
    .line 173
    if-eqz p1, :cond_5

    .line 174
    .line 175
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 176
    .line 177
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 178
    .line 179
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 187
    .line 188
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 189
    .line 190
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_6
    instance-of p1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 198
    .line 199
    if-eqz p1, :cond_7

    .line 200
    .line 201
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 202
    .line 203
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 204
    .line 205
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_7
    new-instance p1, Lj7/p;

    .line 213
    .line 214
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 215
    .line 216
    .line 217
    throw p1

    .line 218
    :cond_8
    const-string p1, "mAppMode"

    .line 219
    .line 220
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v2

    .line 224
    :cond_9
    const-string p1, "mLanguage"

    .line 225
    .line 226
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v2

    .line 230
    :cond_a
    const-string p1, "mAppVersion"

    .line 231
    .line 232
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v2

    .line 236
    :cond_b
    const-string p1, "mApiClient"

    .line 237
    .line 238
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw v2

    .line 242
    :cond_c
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 243
    .line 244
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 245
    .line 246
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_d
    const-string p1, "mNetworkHelper"

    .line 254
    .line 255
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 259
    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 260
    .line 261
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 262
    .line 263
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 267
    .line 268
    .line 269
    :goto_3
    return-object p1
.end method
