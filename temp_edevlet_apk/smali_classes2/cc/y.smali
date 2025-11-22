.class public abstract Lcc/y;
.super Lcc/s1;
.source "SourceFile"

# interfaces
.implements Lfc/f;


# instance fields
.field public final b:Lcc/m0;

.field public final c:Lcc/m0;


# direct methods
.method public constructor <init>(Lcc/m0;Lcc/m0;)V
    .locals 1

    .line 1
    const-string v0, "lowerBound"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "upperBound"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcc/s1;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcc/y;->b:Lcc/m0;

    .line 15
    .line 16
    iput-object p2, p0, Lcc/y;->c:Lcc/m0;

    .line 17
    .line 18
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

    invoke-virtual {p0}, Lcc/y;->T0()Lcc/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public L0()Lcc/a1;
    .locals 1

    invoke-virtual {p0}, Lcc/y;->T0()Lcc/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->L0()Lcc/a1;

    move-result-object v0

    return-object v0
.end method

.method public final M0()Lcc/c1;
    .locals 1

    invoke-virtual {p0}, Lcc/y;->T0()Lcc/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v0

    return-object v0
.end method

.method public N0()Z
    .locals 1

    invoke-virtual {p0}, Lcc/y;->T0()Lcc/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->N0()Z

    move-result v0

    return v0
.end method

.method public abstract T0()Lcc/m0;
.end method

.method public abstract U0(Lnb/c;Lnb/j;)Ljava/lang/String;
.end method

.method public o()Lvb/i;
    .locals 1

    invoke-virtual {p0}, Lcc/y;->T0()Lcc/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->o()Lvb/i;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnb/c;->b:Lnb/d;

    invoke-virtual {v0, p0}, Lnb/d;->u(Lcc/e0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
