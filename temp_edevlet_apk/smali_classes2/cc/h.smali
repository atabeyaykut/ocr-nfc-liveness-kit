.class public abstract Lcc/h;
.super Lcc/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/h$a;
    }
.end annotation


# instance fields
.field public final b:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Lcc/h$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbc/l;)V
    .locals 3

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcc/n;-><init>()V

    new-instance v0, Lcc/h$b;

    invoke-direct {v0, p0}, Lcc/h$b;-><init>(Lcc/h;)V

    sget-object v1, Lcc/h$c;->a:Lcc/h$c;

    new-instance v2, Lcc/h$d;

    invoke-direct {v2, p0}, Lcc/h$d;-><init>(Lcc/h;)V

    invoke-interface {p1, v0, v1, v2}, Lbc/l;->a(Lcc/h$b;Lcc/h$c;Lcc/h$d;)Lbc/e;

    move-result-object p1

    iput-object p1, p0, Lcc/h;->b:Lbc/i;

    return-void
.end method


# virtual methods
.method public abstract d()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation
.end method

.method public e()Lcc/e0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0
.end method

.method public abstract g()Lma/u0;
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcc/h;->b:Lbc/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcc/h$a;

    .line 8
    .line 9
    iget-object v0, v0, Lcc/h$a;->b:Ljava/util/List;

    .line 10
    .line 11
    return-object v0
.end method

.method public i(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcc/e0;",
            ">;)",
            "Ljava/util/List<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public j(Lcc/e0;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic l()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcc/h;->h()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
