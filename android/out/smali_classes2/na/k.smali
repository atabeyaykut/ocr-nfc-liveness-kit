.class public final Lna/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lna/h;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lna/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lna/h;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lna/k;->a:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lna/h;)V
    .locals 0

    invoke-static {p1}, Lm9/k;->A0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lna/k;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final P(Llb/c;)Z
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lna/k;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lm9/t;->U0(Ljava/lang/Iterable;)Lm9/r;

    move-result-object v0

    invoke-virtual {v0}, Lm9/r;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lna/h;

    invoke-interface {v1, p1}, Lna/h;->P(Llb/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isEmpty()Z
    .locals 3

    iget-object v0, p0, Lna/k;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lna/h;

    invoke-interface {v1}, Lna/h;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lna/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lna/k;->a:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-static {v0}, Lm9/t;->U0(Ljava/lang/Iterable;)Lm9/r;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lna/k$b;->a:Lna/k$b;

    .line 10
    .line 11
    invoke-static {v0, v1}, Llc/w;->Y0(Llc/h;Lx9/l;)Llc/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Llc/f$a;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Llc/f$a;-><init>(Llc/f;)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method public final n(Llb/c;)Lna/c;
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lna/k;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lm9/t;->U0(Ljava/lang/Iterable;)Lm9/r;

    move-result-object v0

    new-instance v1, Lna/k$a;

    invoke-direct {v1, p1}, Lna/k$a;-><init>(Llb/c;)V

    invoke-static {v0, v1}, Llc/w;->a1(Llc/h;Lx9/l;)Llc/e;

    move-result-object p1

    invoke-static {p1}, Llc/w;->X0(Llc/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lna/c;

    return-object p1
.end method
