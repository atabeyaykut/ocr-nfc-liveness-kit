.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.otp.ApprovalWorker$doWork$2$1"
    f = "ApprovalWorker.kt"
    l = {
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v2, Lq9/a;->a:Lq9/a;

    .line 4
    .line 5
    iget v0, v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a;->a:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;

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
    goto/16 :goto_9

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
    const-string v5, "tidValue"

    .line 35
    .line 36
    invoke-virtual {v0, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v4}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v5, "didValue"

    .line 45
    .line 46
    invoke-virtual {v0, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v4}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v5, "tokenValue"

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
    const-string v5, "otpValue"

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
    const-string v5, "actionValue"

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
    const-string v5, "approvalTypeValue"

    .line 85
    .line 86
    const/16 v6, 0x63

    .line 87
    .line 88
    invoke-virtual {v0, v5, v6}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    const/4 v0, 0x0

    .line 93
    if-eqz v7, :cond_3

    .line 94
    .line 95
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const/4 v5, 0x0

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    :goto_0
    const/4 v5, 0x1

    .line 105
    :goto_1
    if-nez v5, :cond_10

    .line 106
    .line 107
    if-eqz v8, :cond_5

    .line 108
    .line 109
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_4

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    const/4 v5, 0x0

    .line 117
    goto :goto_3

    .line 118
    :cond_5
    :goto_2
    const/4 v5, 0x1

    .line 119
    :goto_3
    if-nez v5, :cond_10

    .line 120
    .line 121
    if-eqz v9, :cond_7

    .line 122
    .line 123
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-nez v5, :cond_6

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_6
    const/4 v5, 0x0

    .line 131
    goto :goto_5

    .line 132
    :cond_7
    :goto_4
    const/4 v5, 0x1

    .line 133
    :goto_5
    if-nez v5, :cond_10

    .line 134
    .line 135
    if-eqz v10, :cond_9

    .line 136
    .line 137
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_8

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_8
    const/4 v5, 0x0

    .line 145
    goto :goto_7

    .line 146
    :cond_9
    :goto_6
    const/4 v5, 0x1

    .line 147
    :goto_7
    if-nez v5, :cond_10

    .line 148
    .line 149
    if-eqz v11, :cond_a

    .line 150
    .line 151
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-nez v5, :cond_b

    .line 156
    .line 157
    :cond_a
    const/4 v0, 0x1

    .line 158
    :cond_b
    if-nez v0, :cond_10

    .line 159
    .line 160
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;->a:Lud/d0;

    .line 161
    .line 162
    const-class v5, Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;

    .line 163
    .line 164
    invoke-virtual {v0, v5}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string v5, "apiOTPClient.create(TwoFactorAuthAPI::class.java)"

    .line 169
    .line 170
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    move-object v6, v0

    .line 174
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;

    .line 175
    .line 176
    const-string v13, "android"

    .line 177
    .line 178
    iget-object v14, v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;->b:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v15, v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;->c:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;->d:Ljava/lang/String;

    .line 183
    .line 184
    move-object/from16 v16, v0

    .line 185
    .line 186
    invoke-interface/range {v6 .. v16}, Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;->approveOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 187
    .line 188
    .line 189
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    :try_start_2
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 195
    .line 196
    const-string v6, "response"

    .line 197
    .line 198
    invoke-static {v0, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-direct {v5, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 206
    .line 207
    .line 208
    goto :goto_8

    .line 209
    :catch_0
    move-exception v0

    .line 210
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 211
    .line 212
    .line 213
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 214
    .line 215
    invoke-direct {v5, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    :goto_8
    instance-of v0, v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 219
    .line 220
    if-eqz v0, :cond_e

    .line 221
    .line 222
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 223
    .line 224
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/otp/ServerTimeModel;

    .line 229
    .line 230
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeApproveRequest(Ltr/gov/turkiye/edevlet/kapisi/data/otp/ServerTimeModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 235
    .line 236
    if-eqz v0, :cond_d

    .line 237
    .line 238
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 239
    .line 240
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 241
    .line 242
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a$a;

    .line 243
    .line 244
    const/4 v6, 0x0

    .line 245
    invoke-direct {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a$a;-><init>(Lp9/d;)V

    .line 246
    .line 247
    .line 248
    iput v3, v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a;->a:I

    .line 249
    .line 250
    invoke-static {v0, v5, v1}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-ne v0, v2, :cond_c

    .line 255
    .line 256
    return-object v2

    .line 257
    :cond_c
    :goto_9
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    goto :goto_b

    .line 262
    :cond_d
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 263
    .line 264
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 265
    .line 266
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 270
    .line 271
    .line 272
    :goto_a
    invoke-static {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V

    .line 273
    .line 274
    .line 275
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    goto :goto_b

    .line 280
    :cond_e
    instance-of v0, v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 281
    .line 282
    if-eqz v0, :cond_f

    .line 283
    .line 284
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 285
    .line 286
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 287
    .line 288
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    goto :goto_a

    .line 295
    :cond_f
    new-instance v0, Lj7/p;

    .line 296
    .line 297
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 298
    .line 299
    .line 300
    throw v0

    .line 301
    :cond_10
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 302
    .line 303
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 304
    .line 305
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 309
    .line 310
    .line 311
    goto :goto_a

    .line 312
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 313
    .line 314
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 315
    .line 316
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 320
    .line 321
    .line 322
    invoke-static {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V

    .line 323
    .line 324
    .line 325
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    :goto_b
    const-string v2, "try {\n                va\u2026t.failure()\n            }"

    .line 330
    .line 331
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    return-object v0
.end method
