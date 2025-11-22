.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.logout.LogoutWorker$doWork$2$1"
    f = "LogoutWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;

    .line 2
    .line 3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;->a:Lud/d0;

    .line 7
    .line 8
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/logout/LogoutAPI;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "apiClientSession.create(LogoutAPI::class.java)"

    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/logout/LogoutAPI;

    .line 20
    .line 21
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;->b:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "android"

    .line 24
    .line 25
    iget-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;->c:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;->d:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {p1, v1, v2, v3, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/logout/LogoutAPI;->logoutUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    :try_start_1
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 38
    .line 39
    const-string v1, "response"

    .line 40
    .line 41
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 57
    .line 58
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 66
    .line 67
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/logout/LogoutModel;

    .line 72
    .line 73
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/logout/LogoutModel;->isSuccess()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_2

    .line 84
    :cond_0
    :goto_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    new-instance p1, Lj7/p;

    .line 95
    .line 96
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 97
    .line 98
    .line 99
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    :catch_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :goto_2
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 105
    .line 106
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object p1
.end method
