.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.otp.TimeWorker$doWork$2$1"
    f = "TimeWorker.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;

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
    goto :goto_1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :try_start_1
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;->a:Lud/d0;

    .line 28
    .line 29
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "apiOTPClient.create(TwoFactorAuthAPI::class.java)"

    .line 36
    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;

    .line 41
    .line 42
    const-string v1, "android"

    .line 43
    .line 44
    iget-object v4, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;->b:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v5, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;->c:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v6, v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;->d:Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {p1, v1, v4, v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;->fetchServerTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    :try_start_2
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 59
    .line 60
    const-string v4, "response"

    .line 61
    .line 62
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p1

    .line 74
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 78
    .line 79
    invoke-direct {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    instance-of p1, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    move-object p1, v1

    .line 87
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 88
    .line 89
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/otp/ServerTimeModel;

    .line 94
    .line 95
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/otp/ServerTimeModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 104
    .line 105
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 106
    .line 107
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a$a;

    .line 108
    .line 109
    const/4 v5, 0x0

    .line 110
    invoke-direct {v4, v1, v5}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;Lp9/d;)V

    .line 111
    .line 112
    .line 113
    iput v2, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker$b$a;->a:I

    .line 114
    .line 115
    invoke-static {p1, v4, p0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-ne p1, v0, :cond_2

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_2
    :goto_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    goto :goto_3

    .line 127
    :cond_3
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 128
    .line 129
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 130
    .line 131
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    instance-of p1, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 139
    .line 140
    if-eqz p1, :cond_5

    .line 141
    .line 142
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 143
    .line 144
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 145
    .line 146
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :goto_2
    invoke-static {v3}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;)V

    .line 153
    .line 154
    .line 155
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    goto :goto_3

    .line 160
    :cond_5
    new-instance p1, Lj7/p;

    .line 161
    .line 162
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 163
    .line 164
    .line 165
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 166
    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 167
    .line 168
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 169
    .line 170
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v3}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_3
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 184
    .line 185
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-object p1
.end method
