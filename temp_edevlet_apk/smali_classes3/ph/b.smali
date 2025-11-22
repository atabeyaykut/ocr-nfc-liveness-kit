.class public final Lph/b;
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestModel;",
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
    instance-of v2, v0, Lph/b$a;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lph/b$a;

    .line 11
    .line 12
    iget v3, v2, Lph/b$a;->d:I

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
    iput v3, v2, Lph/b$a;->d:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lph/b$a;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lph/b$a;-><init>(Lph/b;Lp9/d;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lph/b$a;->b:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lq9/a;->a:Lq9/a;

    .line 32
    .line 33
    iget v4, v2, Lph/b$a;->d:I

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
    iget-object v4, v2, Lph/b$a;->a:Lph/b;

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
    iget-object v0, v1, Lph/b;->e:Lgf/b;

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
    iget-object v4, v1, Lph/b;->a:Lud/d0;

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
    iget-object v12, v1, Lph/b;->b:Ljava/lang/String;

    .line 133
    .line 134
    if-eqz v12, :cond_13

    .line 135
    .line 136
    const-string v13, "android"

    .line 137
    .line 138
    iget-object v14, v1, Lph/b;->d:Ljava/lang/String;

    .line 139
    .line 140
    if-eqz v14, :cond_12

    .line 141
    .line 142
    iget-object v15, v1, Lph/b;->c:Ljava/lang/String;

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
    invoke-static/range {v9 .. v17}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->checkConfirmation$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestModel;

    .line 194
    .line 195
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

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
    goto/16 :goto_7

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
    goto/16 :goto_7

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
    goto/16 :goto_7

    .line 247
    .line 248
    :cond_7
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    .line 249
    .line 250
    if-eqz v0, :cond_a

    .line 251
    .line 252
    iput-object v1, v2, Lph/b$a;->a:Lph/b;

    .line 253
    .line 254
    iput v7, v2, Lph/b$a;->d:I

    .line 255
    .line 256
    const-wide/16 v7, 0x7d0

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
    iput-object v5, v2, Lph/b$a;->a:Lph/b;

    .line 267
    .line 268
    iput v6, v2, Lph/b$a;->d:I

    .line 269
    .line 270
    invoke-virtual {v4, v2}, Lph/b;->a(Lp9/d;)Ljava/lang/Object;

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
    goto/16 :goto_7

    .line 280
    .line 281
    :catch_1
    move-exception v0

    .line 282
    goto/16 :goto_6

    .line 283
    .line 284
    :cond_a
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 285
    .line 286
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestModel;

    .line 291
    .line 292
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestModel;->getControlConfirmationRequestData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestData;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-eqz v0, :cond_b

    .line 297
    .line 298
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    if-eqz v0, :cond_b

    .line 303
    .line 304
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    :cond_b
    if-eqz v5, :cond_d

    .line 309
    .line 310
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-nez v0, :cond_c

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_c
    const/4 v7, 0x0

    .line 318
    :cond_d
    :goto_5
    if-eqz v7, :cond_e

    .line 319
    .line 320
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 321
    .line 322
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 323
    .line 324
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 328
    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_e
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 332
    .line 333
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 334
    .line 335
    invoke-direct {v2, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 339
    .line 340
    .line 341
    goto :goto_7

    .line 342
    :cond_f
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 343
    .line 344
    if-eqz v0, :cond_10

    .line 345
    .line 346
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 347
    .line 348
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 349
    .line 350
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 354
    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_10
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 358
    .line 359
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 360
    .line 361
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 365
    .line 366
    .line 367
    goto :goto_7

    .line 368
    :cond_11
    const-string v0, "mAppMode"

    .line 369
    .line 370
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw v5

    .line 374
    :cond_12
    const-string v0, "mLanguage"

    .line 375
    .line 376
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw v5

    .line 380
    :cond_13
    const-string v0, "mAppVersion"

    .line 381
    .line 382
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw v5

    .line 386
    :cond_14
    const-string v0, "mApiClient"

    .line 387
    .line 388
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw v5

    .line 392
    :cond_15
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 393
    .line 394
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 395
    .line 396
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 400
    .line 401
    .line 402
    goto :goto_7

    .line 403
    :cond_16
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 404
    .line 405
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 406
    .line 407
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 411
    .line 412
    .line 413
    goto :goto_7

    .line 414
    :cond_17
    const-string v0, "mNetworkHelper"

    .line 415
    .line 416
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 420
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 421
    .line 422
    .line 423
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 424
    .line 425
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 426
    .line 427
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 428
    .line 429
    .line 430
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 431
    .line 432
    .line 433
    :goto_7
    return-object v0
.end method
