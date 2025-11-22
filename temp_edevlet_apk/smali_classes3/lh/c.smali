.class public final Llh/c;
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
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;",
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
    instance-of v2, v0, Llh/c$a;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Llh/c$a;

    .line 11
    .line 12
    iget v3, v2, Llh/c$a;->d:I

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
    iput v3, v2, Llh/c$a;->d:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Llh/c$a;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Llh/c$a;-><init>(Llh/c;Lp9/d;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Llh/c$a;->b:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lq9/a;->a:Lq9/a;

    .line 32
    .line 33
    iget v4, v2, Llh/c$a;->d:I

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    if-eq v4, v7, :cond_2

    .line 41
    .line 42
    if-ne v4, v6, :cond_1

    .line 43
    .line 44
    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .line 46
    .line 47
    goto/16 :goto_3

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
    iget-object v4, v2, Llh/c$a;->a:Llh/c;

    .line 58
    .line 59
    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :try_start_2
    iget-object v0, v1, Llh/c;->e:Lgf/b;

    .line 68
    .line 69
    if-eqz v0, :cond_12

    .line 70
    .line 71
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_11

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 95
    .line 96
    if-eqz v0, :cond_10

    .line 97
    .line 98
    iget-object v4, v1, Llh/c;->a:Lud/d0;

    .line 99
    .line 100
    if-eqz v4, :cond_f

    .line 101
    .line 102
    const-class v8, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 103
    .line 104
    invoke-virtual {v4, v8}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const-string v8, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    .line 109
    .line 110
    invoke-static {v4, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    move-object v9, v4

    .line 114
    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 115
    .line 116
    const/4 v10, 0x0

    .line 117
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    invoke-static {v11}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v12, v1, Llh/c;->b:Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v12, :cond_e

    .line 127
    .line 128
    const-string v13, "android"

    .line 129
    .line 130
    iget-object v14, v1, Llh/c;->d:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v14, :cond_d

    .line 133
    .line 134
    iget-object v15, v1, Llh/c;->c:Ljava/lang/String;

    .line 135
    .line 136
    if-eqz v15, :cond_c

    .line 137
    .line 138
    const/16 v16, 0x1

    .line 139
    .line 140
    const/16 v17, 0x0

    .line 141
    .line 142
    invoke-static/range {v9 .. v17}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->checkQR$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    .line 143
    .line 144
    .line 145
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 151
    .line 152
    const-string v8, "response"

    .line 153
    .line 154
    invoke-static {v0, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 170
    .line 171
    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    :goto_1
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 175
    .line 176
    if-eqz v0, :cond_a

    .line 177
    .line 178
    move-object v0, v4

    .line 179
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 180
    .line 181
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

    .line 186
    .line 187
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 192
    .line 193
    if-eqz v8, :cond_4

    .line 194
    .line 195
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 196
    .line 197
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 198
    .line 199
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_5

    .line 207
    .line 208
    :cond_4
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 209
    .line 210
    if-eqz v4, :cond_5

    .line 211
    .line 212
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 213
    .line 214
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 215
    .line 216
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_5

    .line 223
    .line 224
    :cond_5
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 225
    .line 226
    if-eqz v4, :cond_6

    .line 227
    .line 228
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 229
    .line 230
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 231
    .line 232
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_5

    .line 239
    .line 240
    :cond_6
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    .line 241
    .line 242
    if-eqz v0, :cond_9

    .line 243
    .line 244
    iput-object v1, v2, Llh/c$a;->a:Llh/c;

    .line 245
    .line 246
    iput v7, v2, Llh/c$a;->d:I

    .line 247
    .line 248
    const-wide/16 v7, 0x7d0

    .line 249
    .line 250
    invoke-static {v7, v8, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-ne v0, v3, :cond_7

    .line 255
    .line 256
    return-object v3

    .line 257
    :cond_7
    move-object v4, v1

    .line 258
    :goto_2
    iput-object v5, v2, Llh/c$a;->a:Llh/c;

    .line 259
    .line 260
    iput v6, v2, Llh/c$a;->d:I

    .line 261
    .line 262
    invoke-virtual {v4, v2}, Llh/c;->a(Lp9/d;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-ne v0, v3, :cond_8

    .line 267
    .line 268
    return-object v3

    .line 269
    :cond_8
    :goto_3
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :catch_1
    move-exception v0

    .line 273
    goto :goto_4

    .line 274
    :cond_9
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 275
    .line 276
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 277
    .line 278
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_a
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 286
    .line 287
    if-eqz v0, :cond_b

    .line 288
    .line 289
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 290
    .line 291
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 292
    .line 293
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 297
    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_b
    new-instance v0, Lj7/p;

    .line 301
    .line 302
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 303
    .line 304
    .line 305
    throw v0

    .line 306
    :cond_c
    const-string v0, "mAppMode"

    .line 307
    .line 308
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v5

    .line 312
    :cond_d
    const-string v0, "mLanguage"

    .line 313
    .line 314
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw v5

    .line 318
    :cond_e
    const-string v0, "mAppVersion"

    .line 319
    .line 320
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v5

    .line 324
    :cond_f
    const-string v0, "mApiClient"

    .line 325
    .line 326
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v5

    .line 330
    :cond_10
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 331
    .line 332
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 333
    .line 334
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 338
    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_11
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 342
    .line 343
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 344
    .line 345
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 349
    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_12
    const-string v0, "mNetworkHelper"

    .line 353
    .line 354
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 358
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 359
    .line 360
    .line 361
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 362
    .line 363
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 364
    .line 365
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 369
    .line 370
    .line 371
    :goto_5
    return-object v0
.end method

.method public final b(Lp9/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;",
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
    instance-of v2, v0, Llh/c$b;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Llh/c$b;

    .line 11
    .line 12
    iget v3, v2, Llh/c$b;->d:I

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
    iput v3, v2, Llh/c$b;->d:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Llh/c$b;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Llh/c$b;-><init>(Llh/c;Lp9/d;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Llh/c$b;->b:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lq9/a;->a:Lq9/a;

    .line 32
    .line 33
    iget v4, v2, Llh/c$b;->d:I

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    if-eq v4, v7, :cond_2

    .line 41
    .line 42
    if-ne v4, v6, :cond_1

    .line 43
    .line 44
    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .line 46
    .line 47
    goto/16 :goto_4

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
    iget-object v4, v2, Llh/c$b;->a:Llh/c;

    .line 58
    .line 59
    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :try_start_2
    iget-object v0, v1, Llh/c;->e:Lgf/b;

    .line 68
    .line 69
    if-eqz v0, :cond_17

    .line 70
    .line 71
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_16

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    move-object v4, v5

    .line 104
    :goto_1
    if-eqz v4, :cond_15

    .line 105
    .line 106
    iget-object v4, v1, Llh/c;->a:Lud/d0;

    .line 107
    .line 108
    if-eqz v4, :cond_14

    .line 109
    .line 110
    const-class v8, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 111
    .line 112
    invoke-virtual {v4, v8}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const-string v8, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    .line 117
    .line 118
    invoke-static {v4, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    move-object v9, v4

    .line 122
    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 123
    .line 124
    const/4 v10, 0x0

    .line 125
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-static {v11}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object v12, v1, Llh/c;->b:Ljava/lang/String;

    .line 133
    .line 134
    if-eqz v12, :cond_13

    .line 135
    .line 136
    const-string v13, "android"

    .line 137
    .line 138
    iget-object v14, v1, Llh/c;->d:Ljava/lang/String;

    .line 139
    .line 140
    if-eqz v14, :cond_12

    .line 141
    .line 142
    iget-object v15, v1, Llh/c;->c:Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v15, :cond_11

    .line 145
    .line 146
    const/16 v16, 0x1

    .line 147
    .line 148
    const/16 v17, 0x0

    .line 149
    .line 150
    invoke-static/range {v9 .. v17}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->generateQR$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    .line 151
    .line 152
    .line 153
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 154
    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 159
    .line 160
    const-string v8, "response"

    .line 161
    .line 162
    invoke-static {v0, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 178
    .line 179
    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    :goto_2
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 183
    .line 184
    if-eqz v0, :cond_f

    .line 185
    .line 186
    move-object v0, v4

    .line 187
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 188
    .line 189
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;

    .line 194
    .line 195
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 200
    .line 201
    if-eqz v8, :cond_5

    .line 202
    .line 203
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 204
    .line 205
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 206
    .line 207
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_6

    .line 215
    .line 216
    :cond_5
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 217
    .line 218
    if-eqz v8, :cond_6

    .line 219
    .line 220
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 221
    .line 222
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 223
    .line 224
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_6

    .line 231
    .line 232
    :cond_6
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 233
    .line 234
    if-eqz v8, :cond_7

    .line 235
    .line 236
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 237
    .line 238
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 239
    .line 240
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_6

    .line 247
    .line 248
    :cond_7
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    .line 249
    .line 250
    if-eqz v0, :cond_a

    .line 251
    .line 252
    iput-object v1, v2, Llh/c$b;->a:Llh/c;

    .line 253
    .line 254
    iput v7, v2, Llh/c$b;->d:I

    .line 255
    .line 256
    const-wide/16 v7, 0x5dc

    .line 257
    .line 258
    invoke-static {v7, v8, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    if-ne v0, v3, :cond_8

    .line 263
    .line 264
    return-object v3

    .line 265
    :cond_8
    move-object v4, v1

    .line 266
    :goto_3
    iput-object v5, v2, Llh/c$b;->a:Llh/c;

    .line 267
    .line 268
    iput v6, v2, Llh/c$b;->d:I

    .line 269
    .line 270
    invoke-virtual {v4, v2}, Llh/c;->b(Lp9/d;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-ne v0, v3, :cond_9

    .line 275
    .line 276
    return-object v3

    .line 277
    :cond_9
    :goto_4
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 278
    .line 279
    goto/16 :goto_6

    .line 280
    .line 281
    :cond_a
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 282
    .line 283
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;

    .line 288
    .line 289
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;->getGenerateQRData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRData;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-eqz v0, :cond_b

    .line 294
    .line 295
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    if-eqz v0, :cond_b

    .line 300
    .line 301
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    :cond_b
    if-eqz v5, :cond_d

    .line 306
    .line 307
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-nez v0, :cond_c

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_c
    const/4 v7, 0x0

    .line 315
    :cond_d
    :goto_5
    if-eqz v7, :cond_e

    .line 316
    .line 317
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 318
    .line 319
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 320
    .line 321
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 322
    .line 323
    .line 324
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 325
    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_e
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 329
    .line 330
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 331
    .line 332
    invoke-direct {v2, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 336
    .line 337
    .line 338
    goto :goto_6

    .line 339
    :cond_f
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 340
    .line 341
    if-eqz v0, :cond_10

    .line 342
    .line 343
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 344
    .line 345
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 346
    .line 347
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 351
    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_10
    new-instance v0, Lj7/p;

    .line 355
    .line 356
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 357
    .line 358
    .line 359
    throw v0

    .line 360
    :cond_11
    const-string v0, "mAppMode"

    .line 361
    .line 362
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    throw v5

    .line 366
    :cond_12
    const-string v0, "mLanguage"

    .line 367
    .line 368
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw v5

    .line 372
    :cond_13
    const-string v0, "mAppVersion"

    .line 373
    .line 374
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v5

    .line 378
    :cond_14
    const-string v0, "mApiClient"

    .line 379
    .line 380
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v5

    .line 384
    :cond_15
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 385
    .line 386
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 387
    .line 388
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 392
    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_16
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 396
    .line 397
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 398
    .line 399
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 400
    .line 401
    .line 402
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 403
    .line 404
    .line 405
    goto :goto_6

    .line 406
    :cond_17
    const-string v0, "mNetworkHelper"

    .line 407
    .line 408
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 412
    :catch_1
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
    :goto_6
    return-object v0
.end method
