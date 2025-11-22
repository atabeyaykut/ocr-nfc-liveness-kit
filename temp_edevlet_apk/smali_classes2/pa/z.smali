.class public final Lpa/z;
.super Lpa/p;
.source "SourceFile"

# interfaces
.implements Lma/i0;


# static fields
.field public static final synthetic h:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lpa/g0;

.field public final d:Llb/c;

.field public final e:Lbc/i;

.field public final f:Lbc/i;

.field public final g:Lvb/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lpa/z;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "fragments"

    const-string v5, "getFragments()Ljava/util/List;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "empty"

    const-string v4, "getEmpty()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lpa/z;->h:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lpa/g0;Llb/c;Lbc/l;)V
    .locals 2

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lna/h$a;->a:Lna/h$a$a;

    invoke-virtual {p2}, Llb/c;->g()Llb/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lpa/p;-><init>(Lna/h;Llb/f;)V

    iput-object p1, p0, Lpa/z;->c:Lpa/g0;

    iput-object p2, p0, Lpa/z;->d:Llb/c;

    new-instance p1, Lpa/z$b;

    invoke-direct {p1, p0}, Lpa/z$b;-><init>(Lpa/z;)V

    invoke-interface {p3, p1}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p1

    iput-object p1, p0, Lpa/z;->e:Lbc/i;

    new-instance p1, Lpa/z$a;

    invoke-direct {p1, p0}, Lpa/z$a;-><init>(Lpa/z;)V

    invoke-interface {p3, p1}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p1

    iput-object p1, p0, Lpa/z;->f:Lbc/i;

    new-instance p1, Lvb/h;

    new-instance p2, Lpa/z$c;

    invoke-direct {p2, p0}, Lpa/z$c;-><init>(Lpa/z;)V

    invoke-direct {p1, p3, p2}, Lvb/h;-><init>(Lbc/l;Lx9/a;)V

    iput-object p1, p0, Lpa/z;->g:Lvb/h;

    return-void
.end method


# virtual methods
.method public final D()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/e0;",
            ">;"
        }
    .end annotation

    sget-object v0, Lpa/z;->h:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lpa/z;->e:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final b()Lma/j;
    .locals 2

    iget-object v0, p0, Lpa/z;->d:Llb/c;

    invoke-virtual {v0}, Llb/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Llb/c;->e()Llb/c;

    move-result-object v0

    const-string v1, "fqName.parent()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lpa/z;->c:Lpa/g0;

    invoke-virtual {v1, v0}, Lpa/g0;->I0(Llb/c;)Lma/i0;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final d()Llb/c;
    .locals 1

    iget-object v0, p0, Lpa/z;->d:Llb/c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lma/i0;

    if-eqz v0, :cond_0

    check-cast p1, Lma/i0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Lma/i0;->d()Llb/c;

    move-result-object v1

    iget-object v2, p0, Lpa/z;->d:Llb/c;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lma/i0;->u0()Lpa/g0;

    move-result-object p1

    iget-object v1, p0, Lpa/z;->c:Lpa/g0;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lpa/z;->c:Lpa/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpa/z;->d:Llb/c;

    invoke-virtual {v1}, Llb/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final isEmpty()Z
    .locals 2

    sget-object v0, Lpa/z;->h:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lpa/z;->f:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final o()Lvb/i;
    .locals 1

    iget-object v0, p0, Lpa/z;->g:Lvb/h;

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

    invoke-interface {p1, p0, p2}, Lma/l;->l(Lma/i0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final u0()Lpa/g0;
    .locals 1

    iget-object v0, p0, Lpa/z;->c:Lpa/g0;

    return-object v0
.end method
