.class public final Lpa/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx9/a<",
        "Ljava/util/Collection<",
        "Lma/u;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcc/p1;

.field public final synthetic b:Lpa/x;


# direct methods
.method public constructor <init>(Lpa/x;Lcc/p1;)V
    .locals 0

    iput-object p1, p0, Lpa/v;->b:Lpa/x;

    iput-object p2, p0, Lpa/v;->a:Lcc/p1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lkc/c;

    invoke-direct {v0}, Lkc/c;-><init>()V

    iget-object v1, p0, Lpa/v;->b:Lpa/x;

    invoke-virtual {v1}, Lpa/x;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lma/u;

    iget-object v3, p0, Lpa/v;->a:Lcc/p1;

    invoke-interface {v2, v3}, Lma/u;->c(Lcc/p1;)Lma/u;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkc/c;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
