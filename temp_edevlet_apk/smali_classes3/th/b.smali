.class public final Lth/b;
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
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lth/b$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lth/b$a;

    .line 7
    .line 8
    iget v1, v0, Lth/b$a;->d:I

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
    iput v1, v0, Lth/b$a;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lth/b$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lth/b$a;-><init>(Lth/b;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lth/b$a;->b:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lth/b$a;->d:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v5, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    :try_start_0
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object v2, v0, Lth/b$a;->a:Lth/b;

    .line 54
    .line 55
    :try_start_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :try_start_2
    iget-object p1, p0, Lth/b;->e:Lgf/b;

    .line 64
    .line 65
    if-eqz p1, :cond_11

    .line 66
    .line 67
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_10

    .line 72
    .line 73
    iget-object p1, p0, Lth/b;->a:Lud/d0;

    .line 74
    .line 75
    if-eqz p1, :cond_f

    .line 76
    .line 77
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v2, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    .line 84
    .line 85
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    move-object v6, p1

    .line 89
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    iget-object v8, p0, Lth/b;->b:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v8, :cond_e

    .line 95
    .line 96
    const-string v9, "android"

    .line 97
    .line 98
    iget-object v10, p0, Lth/b;->d:Ljava/lang/String;

    .line 99
    .line 100
    if-eqz v10, :cond_d

    .line 101
    .line 102
    iget-object v11, p0, Lth/b;->c:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v11, :cond_c

    .line 105
    .line 106
    const/4 v12, 0x1

    .line 107
    const/4 v13, 0x0

    .line 108
    invoke-static/range {v6 .. v13}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->checkClarificationText$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    .line 109
    .line 110
    .line 111
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 112
    :try_start_3
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 117
    .line 118
    const-string v6, "response"

    .line 119
    .line 120
    invoke-static {p1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {v2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catch_0
    move-exception p1

    .line 132
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 136
    .line 137
    invoke-direct {v2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :goto_1
    instance-of p1, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 141
    .line 142
    if-eqz p1, :cond_a

    .line 143
    .line 144
    move-object p1, v2

    .line 145
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 146
    .line 147
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    .line 152
    .line 153
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    instance-of v6, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 158
    .line 159
    if-eqz v6, :cond_4

    .line 160
    .line 161
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 162
    .line 163
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 164
    .line 165
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_4

    .line 173
    .line 174
    :cond_4
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 175
    .line 176
    if-eqz v2, :cond_5

    .line 177
    .line 178
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 179
    .line 180
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 181
    .line 182
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_4

    .line 189
    .line 190
    :cond_5
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 191
    .line 192
    if-eqz v2, :cond_6

    .line 193
    .line 194
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 195
    .line 196
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 197
    .line 198
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_4

    .line 205
    .line 206
    :cond_6
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    .line 207
    .line 208
    if-eqz p1, :cond_9

    .line 209
    .line 210
    iput-object p0, v0, Lth/b$a;->a:Lth/b;

    .line 211
    .line 212
    iput v5, v0, Lth/b$a;->d:I

    .line 213
    .line 214
    const-wide/16 v5, 0x5dc

    .line 215
    .line 216
    invoke-static {v5, v6, v0}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    if-ne p1, v1, :cond_7

    .line 221
    .line 222
    return-object v1

    .line 223
    :cond_7
    move-object v2, p0

    .line 224
    :goto_2
    iput-object v3, v0, Lth/b$a;->a:Lth/b;

    .line 225
    .line 226
    iput v4, v0, Lth/b$a;->d:I

    .line 227
    .line 228
    invoke-virtual {v2, v0}, Lth/b;->a(Lp9/d;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    if-ne p1, v1, :cond_8

    .line 233
    .line 234
    return-object v1

    .line 235
    :cond_8
    :goto_3
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_9
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 239
    .line 240
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 241
    .line 242
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_a
    instance-of p1, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 250
    .line 251
    if-eqz p1, :cond_b

    .line 252
    .line 253
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 254
    .line 255
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 256
    .line 257
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_b
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 265
    .line 266
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 267
    .line 268
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_c
    const-string p1, "mAppMode"

    .line 276
    .line 277
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v3

    .line 281
    :cond_d
    const-string p1, "mLanguage"

    .line 282
    .line 283
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw v3

    .line 287
    :cond_e
    const-string p1, "mAppVersion"

    .line 288
    .line 289
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw v3

    .line 293
    :cond_f
    const-string p1, "mApiClient"

    .line 294
    .line 295
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw v3

    .line 299
    :cond_10
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 300
    .line 301
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 302
    .line 303
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_11
    const-string p1, "mNetworkHelper"

    .line 311
    .line 312
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 316
    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 317
    .line 318
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 319
    .line 320
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 324
    .line 325
    .line 326
    :goto_4
    return-object p1
.end method

.method public final b()Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lth/b;->e:Lgf/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_f

    .line 5
    .line 6
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_e

    .line 11
    .line 12
    iget-object v0, p0, Lth/b;->a:Lud/d0;

    .line 13
    .line 14
    if-eqz v0, :cond_d

    .line 15
    .line 16
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    .line 23
    .line 24
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v3, v0

    .line 28
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    iget-object v5, p0, Lth/b;->b:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v5, :cond_c

    .line 34
    .line 35
    const-string v6, "android"

    .line 36
    .line 37
    iget-object v7, p0, Lth/b;->d:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v7, :cond_b

    .line 40
    .line 41
    iget-object v8, p0, Lth/b;->c:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v8, :cond_a

    .line 44
    .line 45
    const/4 v9, 0x1

    .line 46
    const/4 v10, 0x0

    .line 47
    invoke-static/range {v3 .. v10}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->checkLoginLevel$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    :try_start_1
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 56
    .line 57
    const-string v3, "response"

    .line 58
    .line 59
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 75
    .line 76
    invoke-direct {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    instance-of v0, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    move-object v0, v2

    .line 84
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 85
    .line 86
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;

    .line 91
    .line 92
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    instance-of v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 97
    .line 98
    if-eqz v3, :cond_0

    .line 99
    .line 100
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 101
    .line 102
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 103
    .line 104
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :cond_0
    instance-of v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 114
    .line 115
    if-eqz v3, :cond_1

    .line 116
    .line 117
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 118
    .line 119
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 120
    .line 121
    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :cond_1
    instance-of v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 130
    .line 131
    if-eqz v3, :cond_2

    .line 132
    .line 133
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 134
    .line 135
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 136
    .line 137
    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_3

    .line 144
    .line 145
    :cond_2
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    .line 146
    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    invoke-virtual {p0}, Lth/b;->b()Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    goto/16 :goto_3

    .line 154
    .line 155
    :cond_3
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 156
    .line 157
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;

    .line 162
    .line 163
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;->getTwoFactorData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    if-eqz v0, :cond_4

    .line 168
    .line 169
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-eqz v0, :cond_4

    .line 174
    .line 175
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    :cond_4
    if-eqz v1, :cond_6

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_5

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_5
    const/4 v0, 0x0

    .line 189
    goto :goto_2

    .line 190
    :cond_6
    :goto_1
    const/4 v0, 0x1

    .line 191
    :goto_2
    if-eqz v0, :cond_7

    .line 192
    .line 193
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 194
    .line 195
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 196
    .line 197
    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_7
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 205
    .line 206
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 207
    .line 208
    invoke-direct {v2, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_8
    instance-of v0, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 216
    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 220
    .line 221
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 222
    .line 223
    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_9
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 231
    .line 232
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 233
    .line 234
    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_a
    const-string v0, "mAppMode"

    .line 242
    .line 243
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v1

    .line 247
    :cond_b
    const-string v0, "mLanguage"

    .line 248
    .line 249
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v1

    .line 253
    :cond_c
    const-string v0, "mAppVersion"

    .line 254
    .line 255
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v1

    .line 259
    :cond_d
    const-string v0, "mApiClient"

    .line 260
    .line 261
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v1

    .line 265
    :cond_e
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 266
    .line 267
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 268
    .line 269
    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_f
    const-string v0, "mNetworkHelper"

    .line 277
    .line 278
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 282
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 283
    .line 284
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 285
    .line 286
    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    :goto_3
    return-object v0
.end method
