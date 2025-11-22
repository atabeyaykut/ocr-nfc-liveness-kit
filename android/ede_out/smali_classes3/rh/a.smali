.class public final Lrh/a;
.super Lgf/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrh/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgf/f<",
        "Lrh/a$a;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lrh/b;

.field public final c:Lkotlinx/coroutines/scheduling/b;


# direct methods
.method public constructor <init>(Lrh/b;)V
    .locals 1

    .line 1
    const-string v0, "mobileAccidentCompletedReportRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgf/f;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lrh/a;->b:Lrh/b;

    .line 10
    .line 11
    sget-object p1, Lnc/j0;->b:Lkotlinx/coroutines/scheduling/b;

    .line 12
    .line 13
    iput-object p1, p0, Lrh/a;->c:Lkotlinx/coroutines/scheduling/b;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/scheduling/b;
    .locals 1

    iget-object v0, p0, Lrh/a;->c:Lkotlinx/coroutines/scheduling/b;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lrh/a$a;

    .line 2
    .line 3
    iget-object v0, p1, Lrh/a$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p1, Lrh/a$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lrh/a;->b:Lrh/b;

    .line 8
    .line 9
    iget-object p1, p1, Lrh/a$a;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v2, v0, p1, v1, p2}, Lrh/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
