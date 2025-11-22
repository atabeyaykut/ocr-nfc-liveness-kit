.class public final Lcc/n0;
.super Lcc/m0;
.source "SourceFile"


# instance fields
.field public final b:Lcc/c1;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcc/i1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Lvb/i;

.field public final f:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "Ldc/f;",
            "Lcc/m0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcc/c1;Ljava/util/List;ZLvb/i;Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc/c1;",
            "Ljava/util/List<",
            "+",
            "Lcc/i1;",
            ">;Z",
            "Lvb/i;",
            "Lx9/l<",
            "-",
            "Ldc/f;",
            "+",
            "Lcc/m0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refinedTypeFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcc/m0;-><init>()V

    iput-object p1, p0, Lcc/n0;->b:Lcc/c1;

    iput-object p2, p0, Lcc/n0;->c:Ljava/util/List;

    iput-boolean p3, p0, Lcc/n0;->d:Z

    iput-object p4, p0, Lcc/n0;->e:Lvb/i;

    iput-object p5, p0, Lcc/n0;->f:Lx9/l;

    instance-of p2, p4, Lec/e;

    if-eqz p2, :cond_1

    instance-of p2, p4, Lec/j;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "SimpleTypeImpl should not be created for error type: "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p4, 0xa

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final K0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcc/i1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcc/n0;->c:Ljava/util/List;

    return-object v0
.end method

.method public final L0()Lcc/a1;
    .locals 1

    .line 1
    sget-object v0, Lcc/a1;->b:Lcc/a1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcc/a1;->c:Lcc/a1;

    .line 7
    .line 8
    return-object v0
.end method

.method public final M0()Lcc/c1;
    .locals 1

    iget-object v0, p0, Lcc/n0;->b:Lcc/c1;

    return-object v0
.end method

.method public final N0()Z
    .locals 1

    iget-boolean v0, p0, Lcc/n0;->d:Z

    return v0
.end method

.method public final O0(Ldc/f;)Lcc/e0;
    .locals 1

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcc/n0;->f:Lx9/l;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcc/m0;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    move-object p1, p0

    .line 17
    :cond_0
    return-object p1
.end method

.method public final R0(Ldc/f;)Lcc/s1;
    .locals 1

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcc/n0;->f:Lx9/l;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcc/m0;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    move-object p1, p0

    .line 17
    :cond_0
    return-object p1
.end method

.method public final T0(Z)Lcc/m0;
    .locals 1

    iget-boolean v0, p0, Lcc/n0;->d:Z

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lcc/k0;

    invoke-direct {p1, p0}, Lcc/k0;-><init>(Lcc/m0;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcc/j0;

    invoke-direct {p1, p0}, Lcc/j0;-><init>(Lcc/m0;)V

    :goto_0
    return-object p1
.end method

.method public final U0(Lcc/a1;)Lcc/m0;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lic/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcc/o0;

    invoke-direct {v0, p0, p1}, Lcc/o0;-><init>(Lcc/m0;Lcc/a1;)V

    :goto_0
    return-object v0
.end method

.method public final o()Lvb/i;
    .locals 1

    iget-object v0, p0, Lcc/n0;->e:Lvb/i;

    return-object v0
.end method
