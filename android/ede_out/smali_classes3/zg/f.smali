.class public final Lzg/f;
.super Lgf/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzg/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgf/f<",
        "Lzg/f$a;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lzg/i;

.field public final c:Lkotlinx/coroutines/scheduling/b;


# direct methods
.method public constructor <init>(Lzg/i;)V
    .locals 1

    .line 1
    const-string v0, "mobileAccidentApproveRepository"

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
    iput-object p1, p0, Lzg/f;->b:Lzg/i;

    .line 10
    .line 11
    sget-object p1, Lnc/j0;->b:Lkotlinx/coroutines/scheduling/b;

    .line 12
    .line 13
    iput-object p1, p0, Lzg/f;->c:Lkotlinx/coroutines/scheduling/b;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/scheduling/b;
    .locals 1

    iget-object v0, p0, Lzg/f;->c:Lkotlinx/coroutines/scheduling/b;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lzg/f$a;

    .line 2
    .line 3
    iget-object p1, p1, Lzg/f$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lzg/f;->b:Lzg/i;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lzg/i;->i(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
