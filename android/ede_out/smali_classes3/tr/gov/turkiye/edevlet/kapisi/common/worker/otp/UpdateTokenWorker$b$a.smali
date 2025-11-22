.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker$doWork$2$1"
    f = "UpdateTokenWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;

    .line 2
    .line 3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, "token"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;->a:Landroid/content/Context;

    .line 17
    .line 18
    const-string v1, "settings"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "did"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 p1, 0x1

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 45
    :goto_1
    if-nez v1, :cond_4

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    :cond_2
    const/4 v2, 0x1

    .line 56
    :cond_3
    if-nez v2, :cond_4

    .line 57
    .line 58
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;->b:Lud/d0;

    .line 59
    .line 60
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v1, "apiOTPClient.create(TwoFactorAuthAPI::class.java)"

    .line 67
    .line 68
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move-object v2, p1

    .line 72
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;

    .line 73
    .line 74
    const-string v5, "android"

    .line 75
    .line 76
    iget-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;->c:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v7, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;->d:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v8, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;->e:Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface/range {v2 .. v8}, Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;->updatePushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 83
    .line 84
    .line 85
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :try_start_1
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 91
    .line 92
    const-string v1, "response"

    .line 93
    .line 94
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception p1

    .line 106
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 110
    .line 111
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 115
    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 119
    .line 120
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/otp/TokenUpdateModel;

    .line 125
    .line 126
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/otp/TokenUpdateModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 131
    .line 132
    if-eqz p1, :cond_4

    .line 133
    .line 134
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    goto :goto_4

    .line 139
    :cond_4
    :goto_3
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    goto :goto_4

    .line 144
    :cond_5
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 145
    .line 146
    if-eqz p1, :cond_6

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_6
    new-instance p1, Lj7/p;

    .line 150
    .line 151
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 152
    .line 153
    .line 154
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    :catch_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    :goto_4
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 160
    .line 161
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-object p1
.end method
