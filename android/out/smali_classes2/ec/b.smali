.class public final Lec/b;
.super Lpa/p0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lec/a;)V
    .locals 17

    const-string v0, "containingDeclaration"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    sget-object v4, Lna/h$a;->a:Lna/h$a$a;

    const-string v0, "<Error function>"

    invoke-static {v0}, Llb/f;->v(Ljava/lang/String;)Llb/f;

    move-result-object v5

    sget-object v6, Lma/b$a;->a:Lma/b$a;

    sget-object v7, Lma/r0;->a:Lma/r0$a;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lpa/p0;-><init>(Lma/j;Lma/q0;Lna/h;Llb/f;Lma/b$a;Lma/r0;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v13, Lm9/v;->a:Lm9/v;

    sget-object v0, Lec/h;->e:Lec/h;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    move-result-object v14

    sget-object v15, Lma/a0;->c:Lma/a0;

    sget-object v16, Lma/p;->e:Lma/p$h;

    move-object/from16 v8, p0

    move-object v11, v13

    move-object v12, v13

    invoke-virtual/range {v8 .. v16}, Lpa/p0;->W0(Lpa/o0;Lma/o0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcc/e0;Lma/a0;Lma/q;)Lpa/p0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic E0(Lma/j;Lma/a0;Lma/o;)Lma/u;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lec/b;->T0(Lma/j;Lma/a0;Lma/o;)Lma/q0;

    return-object p0
.end method

.method public final K0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;Llb/f;)Lpa/x;
    .locals 0

    const-string p3, "newOwner"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "kind"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "annotations"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final T0(Lma/j;Lma/a0;Lma/o;)Lma/q0;
    .locals 0

    const-string p2, "newOwner"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "visibility"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic b0(Lma/j;Lma/a0;Lma/o;)Lma/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lec/b;->T0(Lma/j;Lma/a0;Lma/o;)Lma/q0;

    return-object p0
.end method

.method public final isSuspend()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final r()Lma/u$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lma/u$a<",
            "Lma/q0;",
            ">;"
        }
    .end annotation

    new-instance v0, Lec/b$a;

    invoke-direct {v0, p0}, Lec/b$a;-><init>(Lec/b;)V

    return-object v0
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

    const-string v0, "overriddenDescriptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
