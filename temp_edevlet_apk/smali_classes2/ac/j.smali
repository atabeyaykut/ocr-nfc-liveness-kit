.class public final Lac/j;
.super Lac/i;
.source "SourceFile"


# instance fields
.field public final g:Lma/e0;

.field public final h:Ljava/lang/String;

.field public final i:Llb/c;


# direct methods
.method public constructor <init>(Lma/e0;Lgb/k;Lib/c;Lib/a;Lac/g;Lyb/l;Ljava/lang/String;Lx9/a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/e0;",
            "Lgb/k;",
            "Lib/c;",
            "Lib/a;",
            "Lac/g;",
            "Lyb/l;",
            "Ljava/lang/String;",
            "Lx9/a<",
            "+",
            "Ljava/util/Collection<",
            "Llb/f;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v15, p7

    .line 8
    .line 9
    const-string v1, "packageDescriptor"

    .line 10
    .line 11
    invoke-static {v14, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "nameResolver"

    .line 15
    .line 16
    move-object/from16 v2, p3

    .line 17
    .line 18
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "metadataVersion"

    .line 22
    .line 23
    move-object/from16 v3, p4

    .line 24
    .line 25
    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "debugName"

    .line 29
    .line 30
    invoke-static {v15, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "classNames"

    .line 34
    .line 35
    move-object/from16 v5, p8

    .line 36
    .line 37
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v10, Lib/g;

    .line 41
    .line 42
    iget-object v1, v0, Lgb/k;->g:Lgb/s;

    .line 43
    .line 44
    const-string v4, "proto.typeTable"

    .line 45
    .line 46
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v10, v1}, Lib/g;-><init>(Lgb/s;)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Lib/h;->b:Lib/h;

    .line 53
    .line 54
    iget-object v1, v0, Lgb/k;->h:Lgb/v;

    .line 55
    .line 56
    const-string v4, "proto.versionRequirementTable"

    .line 57
    .line 58
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lib/h$a;->a(Lgb/v;)Lib/h;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    move-object/from16 v7, p6

    .line 66
    .line 67
    move-object/from16 v8, p1

    .line 68
    .line 69
    move-object/from16 v9, p3

    .line 70
    .line 71
    move-object/from16 v12, p4

    .line 72
    .line 73
    move-object/from16 v13, p5

    .line 74
    .line 75
    invoke-virtual/range {v7 .. v13}, Lyb/l;->a(Lma/e0;Lib/c;Lib/g;Lib/h;Lib/a;Lac/g;)Lyb/n;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, v0, Lgb/k;->d:Ljava/util/List;

    .line 80
    .line 81
    const-string v3, "proto.functionList"

    .line 82
    .line 83
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, v0, Lgb/k;->e:Ljava/util/List;

    .line 87
    .line 88
    const-string v4, "proto.propertyList"

    .line 89
    .line 90
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v4, v0, Lgb/k;->f:Ljava/util/List;

    .line 94
    .line 95
    const-string v0, "proto.typeAliasList"

    .line 96
    .line 97
    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    move-object/from16 v0, p0

    .line 101
    .line 102
    invoke-direct/range {v0 .. v5}, Lac/i;-><init>(Lyb/n;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lx9/a;)V

    .line 103
    .line 104
    .line 105
    iput-object v14, v6, Lac/j;->g:Lma/e0;

    .line 106
    .line 107
    iput-object v15, v6, Lac/j;->h:Ljava/lang/String;

    .line 108
    .line 109
    invoke-interface/range {p1 .. p1}, Lma/e0;->d()Llb/c;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iput-object v0, v6, Lac/j;->i:Llb/c;

    .line 114
    .line 115
    return-void
.end method


# virtual methods
.method public final e(Llb/f;Lua/c;)Lma/g;
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
    iget-object v1, p0, Lac/j;->g:Lma/e0;

    .line 13
    .line 14
    invoke-static {v0, p2, v1, p1}, Lta/a;->b(Lua/b;Lua/c;Lma/e0;Llb/f;)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1, p2}, Lac/i;->e(Llb/f;Lua/c;)Lma/g;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final f(Lvb/d;Lx9/l;)Ljava/util/Collection;
    .locals 3

    .line 1
    const-string v0, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameFilter"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lac/i;->i(Lvb/d;Lx9/l;)Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lac/i;->b:Lyb/n;

    .line 16
    .line 17
    iget-object p2, p2, Lyb/n;->a:Lyb/l;

    .line 18
    .line 19
    iget-object p2, p2, Lyb/l;->k:Ljava/lang/Iterable;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Loa/b;

    .line 41
    .line 42
    iget-object v2, p0, Lac/j;->i:Llb/c;

    .line 43
    .line 44
    invoke-interface {v1, v2}, Loa/b;->b(Llb/c;)Ljava/util/Collection;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/Iterable;

    .line 49
    .line 50
    invoke-static {v1, v0}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v0, p1}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method public final h(Ljava/util/ArrayList;Lx9/l;)V
    .locals 0

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final l(Llb/f;)Llb/b;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Llb/b;

    iget-object v1, p0, Lac/j;->i:Llb/c;

    invoke-direct {v0, v1, p1}, Llb/b;-><init>(Llb/c;Llb/f;)V

    return-object v0
.end method

.method public final n()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/x;->a:Lm9/x;

    return-object v0
.end method

.method public final o()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/x;->a:Lm9/x;

    return-object v0
.end method

.method public final p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/x;->a:Lm9/x;

    return-object v0
.end method

.method public final q(Llb/f;)Z
    .locals 5

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lac/i;->q(Llb/f;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lac/i;->b:Lyb/n;

    .line 14
    .line 15
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 16
    .line 17
    iget-object v0, v0, Lyb/l;->k:Ljava/lang/Iterable;

    .line 18
    .line 19
    instance-of v2, v0, Ljava/util/Collection;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    move-object v2, v0

    .line 25
    check-cast v2, Ljava/util/Collection;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Loa/b;

    .line 50
    .line 51
    iget-object v4, p0, Lac/j;->i:Llb/c;

    .line 52
    .line 53
    invoke-interface {v2, v4, p1}, Loa/b;->c(Llb/c;Llb/f;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    :goto_0
    if-eqz p1, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const/4 v1, 0x0

    .line 64
    :cond_4
    :goto_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lac/j;->h:Ljava/lang/String;

    return-object v0
.end method
