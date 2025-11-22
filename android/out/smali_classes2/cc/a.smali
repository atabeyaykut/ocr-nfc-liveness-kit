.class public final Lcc/a;
.super Lcc/s;
.source "SourceFile"


# instance fields
.field public final b:Lcc/m0;

.field public final c:Lcc/m0;


# direct methods
.method public constructor <init>(Lcc/m0;Lcc/m0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcc/s;-><init>()V

    iput-object p1, p0, Lcc/a;->b:Lcc/m0;

    iput-object p2, p0, Lcc/a;->c:Lcc/m0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic O0(Ldc/f;)Lcc/e0;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/a;->Z0(Ldc/f;)Lcc/a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic Q0(Z)Lcc/s1;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/a;->Y0(Z)Lcc/a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic R0(Ldc/f;)Lcc/s1;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/a;->Z0(Ldc/f;)Lcc/a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic T0(Z)Lcc/m0;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/a;->Y0(Z)Lcc/a;

    move-result-object p1

    return-object p1
.end method

.method public final U0(Lcc/a1;)Lcc/m0;
    .locals 2

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcc/a;

    iget-object v1, p0, Lcc/a;->b:Lcc/m0;

    invoke-virtual {v1, p1}, Lcc/m0;->U0(Lcc/a1;)Lcc/m0;

    move-result-object p1

    iget-object v1, p0, Lcc/a;->c:Lcc/m0;

    invoke-direct {v0, p1, v1}, Lcc/a;-><init>(Lcc/m0;Lcc/m0;)V

    return-object v0
.end method

.method public final V0()Lcc/m0;
    .locals 1

    iget-object v0, p0, Lcc/a;->b:Lcc/m0;

    return-object v0
.end method

.method public final bridge synthetic W0(Ldc/f;)Lcc/m0;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/a;->Z0(Ldc/f;)Lcc/a;

    move-result-object p1

    return-object p1
.end method

.method public final X0(Lcc/m0;)Lcc/s;
    .locals 2

    new-instance v0, Lcc/a;

    iget-object v1, p0, Lcc/a;->c:Lcc/m0;

    invoke-direct {v0, p1, v1}, Lcc/a;-><init>(Lcc/m0;Lcc/m0;)V

    return-object v0
.end method

.method public final Y0(Z)Lcc/a;
    .locals 3

    new-instance v0, Lcc/a;

    iget-object v1, p0, Lcc/a;->b:Lcc/m0;

    invoke-virtual {v1, p1}, Lcc/m0;->T0(Z)Lcc/m0;

    move-result-object v1

    iget-object v2, p0, Lcc/a;->c:Lcc/m0;

    invoke-virtual {v2, p1}, Lcc/m0;->T0(Z)Lcc/m0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcc/a;-><init>(Lcc/m0;Lcc/m0;)V

    return-object v0
.end method

.method public final Z0(Ldc/f;)Lcc/a;
    .locals 4

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcc/a;

    iget-object v1, p0, Lcc/a;->b:Lcc/m0;

    invoke-virtual {p1, v1}, Ldc/f;->x(Lfc/h;)Lcc/e0;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcc/m0;

    iget-object v3, p0, Lcc/a;->c:Lcc/m0;

    invoke-virtual {p1, v3}, Ldc/f;->x(Lfc/h;)Lcc/e0;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcc/m0;

    invoke-direct {v0, v1, p1}, Lcc/a;-><init>(Lcc/m0;Lcc/m0;)V

    return-object v0
.end method
