.class public final Lkh/c;
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
.method public final a(Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    instance-of v2, v0, Lkh/c$a;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lkh/c$a;

    .line 11
    .line 12
    iget v3, v2, Lkh/c$a;->f:I

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
    iput v3, v2, Lkh/c$a;->f:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lkh/c$a;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lkh/c$a;-><init>(Lkh/c;Lp9/d;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lkh/c$a;->d:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lq9/a;->a:Lq9/a;

    .line 32
    .line 33
    iget v4, v2, Lkh/c$a;->f:I

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto/16 :goto_8

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
    iget-object v4, v2, Lkh/c$a;->c:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v5, v2, Lkh/c$a;->b:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v8, v2, Lkh/c$a;->a:Lkh/c;

    .line 62
    .line 63
    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    .line 65
    .line 66
    move-object v0, v8

    .line 67
    move-object v8, v4

    .line 68
    move-object v4, v5

    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :try_start_2
    iget-object v0, v1, Lkh/c;->e:Lgf/b;

    .line 75
    .line 76
    if-eqz v0, :cond_20

    .line 77
    .line 78
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1f

    .line 83
    .line 84
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lio/realm/a;->m()V

    .line 89
    .line 90
    .line 91
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    move-object v4, v0

    .line 102
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 103
    .line 104
    if-eqz v4, :cond_4

    .line 105
    .line 106
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    move-object v0, v6

    .line 112
    :goto_1
    if-eqz v0, :cond_1e

    .line 113
    .line 114
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    goto :goto_2

    .line 125
    :cond_5
    move-object v0, v6

    .line 126
    :goto_2
    const/4 v8, 0x0

    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    const/4 v0, 0x1

    .line 130
    goto :goto_3

    .line 131
    :cond_6
    const/4 v0, 0x0

    .line 132
    :goto_3
    iget-object v9, v1, Lkh/c;->a:Lud/d0;

    .line 133
    .line 134
    if-eqz v9, :cond_1d

    .line 135
    .line 136
    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 137
    .line 138
    invoke-virtual {v9, v10}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    const-string v10, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    .line 143
    .line 144
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    move-object v11, v9

    .line 148
    check-cast v11, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .line 150
    const/4 v12, 0x0

    .line 151
    const-string v9, "mAppMode"

    .line 152
    .line 153
    const-string v10, "mLanguage"

    .line 154
    .line 155
    const-string v13, "mAppVersion"

    .line 156
    .line 157
    if-eqz v0, :cond_b

    .line 158
    .line 159
    :try_start_3
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 167
    .line 168
    .line 169
    move-result-object v14

    .line 170
    if-eqz v14, :cond_7

    .line 171
    .line 172
    invoke-virtual {v14}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getId()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    goto :goto_4

    .line 177
    :cond_7
    move-object v14, v6

    .line 178
    :goto_4
    iget-object v15, v1, Lkh/c;->b:Ljava/lang/String;

    .line 179
    .line 180
    if-eqz v15, :cond_a

    .line 181
    .line 182
    const-string v18, "android"

    .line 183
    .line 184
    iget-object v13, v1, Lkh/c;->d:Ljava/lang/String;

    .line 185
    .line 186
    if-eqz v13, :cond_9

    .line 187
    .line 188
    iget-object v10, v1, Lkh/c;->c:Ljava/lang/String;

    .line 189
    .line 190
    if-eqz v10, :cond_8

    .line 191
    .line 192
    const/16 v21, 0x1

    .line 193
    .line 194
    const/16 v22, 0x0

    .line 195
    .line 196
    move-object v9, v13

    .line 197
    move-object v13, v0

    .line 198
    move-object v0, v15

    .line 199
    move-object/from16 v15, p1

    .line 200
    .line 201
    move-object/from16 v16, p2

    .line 202
    .line 203
    move-object/from16 v17, v0

    .line 204
    .line 205
    move-object/from16 v19, v9

    .line 206
    .line 207
    move-object/from16 v20, v10

    .line 208
    .line 209
    invoke-static/range {v11 .. v22}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->saveLocation$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    goto :goto_5

    .line 214
    :cond_8
    invoke-static {v9}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v6

    .line 218
    :catch_0
    move-exception v0

    .line 219
    goto/16 :goto_a

    .line 220
    .line 221
    :cond_9
    invoke-static {v10}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v6

    .line 225
    :cond_a
    invoke-static {v13}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v6

    .line 229
    :cond_b
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    const/4 v14, 0x0

    .line 237
    iget-object v15, v1, Lkh/c;->b:Ljava/lang/String;

    .line 238
    .line 239
    if-eqz v15, :cond_1c

    .line 240
    .line 241
    const-string v18, "android"

    .line 242
    .line 243
    iget-object v13, v1, Lkh/c;->d:Ljava/lang/String;

    .line 244
    .line 245
    if-eqz v13, :cond_1b

    .line 246
    .line 247
    iget-object v10, v1, Lkh/c;->c:Ljava/lang/String;

    .line 248
    .line 249
    if-eqz v10, :cond_1a

    .line 250
    .line 251
    const/16 v21, 0x5

    .line 252
    .line 253
    const/16 v22, 0x0

    .line 254
    .line 255
    const/4 v12, 0x0

    .line 256
    move-object v9, v13

    .line 257
    move-object v13, v0

    .line 258
    move-object v0, v15

    .line 259
    move-object/from16 v15, p1

    .line 260
    .line 261
    move-object/from16 v16, p2

    .line 262
    .line 263
    move-object/from16 v17, v0

    .line 264
    .line 265
    move-object/from16 v19, v9

    .line 266
    .line 267
    move-object/from16 v20, v10

    .line 268
    .line 269
    invoke-static/range {v11 .. v22}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->saveLocation$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    .line 270
    .line 271
    .line 272
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 273
    :goto_5
    :try_start_4
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    new-instance v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 278
    .line 279
    const-string v10, "response"

    .line 280
    .line 281
    invoke-static {v0, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-direct {v9, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 289
    .line 290
    .line 291
    goto :goto_6

    .line 292
    :catch_1
    move-exception v0

    .line 293
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 294
    .line 295
    .line 296
    new-instance v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 297
    .line 298
    invoke-direct {v9, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 299
    .line 300
    .line 301
    :goto_6
    instance-of v0, v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 302
    .line 303
    if-eqz v0, :cond_18

    .line 304
    .line 305
    move-object v0, v9

    .line 306
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 307
    .line 308
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    .line 313
    .line 314
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    instance-of v10, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 319
    .line 320
    if-eqz v10, :cond_e

    .line 321
    .line 322
    move-object v0, v9

    .line 323
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 324
    .line 325
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    .line 330
    .line 331
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;->getLocationSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveData;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    if-eqz v0, :cond_c

    .line 336
    .line 337
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveData;->getLocationSaveObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveObject;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-eqz v0, :cond_c

    .line 342
    .line 343
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveObject;->getLocationSaveMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveMap;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    if-eqz v0, :cond_c

    .line 348
    .line 349
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveMap;->getLocationSaveSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveSubData;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    if-eqz v0, :cond_c

    .line 354
    .line 355
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveSubData;->getLocationSaveInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveInfo;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    :cond_c
    if-eqz v6, :cond_d

    .line 360
    .line 361
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    new-instance v2, Landroidx/camera/camera2/interop/h;

    .line 366
    .line 367
    const/4 v3, 0x5

    .line 368
    invoke-direct {v2, v3, v6, v4}, Landroidx/camera/camera2/interop/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v2}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    .line 372
    .line 373
    .line 374
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 375
    .line 376
    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 377
    .line 378
    invoke-virtual {v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_b

    .line 386
    .line 387
    :cond_d
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 388
    .line 389
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 390
    .line 391
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 392
    .line 393
    .line 394
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_b

    .line 398
    .line 399
    :cond_e
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 400
    .line 401
    if-eqz v4, :cond_f

    .line 402
    .line 403
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 404
    .line 405
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 406
    .line 407
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_b

    .line 414
    .line 415
    :cond_f
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 416
    .line 417
    if-eqz v4, :cond_10

    .line 418
    .line 419
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 420
    .line 421
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 422
    .line 423
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 427
    .line 428
    .line 429
    goto/16 :goto_b

    .line 430
    .line 431
    :cond_10
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    .line 432
    .line 433
    if-eqz v0, :cond_13

    .line 434
    .line 435
    iput-object v1, v2, Lkh/c$a;->a:Lkh/c;

    .line 436
    .line 437
    move-object/from16 v4, p1

    .line 438
    .line 439
    iput-object v4, v2, Lkh/c$a;->b:Ljava/lang/String;

    .line 440
    .line 441
    move-object/from16 v8, p2

    .line 442
    .line 443
    iput-object v8, v2, Lkh/c$a;->c:Ljava/lang/String;

    .line 444
    .line 445
    iput v5, v2, Lkh/c$a;->f:I

    .line 446
    .line 447
    const-wide/16 v9, 0x5dc

    .line 448
    .line 449
    invoke-static {v9, v10, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    if-ne v0, v3, :cond_11

    .line 454
    .line 455
    return-object v3

    .line 456
    :cond_11
    move-object v0, v1

    .line 457
    :goto_7
    iput-object v6, v2, Lkh/c$a;->a:Lkh/c;

    .line 458
    .line 459
    iput-object v6, v2, Lkh/c$a;->b:Ljava/lang/String;

    .line 460
    .line 461
    iput-object v6, v2, Lkh/c$a;->c:Ljava/lang/String;

    .line 462
    .line 463
    iput v7, v2, Lkh/c$a;->f:I

    .line 464
    .line 465
    invoke-virtual {v0, v4, v8, v2}, Lkh/c;->a(Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    if-ne v0, v3, :cond_12

    .line 470
    .line 471
    return-object v3

    .line 472
    :cond_12
    :goto_8
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 473
    .line 474
    goto/16 :goto_b

    .line 475
    .line 476
    :cond_13
    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 477
    .line 478
    invoke-virtual {v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    .line 483
    .line 484
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;->getLocationSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveData;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    if-eqz v0, :cond_14

    .line 489
    .line 490
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    if-eqz v0, :cond_14

    .line 495
    .line 496
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    :cond_14
    if-eqz v6, :cond_16

    .line 501
    .line 502
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-nez v0, :cond_15

    .line 507
    .line 508
    goto :goto_9

    .line 509
    :cond_15
    const/4 v5, 0x0

    .line 510
    :cond_16
    :goto_9
    if-eqz v5, :cond_17

    .line 511
    .line 512
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 513
    .line 514
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 515
    .line 516
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 517
    .line 518
    .line 519
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 520
    .line 521
    .line 522
    goto :goto_b

    .line 523
    :cond_17
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 524
    .line 525
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 526
    .line 527
    invoke-direct {v2, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 531
    .line 532
    .line 533
    goto :goto_b

    .line 534
    :cond_18
    instance-of v0, v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 535
    .line 536
    if-eqz v0, :cond_19

    .line 537
    .line 538
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 539
    .line 540
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 541
    .line 542
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 543
    .line 544
    .line 545
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 546
    .line 547
    .line 548
    goto :goto_b

    .line 549
    :cond_19
    new-instance v0, Lj7/p;

    .line 550
    .line 551
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 552
    .line 553
    .line 554
    throw v0

    .line 555
    :cond_1a
    invoke-static {v9}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    throw v6

    .line 559
    :cond_1b
    invoke-static {v10}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    throw v6

    .line 563
    :cond_1c
    invoke-static {v13}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    throw v6

    .line 567
    :cond_1d
    const-string v0, "mApiClient"

    .line 568
    .line 569
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    throw v6

    .line 573
    :cond_1e
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 574
    .line 575
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 576
    .line 577
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 578
    .line 579
    .line 580
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 581
    .line 582
    .line 583
    goto :goto_b

    .line 584
    :cond_1f
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 585
    .line 586
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 587
    .line 588
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 589
    .line 590
    .line 591
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 592
    .line 593
    .line 594
    goto :goto_b

    .line 595
    :cond_20
    const-string v0, "mNetworkHelper"

    .line 596
    .line 597
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 601
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 602
    .line 603
    .line 604
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 605
    .line 606
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 607
    .line 608
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 609
    .line 610
    .line 611
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 612
    .line 613
    .line 614
    :goto_b
    return-object v0
.end method
