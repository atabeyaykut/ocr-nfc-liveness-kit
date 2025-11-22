.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.update.UpdateCheckWorker$doWork$2$1"
    f = "UpdateCheckWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker;

    .line 2
    .line 3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker;->a:Lud/d0;

    .line 7
    .line 8
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateCheckerAPI;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "apiClientLogin.create(Up\u2026teCheckerAPI::class.java)"

    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v2, p1

    .line 20
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateCheckerAPI;

    .line 21
    .line 22
    iget-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker;->b:Ljava/lang/String;

    .line 23
    .line 24
    const-string v4, "android"

    .line 25
    .line 26
    iget-object v5, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker;->c:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker;->d:Ljava/lang/String;

    .line 29
    .line 30
    const-string v7, "tr.gov.turkiye.edevlet.kapisi.v21"

    .line 31
    .line 32
    invoke-interface/range {v2 .. v7}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateCheckerAPI;->checkAppUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 41
    .line 42
    const-string v1, "response"

    .line 43
    .line 44
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 65
    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    move-object p1, v0

    .line 69
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 70
    .line 71
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;

    .line 76
    .line 77
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/UpdateCheckExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 86
    .line 87
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;

    .line 92
    .line 93
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->getUpdateCheckData()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/4 v0, 0x0

    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->getUpdateServiceInfo()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    goto :goto_1

    .line 105
    :cond_0
    move-object p1, v0

    .line 106
    :goto_1
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    new-instance v2, Ldf/o0;

    .line 111
    .line 112
    if-eqz p1, :cond_1

    .line 113
    .line 114
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;->getTitle()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    goto :goto_2

    .line 119
    :cond_1
    move-object v3, v0

    .line 120
    :goto_2
    if-eqz p1, :cond_2

    .line 121
    .line 122
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;->getUpdateType()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    goto :goto_3

    .line 127
    :cond_2
    move-object v4, v0

    .line 128
    :goto_3
    if-eqz p1, :cond_3

    .line 129
    .line 130
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;->getDescription()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :cond_3
    invoke-direct {v2, v3, v4, v0}, Ldf/o0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    goto :goto_4

    .line 145
    :cond_5
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 146
    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    goto :goto_4

    .line 154
    :cond_6
    new-instance p1, Lj7/p;

    .line 155
    .line 156
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 157
    .line 158
    .line 159
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 160
    :catch_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    :goto_4
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 165
    .line 166
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-object p1
.end method
