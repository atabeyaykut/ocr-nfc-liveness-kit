.class public final Lag/i;
.super Lgf/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lag/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgf/f<",
        "Lag/i$a;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lag/b;

.field public final c:Lkotlinx/coroutines/scheduling/b;


# direct methods
.method public constructor <init>(Lag/b;)V
    .locals 1

    .line 1
    const-string v0, "institutionDetailRepository"

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
    iput-object p1, p0, Lag/i;->b:Lag/b;

    .line 10
    .line 11
    sget-object p1, Lnc/j0;->b:Lkotlinx/coroutines/scheduling/b;

    .line 12
    .line 13
    iput-object p1, p0, Lag/i;->c:Lkotlinx/coroutines/scheduling/b;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/scheduling/b;
    .locals 1

    iget-object v0, p0, Lag/i;->c:Lkotlinx/coroutines/scheduling/b;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lag/i$a;

    .line 2
    .line 3
    iget v0, p1, Lag/i$a;->a:I

    .line 4
    .line 5
    iget-object v1, p1, Lag/i$a;->c:Ljava/lang/Integer;

    .line 6
    .line 7
    iget-object v2, p0, Lag/i;->b:Lag/b;

    .line 8
    .line 9
    iget p1, p1, Lag/i$a;->b:I

    .line 10
    .line 11
    invoke-virtual {v2, v0, p1, v1, p2}, Lag/b;->a(IILjava/lang/Integer;Lp9/d;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
