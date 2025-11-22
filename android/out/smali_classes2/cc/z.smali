.class public final Lcc/z;
.super Lcc/y;
.source "SourceFile"

# interfaces
.implements Lcc/o;


# direct methods
.method public constructor <init>(Lcc/m0;Lcc/m0;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcc/y;-><init>(Lcc/m0;Lcc/m0;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic O0(Ldc/f;)Lcc/e0;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/z;->V0(Ldc/f;)Lcc/y;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(Z)Lcc/s1;
    .locals 2

    iget-object v0, p0, Lcc/y;->b:Lcc/m0;

    invoke-virtual {v0, p1}, Lcc/m0;->T0(Z)Lcc/m0;

    move-result-object v0

    iget-object v1, p0, Lcc/y;->c:Lcc/m0;

    invoke-virtual {v1, p1}, Lcc/m0;->T0(Z)Lcc/m0;

    move-result-object p1

    invoke-static {v0, p1}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic R0(Ldc/f;)Lcc/s1;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/z;->V0(Ldc/f;)Lcc/y;

    move-result-object p1

    return-object p1
.end method

.method public final S0(Lcc/a1;)Lcc/s1;
    .locals 2

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcc/y;->b:Lcc/m0;

    invoke-virtual {v0, p1}, Lcc/m0;->U0(Lcc/a1;)Lcc/m0;

    move-result-object v0

    iget-object v1, p0, Lcc/y;->c:Lcc/m0;

    invoke-virtual {v1, p1}, Lcc/m0;->U0(Lcc/a1;)Lcc/m0;

    move-result-object p1

    invoke-static {v0, p1}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    move-result-object p1

    return-object p1
.end method

.method public final T0()Lcc/m0;
    .locals 1

    iget-object v0, p0, Lcc/y;->b:Lcc/m0;

    return-object v0
.end method

.method public final U0(Lnb/c;Lnb/j;)Ljava/lang/String;
    .locals 3

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lnb/j;->m()Z

    move-result p2

    iget-object v0, p0, Lcc/y;->c:Lcc/m0;

    iget-object v1, p0, Lcc/y;->b:Lcc/m0;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lnb/c;->u(Lcc/e0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lnb/c;->u(Lcc/e0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, v1}, Lnb/c;->u(Lcc/e0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0}, Lnb/c;->u(Lcc/e0;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lc5/y;->o(Lcc/e0;)Lja/k;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lnb/c;->r(Ljava/lang/String;Ljava/lang/String;Lja/k;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final V0(Ldc/f;)Lcc/y;
    .locals 4

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcc/z;

    iget-object v1, p0, Lcc/y;->b:Lcc/m0;

    invoke-virtual {p1, v1}, Ldc/f;->x(Lfc/h;)Lcc/e0;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcc/m0;

    iget-object v3, p0, Lcc/y;->c:Lcc/m0;

    invoke-virtual {p1, v3}, Ldc/f;->x(Lfc/h;)Lcc/e0;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcc/m0;

    invoke-direct {v0, v1, p1}, Lcc/z;-><init>(Lcc/m0;Lcc/m0;)V

    return-object v0
.end method

.method public final e0(Lcc/e0;)Lcc/s1;
    .locals 2

    const-string v0, "replacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcc/e0;->P0()Lcc/s1;

    move-result-object p1

    instance-of v0, p1, Lcc/y;

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcc/m0;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcc/m0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcc/m0;->T0(Z)Lcc/m0;

    move-result-object v1

    invoke-static {v0, v1}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lc5/v;->v(Lcc/s1;Lcc/e0;)Lcc/s1;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lj7/p;

    invoke-direct {p1}, Lj7/p;-><init>()V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcc/y;->b:Lcc/m0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcc/y;->c:Lcc/m0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z0()Z
    .locals 2

    iget-object v0, p0, Lcc/y;->b:Lcc/m0;

    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v1

    invoke-interface {v1}, Lcc/c1;->n()Lma/g;

    move-result-object v1

    instance-of v1, v1, Lma/w0;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v0

    iget-object v1, p0, Lcc/y;->c:Lcc/m0;

    invoke-virtual {v1}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
