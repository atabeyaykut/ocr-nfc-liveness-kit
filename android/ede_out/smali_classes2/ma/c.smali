.class public final Lma/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma/w0;


# instance fields
.field public final a:Lma/w0;

.field public final b:Lma/j;

.field public final c:I


# direct methods
.method public constructor <init>(Lma/w0;Lma/j;I)V
    .locals 1

    const-string v0, "declarationDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/c;->a:Lma/w0;

    iput-object p2, p0, Lma/c;->b:Lma/j;

    iput p3, p0, Lma/c;->c:I

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lma/c;->a:Lma/w0;

    invoke-interface {v0}, Lma/w0;->A()Z

    move-result v0

    return v0
.end method

.method public final I()Lcc/t1;
    .locals 1

    iget-object v0, p0, Lma/c;->a:Lma/w0;

    invoke-interface {v0}, Lma/w0;->I()Lcc/t1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lma/g;
    .locals 1

    invoke-virtual {p0}, Lma/c;->a()Lma/w0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lma/j;
    .locals 1

    invoke-virtual {p0}, Lma/c;->a()Lma/w0;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lma/w0;
    .locals 2

    iget-object v0, p0, Lma/c;->a:Lma/w0;

    invoke-interface {v0}, Lma/w0;->a()Lma/w0;

    move-result-object v0

    const-string v1, "originalDescriptor.original"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Lma/j;
    .locals 1

    iget-object v0, p0, Lma/c;->b:Lma/j;

    return-object v0
.end method

.method public final d0()Lbc/l;
    .locals 1

    iget-object v0, p0, Lma/c;->a:Lma/w0;

    invoke-interface {v0}, Lma/w0;->d0()Lbc/l;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotations()Lna/h;
    .locals 1

    iget-object v0, p0, Lma/c;->a:Lma/w0;

    invoke-interface {v0}, Lna/a;->getAnnotations()Lna/h;

    move-result-object v0

    return-object v0
.end method

.method public final getIndex()I
    .locals 2

    iget-object v0, p0, Lma/c;->a:Lma/w0;

    invoke-interface {v0}, Lma/w0;->getIndex()I

    move-result v0

    iget v1, p0, Lma/c;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getName()Llb/f;
    .locals 1

    iget-object v0, p0, Lma/c;->a:Lma/w0;

    invoke-interface {v0}, Lma/j;->getName()Llb/f;

    move-result-object v0

    return-object v0
.end method

.method public final getSource()Lma/r0;
    .locals 1

    iget-object v0, p0, Lma/c;->a:Lma/w0;

    invoke-interface {v0}, Lma/m;->getSource()Lma/r0;

    move-result-object v0

    return-object v0
.end method

.method public final getUpperBounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lma/c;->a:Lma/w0;

    invoke-interface {v0}, Lma/w0;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcc/c1;
    .locals 1

    iget-object v0, p0, Lma/c;->a:Lma/w0;

    invoke-interface {v0}, Lma/w0;->i()Lcc/c1;

    move-result-object v0

    return-object v0
.end method

.method public final l0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o0(Lma/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lma/c;->a:Lma/w0;

    invoke-interface {v0, p1, p2}, Lma/j;->o0(Lma/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final q()Lcc/m0;
    .locals 1

    iget-object v0, p0, Lma/c;->a:Lma/w0;

    invoke-interface {v0}, Lma/g;->q()Lcc/m0;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lma/c;->a:Lma/w0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "[inner-copy]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
