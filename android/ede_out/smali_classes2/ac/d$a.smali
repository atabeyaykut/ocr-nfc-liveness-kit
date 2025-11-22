.class public final Lac/d$a;
.super Lac/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lac/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final g:Ldc/f;

.field public final h:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/Collection<",
            "Lma/j;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/Collection<",
            "Lcc/e0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic j:Lac/d;


# direct methods
.method public constructor <init>(Lac/d;Ldc/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/f;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lac/d$a;->j:Lac/d;

    .line 7
    .line 8
    iget-object v2, p1, Lac/d;->m:Lyb/n;

    .line 9
    .line 10
    iget-object v0, p1, Lac/d;->e:Lgb/b;

    .line 11
    .line 12
    iget-object v3, v0, Lgb/b;->s:Ljava/util/List;

    .line 13
    .line 14
    const-string v1, "classProto.functionList"

    .line 15
    .line 16
    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, v0, Lgb/b;->t:Ljava/util/List;

    .line 20
    .line 21
    const-string v1, "classProto.propertyList"

    .line 22
    .line 23
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v5, v0, Lgb/b;->v:Ljava/util/List;

    .line 27
    .line 28
    const-string v1, "classProto.typeAliasList"

    .line 29
    .line 30
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lgb/b;->l:Ljava/util/List;

    .line 34
    .line 35
    const-string v1, "classProto.nestedClassNameList"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast v0, Ljava/lang/Iterable;

    .line 41
    .line 42
    iget-object p1, p1, Lac/d;->m:Lyb/n;

    .line 43
    .line 44
    iget-object p1, p1, Lyb/n;->b:Lib/c;

    .line 45
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_0

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-static {p1, v6}, La6/a;->o(Lib/c;I)Llb/f;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-instance v6, Lac/d$a$a;

    .line 84
    .line 85
    invoke-direct {v6, v1}, Lac/d$a$a;-><init>(Ljava/util/ArrayList;)V

    .line 86
    .line 87
    .line 88
    move-object v1, p0

    .line 89
    invoke-direct/range {v1 .. v6}, Lac/i;-><init>(Lyb/n;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lx9/a;)V

    .line 90
    .line 91
    .line 92
    iput-object p2, p0, Lac/d$a;->g:Ldc/f;

    .line 93
    .line 94
    iget-object p1, p0, Lac/i;->b:Lyb/n;

    .line 95
    .line 96
    iget-object p1, p1, Lyb/n;->a:Lyb/l;

    .line 97
    .line 98
    iget-object p1, p1, Lyb/l;->a:Lbc/l;

    .line 99
    .line 100
    new-instance p2, Lac/d$a$b;

    .line 101
    .line 102
    invoke-direct {p2, p0}, Lac/d$a$b;-><init>(Lac/d$a;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p1, p2}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iput-object p1, p0, Lac/d$a;->h:Lbc/i;

    .line 110
    .line 111
    iget-object p1, p0, Lac/i;->b:Lyb/n;

    .line 112
    .line 113
    iget-object p1, p1, Lyb/n;->a:Lyb/l;

    .line 114
    .line 115
    iget-object p1, p1, Lyb/l;->a:Lbc/l;

    .line 116
    .line 117
    new-instance p2, Lac/d$a$c;

    .line 118
    .line 119
    invoke-direct {p2, p0}, Lac/d$a$c;-><init>(Lac/d$a;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, p2}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, p0, Lac/d$a;->i:Lbc/i;

    .line 127
    .line 128
    return-void
.end method


# virtual methods
.method public final a(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lac/d$a;->t(Llb/f;Lua/a;)V

    invoke-super {p0, p1, p2}, Lac/i;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final c(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lac/d$a;->t(Llb/f;Lua/a;)V

    invoke-super {p0, p1, p2}, Lac/i;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final e(Llb/f;Lua/c;)Lma/g;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lac/d$a;->t(Llb/f;Lua/a;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lac/d$a;->j:Lac/d;

    .line 10
    .line 11
    iget-object v0, v0, Lac/d;->r:Lac/d$c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lac/d$c;->b:Lbc/h;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lma/e;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    invoke-super {p0, p1, p2}, Lac/i;->e(Llb/f;Lua/c;)Lma/g;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
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

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lac/d$a;->h:Lbc/i;

    invoke-interface {p1}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final h(Ljava/util/ArrayList;Lx9/l;)V
    .locals 4

    .line 1
    const-string v0, "nameFilter"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lac/d$a;->j:Lac/d;

    .line 7
    .line 8
    iget-object p2, p2, Lac/d;->r:Lac/d$c;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object v0, p2, Lac/d$c;->a:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Llb/f;

    .line 38
    .line 39
    const-string v3, "name"

    .line 40
    .line 41
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p2, Lac/d$c;->b:Lbc/h;

    .line 45
    .line 46
    invoke-interface {v3, v2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lma/e;

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v1, 0x0

    .line 59
    :cond_2
    if-nez v1, :cond_3

    .line 60
    .line 61
    sget-object v1, Lm9/v;->a:Lm9/v;

    .line 62
    .line 63
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final j(Llb/f;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lac/d$a;->i:Lbc/i;

    .line 12
    .line 13
    invoke-interface {v1}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcc/e0;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcc/e0;->o()Lvb/i;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-object v3, Lua/c;->c:Lua/c;

    .line 40
    .line 41
    invoke-interface {v2, p1, v3}, Lvb/i;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lac/i;->b:Lyb/n;

    .line 50
    .line 51
    iget-object v1, v1, Lyb/n;->a:Lyb/l;

    .line 52
    .line 53
    iget-object v1, v1, Lyb/l;->n:Loa/a;

    .line 54
    .line 55
    iget-object v2, p0, Lac/d$a;->j:Lac/d;

    .line 56
    .line 57
    invoke-interface {v1, p1, v2}, Loa/a;->d(Llb/f;Lac/d;)Ljava/util/Collection;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, v0, p2}, Lac/d$a;->s(Llb/f;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final k(Llb/f;Ljava/util/ArrayList;)V
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lac/d$a;->i:Lbc/i;

    invoke-interface {v1}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcc/e0;

    invoke-virtual {v2}, Lcc/e0;->o()Lvb/i;

    move-result-object v2

    sget-object v3, Lua/c;->c:Lua/c;

    invoke-interface {v2, p1, v3}, Lvb/i;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lac/d$a;->s(Llb/f;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final l(Llb/f;)Llb/b;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lac/d$a;->j:Lac/d;

    .line 7
    .line 8
    iget-object v0, v0, Lac/d;->h:Llb/b;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Llb/b;->d(Llb/f;)Llb/b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final n()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lac/d$a;->j:Lac/d;

    .line 2
    .line 3
    iget-object v0, v0, Lac/d;->p:Lac/d$b;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcc/h;->h()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Iterable;

    .line 10
    .line 11
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcc/e0;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcc/e0;->o()Lvb/i;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Lvb/i;->g()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-static {v2, v1}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    return-object v1
.end method

.method public final o()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lac/d$a;->j:Lac/d;

    .line 2
    .line 3
    iget-object v1, v0, Lac/d;->p:Lac/d$b;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcc/h;->h()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Iterable;

    .line 10
    .line 11
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcc/e0;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcc/e0;->o()Lvb/i;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Lvb/i;->b()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3, v2}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lac/i;->b:Lyb/n;

    .line 45
    .line 46
    iget-object v1, v1, Lyb/n;->a:Lyb/l;

    .line 47
    .line 48
    iget-object v1, v1, Lyb/l;->n:Loa/a;

    .line 49
    .line 50
    invoke-interface {v1, v0}, Loa/a;->b(Lac/d;)Ljava/util/Collection;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    return-object v2
.end method

.method public final p()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lac/d$a;->j:Lac/d;

    .line 2
    .line 3
    iget-object v0, v0, Lac/d;->p:Lac/d$b;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcc/h;->h()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Iterable;

    .line 10
    .line 11
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcc/e0;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcc/e0;->o()Lvb/i;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Lvb/i;->d()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2, v1}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object v1
.end method

.method public final r(Lac/l;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lac/i;->b:Lyb/n;

    .line 2
    .line 3
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 4
    .line 5
    iget-object v0, v0, Lyb/l;->o:Loa/c;

    .line 6
    .line 7
    iget-object v1, p0, Lac/d$a;->j:Lac/d;

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Loa/c;->c(Lac/d;Lac/l;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final s(Llb/f;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lac/i;->b:Lyb/n;

    .line 7
    .line 8
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 9
    .line 10
    iget-object v0, v0, Lyb/l;->q:Ldc/l;

    .line 11
    .line 12
    invoke-interface {v0}, Ldc/l;->a()Lob/n;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v4, p0, Lac/d$a;->j:Lac/d;

    .line 17
    .line 18
    new-instance v5, Lac/e;

    .line 19
    .line 20
    invoke-direct {v5, p3}, Lac/e;-><init>(Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    move-object v1, p1

    .line 24
    move-object v2, p2

    .line 25
    invoke-virtual/range {v0 .. v5}, Lob/n;->h(Llb/f;Ljava/util/Collection;Ljava/util/Collection;Lma/e;Lob/m;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final t(Llb/f;Lua/a;)V
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lac/i;->b:Lyb/n;

    .line 7
    .line 8
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 9
    .line 10
    iget-object v0, v0, Lyb/l;->i:Lua/b;

    .line 11
    .line 12
    iget-object v1, p0, Lac/d$a;->j:Lac/d;

    .line 13
    .line 14
    check-cast p2, Lua/c;

    .line 15
    .line 16
    invoke-static {v0, p2, v1, p1}, Lta/a;->a(Lua/b;Lua/c;Lma/e;Llb/f;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
