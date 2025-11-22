.class public final Lla/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loa/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lla/e$a;
    }
.end annotation


# static fields
.field public static final d:Lla/e$a;

.field public static final synthetic e:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Llb/c;

.field public static final g:Llb/f;

.field public static final h:Llb/b;


# instance fields
.field public final a:Lma/b0;

.field public final b:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "Lma/b0;",
            "Lma/j;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lbc/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lla/e;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "cloneable"

    const-string v4, "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lla/e;->e:[Lda/m;

    new-instance v0, Lla/e$a;

    invoke-direct {v0}, Lla/e$a;-><init>()V

    sput-object v0, Lla/e;->d:Lla/e$a;

    sget-object v0, Lja/o;->k:Llb/c;

    sput-object v0, Lla/e;->f:Llb/c;

    sget-object v0, Lja/o$a;->c:Llb/d;

    invoke-virtual {v0}, Llb/d;->g()Llb/f;

    move-result-object v1

    const-string v2, "cloneable.shortName()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lla/e;->g:Llb/f;

    invoke-virtual {v0}, Llb/d;->h()Llb/c;

    move-result-object v0

    invoke-static {v0}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v0

    sput-object v0, Lla/e;->h:Llb/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lbc/l;Lpa/g0;)V
    .locals 2

    sget-object v0, Lla/d;->a:Lla/d;

    const-string v1, "computeContainingDeclaration"

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lla/e;->a:Lma/b0;

    iput-object v0, p0, Lla/e;->b:Lx9/l;

    new-instance p2, Lla/f;

    invoke-direct {p2, p0, p1}, Lla/f;-><init>(Lla/e;Lbc/l;)V

    invoke-interface {p1, p2}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p1

    iput-object p1, p0, Lla/e;->c:Lbc/i;

    return-void
.end method


# virtual methods
.method public final a(Llb/b;)Lma/e;
    .locals 1

    .line 1
    const-string v0, "classId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lla/e;->h:Llb/b;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lla/e;->e:[Lda/m;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    aget-object p1, p1, v0

    .line 18
    .line 19
    iget-object v0, p0, Lla/e;->c:Lbc/i;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lpa/n;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    return-object p1
.end method

.method public final b(Llb/c;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/c;",
            ")",
            "Ljava/util/Collection<",
            "Lma/e;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "packageFqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lla/e;->f:Llb/c;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lla/e;->e:[Lda/m;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    aget-object p1, p1, v0

    .line 18
    .line 19
    iget-object v0, p0, Lla/e;->c:Lbc/i;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lpa/n;

    .line 26
    .line 27
    invoke-static {p1}, Lx5/a;->r(Ljava/lang/Object;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object p1, Lm9/x;->a:Lm9/x;

    .line 33
    .line 34
    :goto_0
    return-object p1
.end method

.method public final c(Llb/c;Llb/f;)Z
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lla/e;->g:Llb/f;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lla/e;->f:Llb/c;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
