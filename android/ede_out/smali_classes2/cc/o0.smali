.class public final Lcc/o0;
.super Lcc/t;
.source "SourceFile"


# instance fields
.field public final c:Lcc/a1;


# direct methods
.method public constructor <init>(Lcc/m0;Lcc/a1;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcc/t;-><init>(Lcc/m0;)V

    iput-object p2, p0, Lcc/o0;->c:Lcc/a1;

    return-void
.end method


# virtual methods
.method public final L0()Lcc/a1;
    .locals 1

    iget-object v0, p0, Lcc/o0;->c:Lcc/a1;

    return-object v0
.end method

.method public final X0(Lcc/m0;)Lcc/s;
    .locals 2

    new-instance v0, Lcc/o0;

    iget-object v1, p0, Lcc/o0;->c:Lcc/a1;

    invoke-direct {v0, p1, v1}, Lcc/o0;-><init>(Lcc/m0;Lcc/a1;)V

    return-object v0
.end method
