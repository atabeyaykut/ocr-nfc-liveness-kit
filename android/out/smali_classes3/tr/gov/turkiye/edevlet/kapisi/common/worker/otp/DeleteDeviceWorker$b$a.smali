.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.otp.DeleteDeviceWorker$doWork$2$1"
    f = "DeleteDeviceWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker;

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
    const-string v1, "tidValue"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 28
    :goto_1
    if-nez p1, :cond_2

    .line 29
    .line 30
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker;->a:Lud/d0;

    .line 31
    .line 32
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v1, "apiOTPClient.create(TwoFactorAuthAPI::class.java)"

    .line 39
    .line 40
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move-object v2, p1

    .line 44
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;

    .line 45
    .line 46
    const-string v4, "android"

    .line 47
    .line 48
    iget-object v5, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker;->b:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker;->c:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v7, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface/range {v2 .. v7}, Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;->deleteActivatedDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 55
    .line 56
    .line 57
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :try_start_1
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 63
    .line 64
    const-string v1, "response"

    .line 65
    .line 66
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catch_0
    move-exception p1

    .line 78
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 82
    .line 83
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :goto_2
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 91
    .line 92
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/otp/ServerTimeModel;

    .line 97
    .line 98
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeApproveRequest(Ltr/gov/turkiye/edevlet/kapisi/data/otp/ServerTimeModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 103
    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_4

    .line 111
    :cond_2
    :goto_3
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    goto :goto_4

    .line 116
    :cond_3
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 117
    .line 118
    if-eqz p1, :cond_4

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    new-instance p1, Lj7/p;

    .line 122
    .line 123
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 124
    .line 125
    .line 126
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 127
    :catch_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    :goto_4
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 132
    .line 133
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-object p1
.end method
