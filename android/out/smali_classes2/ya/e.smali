.class public final Lya/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lna/h;


# instance fields
.field public final a:Lp4/g7;

.field public final b:Lcb/d;

.field public final c:Z

.field public final d:Lbc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/h<",
            "Lcb/a;",
            "Lna/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp4/g7;Lcb/d;Z)V
    .locals 1

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "annotationOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lya/e;->a:Lp4/g7;

    .line 15
    .line 16
    iput-object p2, p0, Lya/e;->b:Lcb/d;

    .line 17
    .line 18
    iput-boolean p3, p0, Lya/e;->c:Z

    .line 19
    .line 20
    iget-object p1, p1, Lp4/g7;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lya/c;

    .line 23
    .line 24
    iget-object p1, p1, Lya/c;->a:Lbc/l;

    .line 25
    .line 26
    new-instance p2, Lya/e$a;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lya/e$a;-><init>(Lya/e;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Lbc/l;->e(Lx9/l;)Lbc/c$j;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lya/e;->d:Lbc/h;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final P(Llb/c;)Z
    .locals 0

    invoke-static {p0, p1}, Lna/h$b;->b(Lna/h;Llb/c;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lya/e;->b:Lcb/d;

    invoke-interface {v0}, Lcb/d;->getAnnotations()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcb/d;->o()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lna/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lya/e;->b:Lcb/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcb/d;->getAnnotations()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-static {v1}, Lm9/t;->U0(Ljava/lang/Iterable;)Lm9/r;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lya/e;->d:Lbc/h;

    .line 14
    .line 15
    invoke-static {v1, v2}, Llc/w;->Z0(Llc/h;Lx9/l;)Llc/y;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lwa/c;->a:Llb/f;

    .line 20
    .line 21
    sget-object v2, Lja/o$a;->m:Llb/c;

    .line 22
    .line 23
    iget-object v3, p0, Lya/e;->a:Lp4/g7;

    .line 24
    .line 25
    invoke-static {v2, v0, v3}, Lwa/c;->a(Llb/c;Lcb/d;Lp4/g7;)Lxa/g;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Llc/w;->b1(Llc/y;Ljava/lang/Object;)Llc/f;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Llc/t;->a:Llc/t;

    .line 34
    .line 35
    invoke-static {v0, v1}, Llc/w;->W0(Llc/h;Lx9/l;)Llc/e;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Llc/e$a;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Llc/e$a;-><init>(Llc/e;)V

    .line 42
    .line 43
    .line 44
    return-object v1
.end method

.method public final n(Llb/c;)Lna/c;
    .locals 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lya/e;->b:Lcb/d;

    invoke-interface {v0, p1}, Lcb/d;->n(Llb/c;)Lcb/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lya/e;->d:Lbc/h;

    invoke-interface {v2, v1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lna/c;

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lwa/c;->a:Llb/f;

    iget-object v1, p0, Lya/e;->a:Lp4/g7;

    invoke-static {p1, v0, v1}, Lwa/c;->a(Llb/c;Lcb/d;Lp4/g7;)Lxa/g;

    move-result-object v1

    :cond_1
    return-object v1
.end method
