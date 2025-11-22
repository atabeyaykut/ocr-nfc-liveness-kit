.class public abstract Lcc/u1;
.super Lcc/e0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcc/e0;-><init>()V

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

    invoke-virtual {p0}, Lcc/u1;->Q0()Lcc/e0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final L0()Lcc/a1;
    .locals 1

    invoke-virtual {p0}, Lcc/u1;->Q0()Lcc/e0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->L0()Lcc/a1;

    move-result-object v0

    return-object v0
.end method

.method public final M0()Lcc/c1;
    .locals 1

    invoke-virtual {p0}, Lcc/u1;->Q0()Lcc/e0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v0

    return-object v0
.end method

.method public final N0()Z
    .locals 1

    invoke-virtual {p0}, Lcc/u1;->Q0()Lcc/e0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->N0()Z

    move-result v0

    return v0
.end method

.method public final P0()Lcc/s1;
    .locals 2

    invoke-virtual {p0}, Lcc/u1;->Q0()Lcc/e0;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcc/u1;

    if-eqz v1, :cond_0

    check-cast v0, Lcc/u1;

    invoke-virtual {v0}, Lcc/u1;->Q0()Lcc/e0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.UnwrappedType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcc/s1;

    return-object v0
.end method

.method public abstract Q0()Lcc/e0;
.end method

.method public R0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()Lvb/i;
    .locals 1

    invoke-virtual {p0}, Lcc/u1;->Q0()Lcc/e0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->o()Lvb/i;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcc/u1;->R0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcc/u1;->Q0()Lcc/e0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<Not computed yet>"

    :goto_0
    return-object v0
.end method
