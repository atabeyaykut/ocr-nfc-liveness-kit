.class public final Ldh/c;
.super Lgf/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldh/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgf/f<",
        "Ldh/c$a;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Ldh/b;

.field public final c:Lkotlinx/coroutines/scheduling/b;


# direct methods
.method public constructor <init>(Ldh/b;)V
    .locals 1

    .line 1
    const-string v0, "mobileAccidentDriverRepository"

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
    iput-object p1, p0, Ldh/c;->b:Ldh/b;

    .line 10
    .line 11
    sget-object p1, Lnc/j0;->b:Lkotlinx/coroutines/scheduling/b;

    .line 12
    .line 13
    iput-object p1, p0, Ldh/c;->c:Lkotlinx/coroutines/scheduling/b;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/scheduling/b;
    .locals 1

    iget-object v0, p0, Ldh/c;->c:Lkotlinx/coroutines/scheduling/b;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ldh/c$a;

    .line 2
    .line 3
    iget-object p1, p0, Ldh/c;->b:Ldh/b;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Ldh/b;->e(Lp9/d;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
