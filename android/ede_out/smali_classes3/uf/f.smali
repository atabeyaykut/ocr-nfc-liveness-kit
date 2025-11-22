.class public final Luf/f;
.super Lgf/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luf/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgf/e<",
        "Luf/f$a;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final b:Luf/b;

.field public final c:Lkotlinx/coroutines/scheduling/b;


# direct methods
.method public constructor <init>(Luf/b;)V
    .locals 1

    .line 1
    const-string v0, "municipalityListRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgf/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Luf/f;->b:Luf/b;

    .line 10
    .line 11
    sget-object p1, Lnc/j0;->b:Lkotlinx/coroutines/scheduling/b;

    .line 12
    .line 13
    iput-object p1, p0, Luf/f;->c:Lkotlinx/coroutines/scheduling/b;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/scheduling/b;
    .locals 1

    iget-object v0, p0, Luf/f;->c:Lkotlinx/coroutines/scheduling/b;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Luf/f$a;

    .line 2
    .line 3
    iget v0, p1, Luf/f$a;->a:I

    .line 4
    .line 5
    iget-object v1, p0, Luf/f;->b:Luf/b;

    .line 6
    .line 7
    iget p1, p1, Luf/f$a;->b:I

    .line 8
    .line 9
    invoke-virtual {v1, v0, p1, p2}, Luf/b;->b(IILp9/d;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
