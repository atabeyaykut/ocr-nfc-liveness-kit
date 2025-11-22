.class public final Lza/k;
.super Lza/o;
.source "SourceFile"


# instance fields
.field public final n:Lma/e;

.field public final o:Lcb/g;

.field public final p:Z

.field public final q:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/List<",
            "Lma/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public final r:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final s:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final t:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/Map<",
            "Llb/f;",
            "Lcb/n;",
            ">;>;"
        }
    .end annotation
.end field

.field public final u:Lbc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/h<",
            "Llb/f;",
            "Lma/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp4/g7;Lma/e;Lcb/g;ZLza/k;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p5}, Lza/o;-><init>(Lp4/g7;Lza/o;)V

    iput-object p2, p0, Lza/k;->n:Lma/e;

    iput-object p3, p0, Lza/k;->o:Lcb/g;

    iput-boolean p4, p0, Lza/k;->p:Z

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance p3, Lza/k$a;

    invoke-direct {p3, p1, p0}, Lza/k$a;-><init>(Lp4/g7;Lza/k;)V

    invoke-interface {p2, p3}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p2

    iput-object p2, p0, Lza/k;->q:Lbc/i;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance p3, Lza/k$e;

    invoke-direct {p3, p0}, Lza/k$e;-><init>(Lza/k;)V

    invoke-interface {p2, p3}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p2

    iput-object p2, p0, Lza/k;->r:Lbc/i;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance p3, Lza/k$c;

    invoke-direct {p3, p1, p0}, Lza/k$c;-><init>(Lp4/g7;Lza/k;)V

    invoke-interface {p2, p3}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p2

    iput-object p2, p0, Lza/k;->s:Lbc/i;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance p3, Lza/k$b;

    invoke-direct {p3, p0}, Lza/k$b;-><init>(Lza/k;)V

    invoke-interface {p2, p3}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p2

    iput-object p2, p0, Lza/k;->t:Lbc/i;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance p3, Lza/k$f;

    invoke-direct {p3, p1, p0}, Lza/k$f;-><init>(Lp4/g7;Lza/k;)V

    invoke-interface {p2, p3}, Lbc/l;->e(Lx9/l;)Lbc/c$j;

    move-result-object p1

    iput-object p1, p0, Lza/k;->u:Lbc/h;

    return-void
.end method

.method public static C(Lma/q0;Lma/u;Ljava/util/AbstractCollection;)Lma/q0;
    .locals 4

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma/q0;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-interface {v0}, Lma/u;->Y()Lma/u;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v0, p1}, Lza/k;->F(Lma/a;Lma/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Lma/q0;->r()Lma/u$a;

    move-result-object p0

    invoke-interface {p0}, Lma/u$a;->o()Lma/u$a;

    move-result-object p0

    invoke-interface {p0}, Lma/u$a;->build()Lma/u;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    check-cast p0, Lma/q0;

    :goto_2
    return-object p0
.end method

.method public static D(Lma/q0;)Lma/q0;
    .locals 5

    .line 1
    invoke-interface {p0}, Lma/a;->g()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "valueParameters"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lm9/t;->j1(Ljava/util/List;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lma/a1;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    invoke-interface {v0}, Lma/z0;->getType()Lcc/e0;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcc/e0;->M0()Lcc/c1;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v3}, Lcc/c1;->n()Lma/g;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-static {v3}, Lsb/b;->h(Lma/j;)Llb/d;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Llb/d;->e()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v3, v2

    .line 45
    :goto_0
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3}, Llb/d;->h()Llb/c;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object v3, v2

    .line 53
    :goto_1
    sget-object v4, Lja/o;->f:Llb/c;

    .line 54
    .line 55
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move-object v0, v2

    .line 63
    :goto_2
    if-nez v0, :cond_3

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_3
    invoke-interface {p0}, Lma/q0;->r()Lma/u$a;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {p0}, Lma/a;->g()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p0}, Lm9/t;->X0(Ljava/util/List;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {v2, p0}, Lma/u$a;->c(Ljava/util/List;)Lma/u$a;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-interface {v0}, Lma/z0;->getType()Lcc/e0;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcc/e0;->K0()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcc/i1;

    .line 99
    .line 100
    invoke-interface {v0}, Lcc/i1;->getType()Lcc/e0;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {p0, v0}, Lma/u$a;->n(Lcc/e0;)Lma/u$a;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-interface {p0}, Lma/u$a;->build()Lma/u;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Lma/q0;

    .line 113
    .line 114
    move-object v0, p0

    .line 115
    check-cast v0, Lpa/p0;

    .line 116
    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    const/4 v1, 0x1

    .line 121
    iput-boolean v1, v0, Lpa/x;->y:Z

    .line 122
    .line 123
    :goto_3
    return-object p0

    .line 124
    :cond_5
    :goto_4
    return-object v2
.end method

.method public static F(Lma/a;Lma/a;)Z
    .locals 3

    sget-object v0, Lob/n;->f:Lob/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Lob/n;->n(Lma/a;Lma/a;Z)Lob/n$b;

    move-result-object v0

    invoke-virtual {v0}, Lob/n$b;->c()I

    move-result v0

    const-string v2, "DEFAULT.isOverridableByW\u2026iptor, this, true).result"

    invoke-static {v0, v2}, Landroidx/camera/core/impl/a;->k(ILjava/lang/String;)V

    if-ne v0, v1, :cond_0

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;->a(Lma/a;Lma/a;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static G(Lma/q0;Lma/q0;)Z
    .locals 2

    .line 1
    sget v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->m:I

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lma/j;->getName()Llb/f;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Llb/f;->o()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "removeAt"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Leb/w;->b(Lma/a;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/e;->h:Lkotlin/reflect/jvm/internal/impl/load/java/e$a$a;

    .line 29
    .line 30
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/e$a$a;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Lma/u;->a()Lma/u;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_1
    const-string v0, "if (superDescriptor.isRe\u2026iginal else subDescriptor"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p0}, Lza/k;->F(Lma/a;Lma/a;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0
.end method

.method public static H(Lma/l0;Ljava/lang/String;Lx9/l;)Lma/q0;
    .locals 4

    invoke-static {p1}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object p1

    invoke-interface {p2, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lma/q0;

    invoke-interface {p2}, Lma/a;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Ldc/d;->a:Ldc/m;

    invoke-interface {p2}, Lma/a;->getReturnType()Lcc/e0;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lma/z0;->getType()Lcc/e0;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ldc/m;->d(Lcc/e0;Lcc/e0;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    move-object v0, p2

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    :cond_4
    return-object v0
.end method

.method public static J(Lma/l0;Lx9/l;)Lma/q0;
    .locals 5

    .line 1
    invoke-interface {p0}, Lma/j;->getName()Llb/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Llb/f;->o()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "name.asString()"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lva/w;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p1, v0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lma/q0;

    .line 44
    .line 45
    invoke-interface {v0}, Lma/a;->g()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x1

    .line 54
    if-eq v2, v3, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {v0}, Lma/a;->getReturnType()Lcc/e0;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    sget-object v3, Lja/k;->e:Llb/f;

    .line 65
    .line 66
    sget-object v3, Lja/o$a;->d:Llb/d;

    .line 67
    .line 68
    invoke-static {v2, v3}, Lja/k;->D(Lcc/e0;Llb/d;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    sget-object v2, Ldc/d;->a:Ldc/m;

    .line 76
    .line 77
    invoke-interface {v0}, Lma/a;->g()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v4, "descriptor.valueParameters"

    .line 82
    .line 83
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v3}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lma/a1;

    .line 91
    .line 92
    invoke-interface {v3}, Lma/z0;->getType()Lcc/e0;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-interface {p0}, Lma/z0;->getType()Lcc/e0;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v2, v3, v4}, Ldc/m;->c(Lcc/e0;Lcc/e0;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    move-object v1, v0

    .line 107
    :cond_4
    :goto_0
    if-eqz v1, :cond_0

    .line 108
    .line 109
    :cond_5
    return-object v1
.end method

.method public static M(Lma/q0;Lma/u;)Z
    .locals 4

    const/4 v0, 0x2

    invoke-static {p0, v0}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lma/u;->a()Lma/u;

    move-result-object v2

    const-string v3, "builtinWithErasedParameters.original"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lza/k;->F(Lma/a;Lma/a;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final v(Lza/k;Llb/f;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lza/o;->e:Lbc/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lza/b;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lza/b;->b(Llb/f;)Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Iterable;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {p1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcb/q;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lza/o;->t(Lcb/q;)Lxa/e;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-object v0
.end method

.method public static final w(Lza/k;Llb/f;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lza/k;->K(Llb/f;)Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v1, v0

    .line 25
    check-cast v1, Lma/q0;

    .line 26
    .line 27
    const-string v2, "<this>"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->b(Lma/b;)Lma/b;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x1

    .line 37
    const/4 v4, 0x0

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v2, 0x0

    .line 43
    :goto_1
    if-nez v2, :cond_3

    .line 44
    .line 45
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a(Lma/u;)Lma/u;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/4 v3, 0x0

    .line 53
    :cond_3
    :goto_2
    if-nez v3, :cond_0

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    return-object p1
.end method


# virtual methods
.method public final A(Ljava/util/Set;Ljava/util/AbstractCollection;Lkc/d;Lx9/l;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_6

    .line 16
    .line 17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lma/l0;

    .line 22
    .line 23
    invoke-virtual {v0, v4, v2}, Lza/k;->E(Lma/l0;Lx9/l;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x0

    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_1
    invoke-virtual {v0, v4, v2}, Lza/k;->I(Lma/l0;Lx9/l;)Lma/q0;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v4}, Lma/b1;->f0()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_2

    .line 44
    .line 45
    invoke-static {v4, v2}, Lza/k;->J(Lma/l0;Lx9/l;)Lma/q0;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-static {v7}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move-object v7, v6

    .line 54
    :goto_0
    if-eqz v7, :cond_3

    .line 55
    .line 56
    invoke-interface {v7}, Lma/z;->j()Lma/a0;

    .line 57
    .line 58
    .line 59
    invoke-interface {v5}, Lma/z;->j()Lma/a0;

    .line 60
    .line 61
    .line 62
    :cond_3
    new-instance v14, Lxa/d;

    .line 63
    .line 64
    iget-object v8, v0, Lza/k;->n:Lma/e;

    .line 65
    .line 66
    invoke-direct {v14, v8, v5, v7, v4}, Lxa/d;-><init>(Lma/e;Lma/q0;Lma/q0;Lma/l0;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v5}, Lma/a;->getReturnType()Lcc/e0;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    invoke-static {v9}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object v13, Lm9/v;->a:Lm9/v;

    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, Lza/k;->p()Lma/o0;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    const/4 v12, 0x0

    .line 83
    move-object v8, v14

    .line 84
    move-object v10, v13

    .line 85
    invoke-virtual/range {v8 .. v13}, Lpa/l0;->Q0(Lcc/e0;Ljava/util/List;Lma/o0;Lpa/o0;Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v5}, Lna/a;->getAnnotations()Lna/h;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    const/4 v9, 0x0

    .line 93
    invoke-interface {v5}, Lma/m;->getSource()Lma/r0;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    invoke-static {v14, v8, v9, v10}, Lob/h;->i(Lma/l0;Lna/h;ZLma/r0;)Lpa/m0;

    .line 98
    .line 99
    .line 100
    move-result-object v15

    .line 101
    iput-object v5, v15, Lpa/k0;->m:Lma/u;

    .line 102
    .line 103
    invoke-virtual {v14}, Lpa/w0;->getType()Lcc/e0;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v15, v5}, Lpa/m0;->M0(Lcc/e0;)V

    .line 108
    .line 109
    .line 110
    if-eqz v7, :cond_5

    .line 111
    .line 112
    invoke-interface {v7}, Lma/a;->g()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    const-string v8, "setterMethod.valueParameters"

    .line 117
    .line 118
    invoke-static {v5, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v5}, Lm9/t;->c1(Ljava/util/List;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Lma/a1;

    .line 126
    .line 127
    if-eqz v5, :cond_4

    .line 128
    .line 129
    invoke-interface {v7}, Lna/a;->getAnnotations()Lna/h;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-interface {v5}, Lna/a;->getAnnotations()Lna/h;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    const/4 v11, 0x0

    .line 138
    invoke-interface {v7}, Lma/z;->getVisibility()Lma/q;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    invoke-interface {v7}, Lma/m;->getSource()Lma/r0;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    move-object v8, v14

    .line 147
    invoke-static/range {v8 .. v13}, Lob/h;->j(Lma/l0;Lna/h;Lna/h;ZLma/q;Lma/r0;)Lpa/n0;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    iput-object v7, v5, Lpa/k0;->m:Lma/u;

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    .line 155
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v3, "No parameter found for "

    .line 159
    .line 160
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    throw v1

    .line 174
    :cond_5
    move-object v5, v6

    .line 175
    :goto_1
    invoke-virtual {v14, v15, v5, v6, v6}, Lpa/l0;->O0(Lpa/m0;Lpa/n0;Lma/s;Lma/s;)V

    .line 176
    .line 177
    .line 178
    move-object v6, v14

    .line 179
    :goto_2
    move-object/from16 v5, p2

    .line 180
    .line 181
    if-eqz v6, :cond_0

    .line 182
    .line 183
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    if-eqz v1, :cond_6

    .line 187
    .line 188
    invoke-virtual {v1, v4}, Lkc/d;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    :cond_6
    return-void
.end method

.method public final B()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lza/k;->p:Z

    .line 2
    .line 3
    iget-object v1, p0, Lza/k;->n:Lma/e;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Lma/g;->i()Lcc/c1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcc/c1;->l()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "ownerDescriptor.typeConstructor.supertypes"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lza/o;->b:Lp4/g7;

    .line 22
    .line 23
    iget-object v0, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lya/c;

    .line 26
    .line 27
    iget-object v0, v0, Lya/c;->u:Ldc/l;

    .line 28
    .line 29
    invoke-interface {v0}, Ldc/l;->b()Ldc/f;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Ldc/f;->w(Lma/e;)Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public final E(Lma/l0;Lx9/l;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/l0;",
            "Lx9/l<",
            "-",
            "Llb/f;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lma/q0;",
            ">;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lb8/f;->Q(Lma/l0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lza/k;->I(Lma/l0;Lx9/l;)Lma/q0;

    move-result-object v0

    invoke-static {p1, p2}, Lza/k;->J(Lma/l0;Lx9/l;)Lma/q0;

    move-result-object p2

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lma/b1;->f0()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    return v2

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lma/z;->j()Lma/a0;

    move-result-object p1

    invoke-interface {v0}, Lma/z;->j()Lma/a0;

    move-result-object p2

    if-ne p1, p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final I(Lma/l0;Lx9/l;)Lma/q0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/l0;",
            "Lx9/l<",
            "-",
            "Llb/f;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lma/q0;",
            ">;>;)",
            "Lma/q0;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lma/l0;->l()Lpa/m0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->b(Lma/b;)Lma/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lma/m0;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-static {v0}, Lja/k;->z(Lma/j;)Z

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lsb/b;->k(Lma/b;)Lma/b;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget-object v3, Lva/h;->a:Lva/h;

    .line 26
    .line 27
    invoke-static {v2, v3}, Lsb/b;->b(Lma/b;Lx9/l;)Lma/b;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    sget-object v3, Lva/g;->a:Ljava/util/Map;

    .line 35
    .line 36
    invoke-static {v2}, Lsb/b;->g(Lma/j;)Llb/c;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Llb/f;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v2}, Llb/f;->o()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v2, p0, Lza/k;->n:Lma/e;

    .line 55
    .line 56
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->d(Lma/e;Lma/b;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    invoke-static {p1, v1, p2}, Lza/k;->H(Lma/l0;Ljava/lang/String;Lx9/l;)Lma/q0;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_3
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Llb/f;->o()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "name.asString()"

    .line 76
    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lva/w;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {p1, v0, p2}, Lza/k;->H(Lma/l0;Ljava/lang/String;Lx9/l;)Lma/q0;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method public final K(Llb/f;)Ljava/util/LinkedHashSet;
    .locals 4

    invoke-virtual {p0}, Lza/k;->B()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcc/e0;

    invoke-virtual {v2}, Lcc/e0;->o()Lvb/i;

    move-result-object v2

    sget-object v3, Lua/c;->e:Lua/c;

    invoke-interface {v2, p1, v3}, Lvb/i;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v1}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final L(Llb/f;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/f;",
            ")",
            "Ljava/util/Set<",
            "Lma/l0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lza/k;->B()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcc/e0;

    invoke-virtual {v2}, Lcc/e0;->o()Lvb/i;

    move-result-object v2

    sget-object v3, Lua/c;->e:Lua/c;

    invoke-interface {v2, p1, v3}, Lvb/i;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lma/l0;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v3, v1}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lm9/t;->y1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final N(Lma/q0;)Z
    .locals 9

    .line 1
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "function.name"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Llb/f;->o()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "name.asString()"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lva/w;->a:Llb/c;

    .line 20
    .line 21
    const-string v2, "get"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {v1, v2, v3}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const-string v5, "is"

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    if-nez v4, :cond_1

    .line 32
    .line 33
    invoke-static {v1, v5, v3}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v4, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 43
    :goto_1
    const/4 v7, 0x0

    .line 44
    const-string v8, "set"

    .line 45
    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    const/16 v1, 0xc

    .line 49
    .line 50
    invoke-static {v0, v2, v7, v1}, Lb8/f;->d0(Llb/f;Ljava/lang/String;Ljava/lang/String;I)Llb/f;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    invoke-static {v0, v5, v7, v1}, Lb8/f;->d0(Llb/f;Ljava/lang/String;Ljava/lang/String;I)Llb/f;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_2
    invoke-static {v1}, Lb8/f;->U(Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-static {v1, v8, v3}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    const/4 v1, 0x2

    .line 74
    new-array v1, v1, [Llb/f;

    .line 75
    .line 76
    const/4 v2, 0x4

    .line 77
    invoke-static {v0, v8, v7, v2}, Lb8/f;->d0(Llb/f;Ljava/lang/String;Ljava/lang/String;I)Llb/f;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    aput-object v4, v1, v3

    .line 82
    .line 83
    invoke-static {v0, v8, v5, v2}, Lb8/f;->d0(Llb/f;Ljava/lang/String;Ljava/lang/String;I)Llb/f;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    aput-object v0, v1, v6

    .line 88
    .line 89
    invoke-static {v1}, Lm9/k;->p0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    sget-object v1, Lva/g;->b:Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/util/List;

    .line 101
    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 105
    .line 106
    :cond_5
    :goto_2
    check-cast v0, Ljava/lang/Iterable;

    .line 107
    .line 108
    instance-of v1, v0, Ljava/util/Collection;

    .line 109
    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    move-object v1, v0

    .line 113
    check-cast v1, Ljava/util/Collection;

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_6

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_d

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Llb/f;

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Lza/k;->L(Llb/f;)Ljava/util/Set;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_8

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_c

    .line 158
    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    check-cast v2, Lma/l0;

    .line 164
    .line 165
    new-instance v4, Lza/k$d;

    .line 166
    .line 167
    invoke-direct {v4, p1, p0}, Lza/k$d;-><init>(Lma/q0;Lza/k;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v2, v4}, Lza/k;->E(Lma/l0;Lx9/l;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_b

    .line 175
    .line 176
    invoke-interface {v2}, Lma/b1;->f0()Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-nez v2, :cond_a

    .line 181
    .line 182
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v2}, Llb/f;->o()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    const-string v4, "function.name.asString()"

    .line 191
    .line 192
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v2, v8, v3}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_b

    .line 200
    .line 201
    :cond_a
    const/4 v2, 0x1

    .line 202
    goto :goto_3

    .line 203
    :cond_b
    const/4 v2, 0x0

    .line 204
    :goto_3
    if-eqz v2, :cond_9

    .line 205
    .line 206
    const/4 v1, 0x1

    .line 207
    goto :goto_5

    .line 208
    :cond_c
    :goto_4
    const/4 v1, 0x0

    .line 209
    :goto_5
    if-eqz v1, :cond_7

    .line 210
    .line 211
    const/4 v0, 0x1

    .line 212
    goto :goto_7

    .line 213
    :cond_d
    :goto_6
    const/4 v0, 0x0

    .line 214
    :goto_7
    if-eqz v0, :cond_e

    .line 215
    .line 216
    return v3

    .line 217
    :cond_e
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e$a;

    .line 218
    .line 219
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const-string v1, "name"

    .line 224
    .line 225
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/e;->l:Ljava/util/LinkedHashMap;

    .line 229
    .line 230
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Llb/f;

    .line 235
    .line 236
    if-nez v0, :cond_f

    .line 237
    .line 238
    goto :goto_a

    .line 239
    :cond_f
    invoke-virtual {p0, v0}, Lza/k;->K(Llb/f;)Ljava/util/LinkedHashSet;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    new-instance v4, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    :cond_10
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_12

    .line 257
    .line 258
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    move-object v7, v5

    .line 263
    check-cast v7, Lma/q0;

    .line 264
    .line 265
    const-string v8, "<this>"

    .line 266
    .line 267
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->b(Lma/b;)Lma/b;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    if-eqz v7, :cond_11

    .line 275
    .line 276
    const/4 v7, 0x1

    .line 277
    goto :goto_9

    .line 278
    :cond_11
    const/4 v7, 0x0

    .line 279
    :goto_9
    if-eqz v7, :cond_10

    .line 280
    .line 281
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-eqz v2, :cond_13

    .line 290
    .line 291
    goto :goto_a

    .line 292
    :cond_13
    invoke-interface {p1}, Lma/q0;->r()Lma/u$a;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-interface {v2, v0}, Lma/u$a;->e(Llb/f;)Lma/u$a;

    .line 297
    .line 298
    .line 299
    invoke-interface {v2}, Lma/u$a;->r()Lma/u$a;

    .line 300
    .line 301
    .line 302
    invoke-interface {v2}, Lma/u$a;->f()Lma/u$a;

    .line 303
    .line 304
    .line 305
    invoke-interface {v2}, Lma/u$a;->build()Lma/u;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    check-cast v0, Lma/q0;

    .line 313
    .line 314
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-eqz v2, :cond_14

    .line 319
    .line 320
    goto :goto_a

    .line 321
    :cond_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    if-eqz v4, :cond_16

    .line 330
    .line 331
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    check-cast v4, Lma/q0;

    .line 336
    .line 337
    invoke-static {v4, v0}, Lza/k;->G(Lma/q0;Lma/q0;)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-eqz v4, :cond_15

    .line 342
    .line 343
    const/4 v0, 0x1

    .line 344
    goto :goto_b

    .line 345
    :cond_16
    :goto_a
    const/4 v0, 0x0

    .line 346
    :goto_b
    if-nez v0, :cond_22

    .line 347
    .line 348
    sget v0, Lkotlin/reflect/jvm/internal/impl/load/java/c;->m:I

    .line 349
    .line 350
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->b(Llb/f;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-nez v0, :cond_17

    .line 362
    .line 363
    goto :goto_d

    .line 364
    :cond_17
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p0, v0}, Lza/k;->K(Llb/f;)Ljava/util/LinkedHashSet;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    new-instance v2, Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .line 379
    .line 380
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    :cond_18
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-eqz v4, :cond_19

    .line 389
    .line 390
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    check-cast v4, Lma/q0;

    .line 395
    .line 396
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a(Lma/u;)Lma/u;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    if-eqz v4, :cond_18

    .line 401
    .line 402
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    goto :goto_c

    .line 406
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_1a

    .line 411
    .line 412
    goto :goto_d

    .line 413
    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-eqz v2, :cond_1c

    .line 422
    .line 423
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    check-cast v2, Lma/u;

    .line 428
    .line 429
    invoke-static {p1, v2}, Lza/k;->M(Lma/q0;Lma/u;)Z

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    if-eqz v2, :cond_1b

    .line 434
    .line 435
    const/4 v0, 0x1

    .line 436
    goto :goto_e

    .line 437
    :cond_1c
    :goto_d
    const/4 v0, 0x0

    .line 438
    :goto_e
    if-nez v0, :cond_22

    .line 439
    .line 440
    invoke-static {p1}, Lza/k;->D(Lma/q0;)Lma/q0;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    if-nez v0, :cond_1d

    .line 445
    .line 446
    goto :goto_10

    .line 447
    :cond_1d
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {p0, p1}, Lza/k;->K(Llb/f;)Ljava/util/LinkedHashSet;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    if-eqz v1, :cond_1e

    .line 463
    .line 464
    goto :goto_10

    .line 465
    :cond_1e
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    :cond_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-eqz v1, :cond_21

    .line 474
    .line 475
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    check-cast v1, Lma/q0;

    .line 480
    .line 481
    invoke-interface {v1}, Lma/u;->isSuspend()Z

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    if-eqz v2, :cond_20

    .line 486
    .line 487
    invoke-static {v0, v1}, Lza/k;->F(Lma/a;Lma/a;)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-eqz v1, :cond_20

    .line 492
    .line 493
    const/4 v1, 0x1

    .line 494
    goto :goto_f

    .line 495
    :cond_20
    const/4 v1, 0x0

    .line 496
    :goto_f
    if-eqz v1, :cond_1f

    .line 497
    .line 498
    const/4 p1, 0x1

    .line 499
    goto :goto_11

    .line 500
    :cond_21
    :goto_10
    const/4 p1, 0x0

    .line 501
    :goto_11
    if-nez p1, :cond_22

    .line 502
    .line 503
    const/4 v3, 0x1

    .line 504
    :cond_22
    return v3
.end method

.method public final O(Llb/f;Lua/a;)V
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lza/o;->b:Lp4/g7;

    .line 7
    .line 8
    iget-object v0, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lya/c;

    .line 11
    .line 12
    iget-object v0, v0, Lya/c;->n:Lua/b;

    .line 13
    .line 14
    iget-object v1, p0, Lza/k;->n:Lma/e;

    .line 15
    .line 16
    check-cast p2, Lua/c;

    .line 17
    .line 18
    invoke-static {v0, p2, v1, p1}, Lta/a;->a(Lua/b;Lua/c;Lma/e;Llb/f;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final a(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lza/k;->O(Llb/f;Lua/a;)V

    invoke-super {p0, p1, p2}, Lza/o;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final c(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lza/k;->O(Llb/f;Lua/a;)V

    invoke-super {p0, p1, p2}, Lza/o;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final e(Llb/f;Lua/c;)Lma/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lza/k;->O(Llb/f;Lua/a;)V

    iget-object p2, p0, Lza/o;->c:Lza/o;

    check-cast p2, Lza/k;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lza/k;->u:Lbc/h;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lma/e;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lza/k;->u:Lbc/h;

    invoke-interface {p2, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lma/g;

    :goto_0
    return-object p2
.end method

.method public final h(Lvb/d;Lvb/i$a$a;)Ljava/util/Set;
    .locals 0

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lza/k;->r:Lbc/i;

    invoke-interface {p1}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object p2, p0, Lza/k;->t:Lbc/i;

    invoke-interface {p2}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p2}, Lm9/g0;->F(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lvb/d;Lvb/i$a$a;)Ljava/util/Set;
    .locals 4

    .line 1
    const-string v0, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lza/k;->n:Lma/e;

    .line 7
    .line 8
    invoke-interface {v0}, Lma/g;->i()Lcc/c1;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Lcc/c1;->l()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "ownerDescriptor.typeConstructor.supertypes"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast v1, Ljava/lang/Iterable;

    .line 22
    .line 23
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcc/e0;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcc/e0;->o()Lvb/i;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3}, Lvb/i;->b()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3, v2}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lza/o;->e:Lbc/i;

    .line 57
    .line 58
    invoke-interface {v1}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lza/b;

    .line 63
    .line 64
    invoke-interface {v3}, Lza/b;->a()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    invoke-interface {v1}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lza/b;

    .line 76
    .line 77
    invoke-interface {v1}, Lza/b;->e()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1, p2}, Lza/k;->h(Lvb/d;Lvb/i$a$a;)Ljava/util/Set;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lza/o;->b:Lp4/g7;

    .line 92
    .line 93
    iget-object p2, p1, Lp4/g7;->a:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p2, Lya/c;

    .line 96
    .line 97
    iget-object p2, p2, Lya/c;->x:Ltb/d;

    .line 98
    .line 99
    invoke-interface {p2, p1, v0}, Ltb/d;->c(Lp4/g7;Lma/e;)Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 104
    .line 105
    .line 106
    return-object v2
.end method

.method public final j(Ljava/util/ArrayList;Llb/f;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "name"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, v0, Lza/k;->o:Lcb/g;

    .line 13
    .line 14
    invoke-interface {v3}, Lcb/g;->r()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v4, v0, Lza/k;->n:Lma/e;

    .line 19
    .line 20
    iget-object v5, v0, Lza/o;->b:Lp4/g7;

    .line 21
    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    iget-object v3, v0, Lza/o;->e:Lbc/i;

    .line 25
    .line 26
    invoke-interface {v3}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Lza/b;

    .line 31
    .line 32
    invoke-interface {v6, v2}, Lza/b;->d(Llb/f;)Lcb/v;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    if-eqz v6, :cond_3

    .line 37
    .line 38
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x1

    .line 43
    const/4 v8, 0x0

    .line 44
    if-eqz v6, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_2

    .line 56
    .line 57
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    check-cast v9, Lma/q0;

    .line 62
    .line 63
    invoke-interface {v9}, Lma/a;->g()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_1

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    const/4 v6, 0x1

    .line 76
    :goto_1
    if-eqz v6, :cond_3

    .line 77
    .line 78
    invoke-interface {v3}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lza/b;

    .line 83
    .line 84
    invoke-interface {v3, v2}, Lza/b;->d(Llb/f;)Lcb/v;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v5, v3}, La6/a;->v(Lp4/g7;Lcb/d;)Lya/e;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-interface {v3}, Lcb/s;->getName()Llb/f;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    iget-object v10, v5, Lp4/g7;->a:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v10, Lya/c;

    .line 102
    .line 103
    iget-object v10, v10, Lya/c;->j:Lbb/b;

    .line 104
    .line 105
    invoke-interface {v10, v3}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    invoke-static {v4, v6, v9, v10, v7}, Lxa/e;->Y0(Lma/j;Lya/e;Llb/f;Lbb/a;Z)Lxa/e;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const/4 v9, 0x0

    .line 114
    const/4 v10, 0x6

    .line 115
    const/4 v11, 0x2

    .line 116
    invoke-static {v11, v8, v8, v9, v10}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    iget-object v10, v5, Lp4/g7;->e:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v10, Lab/d;

    .line 123
    .line 124
    invoke-interface {v3}, Lcb/v;->getType()Lcb/w;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v10, v3, v9}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 129
    .line 130
    .line 131
    move-result-object v17

    .line 132
    const/4 v12, 0x0

    .line 133
    invoke-virtual/range {p0 .. p0}, Lza/k;->p()Lma/o0;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    sget-object v16, Lm9/v;->a:Lm9/v;

    .line 138
    .line 139
    invoke-static {v8, v8, v7}, Lma/a0$a;->a(ZZZ)Lma/a0;

    .line 140
    .line 141
    .line 142
    move-result-object v18

    .line 143
    sget-object v19, Lma/p;->e:Lma/p$h;

    .line 144
    .line 145
    const/16 v20, 0x0

    .line 146
    .line 147
    move-object v11, v6

    .line 148
    move-object/from16 v14, v16

    .line 149
    .line 150
    move-object/from16 v15, v16

    .line 151
    .line 152
    invoke-virtual/range {v11 .. v20}, Lxa/e;->X0(Lpa/o0;Lma/o0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcc/e0;Lma/a0;Lma/q;Ljava/util/Map;)Lpa/p0;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v8, v8}, Lxa/e;->Z0(ZZ)V

    .line 156
    .line 157
    .line 158
    iget-object v3, v5, Lp4/g7;->a:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v3, Lya/c;

    .line 161
    .line 162
    iget-object v3, v3, Lya/c;->g:Lwa/h;

    .line 163
    .line 164
    check-cast v3, Lwa/h$a;

    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_3
    iget-object v3, v5, Lp4/g7;->a:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v3, Lya/c;

    .line 175
    .line 176
    iget-object v3, v3, Lya/c;->x:Ltb/d;

    .line 177
    .line 178
    invoke-interface {v3, v5, v4, v2, v1}, Ltb/d;->f(Lp4/g7;Lma/e;Llb/f;Ljava/util/ArrayList;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final k()Lza/b;
    .locals 3

    new-instance v0, Lza/a;

    iget-object v1, p0, Lza/k;->o:Lcb/g;

    sget-object v2, Lza/f;->a:Lza/f;

    invoke-direct {v0, v1, v2}, Lza/a;-><init>(Lcb/g;Lx9/l;)V

    return-object v0
.end method

.method public final m(Ljava/util/LinkedHashSet;Llb/f;)V
    .locals 10

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lza/k;->K(Llb/f;)Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    .line 9
    move-result-object v6

    .line 10
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e$a;

    .line 11
    .line 12
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->k:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v7, 0x1

    .line 19
    if-nez v0, :cond_5

    .line 20
    .line 21
    sget v0, Lkotlin/reflect/jvm/internal/impl/load/java/c;->m:I

    .line 22
    .line 23
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->b(Llb/f;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_5

    .line 28
    .line 29
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lma/u;

    .line 52
    .line 53
    invoke-interface {v2}, Lma/u;->isSuspend()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 62
    :goto_1
    if-eqz v0, :cond_5

    .line 63
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    move-object v4, v3

    .line 84
    check-cast v4, Lma/q0;

    .line 85
    .line 86
    invoke-virtual {p0, v4}, Lza/k;->N(Lma/q0;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {p0, p1, p2, v0, v1}, Lza/k;->y(Ljava/util/LinkedHashSet;Llb/f;Ljava/util/ArrayList;Z)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_5
    new-instance v8, Lkc/d;

    .line 101
    .line 102
    invoke-direct {v8}, Lkc/d;-><init>()V

    .line 103
    .line 104
    .line 105
    sget-object v2, Lm9/v;->a:Lm9/v;

    .line 106
    .line 107
    iget-object v3, p0, Lza/k;->n:Lma/e;

    .line 108
    .line 109
    sget-object v4, Lyb/u;->k0:Lyb/u$a;

    .line 110
    .line 111
    iget-object v0, p0, Lza/o;->b:Lp4/g7;

    .line 112
    .line 113
    iget-object v0, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Lya/c;

    .line 116
    .line 117
    iget-object v0, v0, Lya/c;->u:Ldc/l;

    .line 118
    .line 119
    invoke-interface {v0}, Ldc/l;->a()Lob/n;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    move-object v0, p2

    .line 124
    move-object v1, v6

    .line 125
    invoke-static/range {v0 .. v5}, Lc5/y;->C(Llb/f;Ljava/util/AbstractCollection;Ljava/util/Collection;Lma/e;Lyb/u;Lob/n;)Ljava/util/LinkedHashSet;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    new-instance v5, Lza/g;

    .line 130
    .line 131
    invoke-direct {v5, p0}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    move-object v0, p0

    .line 135
    move-object v1, p2

    .line 136
    move-object v2, p1

    .line 137
    move-object v3, v9

    .line 138
    move-object v4, p1

    .line 139
    invoke-virtual/range {v0 .. v5}, Lza/k;->z(Llb/f;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;Lx9/l;)V

    .line 140
    .line 141
    .line 142
    new-instance v5, Lza/h;

    .line 143
    .line 144
    invoke-direct {v5, p0}, Lza/h;-><init>(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    move-object v4, v8

    .line 148
    invoke-virtual/range {v0 .. v5}, Lza/k;->z(Llb/f;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;Lx9/l;)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    move-object v3, v2

    .line 171
    check-cast v3, Lma/q0;

    .line 172
    .line 173
    invoke-virtual {p0, v3}, Lza/k;->N(Lma/q0;)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_6

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_7
    invoke-static {v8, v0}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p0, p1, p2, v0, v7}, Lza/k;->y(Ljava/util/LinkedHashSet;Llb/f;Ljava/util/ArrayList;Z)V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method public final n(Ljava/util/ArrayList;Llb/f;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    const-string v2, "name"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lza/k;->o:Lcb/g;

    .line 13
    .line 14
    invoke-interface {v2}, Lcb/g;->p()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    iget-object v4, v0, Lza/o;->b:Lp4/g7;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v2, v0, Lza/o;->e:Lbc/i;

    .line 24
    .line 25
    invoke-interface {v2}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lza/b;

    .line 30
    .line 31
    invoke-interface {v2, v1}, Lza/b;->b(Llb/f;)Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Iterable;

    .line 36
    .line 37
    invoke-static {v2}, Lm9/t;->q1(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcb/q;

    .line 42
    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v4, v2}, La6/a;->v(Lp4/g7;Lcb/d;)Lya/e;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    iget-object v8, v0, Lza/k;->n:Lma/e;

    .line 51
    .line 52
    invoke-interface {v2}, Lcb/r;->getVisibility()Lma/e1;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v5}, Lva/c0;->a(Lma/e1;)Lma/q;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    const/4 v11, 0x0

    .line 61
    invoke-interface {v2}, Lcb/s;->getName()Llb/f;

    .line 62
    .line 63
    .line 64
    move-result-object v12

    .line 65
    iget-object v5, v4, Lp4/g7;->a:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v5, Lya/c;

    .line 68
    .line 69
    iget-object v5, v5, Lya/c;->j:Lbb/b;

    .line 70
    .line 71
    invoke-interface {v5, v2}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    const/4 v14, 0x0

    .line 76
    invoke-static/range {v8 .. v14}, Lxa/f;->R0(Lma/j;Lya/e;Lma/q;ZLlb/f;Lbb/a;Z)Lxa/f;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    sget-object v6, Lna/h$a;->a:Lna/h$a$a;

    .line 81
    .line 82
    invoke-static {v5, v6}, Lob/h;->c(Lma/l0;Lna/h;)Lpa/m0;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v5, v6, v3, v3, v3}, Lpa/l0;->O0(Lpa/m0;Lpa/n0;Lma/s;Lma/s;)V

    .line 87
    .line 88
    .line 89
    const-string v8, "<this>"

    .line 90
    .line 91
    invoke-static {v4, v8}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v8, v4, Lp4/g7;->c:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v8, Ll9/e;

    .line 97
    .line 98
    iget-object v9, v4, Lp4/g7;->a:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v9, Lya/c;

    .line 101
    .line 102
    new-instance v10, Lya/g;

    .line 103
    .line 104
    const/4 v11, 0x0

    .line 105
    invoke-direct {v10, v4, v5, v2, v11}, Lya/g;-><init>(Lp4/g7;Lma/j;Lcb/y;I)V

    .line 106
    .line 107
    .line 108
    new-instance v11, Lp4/g7;

    .line 109
    .line 110
    invoke-direct {v11, v9, v10, v8}, Lp4/g7;-><init>(Lya/c;Lya/j;Ll9/e;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v11}, Lza/o;->l(Lcb/q;Lp4/g7;)Lcc/e0;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    sget-object v20, Lm9/v;->a:Lm9/v;

    .line 118
    .line 119
    invoke-virtual/range {p0 .. p0}, Lza/k;->p()Lma/o0;

    .line 120
    .line 121
    .line 122
    move-result-object v18

    .line 123
    const/16 v19, 0x0

    .line 124
    .line 125
    move-object v15, v5

    .line 126
    move-object/from16 v16, v2

    .line 127
    .line 128
    move-object/from16 v17, v20

    .line 129
    .line 130
    invoke-virtual/range {v15 .. v20}, Lpa/l0;->Q0(Lcc/e0;Ljava/util/List;Lma/o0;Lpa/o0;Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v2}, Lpa/m0;->M0(Lcc/e0;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lza/k;->L(Llb/f;)Ljava/util/Set;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_2

    .line 148
    .line 149
    return-void

    .line 150
    :cond_2
    new-instance v5, Lkc/d;

    .line 151
    .line 152
    invoke-direct {v5}, Lkc/d;-><init>()V

    .line 153
    .line 154
    .line 155
    new-instance v6, Lkc/d;

    .line 156
    .line 157
    invoke-direct {v6}, Lkc/d;-><init>()V

    .line 158
    .line 159
    .line 160
    new-instance v8, Lza/i;

    .line 161
    .line 162
    invoke-direct {v8, v0}, Lza/i;-><init>(Lza/k;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2, v7, v5, v8}, Lza/k;->A(Ljava/util/Set;Ljava/util/AbstractCollection;Lkc/d;Lx9/l;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-eqz v8, :cond_3

    .line 173
    .line 174
    invoke-static {v2}, Lm9/t;->y1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    goto :goto_2

    .line 179
    :cond_3
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 180
    .line 181
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    if-eqz v10, :cond_5

    .line 193
    .line 194
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-interface {v5, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v11

    .line 202
    if-nez v11, :cond_4

    .line 203
    .line 204
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_5
    move-object v5, v8

    .line 209
    :goto_2
    new-instance v8, Lza/j;

    .line 210
    .line 211
    invoke-direct {v8, v0}, Lza/j;-><init>(Lza/k;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v5, v6, v3, v8}, Lza/k;->A(Ljava/util/Set;Ljava/util/AbstractCollection;Lkc/d;Lx9/l;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v2, v6}, Lm9/g0;->F(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    iget-object v5, v0, Lza/k;->n:Lma/e;

    .line 222
    .line 223
    iget-object v3, v4, Lp4/g7;->a:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v3, Lya/c;

    .line 226
    .line 227
    iget-object v6, v3, Lya/c;->f:Lyb/u;

    .line 228
    .line 229
    iget-object v3, v3, Lya/c;->u:Ldc/l;

    .line 230
    .line 231
    invoke-interface {v3}, Ldc/l;->a()Lob/n;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    move-object/from16 v1, p2

    .line 236
    .line 237
    move-object/from16 v3, p1

    .line 238
    .line 239
    move-object v4, v5

    .line 240
    move-object v5, v6

    .line 241
    move-object v6, v8

    .line 242
    invoke-static/range {v1 .. v6}, Lc5/y;->C(Llb/f;Ljava/util/AbstractCollection;Ljava/util/Collection;Lma/e;Lyb/u;Lob/n;)Ljava/util/LinkedHashSet;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 247
    .line 248
    .line 249
    return-void
.end method

.method public final o(Lvb/d;)Ljava/util/Set;
    .locals 2

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lza/k;->o:Lcb/g;

    invoke-interface {p1}, Lcb/g;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lza/o;->b()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lza/o;->e:Lbc/i;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lza/b;

    invoke-interface {v0}, Lza/b;->f()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lza/k;->n:Lma/e;

    invoke-interface {v0}, Lma/g;->i()Lcc/c1;

    move-result-object v0

    invoke-interface {v0}, Lcc/c1;->l()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/e0;

    invoke-virtual {v1}, Lcc/e0;->o()Lvb/i;

    move-result-object v1

    invoke-interface {v1}, Lvb/i;->d()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final p()Lma/o0;
    .locals 2

    .line 1
    iget-object v0, p0, Lza/k;->n:Lma/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lob/i;->a:I

    .line 6
    .line 7
    invoke-interface {v0}, Lma/e;->J0()Lma/o0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Lob/i;->a(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    throw v0
.end method

.method public final q()Lma/j;
    .locals 1

    iget-object v0, p0, Lza/k;->n:Lma/e;

    return-object v0
.end method

.method public final r(Lxa/e;)Z
    .locals 1

    iget-object v0, p0, Lza/k;->o:Lcb/g;

    invoke-interface {v0}, Lcb/g;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lza/k;->N(Lma/q0;)Z

    move-result p1

    return p1
.end method

.method public final s(Lcb/q;Ljava/util/ArrayList;Lcc/e0;Ljava/util/List;)Lza/o$a;
    .locals 1

    .line 1
    const-string v0, "method"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "valueParameters"

    .line 7
    .line 8
    invoke-static {p4, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lza/o;->b:Lp4/g7;

    .line 12
    .line 13
    iget-object p1, p1, Lp4/g7;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lya/c;

    .line 16
    .line 17
    iget-object p1, p1, Lya/c;->e:Lwa/k;

    .line 18
    .line 19
    check-cast p1, Lwa/k$a;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lza/k;->n:Lma/e;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    new-instance v0, Lza/o$a;

    .line 36
    .line 37
    invoke-direct {v0, p4, p2, p1, p3}, Lza/o$a;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;Lcc/e0;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_0
    const/4 p1, 0x3

    .line 42
    invoke-static {p1}, Lwa/k$b;->a(I)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_1
    const/4 p1, 0x1

    .line 47
    invoke-static {p1}, Lwa/k$a;->a(I)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lazy Java member scope for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lza/k;->o:Lcb/g;

    invoke-interface {v1}, Lcb/g;->d()Llb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x(Ljava/util/ArrayList;Lxa/b;ILcb/q;Lcc/e0;Lcc/e0;)V
    .locals 14

    .line 1
    const/4 v2, 0x0

    .line 2
    sget-object v4, Lna/h$a;->a:Lna/h$a$a;

    .line 3
    .line 4
    invoke-interface/range {p4 .. p4}, Lcb/s;->getName()Llb/f;

    .line 5
    .line 6
    .line 7
    move-result-object v5

    .line 8
    invoke-static/range {p5 .. p5}, Lcc/q1;->i(Lcc/e0;)Lcc/s1;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    invoke-interface/range {p4 .. p4}, Lcb/q;->K()Z

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    if-eqz p6, :cond_0

    .line 19
    .line 20
    invoke-static/range {p6 .. p6}, Lcc/q1;->i(Lcc/e0;)Lcc/s1;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    move-object v12, p0

    .line 27
    move-object v10, v0

    .line 28
    iget-object v0, v12, Lza/o;->b:Lp4/g7;

    .line 29
    .line 30
    iget-object v0, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lya/c;

    .line 33
    .line 34
    iget-object v0, v0, Lya/c;->j:Lbb/b;

    .line 35
    .line 36
    move-object/from16 v1, p4

    .line 37
    .line 38
    invoke-interface {v0, v1}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    new-instance v13, Lpa/v0;

    .line 43
    .line 44
    move-object v0, v13

    .line 45
    move-object/from16 v1, p2

    .line 46
    .line 47
    move/from16 v3, p3

    .line 48
    .line 49
    invoke-direct/range {v0 .. v11}, Lpa/v0;-><init>(Lma/a;Lma/a1;ILna/h;Llb/f;Lcc/e0;ZZZLcc/e0;Lma/r0;)V

    .line 50
    .line 51
    .line 52
    move-object v0, p1

    .line 53
    invoke-virtual {p1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final y(Ljava/util/LinkedHashSet;Llb/f;Ljava/util/ArrayList;Z)V
    .locals 6

    .line 1
    iget-object v3, p0, Lza/k;->n:Lma/e;

    .line 2
    .line 3
    iget-object v0, p0, Lza/o;->b:Lp4/g7;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lya/c;

    .line 8
    .line 9
    iget-object v4, v0, Lya/c;->f:Lyb/u;

    .line 10
    .line 11
    iget-object v0, v0, Lya/c;->u:Ldc/l;

    .line 12
    .line 13
    invoke-interface {v0}, Ldc/l;->a()Lob/n;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    move-object v0, p2

    .line 18
    move-object v1, p3

    .line 19
    move-object v2, p1

    .line 20
    invoke-static/range {v0 .. v5}, Lc5/y;->C(Llb/f;Ljava/util/AbstractCollection;Ljava/util/Collection;Lma/e;Lyb/u;Lob/n;)Ljava/util/LinkedHashSet;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-nez p4, :cond_0

    .line 25
    .line 26
    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    invoke-static {p2, p1}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    new-instance p4, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-static {p2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lma/q0;

    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->c(Lma/b;)Lma/b;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lma/q0;

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-static {v0, v1, p3}, Lza/k;->C(Lma/q0;Lma/u;Ljava/util/AbstractCollection;)Lma/q0;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :goto_1
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {p1, p4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 77
    .line 78
    .line 79
    :goto_2
    return-void
.end method

.method public final z(Llb/f;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;Lx9/l;)V
    .locals 8

    .line 1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_e

    .line 10
    .line 11
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lma/q0;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->b(Lma/b;)Lma/b;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lma/q0;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->a(Lma/b;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {p5, v3}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/util/Collection;

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lma/q0;

    .line 59
    .line 60
    invoke-interface {v4}, Lma/q0;->r()Lma/u$a;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v4, p1}, Lma/u$a;->e(Llb/f;)Lma/u$a;

    .line 65
    .line 66
    .line 67
    invoke-interface {v4}, Lma/u$a;->r()Lma/u$a;

    .line 68
    .line 69
    .line 70
    invoke-interface {v4}, Lma/u$a;->f()Lma/u$a;

    .line 71
    .line 72
    .line 73
    invoke-interface {v4}, Lma/u$a;->build()Lma/u;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    check-cast v4, Lma/q0;

    .line 81
    .line 82
    invoke-static {v1, v4}, Lza/k;->G(Lma/q0;Lma/q0;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    invoke-static {v4, v1, p2}, Lza/k;->C(Lma/q0;Lma/u;Ljava/util/AbstractCollection;)Lma/q0;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    :goto_1
    move-object v1, v2

    .line 94
    :goto_2
    invoke-static {v1, p4}, Lcom/google/android/gms/internal/clearcut/d0;->f(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a(Lma/u;)Lma/u;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-nez v1, :cond_3

    .line 102
    .line 103
    goto/16 :goto_7

    .line 104
    .line 105
    :cond_3
    invoke-interface {v1}, Lma/j;->getName()Llb/f;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const-string v4, "overridden.name"

    .line 110
    .line 111
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p5, v3}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Ljava/lang/Iterable;

    .line 119
    .line 120
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    move-object v5, v4

    .line 135
    check-cast v5, Lma/q0;

    .line 136
    .line 137
    invoke-static {v5, v1}, Lza/k;->M(Lma/q0;Lma/u;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_4

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_5
    move-object v4, v2

    .line 145
    :goto_3
    check-cast v4, Lma/q0;

    .line 146
    .line 147
    if-eqz v4, :cond_7

    .line 148
    .line 149
    invoke-interface {v4}, Lma/q0;->r()Lma/u$a;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-interface {v1}, Lma/a;->g()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    const-string v6, "overridden.valueParameters"

    .line 158
    .line 159
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    check-cast v5, Ljava/lang/Iterable;

    .line 163
    .line 164
    new-instance v6, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-static {v5}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-eqz v7, :cond_6

    .line 182
    .line 183
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    check-cast v7, Lma/a1;

    .line 188
    .line 189
    invoke-interface {v7}, Lma/z0;->getType()Lcc/e0;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_6
    invoke-interface {v4}, Lma/a;->g()Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    const-string v5, "override.valueParameters"

    .line 202
    .line 203
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    check-cast v4, Ljava/util/Collection;

    .line 207
    .line 208
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/clearcut/d0;->m(Ljava/util/ArrayList;Ljava/util/Collection;Lma/a;)Ljava/util/ArrayList;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-interface {v3, v4}, Lma/u$a;->c(Ljava/util/List;)Lma/u$a;

    .line 213
    .line 214
    .line 215
    invoke-interface {v3}, Lma/u$a;->r()Lma/u$a;

    .line 216
    .line 217
    .line 218
    invoke-interface {v3}, Lma/u$a;->f()Lma/u$a;

    .line 219
    .line 220
    .line 221
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 222
    .line 223
    invoke-interface {v3, v4}, Lma/u$a;->d(Ljava/lang/Boolean;)Lma/u$a;

    .line 224
    .line 225
    .line 226
    invoke-interface {v3}, Lma/u$a;->build()Lma/u;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    check-cast v3, Lma/q0;

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_7
    move-object v3, v2

    .line 234
    :goto_5
    if-eqz v3, :cond_9

    .line 235
    .line 236
    invoke-virtual {p0, v3}, Lza/k;->N(Lma/q0;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_8

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_8
    move-object v3, v2

    .line 244
    :goto_6
    if-eqz v3, :cond_9

    .line 245
    .line 246
    invoke-static {v3, v1, p2}, Lza/k;->C(Lma/q0;Lma/u;Ljava/util/AbstractCollection;)Lma/q0;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    goto :goto_8

    .line 251
    :cond_9
    :goto_7
    move-object v1, v2

    .line 252
    :goto_8
    invoke-static {v1, p4}, Lcom/google/android/gms/internal/clearcut/d0;->f(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 253
    .line 254
    .line 255
    invoke-interface {v0}, Lma/u;->isSuspend()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-nez v1, :cond_a

    .line 260
    .line 261
    goto :goto_a

    .line 262
    :cond_a
    invoke-interface {v0}, Lma/j;->getName()Llb/f;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    const-string v3, "descriptor.name"

    .line 267
    .line 268
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-interface {p5, v1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    check-cast v1, Ljava/lang/Iterable;

    .line 276
    .line 277
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-eqz v3, :cond_d

    .line 286
    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    check-cast v3, Lma/q0;

    .line 292
    .line 293
    invoke-static {v3}, Lza/k;->D(Lma/q0;)Lma/q0;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    if-eqz v3, :cond_c

    .line 298
    .line 299
    invoke-static {v3, v0}, Lza/k;->F(Lma/a;Lma/a;)Z

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    if-eqz v4, :cond_c

    .line 304
    .line 305
    goto :goto_9

    .line 306
    :cond_c
    move-object v3, v2

    .line 307
    :goto_9
    if-eqz v3, :cond_b

    .line 308
    .line 309
    move-object v2, v3

    .line 310
    :cond_d
    :goto_a
    invoke-static {v2, p4}, Lcom/google/android/gms/internal/clearcut/d0;->f(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_e
    return-void
.end method
