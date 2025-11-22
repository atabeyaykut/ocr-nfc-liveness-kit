.class public final Lcc/q;
.super Lcc/s;
.source "SourceFile"

# interfaces
.implements Lcc/o;
.implements Lfc/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/q$a;
    }
.end annotation


# instance fields
.field public final b:Lcc/m0;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcc/m0;Z)V
    .locals 0

    invoke-direct {p0}, Lcc/s;-><init>()V

    iput-object p1, p0, Lcc/q;->b:Lcc/m0;

    iput-boolean p2, p0, Lcc/q;->c:Z

    return-void
.end method


# virtual methods
.method public final N0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final T0(Z)Lcc/m0;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcc/q;->b:Lcc/m0;

    invoke-virtual {v0, p1}, Lcc/m0;->T0(Z)Lcc/m0;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public final U0(Lcc/a1;)Lcc/m0;
    .locals 2

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcc/q;

    iget-object v1, p0, Lcc/q;->b:Lcc/m0;

    invoke-virtual {v1, p1}, Lcc/m0;->U0(Lcc/a1;)Lcc/m0;

    move-result-object p1

    iget-boolean v1, p0, Lcc/q;->c:Z

    invoke-direct {v0, p1, v1}, Lcc/q;-><init>(Lcc/m0;Z)V

    return-object v0
.end method

.method public final V0()Lcc/m0;
    .locals 1

    iget-object v0, p0, Lcc/q;->b:Lcc/m0;

    return-object v0
.end method

.method public final X0(Lcc/m0;)Lcc/s;
    .locals 2

    new-instance v0, Lcc/q;

    iget-boolean v1, p0, Lcc/q;->c:Z

    invoke-direct {v0, p1, v1}, Lcc/q;-><init>(Lcc/m0;Z)V

    return-object v0
.end method

.method public final e0(Lcc/e0;)Lcc/s1;
    .locals 1

    const-string v0, "replacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcc/e0;->P0()Lcc/s1;

    move-result-object p1

    iget-boolean v0, p0, Lcc/q;->c:Z

    invoke-static {p1, v0}, Lcc/q0;->a(Lcc/s1;Z)Lcc/s1;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcc/q;->b:Lcc/m0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " & Any"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z0()Z
    .locals 2

    iget-object v0, p0, Lcc/q;->b:Lcc/m0;

    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v1

    instance-of v1, v1, Ldc/n;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v0

    invoke-interface {v0}, Lcc/c1;->n()Lma/g;

    move-result-object v0

    instance-of v0, v0, Lma/w0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
