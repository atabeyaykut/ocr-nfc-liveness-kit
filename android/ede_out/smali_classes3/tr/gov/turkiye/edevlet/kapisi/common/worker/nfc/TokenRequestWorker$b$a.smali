.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.TokenRequestWorker$doWork$2$1"
    f = "TokenRequestWorker.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :try_start_1
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v1, "pin"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v1, "code"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "uuid"

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const/4 p1, 0x0

    .line 59
    if-eqz v7, :cond_3

    .line 60
    .line 61
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 v1, 0x0

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 71
    :goto_1
    if-nez v1, :cond_10

    .line 72
    .line 73
    if-eqz v5, :cond_5

    .line 74
    .line 75
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    const/4 v1, 0x0

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    :goto_2
    const/4 v1, 0x1

    .line 85
    :goto_3
    if-nez v1, :cond_10

    .line 86
    .line 87
    if-eqz v6, :cond_7

    .line 88
    .line 89
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_6

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    const/4 v1, 0x0

    .line 97
    goto :goto_5

    .line 98
    :cond_7
    :goto_4
    const/4 v1, 0x1

    .line 99
    :goto_5
    if-nez v1, :cond_10

    .line 100
    .line 101
    iget-object v1, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;->a:Lud/d0;

    .line 102
    .line 103
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceAPI;

    .line 104
    .line 105
    invoke-virtual {v1, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v4, "apiClientLogin.create(TokenServiceAPI::class.java)"

    .line 110
    .line 111
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object v4, v1

    .line 115
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceAPI;

    .line 116
    .line 117
    const-string v8, "android"

    .line 118
    .line 119
    iget-object v9, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;->b:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v10, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;->c:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v11, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;->d:Ljava/lang/String;

    .line 124
    .line 125
    invoke-interface/range {v4 .. v11}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceAPI;->fetchTokenValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 126
    .line 127
    .line 128
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :try_start_2
    invoke-interface {v1}, Lud/b;->execute()Lud/c0;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 134
    .line 135
    const-string v5, "response"

    .line 136
    .line 137
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-direct {v4, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_6

    .line 148
    :catch_0
    move-exception v1

    .line 149
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 153
    .line 154
    invoke-direct {v4, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    :goto_6
    instance-of v1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 158
    .line 159
    if-eqz v1, :cond_e

    .line 160
    .line 161
    move-object v1, v4

    .line 162
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 163
    .line 164
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceModel;

    .line 169
    .line 170
    invoke-static {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    instance-of v1, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 175
    .line 176
    const/4 v5, 0x0

    .line 177
    if-eqz v1, :cond_9

    .line 178
    .line 179
    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 180
    .line 181
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 182
    .line 183
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a$a;

    .line 184
    .line 185
    invoke-direct {v1, v4, v5}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;Lp9/d;)V

    .line 186
    .line 187
    .line 188
    iput v2, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a;->a:I

    .line 189
    .line 190
    invoke-static {p1, v1, p0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-ne p1, v0, :cond_8

    .line 195
    .line 196
    return-object v0

    .line 197
    :cond_8
    :goto_7
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    goto/16 :goto_b

    .line 202
    .line 203
    :cond_9
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 204
    .line 205
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceModel;

    .line 210
    .line 211
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceModel;->getTokenResult()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceResult;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-eqz v0, :cond_a

    .line 216
    .line 217
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceResult;->getResultMessage()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    :cond_a
    if-eqz v5, :cond_c

    .line 222
    .line 223
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_b

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_b
    const/4 v2, 0x0

    .line 231
    :cond_c
    :goto_8
    if-eqz v2, :cond_d

    .line 232
    .line 233
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 234
    .line 235
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 236
    .line 237
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    :goto_9
    invoke-static {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V

    .line 244
    .line 245
    .line 246
    goto :goto_a

    .line 247
    :cond_d
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 248
    .line 249
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 250
    .line 251
    invoke-direct {v0, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 255
    .line 256
    .line 257
    goto :goto_9

    .line 258
    :goto_a
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    goto :goto_b

    .line 263
    :cond_e
    instance-of p1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 264
    .line 265
    if-eqz p1, :cond_f

    .line 266
    .line 267
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 268
    .line 269
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 270
    .line 271
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 275
    .line 276
    .line 277
    goto :goto_9

    .line 278
    :cond_f
    new-instance p1, Lj7/p;

    .line 279
    .line 280
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 281
    .line 282
    .line 283
    throw p1

    .line 284
    :cond_10
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 285
    .line 286
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 287
    .line 288
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 292
    .line 293
    .line 294
    goto :goto_9

    .line 295
    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 296
    .line 297
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 298
    .line 299
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 303
    .line 304
    .line 305
    invoke-static {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V

    .line 306
    .line 307
    .line 308
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    :goto_b
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 313
    .line 314
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    return-object p1
.end method
