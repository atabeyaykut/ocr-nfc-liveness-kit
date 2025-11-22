.class public final Lvb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvb/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvb/b$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:[Lvb/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lvb/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvb/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lvb/b;->c:[Lvb/i;

    return-void
.end method


# virtual methods
.method public final a(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lvb/b;->c:[Lvb/i;

    array-length v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4, p1, p2}, Lvb/i;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v2, v4}, Ljc/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_3

    sget-object v2, Lm9/x;->a:Lm9/x;

    goto :goto_1

    :cond_1
    aget-object v0, v0, v3

    invoke-interface {v0, p1, p2}, Lvb/i;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v2, Lm9/v;->a:Lm9/v;

    :cond_3
    :goto_1
    return-object v2
.end method

.method public final b()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lvb/b;->c:[Lvb/i;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-interface {v4}, Lvb/i;->b()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v0}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final c(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lvb/b;->c:[Lvb/i;

    array-length v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4, p1, p2}, Lvb/i;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v2, v4}, Ljc/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_3

    sget-object v2, Lm9/x;->a:Lm9/x;

    goto :goto_1

    :cond_1
    aget-object v0, v0, v3

    invoke-interface {v0, p1, p2}, Lvb/i;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v2, Lm9/v;->a:Lm9/v;

    :cond_3
    :goto_1
    return-object v2
.end method

.method public final d()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lvb/b;->c:[Lvb/i;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-interface {v4}, Lvb/i;->d()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v0}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final e(Llb/f;Lua/c;)Lma/g;
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lvb/b;->c:[Lvb/i;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-interface {v4, p1, p2}, Lvb/l;->e(Llb/f;Lua/c;)Lma/g;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v5, v4, Lma/h;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lma/h;

    invoke-interface {v5}, Lma/z;->G()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    move-object v2, v4

    goto :goto_1

    :cond_0
    move-object v2, v4

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v2
.end method

.method public final f(Lvb/d;Lx9/l;)Ljava/util/Collection;
    .locals 5
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

    iget-object v0, p0, Lvb/b;->c:[Lvb/i;

    array-length v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-interface {v4, p1, p2}, Lvb/l;->f(Lvb/d;Lx9/l;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v3, v4}, Ljc/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_3

    sget-object v3, Lm9/x;->a:Lm9/x;

    goto :goto_1

    :cond_1
    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lvb/l;->f(Lvb/d;Lx9/l;)Ljava/util/Collection;

    move-result-object v3

    goto :goto_1

    :cond_2
    sget-object v3, Lm9/v;->a:Lm9/v;

    :cond_3
    :goto_1
    return-object v3
.end method

.method public final g()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    iget-object v1, p0, Lvb/b;->c:[Lvb/i;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    array-length v0, v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    new-instance v0, Lm9/j;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lm9/j;-><init>([Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :goto_1
    invoke-static {v0}, Lvb/k;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lvb/b;->b:Ljava/lang/String;

    return-object v0
.end method
