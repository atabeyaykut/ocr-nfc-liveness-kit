.class public abstract Lpa/f;
.super Lpa/q;
.source "SourceFile"

# interfaces
.implements Lma/v0;


# instance fields
.field public final e:Lma/q;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lma/w0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lpa/g;


# direct methods
.method public constructor <init>(Lma/j;Lna/h;Llb/f;Lma/q;)V
    .locals 2

    sget-object v0, Lma/r0;->a:Lma/r0$a;

    const-string v1, "containingDeclaration"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "visibilityImpl"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lpa/q;-><init>(Lma/j;Lna/h;Llb/f;Lma/r0;)V

    iput-object p4, p0, Lpa/f;->e:Lma/q;

    new-instance p1, Lpa/g;

    invoke-direct {p1, p0}, Lpa/g;-><init>(Lpa/f;)V

    iput-object p1, p0, Lpa/f;->g:Lpa/g;

    return-void
.end method


# virtual methods
.method public final D0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final G()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final H()Z
    .locals 2

    move-object v0, p0

    check-cast v0, Lac/m;

    invoke-virtual {v0}, Lac/m;->c0()Lcc/m0;

    move-result-object v0

    new-instance v1, Lpa/f$a;

    invoke-direct {v1, p0}, Lpa/f$a;-><init>(Lpa/f;)V

    invoke-static {v0, v1}, Lcc/q1;->c(Lcc/e0;Lx9/l;)Z

    move-result v0

    return v0
.end method

.method public final a()Lma/g;
    .locals 0

    return-object p0
.end method

.method public final a()Lma/j;
    .locals 0

    return-object p0
.end method

.method public final getVisibility()Lma/q;
    .locals 1

    iget-object v0, p0, Lpa/f;->e:Lma/q;

    return-object v0
.end method

.method public final i()Lcc/c1;
    .locals 1

    iget-object v0, p0, Lpa/f;->g:Lpa/g;

    return-object v0
.end method

.method public final isExternal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o0(Lma/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lma/l<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lma/l;->k(Lma/v0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpa/f;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "declaredTypeParametersImpl"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "typealias "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lpa/p;->getName()Llb/f;

    move-result-object v1

    invoke-virtual {v1}, Llb/f;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z0()Lma/m;
    .locals 0

    return-object p0
.end method
