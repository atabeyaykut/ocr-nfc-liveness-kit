.class public final Lec/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma/l0;


# instance fields
.field public final synthetic a:Lpa/l0;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lec/i;->a:Lec/i;

    .line 5
    .line 6
    sget-object v1, Lec/i;->c:Lec/a;

    .line 7
    .line 8
    sget-object v2, Lma/a0;->c:Lma/a0;

    .line 9
    .line 10
    sget-object v3, Lma/p;->e:Lma/p$h;

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    const-string v0, "<Error property>"

    .line 14
    .line 15
    invoke-static {v0}, Llb/f;->v(Ljava/lang/String;)Llb/f;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    sget-object v6, Lma/b$a;->a:Lma/b$a;

    .line 20
    .line 21
    sget-object v7, Lma/r0;->a:Lma/r0$a;

    .line 22
    .line 23
    invoke-static/range {v1 .. v7}, Lpa/l0;->L0(Lma/j;Lma/a0;Lma/p$h;ZLlb/f;Lma/b$a;Lma/r0;)Lpa/l0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v9, Lec/i;->e:Lec/f;

    .line 28
    .line 29
    sget-object v13, Lm9/v;->a:Lm9/v;

    .line 30
    .line 31
    const/4 v11, 0x0

    .line 32
    const/4 v12, 0x0

    .line 33
    move-object v8, v0

    .line 34
    move-object v10, v13

    .line 35
    invoke-virtual/range {v8 .. v13}, Lpa/l0;->Q0(Lcc/e0;Ljava/util/List;Lma/o0;Lpa/o0;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lec/d;->a:Lpa/l0;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/w0;->B()Z

    move-result v0

    return v0
.end method

.method public final D0()Z
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    iget-boolean v0, v0, Lpa/l0;->s:Z

    return v0
.end method

.method public final G()Z
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    iget-boolean v0, v0, Lpa/l0;->r:Z

    return v0
.end method

.method public final K()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    .line 2
    .line 3
    iget-boolean v0, v0, Lpa/l0;->v:Z

    .line 4
    .line 5
    return v0
.end method

.method public final S()Lqb/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqb/g<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/x0;->S()Lqb/g;

    move-result-object v0

    return-object v0
.end method

.method public final Z(Lma/a$a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lma/a$a<",
            "TV;>;)TV;"
        }
    .end annotation

    iget-object p1, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic a()Lma/a;
    .locals 1

    invoke-virtual {p0}, Lec/d;->a()Lma/l0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lma/b;
    .locals 1

    invoke-virtual {p0}, Lec/d;->a()Lma/l0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lma/j;
    .locals 1

    invoke-virtual {p0}, Lec/d;->a()Lma/l0;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lma/l0;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/l0;->a()Lma/l0;

    move-result-object v0

    return-object v0
.end method

.method public final a0()Lma/o0;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    iget-object v0, v0, Lpa/l0;->x:Lma/o0;

    return-object v0
.end method

.method public final b()Lma/j;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/q;->b()Lma/j;

    move-result-object v0

    return-object v0
.end method

.method public final b0(Lma/j;Lma/a0;Lma/o;)Lma/b;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0, p1, p2, p3}, Lpa/l0;->K0(Lma/j;Lma/a0;Lma/o;)Lpa/l0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(Lcc/p1;)Lma/k;
    .locals 0

    invoke-virtual {p0, p1}, Lec/d;->c(Lcc/p1;)Lma/l0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcc/p1;)Lma/l0;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0, p1}, Lpa/l0;->c(Lcc/p1;)Lma/l0;

    move-result-object p1

    return-object p1
.end method

.method public final e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lma/l0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/l0;->e()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lma/n0;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    iget-object v0, v0, Lpa/l0;->B:Lma/n0;

    return-object v0
.end method

.method public final f0()Z
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    iget-boolean v0, v0, Lpa/x0;->f:Z

    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/a1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/w0;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotations()Lna/h;
    .locals 2

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lna/b;->getAnnotations()Lna/h;

    move-result-object v0

    const-string v1, "<get-annotations>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getName()Llb/f;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/p;->getName()Llb/f;

    move-result-object v0

    return-object v0
.end method

.method public final getReturnType()Lcc/e0;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/l0;->getReturnType()Lcc/e0;

    move-result-object v0

    return-object v0
.end method

.method public final getSource()Lma/r0;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/q;->getSource()Lma/r0;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lcc/e0;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/w0;->getType()Lcc/e0;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/l0;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getVisibility()Lma/q;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/l0;->getVisibility()Lma/q;

    move-result-object v0

    return-object v0
.end method

.method public final h0()Lma/o0;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    iget-object v0, v0, Lpa/l0;->y:Lma/o0;

    return-object v0
.end method

.method public final isExternal()Z
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/l0;->isExternal()Z

    move-result v0

    return v0
.end method

.method public final j()Lma/a0;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/l0;->j()Lma/a0;

    move-result-object v0

    return-object v0
.end method

.method public final j0()Lma/s;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    iget-object v0, v0, Lpa/l0;->D:Lma/s;

    return-object v0
.end method

.method public final k0()Lma/b$a;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/l0;->k0()Lma/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lpa/m0;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    iget-object v0, v0, Lpa/l0;->A:Lpa/m0;

    return-object v0
.end method

.method public final n0()Lma/s;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    iget-object v0, v0, Lpa/l0;->C:Lma/s;

    return-object v0
.end method

.method public final o0(Lma/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 1
    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0, p2}, Lma/l;->d(Lma/l0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final p0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/o0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/l0;->p0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final r0()Z
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    iget-boolean v0, v0, Lpa/l0;->p:Z

    return v0
.end method

.method public final t()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0}, Lpa/l0;->t()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    .line 2
    .line 3
    iget-boolean v0, v0, Lpa/l0;->q:Z

    .line 4
    .line 5
    return v0
.end method

.method public final w0(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lma/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lec/d;->a:Lpa/l0;

    invoke-virtual {v0, p1}, Lpa/l0;->w0(Ljava/util/Collection;)V

    return-void
.end method
