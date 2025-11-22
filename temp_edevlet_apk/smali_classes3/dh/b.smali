.class public final Ldh/b;
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
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldh/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mAppMode"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldh/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mAppVersion"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldh/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mLanguage"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d(Lp9/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ldh/b$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ldh/b$a;

    .line 7
    .line 8
    iget v1, v0, Ldh/b$a;->d:I

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
    iput v1, v0, Ldh/b$a;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ldh/b$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Ldh/b$a;-><init>(Ldh/b;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Ldh/b$a;->b:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Ldh/b$a;->d:I

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
    iget-object v2, v0, Ldh/b$a;->a:Ldh/b;

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
    iget-object p1, p0, Ldh/b;->e:Lgf/b;

    .line 64
    .line 65
    if-eqz p1, :cond_12

    .line 66
    .line 67
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_11

    .line 72
    .line 73
    iget-object p1, p0, Ldh/b;->a:Lud/d0;

    .line 74
    .line 75
    if-eqz p1, :cond_10

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
    invoke-virtual {p0}, Ldh/b;->b()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    const-string v9, "android"

    .line 97
    .line 98
    invoke-virtual {p0}, Ldh/b;->c()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    invoke-virtual {p0}, Ldh/b;->a()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    const/4 v12, 0x1

    .line 107
    const/4 v13, 0x0

    .line 108
    invoke-static/range {v6 .. v13}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->provideListOfCar$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

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
    if-eqz p1, :cond_e

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
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;

    .line 152
    .line 153
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

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
    goto/16 :goto_5

    .line 173
    .line 174
    :cond_4
    instance-of v6, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 175
    .line 176
    if-eqz v6, :cond_5

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
    goto/16 :goto_5

    .line 189
    .line 190
    :cond_5
    instance-of v6, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 191
    .line 192
    if-eqz v6, :cond_6

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
    goto/16 :goto_5

    .line 205
    .line 206
    :cond_6
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    .line 207
    .line 208
    if-eqz p1, :cond_9

    .line 209
    .line 210
    iput-object p0, v0, Ldh/b$a;->a:Ldh/b;

    .line 211
    .line 212
    iput v5, v0, Ldh/b$a;->d:I

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
    iput-object v3, v0, Ldh/b$a;->a:Ldh/b;

    .line 225
    .line 226
    iput v4, v0, Ldh/b$a;->d:I

    .line 227
    .line 228
    invoke-virtual {v2, v0}, Ldh/b;->d(Lp9/d;)Ljava/lang/Object;

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
    goto/16 :goto_5

    .line 238
    .line 239
    :cond_9
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 240
    .line 241
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;

    .line 246
    .line 247
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;->getVehicleListData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListData;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    if-eqz p1, :cond_a

    .line 252
    .line 253
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    if-eqz p1, :cond_a

    .line 258
    .line 259
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    :cond_a
    if-eqz v3, :cond_c

    .line 264
    .line 265
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-nez p1, :cond_b

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_b
    const/4 v5, 0x0

    .line 273
    :cond_c
    :goto_4
    if-eqz v5, :cond_d

    .line 274
    .line 275
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 276
    .line 277
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 278
    .line 279
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_d
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 287
    .line 288
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 289
    .line 290
    invoke-direct {v0, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 294
    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_e
    instance-of p1, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 298
    .line 299
    if-eqz p1, :cond_f

    .line 300
    .line 301
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 302
    .line 303
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 304
    .line 305
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 309
    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_f
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 313
    .line 314
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 315
    .line 316
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_10
    const-string p1, "mApiClient"

    .line 324
    .line 325
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw v3

    .line 329
    :cond_11
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 330
    .line 331
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 332
    .line 333
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_12
    const-string p1, "mNetworkHelper"

    .line 341
    .line 342
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 346
    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 347
    .line 348
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 349
    .line 350
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 354
    .line 355
    .line 356
    :goto_5
    return-object p1
.end method

.method public final e(Lp9/d;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;",
            ">;>;)",
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
    instance-of v2, v0, Ldh/b$b;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Ldh/b$b;

    .line 11
    .line 12
    iget v3, v2, Ldh/b$b;->d:I

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
    iput v3, v2, Ldh/b$b;->d:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Ldh/b$b;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Ldh/b$b;-><init>(Ldh/b;Lp9/d;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Ldh/b$b;->b:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lq9/a;->a:Lq9/a;

    .line 32
    .line 33
    iget v4, v2, Ldh/b$b;->d:I

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x2

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    if-eq v4, v5, :cond_2

    .line 41
    .line 42
    if-ne v4, v7, :cond_1

    .line 43
    .line 44
    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .line 46
    .line 47
    goto/16 :goto_12

    .line 48
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
    iget-object v4, v2, Ldh/b$b;->a:Ldh/b;

    .line 58
    .line 59
    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    goto/16 :goto_11

    .line 63
    .line 64
    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :try_start_2
    iget-object v0, v1, Ldh/b;->e:Lgf/b;

    .line 68
    .line 69
    if-eqz v0, :cond_25

    .line 70
    .line 71
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_24

    .line 76
    .line 77
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lio/realm/a;->m()V

    .line 82
    .line 83
    .line 84
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    move-object v4, v0

    .line 95
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 96
    .line 97
    if-eqz v4, :cond_23

    .line 98
    .line 99
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getDriver()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->getId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    move-object v0, v6

    .line 111
    :goto_1
    const/4 v8, 0x0

    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    const/4 v0, 0x1

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    const/4 v0, 0x0

    .line 117
    :goto_2
    iget-object v9, v1, Ldh/b;->a:Lud/d0;

    .line 118
    .line 119
    if-eqz v9, :cond_22

    .line 120
    .line 121
    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 122
    .line 123
    invoke-virtual {v9, v10}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    const-string v10, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    .line 128
    .line 129
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    move-object v11, v9

    .line 133
    check-cast v11, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 134
    .line 135
    const/4 v12, 0x0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v13

    .line 142
    invoke-static {v13}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getDriver()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_6

    .line 150
    .line 151
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->getId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    move-object v14, v0

    .line 156
    goto :goto_3

    .line 157
    :cond_6
    move-object v14, v6

    .line 158
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ldh/b;->b()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v15

    .line 162
    const-string v16, "android"

    .line 163
    .line 164
    invoke-virtual/range {p0 .. p0}, Ldh/b;->c()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v17

    .line 168
    invoke-virtual/range {p0 .. p0}, Ldh/b;->a()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v18

    .line 172
    const/16 v19, 0x1

    .line 173
    .line 174
    const/16 v20, 0x0

    .line 175
    .line 176
    invoke-static/range {v11 .. v20}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->saveDriver$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    goto :goto_4

    .line 181
    :cond_7
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    invoke-static {v13}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    const/4 v14, 0x0

    .line 189
    invoke-virtual/range {p0 .. p0}, Ldh/b;->b()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v15

    .line 193
    const-string v16, "android"

    .line 194
    .line 195
    invoke-virtual/range {p0 .. p0}, Ldh/b;->c()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v17

    .line 199
    invoke-virtual/range {p0 .. p0}, Ldh/b;->a()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v18

    .line 203
    const/16 v19, 0x5

    .line 204
    .line 205
    const/16 v20, 0x0

    .line 206
    .line 207
    const/4 v12, 0x0

    .line 208
    invoke-static/range {v11 .. v20}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->saveDriver$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    .line 209
    .line 210
    .line 211
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 212
    :goto_4
    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    new-instance v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 217
    .line 218
    const-string v10, "response"

    .line 219
    .line 220
    invoke-static {v0, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-direct {v9, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :catch_0
    move-exception v0

    .line 232
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 233
    .line 234
    .line 235
    new-instance v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 236
    .line 237
    invoke-direct {v9, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    :goto_5
    instance-of v0, v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 241
    .line 242
    if-eqz v0, :cond_20

    .line 243
    .line 244
    move-object v0, v9

    .line 245
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 246
    .line 247
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;

    .line 252
    .line 253
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    instance-of v10, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 258
    .line 259
    if-eqz v10, :cond_16

    .line 260
    .line 261
    move-object v0, v9

    .line 262
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 263
    .line 264
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;

    .line 269
    .line 270
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;->getDriverSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveData;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-eqz v0, :cond_8

    .line 275
    .line 276
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveData;->getDrivingSaveObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveObject;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    if-eqz v0, :cond_8

    .line 281
    .line 282
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveObject;->getDriverSaveMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveMap;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    if-eqz v0, :cond_8

    .line 287
    .line 288
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveMap;->getDriverSaveSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveSubData;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    if-eqz v0, :cond_8

    .line 293
    .line 294
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveSubData;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    goto :goto_6

    .line 299
    :cond_8
    move-object v0, v6

    .line 300
    :goto_6
    if-eqz v0, :cond_9

    .line 301
    .line 302
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getId()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    goto :goto_7

    .line 307
    :cond_9
    move-object v2, v6

    .line 308
    :goto_7
    if-eqz v2, :cond_b

    .line 309
    .line 310
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-nez v2, :cond_a

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_a
    const/4 v5, 0x0

    .line 318
    :cond_b
    :goto_8
    if-nez v5, :cond_15

    .line 319
    .line 320
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 325
    .line 326
    invoke-direct {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;-><init>()V

    .line 327
    .line 328
    .line 329
    if-eqz v0, :cond_c

    .line 330
    .line 331
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getId()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    goto :goto_9

    .line 336
    :cond_c
    move-object v5, v6

    .line 337
    :goto_9
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->setId(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    if-eqz v0, :cond_d

    .line 341
    .line 342
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getBirthDate()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    goto :goto_a

    .line 347
    :cond_d
    move-object v5, v6

    .line 348
    :goto_a
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->setBirthDate(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    if-eqz v0, :cond_e

    .line 352
    .line 353
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getCreateDate()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    goto :goto_b

    .line 358
    :cond_e
    move-object v5, v6

    .line 359
    :goto_b
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->setCreatedDate(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    if-eqz v0, :cond_f

    .line 363
    .line 364
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getName()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    goto :goto_c

    .line 369
    :cond_f
    move-object v5, v6

    .line 370
    :goto_c
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->setName(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    if-eqz v0, :cond_10

    .line 374
    .line 375
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getSurname()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    goto :goto_d

    .line 380
    :cond_10
    move-object v5, v6

    .line 381
    :goto_d
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->setSurName(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    if-eqz v0, :cond_11

    .line 385
    .line 386
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getPhoneNumber()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    goto :goto_e

    .line 391
    :cond_11
    move-object v5, v6

    .line 392
    :goto_e
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->setPhoneNumber(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    if-eqz v0, :cond_12

    .line 396
    .line 397
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getIdentityNumber()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    goto :goto_f

    .line 402
    :cond_12
    move-object v5, v6

    .line 403
    :goto_f
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->setIdentityNumber(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    if-eqz v0, :cond_13

    .line 407
    .line 408
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getIdentityType()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    goto :goto_10

    .line 413
    :cond_13
    move-object v5, v6

    .line 414
    :goto_10
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->setIdentityType(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    if-eqz v0, :cond_14

    .line 418
    .line 419
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveInfo;->getUpdateDate()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    :cond_14
    invoke-virtual {v3, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->setUpdatedDate(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2}, Lio/realm/a;->beginTransaction()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v4, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->setDriver(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2, v4}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2}, Lio/realm/a;->c()V

    .line 436
    .line 437
    .line 438
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 439
    .line 440
    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 441
    .line 442
    invoke-virtual {v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_14

    .line 450
    .line 451
    :cond_15
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 452
    .line 453
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 454
    .line 455
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_14

    .line 462
    .line 463
    :cond_16
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 464
    .line 465
    if-eqz v4, :cond_17

    .line 466
    .line 467
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 468
    .line 469
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 470
    .line 471
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 472
    .line 473
    .line 474
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_14

    .line 478
    .line 479
    :cond_17
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 480
    .line 481
    if-eqz v4, :cond_18

    .line 482
    .line 483
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 484
    .line 485
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 486
    .line 487
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 488
    .line 489
    .line 490
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_14

    .line 494
    .line 495
    :cond_18
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    .line 496
    .line 497
    if-eqz v0, :cond_1b

    .line 498
    .line 499
    iput-object v1, v2, Ldh/b$b;->a:Ldh/b;

    .line 500
    .line 501
    iput v5, v2, Ldh/b$b;->d:I

    .line 502
    .line 503
    const-wide/16 v4, 0x5dc

    .line 504
    .line 505
    invoke-static {v4, v5, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    if-ne v0, v3, :cond_19

    .line 510
    .line 511
    return-object v3

    .line 512
    :cond_19
    move-object v4, v1

    .line 513
    :goto_11
    iput-object v6, v2, Ldh/b$b;->a:Ldh/b;

    .line 514
    .line 515
    iput v7, v2, Ldh/b$b;->d:I

    .line 516
    .line 517
    invoke-virtual {v4, v2}, Ldh/b;->e(Lp9/d;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    if-ne v0, v3, :cond_1a

    .line 522
    .line 523
    return-object v3

    .line 524
    :cond_1a
    :goto_12
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 525
    .line 526
    goto/16 :goto_14

    .line 527
    .line 528
    :cond_1b
    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 529
    .line 530
    invoke-virtual {v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;

    .line 535
    .line 536
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;->getDriverSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveData;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    if-eqz v0, :cond_1c

    .line 541
    .line 542
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    if-eqz v0, :cond_1c

    .line 547
    .line 548
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v6

    .line 552
    :cond_1c
    if-eqz v6, :cond_1e

    .line 553
    .line 554
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    if-nez v0, :cond_1d

    .line 559
    .line 560
    goto :goto_13

    .line 561
    :cond_1d
    const/4 v5, 0x0

    .line 562
    :cond_1e
    :goto_13
    if-eqz v5, :cond_1f

    .line 563
    .line 564
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 565
    .line 566
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 567
    .line 568
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 569
    .line 570
    .line 571
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 572
    .line 573
    .line 574
    goto :goto_14

    .line 575
    :cond_1f
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 576
    .line 577
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 578
    .line 579
    invoke-direct {v2, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 583
    .line 584
    .line 585
    goto :goto_14

    .line 586
    :cond_20
    instance-of v0, v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 587
    .line 588
    if-eqz v0, :cond_21

    .line 589
    .line 590
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 591
    .line 592
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 593
    .line 594
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 595
    .line 596
    .line 597
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 598
    .line 599
    .line 600
    goto :goto_14

    .line 601
    :cond_21
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 602
    .line 603
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 604
    .line 605
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 606
    .line 607
    .line 608
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 609
    .line 610
    .line 611
    goto :goto_14

    .line 612
    :cond_22
    const-string v0, "mApiClient"

    .line 613
    .line 614
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    throw v6

    .line 618
    :cond_23
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 619
    .line 620
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 621
    .line 622
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 623
    .line 624
    .line 625
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 626
    .line 627
    .line 628
    goto :goto_14

    .line 629
    :cond_24
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 630
    .line 631
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 632
    .line 633
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 634
    .line 635
    .line 636
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 637
    .line 638
    .line 639
    goto :goto_14

    .line 640
    :cond_25
    const-string v0, "mNetworkHelper"

    .line 641
    .line 642
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 646
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 647
    .line 648
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 649
    .line 650
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 651
    .line 652
    .line 653
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 654
    .line 655
    .line 656
    :goto_14
    return-object v0
.end method

.method public final f(ILp9/d;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Ldh/b$c;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ldh/b$c;

    iget v3, v2, Ldh/b$c;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Ldh/b$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Ldh/b$c;

    invoke-direct {v2, v1, v0}, Ldh/b$c;-><init>(Ldh/b;Lp9/d;)V

    :goto_0
    iget-object v0, v2, Ldh/b$c;->c:Ljava/lang/Object;

    sget-object v3, Lq9/a;->a:Lq9/a;

    iget v4, v2, Ldh/b$c;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v7, :cond_1

    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_13

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v4, v2, Ldh/b$c;->b:I

    iget-object v6, v2, Ldh/b$c;->a:Ldh/b;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_12

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 1
    :try_start_2
    iget-object v0, v1, Ldh/b;->e:Lgf/b;

    if-eqz v0, :cond_25

    .line 2
    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->m()V

    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {v0, v4}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    if-eqz v4, :cond_23

    .line 4
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v5

    :goto_1
    const/4 v8, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 5
    :goto_2
    iget-object v9, v1, Ldh/b;->a:Lud/d0;

    if-eqz v9, :cond_22

    .line 6
    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v9, v10}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v9

    check-cast v11, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    const/4 v12, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_3

    :cond_6
    move-object v14, v5

    :goto_3
    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Ldh/b;->b()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android"

    invoke-virtual/range {p0 .. p0}, Ldh/b;->c()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Ldh/b;->a()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x11

    const/16 v22, 0x0

    move/from16 v15, p1

    invoke-static/range {v11 .. v22}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->saveVehicle$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object v0

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Ldh/b;->b()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android"

    invoke-virtual/range {p0 .. p0}, Ldh/b;->c()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Ldh/b;->a()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x15

    const/16 v22, 0x0

    const/4 v12, 0x0

    move/from16 v15, p1

    invoke-static/range {v11 .. v22}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->saveVehicle$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v10, "response"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v9, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v9, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    instance-of v0, v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_20

    move-object v0, v9

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v10, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v10, :cond_16

    move-object v0, v9

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;->getVehicleSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveData;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveData;->getVehicleSaveObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveObject;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveObject;->getVehicleSaveMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveMap;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveMap;->getVehicleSaveSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveSubData;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveSubData;->getVehicleSaveInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveInfo;

    move-result-object v0

    goto :goto_6

    :cond_8
    move-object v0, v5

    :goto_6
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_9
    move-object v2, v5

    :goto_7
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v2, 0x1

    :goto_9
    if-nez v2, :cond_15

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v2

    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    invoke-direct {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;-><init>()V

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveInfo;->getId()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_c
    move-object v7, v5

    :goto_a
    invoke-virtual {v3, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setId(Ljava/lang/String;)V

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveInfo;->getPlateNumber()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_d
    move-object v7, v5

    :goto_b
    invoke-virtual {v3, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setPlateNumber(Ljava/lang/String;)V

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveInfo;->getPlateCityCode()Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    :cond_e
    move-object v7, v5

    :goto_c
    invoke-virtual {v3, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setPlateCityCode(Ljava/lang/String;)V

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    :cond_f
    move-object v7, v5

    :goto_d
    invoke-virtual {v3, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setUpdatedDate(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setDocumentSerialCode(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setDocumentSerialNumber(Ljava/lang/String;)V

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveInfo;->getOwnerDifferentFromDriver()Z

    move-result v7

    if-ne v7, v6, :cond_10

    goto :goto_e

    :cond_10
    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v3, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setOwnerDifferentFromDriver(Z)V

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveInfo;->getOwnerIdentityNumber()Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    :cond_11
    move-object v6, v5

    :goto_f
    invoke-virtual {v3, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setOwnerIdentityNumber(Ljava/lang/String;)V

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    :cond_12
    move-object v6, v5

    :goto_10
    invoke-virtual {v3, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setUpdatedDate(Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/realm/a;->beginTransaction()V

    new-instance v6, Lio/realm/q0;

    invoke-direct {v6}, Lio/realm/q0;-><init>()V

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveInfo;->getPolicies()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Policies;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Policies;->getPolicyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v10, v8, 0x1

    if-ltz v8, :cond_13

    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyArray;

    new-instance v11, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    invoke-direct {v11}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->setId(Ljava/lang/String;)V

    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyArray;->getPolicyInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyInfo;

    move-result-object v8

    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyInfo;->getCompanyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->setCompanyName(Ljava/lang/String;)V

    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyArray;->getPolicyInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyInfo;

    move-result-object v8

    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyInfo;->getStartDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->setStartDate(Ljava/lang/String;)V

    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyArray;->getPolicyInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyInfo;

    move-result-object v8

    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyInfo;->getEndDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->setEndDate(Ljava/lang/String;)V

    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyArray;->getPolicyInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyInfo;

    move-result-object v7

    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyInfo;->getProductCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->setProductCode(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    move v8, v10

    goto :goto_11

    :cond_13
    invoke-static {}, Lb8/f;->k0()V

    throw v5

    :catch_1
    move-exception v0

    goto/16 :goto_15

    :cond_14
    invoke-virtual {v3, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setPolicies(Lio/realm/q0;)V

    invoke-virtual {v4, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->setVehicle(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;)V

    invoke-virtual {v2, v4}, Lio/realm/g0;->B(Lio/realm/s0;)V

    invoke-virtual {v2}, Lio/realm/a;->c()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_15
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    :cond_16
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v4, :cond_17

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    :cond_17
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v4, :cond_18

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    :cond_18
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_1b

    iput-object v1, v2, Ldh/b$c;->a:Ldh/b;

    move/from16 v4, p1

    iput v4, v2, Ldh/b$c;->b:I

    iput v6, v2, Ldh/b$c;->e:I

    const-wide/16 v8, 0x5dc

    invoke-static {v8, v9, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_19

    return-object v3

    :cond_19
    move-object v6, v1

    :goto_12
    iput-object v5, v2, Ldh/b$c;->a:Ldh/b;

    iput v7, v2, Ldh/b$c;->e:I

    invoke-virtual {v6, v4, v2}, Ldh/b;->f(ILp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1a

    return-object v3

    :cond_1a
    :goto_13
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto/16 :goto_16

    :cond_1b
    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;->getVehicleSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveData;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    move-result-object v5

    :cond_1c
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_14

    :cond_1d
    const/4 v6, 0x0

    :cond_1e
    :goto_14
    if-eqz v6, :cond_1f

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_1f
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v2, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_20
    instance-of v0, v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_21

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_21
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_22
    const-string v0, "mApiClient"

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v5

    .line 8
    :cond_23
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_24
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_25
    const-string v0, "mNetworkHelper"

    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 10
    :goto_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_16
    return-object v0
.end method
