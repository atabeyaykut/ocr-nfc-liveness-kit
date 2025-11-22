.class public abstract Lcc/t;
.super Lcc/s;
.source "SourceFile"


# instance fields
.field public final b:Lcc/m0;


# direct methods
.method public constructor <init>(Lcc/m0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcc/s;-><init>()V

    iput-object p1, p0, Lcc/t;->b:Lcc/m0;

    return-void
.end method


# virtual methods
.method public final T0(Z)Lcc/m0;
    .locals 1

    invoke-virtual {p0}, Lcc/s;->N0()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcc/t;->b:Lcc/m0;

    invoke-virtual {v0, p1}, Lcc/m0;->T0(Z)Lcc/m0;

    move-result-object p1

    invoke-virtual {p0}, Lcc/s;->L0()Lcc/a1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcc/m0;->U0(Lcc/a1;)Lcc/m0;

    move-result-object p1

    return-object p1
.end method

.method public final U0(Lcc/a1;)Lcc/m0;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcc/s;->L0()Lcc/a1;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Lcc/o0;

    invoke-direct {v0, p0, p1}, Lcc/o0;-><init>(Lcc/m0;Lcc/a1;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public final V0()Lcc/m0;
    .locals 1

    iget-object v0, p0, Lcc/t;->b:Lcc/m0;

    return-object v0
.end method
