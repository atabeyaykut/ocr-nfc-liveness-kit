.class public final Lza/z;
.super Lpa/c;
.source "SourceFile"


# instance fields
.field public final l:Lp4/g7;

.field public final m:Lcb/x;


# direct methods
.method public constructor <init>(Lp4/g7;Lcb/x;ILma/j;)V
    .locals 10

    .line 1
    const-string v0, "javaTypeParameter"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "containingDeclaration"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v4, Lya/e;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v4, p1, p2, v0}, Lya/e;-><init>(Lp4/g7;Lcb/d;Z)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Lcb/s;->getName()Llb/f;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    sget-object v6, Lcc/t1;->c:Lcc/t1;

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    iget-object v0, p1, Lp4/g7;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lya/c;

    .line 31
    .line 32
    iget-object v9, v0, Lya/c;->m:Lma/u0;

    .line 33
    .line 34
    move-object v1, p0

    .line 35
    move-object v3, p4

    .line 36
    move v8, p3

    .line 37
    invoke-direct/range {v1 .. v9}, Lpa/c;-><init>(Lbc/l;Lma/j;Lna/h;Llb/f;Lcc/t1;ZILma/u0;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lza/z;->l:Lp4/g7;

    .line 41
    .line 42
    iput-object p2, p0, Lza/z;->m:Lcb/x;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final E0(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcc/e0;",
            ">;)",
            "Ljava/util/List<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lza/z;->l:Lp4/g7;

    .line 2
    .line 3
    iget-object v1, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lya/c;

    .line 6
    .line 7
    iget-object v1, v1, Lya/c;->r:Ldb/t;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast p1, Ljava/lang/Iterable;

    .line 13
    .line 14
    new-instance v8, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {p1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v9, v2

    .line 38
    check-cast v9, Lcc/e0;

    .line 39
    .line 40
    sget-object v2, Ldb/s;->a:Ldb/s;

    .line 41
    .line 42
    const-string v3, "<this>"

    .line 43
    .line 44
    invoke-static {v9, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v3, "predicate"

    .line 48
    .line 49
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v9, v2}, Lcc/q1;->c(Lcc/e0;Lx9/l;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    new-instance v3, Ldb/v;

    .line 60
    .line 61
    sget-object v2, Lva/c;->f:Lva/c;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-direct {v3, p0, v4, v0, v2}, Ldb/v;-><init>(Lna/a;ZLp4/g7;Lva/c;)V

    .line 65
    .line 66
    .line 67
    sget-object v5, Lm9/v;->a:Lm9/v;

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    move-object v2, v1

    .line 72
    move-object v4, v9

    .line 73
    invoke-virtual/range {v2 .. v7}, Ldb/t;->a(Ldb/v;Lcc/e0;Ljava/util/List;Ldb/w;Z)Lcc/e0;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-nez v2, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move-object v9, v2

    .line 81
    :goto_1
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    return-object v8
.end method

.method public final K0(Lcc/e0;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final L0()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lza/z;->m:Lcb/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcb/x;->getUpperBounds()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lza/z;->l:Lp4/g7;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lp4/g7;->a()Lma/b0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lma/b0;->m()Lja/k;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lja/k;->f()Lcc/m0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "c.module.builtIns.anyType"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lp4/g7;->a()Lma/b0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Lma/b0;->m()Lja/k;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lja/k;->o()Lcc/m0;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 54
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lcb/j;

    .line 79
    .line 80
    iget-object v4, v2, Lp4/g7;->e:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v4, Lab/d;

    .line 83
    .line 84
    const/4 v5, 0x2

    .line 85
    const/4 v6, 0x3

    .line 86
    const/4 v7, 0x0

    .line 87
    invoke-static {v5, v7, v7, p0, v6}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v4, v3, v5}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    move-object v0, v1

    .line 100
    :goto_1
    return-object v0
.end method
