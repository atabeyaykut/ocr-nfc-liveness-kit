.class public final Lmd/a;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:Lmd/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lmd/a;->a:Lmd/b;

    if-eqz v0, :cond_0

    check-cast v0, Lgd/e$a;

    invoke-virtual {v0}, Lgd/e$a;->a()V

    :cond_0
    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    iget-object v0, p0, Lmd/a;->a:Lmd/b;

    if-eqz v0, :cond_0

    check-cast v0, Lgd/e$a;

    invoke-virtual {v0}, Lgd/e$a;->a()V

    :cond_0
    return p1
.end method

.method public final clear()V
    .locals 1

    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lmd/a;->a:Lmd/b;

    if-eqz v0, :cond_0

    check-cast v0, Lgd/e$a;

    invoke-virtual {v0}, Lgd/e$a;->a()V

    :cond_0
    return-void
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lmd/a;->a:Lmd/b;

    if-eqz v0, :cond_0

    check-cast v0, Lgd/e$a;

    invoke-virtual {v0}, Lgd/e$a;->a()V

    :cond_0
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    iget-object v0, p0, Lmd/a;->a:Lmd/b;

    if-eqz v0, :cond_0

    check-cast v0, Lgd/e$a;

    invoke-virtual {v0}, Lgd/e$a;->a()V

    :cond_0
    return p1
.end method

.method public final removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    iget-object v0, p0, Lmd/a;->a:Lmd/b;

    if-eqz v0, :cond_0

    check-cast v0, Lgd/e$a;

    invoke-virtual {v0}, Lgd/e$a;->a()V

    :cond_0
    return p1
.end method

.method public final removeRange(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    iget-object p1, p0, Lmd/a;->a:Lmd/b;

    if-eqz p1, :cond_0

    check-cast p1, Lgd/e$a;

    invoke-virtual {p1}, Lgd/e$a;->a()V

    :cond_0
    return-void
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lmd/a;->a:Lmd/b;

    if-eqz p2, :cond_0

    check-cast p2, Lgd/e$a;

    invoke-virtual {p2}, Lgd/e$a;->a()V

    :cond_0
    return-object p1
.end method

.method public final bridge size()I
    .locals 1

    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
