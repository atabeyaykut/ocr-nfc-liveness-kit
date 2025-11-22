.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker$doWork$2$1"
    f = "BarcodeVerifyWorker.kt"
    l = {
        0x32
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;

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
    goto/16 :goto_3

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
    const-string v1, "qrContent"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const/4 p1, 0x0

    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 51
    :goto_1
    if-nez v1, :cond_d

    .line 52
    .line 53
    iget-object v1, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;->a:Lud/d0;

    .line 54
    .line 55
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyAPI;

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v4, "apiClientSession.create(\u2026odeVerifyAPI::class.java)"

    .line 62
    .line 63
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move-object v4, v1

    .line 67
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyAPI;

    .line 68
    .line 69
    const-string v6, "android"

    .line 70
    .line 71
    iget-object v7, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;->b:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v8, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;->c:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v9, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;->d:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface/range {v4 .. v9}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyAPI;->verifyDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 78
    .line 79
    .line 80
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :try_start_2
    invoke-interface {v1}, Lud/b;->execute()Lud/c0;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 86
    .line 87
    const-string v5, "response"

    .line 88
    .line 89
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {v4, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catch_0
    move-exception v1

    .line 101
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 105
    .line 106
    invoke-direct {v4, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :goto_2
    instance-of v1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 110
    .line 111
    if-eqz v1, :cond_b

    .line 112
    .line 113
    move-object v1, v4

    .line 114
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 115
    .line 116
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyModel;

    .line 121
    .line 122
    invoke-static {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    instance-of v5, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 127
    .line 128
    const/4 v6, 0x0

    .line 129
    if-eqz v5, :cond_5

    .line 130
    .line 131
    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 132
    .line 133
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 134
    .line 135
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a$a;

    .line 136
    .line 137
    invoke-direct {v1, v4, v6}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;Lp9/d;)V

    .line 138
    .line 139
    .line 140
    iput v2, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker$b$a;->a:I

    .line 141
    .line 142
    invoke-static {p1, v1, p0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p1, v0, :cond_4

    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_4
    :goto_3
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    goto/16 :goto_6

    .line 154
    .line 155
    :cond_5
    instance-of v0, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 156
    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 160
    .line 161
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 162
    .line 163
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    :goto_4
    invoke-static {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    goto :goto_6

    .line 177
    :cond_6
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 178
    .line 179
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyModel;

    .line 184
    .line 185
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyModel;->getMessageArr()Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_7

    .line 190
    .line 191
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    move-object v6, v0

    .line 196
    check-cast v6, Ljava/lang/String;

    .line 197
    .line 198
    :cond_7
    if-eqz v6, :cond_9

    .line 199
    .line 200
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-nez v0, :cond_8

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_8
    const/4 v2, 0x0

    .line 208
    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    .line 209
    .line 210
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 211
    .line 212
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 213
    .line 214
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_a
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 222
    .line 223
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 224
    .line 225
    invoke-direct {v0, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_b
    instance-of p1, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 233
    .line 234
    if-eqz p1, :cond_c

    .line 235
    .line 236
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 237
    .line 238
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 239
    .line 240
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_c
    new-instance p1, Lj7/p;

    .line 248
    .line 249
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 250
    .line 251
    .line 252
    throw p1

    .line 253
    :cond_d
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
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :catch_1
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
    invoke-static {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V

    .line 275
    .line 276
    .line 277
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    :goto_6
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 282
    .line 283
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    return-object p1
.end method
