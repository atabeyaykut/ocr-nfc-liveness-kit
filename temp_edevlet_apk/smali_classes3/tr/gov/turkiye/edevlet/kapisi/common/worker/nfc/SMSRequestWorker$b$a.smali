.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSRequestWorker$doWork$2$1"
    f = "SMSRequestWorker.kt"
    l = {
        0x35
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;

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
    const-string v1, "token"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v1, "uuid"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const/4 p1, 0x0

    .line 49
    if-eqz v6, :cond_3

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v1, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 61
    :goto_1
    if-nez v1, :cond_a

    .line 62
    .line 63
    if-eqz v5, :cond_4

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_5

    .line 70
    .line 71
    :cond_4
    const/4 p1, 0x1

    .line 72
    :cond_5
    if-nez p1, :cond_a

    .line 73
    .line 74
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;->a:Lud/d0;

    .line 75
    .line 76
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationAPI;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v1, "apiClientLogin.create(Ca\u2026ificationAPI::class.java)"

    .line 83
    .line 84
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object v4, p1

    .line 88
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationAPI;

    .line 89
    .line 90
    const-string v7, "android"

    .line 91
    .line 92
    iget-object v8, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;->b:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v9, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;->c:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v10, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;->d:Ljava/lang/String;

    .line 97
    .line 98
    invoke-interface/range {v4 .. v10}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationAPI;->sendSMSVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 99
    .line 100
    .line 101
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :try_start_2
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 107
    .line 108
    const-string v4, "response"

    .line 109
    .line 110
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catch_0
    move-exception p1

    .line 122
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 126
    .line 127
    invoke-direct {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    instance-of p1, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 131
    .line 132
    if-eqz p1, :cond_8

    .line 133
    .line 134
    move-object p1, v1

    .line 135
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 136
    .line 137
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationModel;

    .line 142
    .line 143
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 148
    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 152
    .line 153
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 154
    .line 155
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a$a;

    .line 156
    .line 157
    const/4 v5, 0x0

    .line 158
    invoke-direct {v4, v1, v5}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;Lp9/d;)V

    .line 159
    .line 160
    .line 161
    iput v2, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker$b$a;->a:I

    .line 162
    .line 163
    invoke-static {p1, v4, p0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-ne p1, v0, :cond_6

    .line 168
    .line 169
    return-object v0

    .line 170
    :cond_6
    :goto_3
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    goto :goto_5

    .line 175
    :cond_7
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 176
    .line 177
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 178
    .line 179
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_8
    instance-of p1, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 187
    .line 188
    if-eqz p1, :cond_9

    .line 189
    .line 190
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 191
    .line 192
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 193
    .line 194
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_9
    new-instance p1, Lj7/p;

    .line 202
    .line 203
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 204
    .line 205
    .line 206
    throw p1

    .line 207
    :cond_a
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 208
    .line 209
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 210
    .line 211
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    :goto_4
    invoke-static {v3}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;)V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 221
    .line 222
    .line 223
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 224
    goto :goto_5

    .line 225
    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 226
    .line 227
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 228
    .line 229
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v3}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;)V

    .line 236
    .line 237
    .line 238
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    :goto_5
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 243
    .line 244
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-object p1
.end method
