.class public final Lcc/v;
.super Lcc/y;
.source "SourceFile"


# instance fields
.field public final d:Lcc/a1;


# direct methods
.method public constructor <init>(Lja/k;Lcc/a1;)V
    .locals 2

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lja/k;->n()Lcc/m0;

    move-result-object v0

    const-string v1, "builtIns.nothingType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lja/k;->o()Lcc/m0;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcc/y;-><init>(Lcc/m0;Lcc/m0;)V

    iput-object p2, p0, Lcc/v;->d:Lcc/a1;

    return-void
.end method


# virtual methods
.method public final L0()Lcc/a1;
    .locals 1

    iget-object v0, p0, Lcc/v;->d:Lcc/a1;

    return-object v0
.end method

.method public final N0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final O0(Ldc/f;)Lcc/e0;
    .locals 1

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final Q0(Z)Lcc/s1;
    .locals 0

    return-object p0
.end method

.method public final R0(Ldc/f;)Lcc/s1;
    .locals 1

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final S0(Lcc/a1;)Lcc/s1;
    .locals 2

    .line 1
    const-string v0, "newAttributes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcc/v;

    .line 7
    .line 8
    iget-object v1, p0, Lcc/y;->c:Lcc/m0;

    .line 9
    .line 10
    invoke-static {v1}, Lc5/y;->o(Lcc/e0;)Lja/k;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1, p1}, Lcc/v;-><init>(Lja/k;Lcc/a1;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final T0()Lcc/m0;
    .locals 1

    iget-object v0, p0, Lcc/y;->c:Lcc/m0;

    return-object v0
.end method

.method public final U0(Lnb/c;Lnb/j;)Ljava/lang/String;
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "options"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dynamic"

    return-object p1
.end method
