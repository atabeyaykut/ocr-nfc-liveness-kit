.class public abstract Lvb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvb/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lvb/a;->i()Lvb/i;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvb/i;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lvb/a;->i()Lvb/i;

    move-result-object v0

    invoke-interface {v0}, Lvb/i;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lvb/a;->i()Lvb/i;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvb/i;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lvb/a;->i()Lvb/i;

    move-result-object v0

    invoke-interface {v0}, Lvb/i;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final e(Llb/f;Lua/c;)Lma/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lvb/a;->i()Lvb/i;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvb/l;->e(Llb/f;Lua/c;)Lma/g;

    move-result-object p1

    return-object p1
.end method

.method public f(Lvb/d;Lx9/l;)Ljava/util/Collection;
    .locals 1
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

    invoke-virtual {p0}, Lvb/a;->i()Lvb/i;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvb/l;->f(Lvb/d;Lx9/l;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lvb/a;->i()Lvb/i;

    move-result-object v0

    invoke-interface {v0}, Lvb/i;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lvb/i;
    .locals 2

    invoke-virtual {p0}, Lvb/a;->i()Lvb/i;

    move-result-object v0

    instance-of v0, v0, Lvb/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lvb/a;->i()Lvb/i;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.AbstractScopeAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lvb/a;

    invoke-virtual {v0}, Lvb/a;->h()Lvb/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lvb/a;->i()Lvb/i;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract i()Lvb/i;
.end method
