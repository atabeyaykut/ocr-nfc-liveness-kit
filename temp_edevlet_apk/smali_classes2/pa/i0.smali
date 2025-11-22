.class public abstract Lpa/i0;
.super Lpa/q;
.source "SourceFile"

# interfaces
.implements Lma/e0;


# instance fields
.field public final e:Llb/c;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lma/b0;Llb/c;)V
    .locals 3

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lna/h$a;->a:Lna/h$a$a;

    invoke-virtual {p2}, Llb/c;->g()Llb/f;

    move-result-object v1

    sget-object v2, Lma/r0;->a:Lma/r0$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lpa/q;-><init>(Lma/j;Lna/h;Llb/f;Lma/r0;)V

    iput-object p2, p0, Lpa/i0;->e:Llb/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpa/i0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Lma/b0;
    .locals 2

    invoke-super {p0}, Lpa/q;->b()Lma/j;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ModuleDescriptor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lma/b0;

    return-object v0
.end method

.method public final bridge synthetic b()Lma/j;
    .locals 1

    invoke-virtual {p0}, Lpa/i0;->b()Lma/b0;

    move-result-object v0

    return-object v0
.end method

.method public final d()Llb/c;
    .locals 1

    iget-object v0, p0, Lpa/i0;->e:Llb/c;

    return-object v0
.end method

.method public getSource()Lma/r0;
    .locals 1

    sget-object v0, Lma/r0;->a:Lma/r0$a;

    return-object v0
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

    invoke-interface {p1, p0, p2}, Lma/l;->e(Lma/e0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpa/i0;->f:Ljava/lang/String;

    return-object v0
.end method
