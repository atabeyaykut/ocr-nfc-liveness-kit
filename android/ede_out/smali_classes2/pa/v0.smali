.class public Lpa/v0;
.super Lpa/w0;
.source "SourceFile"

# interfaces
.implements Lma/a1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpa/v0$a;
    }
.end annotation


# instance fields
.field public final f:I

.field public final g:Z

.field public final h:Z

.field public final j:Z

.field public final k:Lcc/e0;

.field public final l:Lma/a1;


# direct methods
.method public constructor <init>(Lma/a;Lma/a1;ILna/h;Llb/f;Lcc/e0;ZZZLcc/e0;Lma/r0;)V
    .locals 7

    move-object v6, p0

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v2, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v3, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outType"

    move-object v4, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v5, p11

    invoke-static {v5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lpa/w0;-><init>(Lma/j;Lna/h;Llb/f;Lcc/e0;Lma/r0;)V

    move v0, p3

    iput v0, v6, Lpa/v0;->f:I

    move v0, p7

    iput-boolean v0, v6, Lpa/v0;->g:Z

    move v0, p8

    iput-boolean v0, v6, Lpa/v0;->h:Z

    move/from16 v0, p9

    iput-boolean v0, v6, Lpa/v0;->j:Z

    move-object/from16 v0, p10

    iput-object v0, v6, Lpa/v0;->k:Lcc/e0;

    if-nez p2, :cond_0

    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, v6, Lpa/v0;->l:Lma/a1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic S()Lqb/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final T()Z
    .locals 1

    iget-boolean v0, p0, Lpa/v0;->j:Z

    return v0
.end method

.method public final W()Z
    .locals 1

    iget-boolean v0, p0, Lpa/v0;->h:Z

    return v0
.end method

.method public final a()Lma/a1;
    .locals 1

    iget-object v0, p0, Lpa/v0;->l:Lma/a1;

    if-ne v0, p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lma/a1;->a()Lma/a1;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic a()Lma/a;
    .locals 1

    invoke-virtual {p0}, Lpa/v0;->a()Lma/a1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lma/j;
    .locals 1

    invoke-virtual {p0}, Lpa/v0;->a()Lma/a1;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lma/a;
    .locals 2

    invoke-super {p0}, Lpa/q;->b()Lma/j;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lma/a;

    return-object v0
.end method

.method public final bridge synthetic b()Lma/j;
    .locals 1

    invoke-virtual {p0}, Lpa/v0;->b()Lma/a;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcc/p1;)Lma/k;
    .locals 1

    .line 1
    const-string v0, "substitutor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcc/p1;->h()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public final e()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lma/a1;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lpa/v0;->b()Lma/a;

    move-result-object v0

    invoke-interface {v0}, Lma/a;->e()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "containingDeclaration.overriddenDescriptors"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lma/a;

    invoke-interface {v2}, Lma/a;->g()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lpa/v0;->f:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lma/a1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final f0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g0()Lcc/e0;
    .locals 1

    iget-object v0, p0, Lpa/v0;->k:Lcc/e0;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lpa/v0;->f:I

    return v0
.end method

.method public final getVisibility()Lma/q;
    .locals 2

    sget-object v0, Lma/p;->f:Lma/p$i;

    const-string v1, "LOCAL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final o0(Lma/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lma/l<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lma/l;->a(Lma/a1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q0(Lka/e;Llb/f;I)Lma/a1;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    new-instance v13, Lpa/v0;

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0}, Lna/b;->getAnnotations()Lna/h;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    const-string v1, "annotations"

    .line 10
    .line 11
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lpa/w0;->getType()Lcc/e0;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    const-string v1, "type"

    .line 19
    .line 20
    invoke-static {v7, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lpa/v0;->t0()Z

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    iget-boolean v9, v0, Lpa/v0;->h:Z

    .line 28
    .line 29
    iget-boolean v10, v0, Lpa/v0;->j:Z

    .line 30
    .line 31
    iget-object v11, v0, Lpa/v0;->k:Lcc/e0;

    .line 32
    .line 33
    sget-object v12, Lma/r0;->a:Lma/r0$a;

    .line 34
    .line 35
    move-object v1, v13

    .line 36
    move-object v2, p1

    .line 37
    move/from16 v4, p3

    .line 38
    .line 39
    move-object/from16 v6, p2

    .line 40
    .line 41
    invoke-direct/range {v1 .. v12}, Lpa/v0;-><init>(Lma/a;Lma/a1;ILna/h;Llb/f;Lcc/e0;ZZZLcc/e0;Lma/r0;)V

    .line 42
    .line 43
    .line 44
    return-object v13
.end method

.method public final t0()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lpa/v0;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lpa/v0;->b()Lma/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lma/b;

    .line 11
    .line 12
    invoke-interface {v0}, Lma/b;->k0()Lma/b$a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v2, Lma/b$a;->b:Lma/b$a;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eq v0, v2, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1
    return v1
.end method

.method public final bridge synthetic z0()Lma/m;
    .locals 1

    invoke-virtual {p0}, Lpa/v0;->a()Lma/a1;

    move-result-object v0

    return-object v0
.end method
