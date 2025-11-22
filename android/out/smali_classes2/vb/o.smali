.class public final Lvb/o;
.super Lvb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvb/o$a;
    }
.end annotation


# instance fields
.field public final b:Lvb/i;


# direct methods
.method public constructor <init>(Lvb/i;)V
    .locals 0

    invoke-direct {p0}, Lvb/a;-><init>()V

    iput-object p1, p0, Lvb/o;->b:Lvb/i;

    return-void
.end method


# virtual methods
.method public final a(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lvb/a;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    sget-object p2, Lvb/q;->a:Lvb/q;

    invoke-static {p1, p2}, Lob/u;->a(Ljava/util/Collection;Lx9/l;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final c(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lvb/a;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    sget-object p2, Lvb/p;->a:Lvb/p;

    invoke-static {p1, p2}, Lob/u;->a(Ljava/util/Collection;Lx9/l;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lvb/d;Lx9/l;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb/d;",
            "Lx9/l<",
            "-",
            "Llb/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lma/j;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lvb/a;->f(Lvb/d;Lx9/l;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lma/j;

    instance-of v2, v2, Lma/a;

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p1, Lvb/o$b;->a:Lvb/o$b;

    invoke-static {p2, p1}, Lob/u;->a(Ljava/util/Collection;Lx9/l;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {v0, p1}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lvb/i;
    .locals 1

    iget-object v0, p0, Lvb/o;->b:Lvb/i;

    return-object v0
.end method
