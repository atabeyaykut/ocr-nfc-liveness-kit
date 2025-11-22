.class public final Lya/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma/h0;


# instance fields
.field public final a:Lp4/g7;

.field public final b:Lbc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/a<",
            "Llb/c;",
            "Lza/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lya/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp4/g7;

    .line 5
    .line 6
    sget-object v1, Lya/j$a;->a:Lya/j$a;

    .line 7
    .line 8
    new-instance v2, Ll9/b;

    .line 9
    .line 10
    invoke-direct {v2}, Ll9/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1, v1, v2}, Lp4/g7;-><init>(Lya/c;Lya/j;Ll9/e;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lya/f;->a:Lp4/g7;

    .line 17
    .line 18
    invoke-virtual {v0}, Lp4/g7;->b()Lbc/l;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lbc/l;->c()Lbc/c$b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lya/f;->b:Lbc/a;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Llb/c;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/c;",
            ")",
            "Ljava/util/List<",
            "Lza/m;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lya/f;->d(Llb/c;)Lza/m;

    move-result-object p1

    invoke-static {p1}, Lb8/f;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Llb/c;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lya/f;->d(Llb/c;)Lza/m;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/d0;->f(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    return-void
.end method

.method public final c(Llb/c;)Z
    .locals 1

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lya/f;->a:Lp4/g7;

    .line 7
    .line 8
    iget-object v0, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lya/c;

    .line 11
    .line 12
    iget-object v0, v0, Lya/c;->b:Lva/l;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lva/l;->b(Llb/c;)Lsa/b0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method public final d(Llb/c;)Lza/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lya/f;->a:Lp4/g7;

    .line 2
    .line 3
    iget-object v0, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lya/c;

    .line 6
    .line 7
    iget-object v0, v0, Lya/c;->b:Lva/l;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lva/l;->b(Llb/c;)Lsa/b0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance v1, Lya/f$a;

    .line 18
    .line 19
    invoke-direct {v1, p0, v0}, Lya/f$a;-><init>(Lya/f;Lcb/t;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lya/f;->b:Lbc/a;

    .line 23
    .line 24
    check-cast v0, Lbc/c$b;

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Lbc/c$b;->c(Ljava/lang/Object;Lx9/a;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lza/m;

    .line 31
    .line 32
    return-object p1
.end method

.method public final n(Llb/c;Lx9/l;)Ljava/util/Collection;
    .locals 1

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameFilter"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lya/f;->d(Llb/c;)Lza/m;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lza/m;->l:Lbc/i;

    .line 18
    .line 19
    invoke-interface {p1}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/util/List;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    if-nez p1, :cond_1

    .line 28
    .line 29
    sget-object p1, Lm9/v;->a:Lm9/v;

    .line 30
    .line 31
    :cond_1
    check-cast p1, Ljava/util/Collection;

    .line 32
    .line 33
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LazyJavaPackageFragmentProvider of module "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lya/f;->a:Lp4/g7;

    .line 9
    .line 10
    iget-object v1, v1, Lp4/g7;->a:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lya/c;

    .line 13
    .line 14
    iget-object v1, v1, Lya/c;->o:Lma/b0;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
