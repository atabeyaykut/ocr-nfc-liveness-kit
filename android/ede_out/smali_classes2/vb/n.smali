.class public final Lvb/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvb/i;


# instance fields
.field public final b:Lvb/i;

.field public final c:Lcc/p1;

.field public d:Ljava/util/HashMap;

.field public final e:Ll9/j;


# direct methods
.method public constructor <init>(Lvb/i;Lcc/p1;)V
    .locals 1

    .line 1
    const-string v0, "workerScope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "givenSubstitutor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lvb/n;->b:Lvb/i;

    .line 15
    .line 16
    new-instance p1, Lvb/n$b;

    .line 17
    .line 18
    invoke-direct {p1, p2}, Lvb/n$b;-><init>(Lcc/p1;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lc5/y;->w(Lx9/a;)Ll9/j;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcc/p1;->g()Lcc/l1;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "givenSubstitutor.substitution"

    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lpb/d;->b(Lcc/l1;)Lcc/l1;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lcc/p1;->e(Lcc/l1;)Lcc/p1;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lvb/n;->c:Lcc/p1;

    .line 42
    .line 43
    new-instance p1, Lvb/n$a;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lvb/n$a;-><init>(Lvb/n;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lc5/y;->w(Lx9/a;)Ll9/j;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lvb/n;->e:Ll9/j;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lvb/n;->b:Lvb/i;

    invoke-interface {v0, p1, p2}, Lvb/i;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvb/n;->h(Ljava/util/Collection;)Ljava/util/Collection;

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

    iget-object v0, p0, Lvb/n;->b:Lvb/i;

    invoke-interface {v0}, Lvb/i;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final c(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lvb/n;->b:Lvb/i;

    invoke-interface {v0, p1, p2}, Lvb/i;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvb/n;->h(Ljava/util/Collection;)Ljava/util/Collection;

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

    iget-object v0, p0, Lvb/n;->b:Lvb/i;

    invoke-interface {v0}, Lvb/i;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final e(Llb/f;Lua/c;)Lma/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lvb/n;->b:Lvb/i;

    invoke-interface {v0, p1, p2}, Lvb/l;->e(Llb/f;Lua/c;)Lma/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lvb/n;->i(Lma/j;)Lma/j;

    move-result-object p1

    check-cast p1, Lma/g;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final f(Lvb/d;Lx9/l;)Ljava/util/Collection;
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

    .line 1
    const-string v0, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "nameFilter"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lvb/n;->e:Ll9/j;

    .line 12
    .line 13
    invoke-virtual {p1}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/Collection;

    .line 18
    .line 19
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

    iget-object v0, p0, Lvb/n;->b:Lvb/i;

    invoke-interface {v0}, Lvb/i;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lma/j;",
            ">(",
            "Ljava/util/Collection<",
            "+TD;>;)",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lvb/n;->c:Lcc/p1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcc/p1;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-ge v0, v2, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    div-int/lit8 v2, v0, 0x3

    .line 28
    .line 29
    add-int/2addr v2, v0

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    :goto_0
    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lma/j;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lvb/n;->i(Lma/j;)Lma/j;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    return-object v1
.end method

.method public final i(Lma/j;)Lma/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lma/j;",
            ">(TD;)TD;"
        }
    .end annotation

    iget-object v0, p0, Lvb/n;->c:Lcc/p1;

    invoke-virtual {v0}, Lcc/p1;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    iget-object v1, p0, Lvb/n;->d:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lvb/n;->d:Ljava/util/HashMap;

    :cond_1
    iget-object v1, p0, Lvb/n;->d:Ljava/util/HashMap;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    instance-of v2, p1, Lma/t0;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lma/t0;

    invoke-interface {v2, v0}, Lma/t0;->c(Lcc/p1;)Lma/k;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " substitution fails"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown descriptor in scope: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    check-cast v2, Lma/j;

    return-object v2
.end method
