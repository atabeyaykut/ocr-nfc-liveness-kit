.class public final Lcc/j0;
.super Lcc/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcc/m0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcc/t;-><init>(Lcc/m0;)V

    return-void
.end method


# virtual methods
.method public final N0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final X0(Lcc/m0;)Lcc/s;
    .locals 1

    new-instance v0, Lcc/j0;

    invoke-direct {v0, p1}, Lcc/j0;-><init>(Lcc/m0;)V

    return-object v0
.end method
