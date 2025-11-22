.class public final Lcc/u0;
.super Lcc/d;
.source "SourceFile"


# instance fields
.field public final e:Lcc/c1;

.field public final f:Lvb/i;


# direct methods
.method public constructor <init>(Ldc/n;ZLcc/c1;)V
    .locals 1

    const-string v0, "originalTypeVariable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcc/d;-><init>(Ldc/n;Z)V

    iput-object p3, p0, Lcc/u0;->e:Lcc/c1;

    invoke-interface {p1}, Lcc/c1;->m()Lja/k;

    move-result-object p1

    invoke-virtual {p1}, Lja/k;->f()Lcc/m0;

    move-result-object p1

    invoke-virtual {p1}, Lcc/e0;->o()Lvb/i;

    move-result-object p1

    iput-object p1, p0, Lcc/u0;->f:Lvb/i;

    return-void
.end method


# virtual methods
.method public final M0()Lcc/c1;
    .locals 1

    iget-object v0, p0, Lcc/u0;->e:Lcc/c1;

    return-object v0
.end method

.method public final V0(Z)Lcc/u0;
    .locals 3

    new-instance v0, Lcc/u0;

    iget-object v1, p0, Lcc/d;->b:Ldc/n;

    iget-object v2, p0, Lcc/u0;->e:Lcc/c1;

    invoke-direct {v0, v1, p1, v2}, Lcc/u0;-><init>(Ldc/n;ZLcc/c1;)V

    return-object v0
.end method

.method public final o()Lvb/i;
    .locals 1

    iget-object v0, p0, Lcc/u0;->f:Lvb/i;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stub (BI): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcc/d;->b:Ldc/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcc/d;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "?"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
