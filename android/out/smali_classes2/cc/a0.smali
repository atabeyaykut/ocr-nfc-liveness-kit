.class public final Lcc/a0;
.super Lcc/y;
.source "SourceFile"

# interfaces
.implements Lcc/r1;


# instance fields
.field public final d:Lcc/y;

.field public final e:Lcc/e0;


# direct methods
.method public constructor <init>(Lcc/y;Lcc/e0;)V
    .locals 2

    .line 1
    const-string v0, "origin"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "enhancement"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lcc/y;->b:Lcc/m0;

    .line 12
    .line 13
    iget-object v1, p1, Lcc/y;->c:Lcc/m0;

    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lcc/y;-><init>(Lcc/m0;Lcc/m0;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcc/a0;->d:Lcc/y;

    .line 19
    .line 20
    iput-object p2, p0, Lcc/a0;->e:Lcc/e0;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final C()Lcc/e0;
    .locals 1

    iget-object v0, p0, Lcc/a0;->e:Lcc/e0;

    return-object v0
.end method

.method public final E0()Lcc/s1;
    .locals 1

    iget-object v0, p0, Lcc/a0;->d:Lcc/y;

    return-object v0
.end method

.method public final bridge synthetic O0(Ldc/f;)Lcc/e0;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/a0;->V0(Ldc/f;)Lcc/a0;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(Z)Lcc/s1;
    .locals 2

    iget-object v0, p0, Lcc/a0;->d:Lcc/y;

    invoke-virtual {v0, p1}, Lcc/s1;->Q0(Z)Lcc/s1;

    move-result-object v0

    iget-object v1, p0, Lcc/a0;->e:Lcc/e0;

    invoke-virtual {v1}, Lcc/e0;->P0()Lcc/s1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcc/s1;->Q0(Z)Lcc/s1;

    move-result-object p1

    invoke-static {v0, p1}, Lc5/v;->O(Lcc/s1;Lcc/e0;)Lcc/s1;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic R0(Ldc/f;)Lcc/s1;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/a0;->V0(Ldc/f;)Lcc/a0;

    move-result-object p1

    return-object p1
.end method

.method public final S0(Lcc/a1;)Lcc/s1;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcc/a0;->d:Lcc/y;

    invoke-virtual {v0, p1}, Lcc/s1;->S0(Lcc/a1;)Lcc/s1;

    move-result-object p1

    iget-object v0, p0, Lcc/a0;->e:Lcc/e0;

    invoke-static {p1, v0}, Lc5/v;->O(Lcc/s1;Lcc/e0;)Lcc/s1;

    move-result-object p1

    return-object p1
.end method

.method public final T0()Lcc/m0;
    .locals 1

    iget-object v0, p0, Lcc/a0;->d:Lcc/y;

    invoke-virtual {v0}, Lcc/y;->T0()Lcc/m0;

    move-result-object v0

    return-object v0
.end method

.method public final U0(Lnb/c;Lnb/j;)Ljava/lang/String;
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lnb/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcc/a0;->e:Lcc/e0;

    invoke-virtual {p1, p2}, Lnb/c;->u(Lcc/e0;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcc/a0;->d:Lcc/y;

    invoke-virtual {v0, p1, p2}, Lcc/y;->U0(Lnb/c;Lnb/j;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final V0(Ldc/f;)Lcc/a0;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcc/a0;

    iget-object v1, p0, Lcc/a0;->d:Lcc/y;

    invoke-virtual {p1, v1}, Ldc/f;->x(Lfc/h;)Lcc/e0;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.FlexibleType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcc/y;

    iget-object v2, p0, Lcc/a0;->e:Lcc/e0;

    invoke-virtual {p1, v2}, Ldc/f;->x(Lfc/h;)Lcc/e0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcc/a0;-><init>(Lcc/y;Lcc/e0;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[@EnhancedForWarnings("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcc/a0;->e:Lcc/e0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcc/a0;->d:Lcc/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
