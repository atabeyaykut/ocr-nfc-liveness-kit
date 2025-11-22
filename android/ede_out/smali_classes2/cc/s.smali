.class public abstract Lcc/s;
.super Lcc/m0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcc/m0;-><init>()V

    return-void
.end method


# virtual methods
.method public final K0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcc/i1;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcc/s;->V0()Lcc/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public L0()Lcc/a1;
    .locals 1

    invoke-virtual {p0}, Lcc/s;->V0()Lcc/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->L0()Lcc/a1;

    move-result-object v0

    return-object v0
.end method

.method public final M0()Lcc/c1;
    .locals 1

    invoke-virtual {p0}, Lcc/s;->V0()Lcc/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v0

    return-object v0
.end method

.method public N0()Z
    .locals 1

    invoke-virtual {p0}, Lcc/s;->V0()Lcc/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->N0()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic O0(Ldc/f;)Lcc/e0;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/s;->W0(Ldc/f;)Lcc/m0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic R0(Ldc/f;)Lcc/s1;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/s;->W0(Ldc/f;)Lcc/m0;

    move-result-object p1

    return-object p1
.end method

.method public abstract V0()Lcc/m0;
.end method

.method public W0(Ldc/f;)Lcc/m0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcc/s;->V0()Lcc/m0;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldc/f;->x(Lfc/h;)Lcc/e0;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcc/m0;

    invoke-virtual {p0, p1}, Lcc/s;->X0(Lcc/m0;)Lcc/s;

    move-result-object p1

    return-object p1
.end method

.method public abstract X0(Lcc/m0;)Lcc/s;
.end method

.method public final o()Lvb/i;
    .locals 1

    invoke-virtual {p0}, Lcc/s;->V0()Lcc/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->o()Lvb/i;

    move-result-object v0

    return-object v0
.end method
