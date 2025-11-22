.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.UnfavoriteOperationWorker$doWork$2$1$1"
    f = "UnfavoriteOperationWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(ILp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a$a;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a$a;->a:I

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a$a;

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a$a;->a:I

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a$a;-><init>(ILp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "realmMain"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/Integer;

    .line 20
    .line 21
    iget v2, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a$a;->a:I

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const-string v2, "serviceCode"

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 36
    .line 37
    const-string v1, "REMOVE"

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    new-instance v3, Lpe/g;

    .line 43
    .line 44
    invoke-direct {v3, v0, v2}, Lpe/g;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v3}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lio/realm/a;->m()V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v0, Lpe/e;

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-direct {v0, v2, v1}, Lpe/e;-><init>(ZLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v0, Lpe/e;

    .line 76
    .line 77
    invoke-direct {v0, v2, v1}, Lpe/e;-><init>(ZLjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_0
    return-object p1
.end method
