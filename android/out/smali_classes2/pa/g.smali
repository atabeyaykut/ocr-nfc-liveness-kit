.class public final Lpa/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/c1;


# instance fields
.field public final synthetic a:Lpa/f;


# direct methods
.method public constructor <init>(Lpa/f;)V
    .locals 0

    iput-object p1, p0, Lpa/g;->a:Lpa/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 1
    iget-object v0, p0, Lpa/g;->a:Lpa/f;

    .line 2
    .line 3
    check-cast v0, Lac/m;

    .line 4
    .line 5
    iget-object v0, v0, Lac/m;->s:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, "typeConstructorParameters"

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    throw v0
.end method

.method public final l()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpa/g;->a:Lpa/f;

    check-cast v0, Lac/m;

    invoke-virtual {v0}, Lac/m;->c0()Lcc/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v0

    invoke-interface {v0}, Lcc/c1;->l()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "declarationDescriptor.un\u2026pe.constructor.supertypes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final m()Lja/k;
    .locals 1

    iget-object v0, p0, Lpa/g;->a:Lpa/f;

    invoke-static {v0}, Lsb/b;->e(Lma/j;)Lja/k;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lma/g;
    .locals 1

    iget-object v0, p0, Lpa/g;->a:Lpa/f;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[typealias "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lpa/g;->a:Lpa/f;

    invoke-virtual {v1}, Lpa/p;->getName()Llb/f;

    move-result-object v1

    invoke-virtual {v1}, Llb/f;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
