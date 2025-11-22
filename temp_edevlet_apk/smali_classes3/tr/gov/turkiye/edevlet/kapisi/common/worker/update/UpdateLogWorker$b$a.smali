.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.update.UpdateLogWorker$doWork$2$1"
    f = "UpdateLogWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker;

    .line 2
    .line 3
    const-string v1, "S-Alert: "

    .line 4
    .line 5
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v2, "appId"

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker;->a:Lud/d0;

    .line 19
    .line 20
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateCheckerAPI;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "apiClientLogin.create(Up\u2026teCheckerAPI::class.java)"

    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateCheckerAPI;

    .line 32
    .line 33
    const-string v3, "100"

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v2, v3, p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateCheckerAPI;->updateLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :try_start_1
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 58
    .line 59
    const-string v1, "response"

    .line 60
    .line 61
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 77
    .line 78
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 82
    .line 83
    if-eqz p1, :cond_0

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
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateLogModel;

    .line 92
    .line 93
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/UpdateCheckExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateLogModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 98
    .line 99
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    goto :goto_1

    .line 104
    :cond_0
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 105
    .line 106
    if-eqz p1, :cond_1

    .line 107
    .line 108
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    new-instance p1, Lj7/p;

    .line 114
    .line 115
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 116
    .line 117
    .line 118
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 119
    :catch_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :goto_1
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 124
    .line 125
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object p1
.end method
