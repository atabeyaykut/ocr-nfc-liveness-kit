.class public final Lcc/p0;
.super Lcc/s;
.source "SourceFile"

# interfaces
.implements Lcc/r1;


# instance fields
.field public final b:Lcc/m0;

.field public final c:Lcc/e0;


# direct methods
.method public constructor <init>(Lcc/m0;Lcc/e0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enhancement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcc/s;-><init>()V

    iput-object p1, p0, Lcc/p0;->b:Lcc/m0;

    iput-object p2, p0, Lcc/p0;->c:Lcc/e0;

    return-void
.end method


# virtual methods
.method public final C()Lcc/e0;
    .locals 1

    iget-object v0, p0, Lcc/p0;->c:Lcc/e0;

    return-object v0
.end method

.method public final E0()Lcc/s1;
    .locals 1

    iget-object v0, p0, Lcc/p0;->b:Lcc/m0;

    return-object v0
.end method

.method public final bridge synthetic O0(Ldc/f;)Lcc/e0;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/p0;->Y0(Ldc/f;)Lcc/p0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic R0(Ldc/f;)Lcc/s1;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/p0;->Y0(Ldc/f;)Lcc/p0;

    move-result-object p1

    return-object p1
.end method

.method public final T0(Z)Lcc/m0;
    .locals 2

    iget-object v0, p0, Lcc/p0;->b:Lcc/m0;

    invoke-virtual {v0, p1}, Lcc/m0;->T0(Z)Lcc/m0;

    move-result-object v0

    iget-object v1, p0, Lcc/p0;->c:Lcc/e0;

    invoke-virtual {v1}, Lcc/e0;->P0()Lcc/s1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcc/s1;->Q0(Z)Lcc/s1;

    move-result-object p1

    invoke-static {v0, p1}, Lc5/v;->O(Lcc/s1;Lcc/e0;)Lcc/s1;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcc/m0;

    return-object p1
.end method

.method public final U0(Lcc/a1;)Lcc/m0;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcc/p0;->b:Lcc/m0;

    invoke-virtual {v0, p1}, Lcc/m0;->U0(Lcc/a1;)Lcc/m0;

    move-result-object p1

    iget-object v0, p0, Lcc/p0;->c:Lcc/e0;

    invoke-static {p1, v0}, Lc5/v;->O(Lcc/s1;Lcc/e0;)Lcc/s1;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcc/m0;

    return-object p1
.end method

.method public final V0()Lcc/m0;
    .locals 1

    iget-object v0, p0, Lcc/p0;->b:Lcc/m0;

    return-object v0
.end method

.method public final bridge synthetic W0(Ldc/f;)Lcc/m0;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/p0;->Y0(Ldc/f;)Lcc/p0;

    move-result-object p1

    return-object p1
.end method

.method public final X0(Lcc/m0;)Lcc/s;
    .locals 2

    new-instance v0, Lcc/p0;

    iget-object v1, p0, Lcc/p0;->c:Lcc/e0;

    invoke-direct {v0, p1, v1}, Lcc/p0;-><init>(Lcc/m0;Lcc/e0;)V

    return-object v0
.end method

.method public final Y0(Ldc/f;)Lcc/p0;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcc/p0;

    iget-object v1, p0, Lcc/p0;->b:Lcc/m0;

    invoke-virtual {p1, v1}, Ldc/f;->x(Lfc/h;)Lcc/e0;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcc/m0;

    iget-object v2, p0, Lcc/p0;->c:Lcc/e0;

    invoke-virtual {p1, v2}, Ldc/f;->x(Lfc/h;)Lcc/e0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcc/p0;-><init>(Lcc/m0;Lcc/e0;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[@EnhancedForWarnings("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcc/p0;->c:Lcc/e0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcc/p0;->b:Lcc/m0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
