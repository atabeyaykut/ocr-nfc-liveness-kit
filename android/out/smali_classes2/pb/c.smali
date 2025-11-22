.class public final Lpb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb/b;


# instance fields
.field public final a:Lcc/i1;

.field public b:Ldc/j;


# direct methods
.method public constructor <init>(Lcc/i1;)V
    .locals 1

    const-string v0, "projection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb/c;->a:Lcc/i1;

    invoke-interface {p1}, Lcc/i1;->b()Lcc/t1;

    return-void
.end method


# virtual methods
.method public final b()Lcc/i1;
    .locals 1

    iget-object v0, p0, Lpb/c;->a:Lcc/i1;

    return-object v0
.end method

.method public final getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0
.end method

.method public final l()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpb/c;->a:Lcc/i1;

    invoke-interface {v0}, Lcc/i1;->b()Lcc/t1;

    move-result-object v1

    sget-object v2, Lcc/t1;->e:Lcc/t1;

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcc/i1;->getType()Lcc/e0;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpb/c;->m()Lja/k;

    move-result-object v0

    invoke-virtual {v0}, Lja/k;->o()Lcc/m0;

    move-result-object v0

    :goto_0
    const-string v1, "if (projection.projectio\u2026 builtIns.nullableAnyType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final m()Lja/k;
    .locals 2

    iget-object v0, p0, Lpb/c;->a:Lcc/i1;

    invoke-interface {v0}, Lcc/i1;->getType()Lcc/e0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v0

    invoke-interface {v0}, Lcc/c1;->m()Lja/k;

    move-result-object v0

    const-string v1, "projection.type.constructor.builtIns"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic n()Lma/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CapturedTypeConstructor("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lpb/c;->a:Lcc/i1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
