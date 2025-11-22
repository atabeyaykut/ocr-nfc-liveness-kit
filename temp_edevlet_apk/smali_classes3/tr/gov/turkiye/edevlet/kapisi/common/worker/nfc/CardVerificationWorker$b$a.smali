.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker$doWork$2$1"
    f = "CardVerificationWorker.kt"
    l = {
        0x39
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v2, Lq9/a;->a:Lq9/a;

    .line 4
    .line 5
    iget v0, v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a;->a:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static/range {p1 .. p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    .line 16
    .line 17
    goto/16 :goto_f

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    invoke-static/range {p1 .. p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v4}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v5, "serialNo"

    .line 35
    .line 36
    invoke-virtual {v0, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v4}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v5, "token"

    .line 45
    .line 46
    invoke-virtual {v0, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-virtual {v4}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v5, "uuid"

    .line 55
    .line 56
    invoke-virtual {v0, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-virtual {v4}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v5, "file1"

    .line 65
    .line 66
    invoke-virtual {v0, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-virtual {v4}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v5, "file2"

    .line 75
    .line 76
    invoke-virtual {v0, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    invoke-virtual {v4}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v5, "file3"

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    invoke-virtual {v4}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v5, "signedData"

    .line 95
    .line 96
    invoke-virtual {v0, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    if-eqz v13, :cond_3

    .line 101
    .line 102
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_2

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    const/4 v0, 0x0

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 112
    :goto_1
    if-nez v0, :cond_19

    .line 113
    .line 114
    if-eqz v10, :cond_5

    .line 115
    .line 116
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_4

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    const/4 v0, 0x0

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 126
    :goto_3
    if-nez v0, :cond_19

    .line 127
    .line 128
    if-eqz v8, :cond_7

    .line 129
    .line 130
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_6

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_6
    const/4 v0, 0x0

    .line 138
    goto :goto_5

    .line 139
    :cond_7
    :goto_4
    const/4 v0, 0x1

    .line 140
    :goto_5
    if-nez v0, :cond_19

    .line 141
    .line 142
    if-eqz v11, :cond_9

    .line 143
    .line 144
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_8

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_8
    const/4 v0, 0x0

    .line 152
    goto :goto_7

    .line 153
    :cond_9
    :goto_6
    const/4 v0, 0x1

    .line 154
    :goto_7
    if-nez v0, :cond_19

    .line 155
    .line 156
    if-eqz v12, :cond_b

    .line 157
    .line 158
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_a

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_a
    const/4 v0, 0x0

    .line 166
    goto :goto_9

    .line 167
    :cond_b
    :goto_8
    const/4 v0, 0x1

    .line 168
    :goto_9
    if-nez v0, :cond_19

    .line 169
    .line 170
    if-eqz v7, :cond_d

    .line 171
    .line 172
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_c

    .line 177
    .line 178
    goto :goto_a

    .line 179
    :cond_c
    const/4 v0, 0x0

    .line 180
    goto :goto_b

    .line 181
    :cond_d
    :goto_a
    const/4 v0, 0x1

    .line 182
    :goto_b
    if-nez v0, :cond_19

    .line 183
    .line 184
    if-eqz v9, :cond_f

    .line 185
    .line 186
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-nez v0, :cond_e

    .line 191
    .line 192
    goto :goto_c

    .line 193
    :cond_e
    const/4 v0, 0x0

    .line 194
    goto :goto_d

    .line 195
    :cond_f
    :goto_c
    const/4 v0, 0x1

    .line 196
    :goto_d
    if-nez v0, :cond_19

    .line 197
    .line 198
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;->a:Lud/d0;

    .line 199
    .line 200
    const-class v6, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationAPI;

    .line 201
    .line 202
    invoke-virtual {v0, v6}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    const-string v6, "apiClientLogin.create(Ca\u2026ificationAPI::class.java)"

    .line 207
    .line 208
    invoke-static {v0, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    move-object v6, v0

    .line 212
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationAPI;

    .line 213
    .line 214
    const-string v14, "android"

    .line 215
    .line 216
    iget-object v15, v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;->b:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;->c:Ljava/lang/String;

    .line 219
    .line 220
    iget-object v5, v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;->d:Ljava/lang/String;

    .line 221
    .line 222
    move-object/from16 v16, v0

    .line 223
    .line 224
    move-object/from16 v17, v5

    .line 225
    .line 226
    invoke-interface/range {v6 .. v17}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationAPI;->fetchIDVerificationController(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 227
    .line 228
    .line 229
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    :try_start_2
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 235
    .line 236
    const-string v6, "response"

    .line 237
    .line 238
    invoke-static {v0, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-direct {v5, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 246
    .line 247
    .line 248
    goto :goto_e

    .line 249
    :catch_0
    move-exception v0

    .line 250
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    .line 252
    .line 253
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 254
    .line 255
    invoke-direct {v5, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    :goto_e
    instance-of v0, v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 259
    .line 260
    if-eqz v0, :cond_17

    .line 261
    .line 262
    move-object v0, v5

    .line 263
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 264
    .line 265
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationModel;

    .line 270
    .line 271
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    instance-of v6, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 276
    .line 277
    const/4 v7, 0x0

    .line 278
    if-eqz v6, :cond_11

    .line 279
    .line 280
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 281
    .line 282
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 283
    .line 284
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a$a;

    .line 285
    .line 286
    invoke-direct {v6, v5, v7}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;Lp9/d;)V

    .line 287
    .line 288
    .line 289
    iput v3, v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker$b$a;->a:I

    .line 290
    .line 291
    invoke-static {v0, v6, v1}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    if-ne v0, v2, :cond_10

    .line 296
    .line 297
    return-object v2

    .line 298
    :cond_10
    :goto_f
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    goto/16 :goto_13

    .line 303
    .line 304
    :cond_11
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    .line 305
    .line 306
    if-eqz v0, :cond_16

    .line 307
    .line 308
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 309
    .line 310
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationModel;

    .line 315
    .line 316
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationModel;->getVerificationData()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    if-eqz v0, :cond_12

    .line 321
    .line 322
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;->getResultMessage()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    :cond_12
    if-eqz v7, :cond_14

    .line 327
    .line 328
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-nez v0, :cond_13

    .line 333
    .line 334
    goto :goto_10

    .line 335
    :cond_13
    const/4 v3, 0x0

    .line 336
    :cond_14
    :goto_10
    if-eqz v3, :cond_15

    .line 337
    .line 338
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 339
    .line 340
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 341
    .line 342
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 346
    .line 347
    .line 348
    :goto_11
    invoke-static {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V

    .line 349
    .line 350
    .line 351
    goto :goto_12

    .line 352
    :cond_15
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 353
    .line 354
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 355
    .line 356
    invoke-direct {v2, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 360
    .line 361
    .line 362
    goto :goto_11

    .line 363
    :goto_12
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    goto :goto_13

    .line 368
    :cond_16
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 369
    .line 370
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 371
    .line 372
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 376
    .line 377
    .line 378
    goto :goto_11

    .line 379
    :cond_17
    instance-of v0, v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 380
    .line 381
    if-eqz v0, :cond_18

    .line 382
    .line 383
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 384
    .line 385
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 386
    .line 387
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 391
    .line 392
    .line 393
    goto :goto_11

    .line 394
    :cond_18
    new-instance v0, Lj7/p;

    .line 395
    .line 396
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 397
    .line 398
    .line 399
    throw v0

    .line 400
    :cond_19
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 401
    .line 402
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 403
    .line 404
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 408
    .line 409
    .line 410
    goto :goto_11

    .line 411
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 412
    .line 413
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 414
    .line 415
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 419
    .line 420
    .line 421
    invoke-static {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V

    .line 422
    .line 423
    .line 424
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    :goto_13
    const-string v2, "try {\n                va\u2026t.failure()\n            }"

    .line 429
    .line 430
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    return-object v0
.end method
