.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker$doWork$2$1"
    f = "SMSVerificationWorker.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto/16 :goto_f

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :try_start_1
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "token"

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v1, "uuid"

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v1, "smsCode"

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    const/4 p1, 0x0

    .line 62
    if-eqz v6, :cond_3

    .line 63
    .line 64
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v1, 0x0

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 74
    :goto_1
    if-nez v1, :cond_14

    .line 75
    .line 76
    if-eqz v5, :cond_5

    .line 77
    .line 78
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    const/4 v1, 0x0

    .line 86
    goto :goto_3

    .line 87
    :cond_5
    :goto_2
    const/4 v1, 0x1

    .line 88
    :goto_3
    if-nez v1, :cond_14

    .line 89
    .line 90
    if-eqz v7, :cond_7

    .line 91
    .line 92
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_6

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_6
    const/4 v1, 0x0

    .line 100
    goto :goto_5

    .line 101
    :cond_7
    :goto_4
    const/4 v1, 0x1

    .line 102
    :goto_5
    if-nez v1, :cond_14

    .line 103
    .line 104
    iget-object v1, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;->a:Lud/d0;

    .line 105
    .line 106
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationAPI;

    .line 107
    .line 108
    invoke-virtual {v1, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v4, "apiClientLogin.create(SM\u2026ificationAPI::class.java)"

    .line 113
    .line 114
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    move-object v4, v1

    .line 118
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationAPI;

    .line 119
    .line 120
    const-string v8, "android"

    .line 121
    .line 122
    iget-object v9, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;->b:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v10, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;->c:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v11, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;->d:Ljava/lang/String;

    .line 127
    .line 128
    invoke-interface/range {v4 .. v11}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationAPI;->verifySMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 129
    .line 130
    .line 131
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :try_start_2
    invoke-interface {v1}, Lud/b;->execute()Lud/c0;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 137
    .line 138
    const-string v5, "response"

    .line 139
    .line 140
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-direct {v4, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 148
    .line 149
    .line 150
    goto :goto_6

    .line 151
    :catch_1
    move-exception v1

    .line 152
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 156
    .line 157
    invoke-direct {v4, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    :goto_6
    instance-of v1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 161
    .line 162
    if-eqz v1, :cond_12

    .line 163
    .line 164
    move-object v1, v4

    .line 165
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 166
    .line 167
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;

    .line 172
    .line 173
    invoke-static {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    instance-of v1, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 178
    .line 179
    const/4 v5, 0x0

    .line 180
    if-eqz v1, :cond_9

    .line 181
    .line 182
    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 183
    .line 184
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 185
    .line 186
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a$a;

    .line 187
    .line 188
    invoke-direct {v1, v4, v5}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;Lp9/d;)V

    .line 189
    .line 190
    .line 191
    iput v2, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker$b$a;->a:I

    .line 192
    .line 193
    invoke-static {p1, v1, p0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    if-ne p1, v0, :cond_8

    .line 198
    .line 199
    return-object v0

    .line 200
    :cond_8
    :goto_7
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    goto/16 :goto_10

    .line 205
    .line 206
    :cond_9
    move-object v0, v4

    .line 207
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 208
    .line 209
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;

    .line 214
    .line 215
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->getSmsCodeVerifyData()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-eqz v0, :cond_a

    .line 220
    .line 221
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;->getResultMessage()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    goto :goto_8

    .line 226
    :cond_a
    move-object v0, v5

    .line 227
    :goto_8
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 228
    .line 229
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;

    .line 234
    .line 235
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->getSmsCodeVerifyData()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    if-eqz v1, :cond_b

    .line 240
    .line 241
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;->getResultCode()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    :cond_b
    if-eqz v0, :cond_d

    .line 246
    .line 247
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_c

    .line 252
    .line 253
    goto :goto_9

    .line 254
    :cond_c
    const/4 v1, 0x0

    .line 255
    goto :goto_a

    .line 256
    :cond_d
    :goto_9
    const/4 v1, 0x1

    .line 257
    :goto_a
    if-nez v1, :cond_11

    .line 258
    .line 259
    if-eqz v5, :cond_f

    .line 260
    .line 261
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-nez v1, :cond_e

    .line 266
    .line 267
    goto :goto_b

    .line 268
    :cond_e
    const/4 v2, 0x0

    .line 269
    :cond_f
    :goto_b
    if-eqz v2, :cond_10

    .line 270
    .line 271
    goto :goto_d

    .line 272
    :cond_10
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 273
    .line 274
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithCode;

    .line 275
    .line 276
    invoke-direct {v1, v5, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-direct {p1, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 280
    .line 281
    .line 282
    :goto_c
    invoke-static {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V

    .line 283
    .line 284
    .line 285
    goto :goto_e

    .line 286
    :cond_11
    :goto_d
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 287
    .line 288
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 289
    .line 290
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 294
    .line 295
    .line 296
    goto :goto_c

    .line 297
    :goto_e
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    goto :goto_10

    .line 302
    :cond_12
    instance-of p1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 303
    .line 304
    if-eqz p1, :cond_13

    .line 305
    .line 306
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 307
    .line 308
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 309
    .line 310
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 314
    .line 315
    .line 316
    invoke-static {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V

    .line 317
    .line 318
    .line 319
    goto :goto_e

    .line 320
    :cond_13
    new-instance p1, Lj7/p;

    .line 321
    .line 322
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 323
    .line 324
    .line 325
    throw p1

    .line 326
    :cond_14
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 327
    .line 328
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 329
    .line 330
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 334
    .line 335
    .line 336
    invoke-static {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 337
    .line 338
    .line 339
    goto :goto_e

    .line 340
    :goto_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    .line 342
    .line 343
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 344
    .line 345
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 346
    .line 347
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 351
    .line 352
    .line 353
    invoke-static {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V

    .line 354
    .line 355
    .line 356
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    :goto_10
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 361
    .line 362
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    return-object p1
.end method
