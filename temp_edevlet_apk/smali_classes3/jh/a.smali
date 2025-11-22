.class public final Ljh/a;
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverLicenceModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljh/a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ljh/a$a;

    .line 7
    .line 8
    iget v1, v0, Ljh/a$a;->d:I

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
    iput v1, v0, Ljh/a$a;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljh/a$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Ljh/a$a;-><init>(Ljh/a;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Ljh/a$a;->b:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Ljh/a$a;->d:I

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
    iget-object v2, v0, Ljh/a$a;->a:Ljh/a;

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
    iget-object p1, p0, Ljh/a;->e:Lgf/b;

    .line 64
    .line 65
    if-eqz p1, :cond_15

    .line 66
    .line 67
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_14

    .line 72
    .line 73
    iget-object p1, p0, Ljh/a;->a:Lud/d0;

    .line 74
    .line 75
    if-eqz p1, :cond_13

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
    iget-object v8, p0, Ljh/a;->b:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v8, :cond_12

    .line 95
    .line 96
    const-string v9, "android"

    .line 97
    .line 98
    iget-object v10, p0, Ljh/a;->d:Ljava/lang/String;

    .line 99
    .line 100
    if-eqz v10, :cond_11

    .line 101
    .line 102
    iget-object v11, p0, Ljh/a;->c:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v11, :cond_10

    .line 105
    .line 106
    const/4 v12, 0x1

    .line 107
    const/4 v13, 0x0

    .line 108
    invoke-static/range {v6 .. v13}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->provideDriverLicence$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

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
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverLicenceModel;

    .line 152
    .line 153
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverLicenceModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

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
    iput-object p0, v0, Ljh/a$a;->a:Ljh/a;

    .line 211
    .line 212
    iput v5, v0, Ljh/a$a;->d:I

    .line 213
    .line 214
    const-wide/16 v5, 0x7d0

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
    iput-object v3, v0, Ljh/a$a;->a:Ljh/a;

    .line 225
    .line 226
    iput v4, v0, Ljh/a$a;->d:I

    .line 227
    .line 228
    invoke-virtual {v2, v0}, Ljh/a;->a(Lp9/d;)Ljava/lang/Object;

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
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverLicenceModel;

    .line 246
    .line 247
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverLicenceModel;->getDrivingLicenceData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceData;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    if-eqz p1, :cond_a

    .line 252
    .line 253
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

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
    new-instance p1, Lj7/p;

    .line 313
    .line 314
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 315
    .line 316
    .line 317
    throw p1

    .line 318
    :cond_10
    const-string p1, "mAppMode"

    .line 319
    .line 320
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v3

    .line 324
    :cond_11
    const-string p1, "mLanguage"

    .line 325
    .line 326
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v3

    .line 330
    :cond_12
    const-string p1, "mAppVersion"

    .line 331
    .line 332
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw v3

    .line 336
    :cond_13
    const-string p1, "mApiClient"

    .line 337
    .line 338
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v3

    .line 342
    :cond_14
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 343
    .line 344
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 345
    .line 346
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_15
    const-string p1, "mNetworkHelper"

    .line 354
    .line 355
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 359
    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 360
    .line 361
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 362
    .line 363
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 367
    .line 368
    .line 369
    :goto_5
    return-object p1
.end method
