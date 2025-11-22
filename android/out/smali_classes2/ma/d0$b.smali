.class public final Lma/d0$b;
.super Lpa/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lma/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final h:Z

.field public final j:Ljava/util/ArrayList;

.field public final k:Lcc/m;


# direct methods
.method public constructor <init>(Lbc/l;Lma/f;Llb/f;ZI)V
    .locals 2

    .line 1
    const-string v0, "storageManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "container"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lma/r0;->a:Lma/r0$a;

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Lpa/m;-><init>(Lbc/l;Lma/j;Llb/f;Lma/r0;)V

    .line 14
    .line 15
    .line 16
    iput-boolean p4, p0, Lma/d0$b;->h:Z

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-static {p2, p5}, Lb8/f;->r0(II)Lca/d;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance p3, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {p2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lca/b;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :goto_0
    move-object p4, p2

    .line 37
    check-cast p4, Lca/c;

    .line 38
    .line 39
    iget-boolean p4, p4, Lca/c;->c:Z

    .line 40
    .line 41
    if-eqz p4, :cond_0

    .line 42
    .line 43
    move-object p4, p2

    .line 44
    check-cast p4, Lm9/b0;

    .line 45
    .line 46
    invoke-virtual {p4}, Lm9/b0;->nextInt()I

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    sget-object p5, Lcc/t1;->c:Lcc/t1;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "T"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {p0, p5, v0, p4, p1}, Lpa/t0;->O0(Lma/j;Lcc/t1;Llb/f;ILbc/l;)Lpa/t0;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iput-object p3, p0, Lma/d0$b;->j:Ljava/util/ArrayList;

    .line 79
    .line 80
    new-instance p2, Lcc/m;

    .line 81
    .line 82
    invoke-static {p0}, Lma/x0;->b(Lma/h;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-static {p0}, Lsb/b;->j(Lma/j;)Lma/b0;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    invoke-interface {p4}, Lma/b0;->m()Lja/k;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    invoke-virtual {p4}, Lja/k;->f()Lcc/m0;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    invoke-static {p4}, Lx5/a;->r(Ljava/lang/Object;)Ljava/util/Set;

    .line 99
    .line 100
    .line 101
    move-result-object p4

    .line 102
    invoke-direct {p2, p0, p3, p4, p1}, Lcc/m;-><init>(Lma/e;Ljava/util/List;Ljava/util/Collection;Lbc/l;)V

    .line 103
    .line 104
    .line 105
    iput-object p2, p0, Lma/d0$b;->k:Lcc/m;

    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final D0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final E()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lma/e;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0
.end method

.method public final F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final G()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final H()Z
    .locals 1

    iget-boolean v0, p0, Lma/d0$b;->h:Z

    return v0
.end method

.method public final H0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final M()Lma/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final N()Lvb/i;
    .locals 1

    sget-object v0, Lvb/i$b;->b:Lvb/i$b;

    return-object v0
.end method

.method public final P()Lma/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e0(Ldc/f;)Lvb/i;
    .locals 1

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lvb/i$b;->b:Lvb/i$b;

    .line 7
    .line 8
    return-object p1
.end method

.method public final getAnnotations()Lna/h;
    .locals 1

    sget-object v0, Lna/h$a;->a:Lna/h$a$a;

    return-object v0
.end method

.method public final getVisibility()Lma/q;
    .locals 2

    sget-object v0, Lma/p;->e:Lma/p$h;

    const-string v1, "PUBLIC"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lcc/c1;
    .locals 1

    iget-object v0, p0, Lma/d0$b;->k:Lcc/m;

    return-object v0
.end method

.method public final isExternal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isInline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lma/a0;
    .locals 1

    sget-object v0, Lma/a0;->a:Lma/a0;

    return-object v0
.end method

.method public final k()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lma/d;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/x;->a:Lm9/x;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lma/d0$b;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lpa/b;->getName()Llb/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (not found)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y0()Lma/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lma/y0<",
            "Lcc/m0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
