.class public final Lec/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma/b0;


# static fields
.field public static final a:Lec/c;

.field public static final b:Llb/f;

.field public static final c:Lm9/v;

.field public static final d:Lja/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lec/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lec/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lec/c;->a:Lec/c;

    .line 7
    .line 8
    const-string v0, "<Error module>"

    .line 9
    .line 10
    invoke-static {v0}, Llb/f;->v(Ljava/lang/String;)Llb/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lec/c;->b:Llb/f;

    .line 15
    .line 16
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 17
    .line 18
    sput-object v0, Lec/c;->c:Lm9/v;

    .line 19
    .line 20
    sget-object v0, Lja/d;->f:Lja/d;

    .line 21
    .line 22
    sput-object v0, Lec/c;->d:Lja/d;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final G0(Lcom/airbnb/epoxy/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/epoxy/a;",
            ")TT;"
        }
    .end annotation

    const-string v0, "capability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final I0(Llb/c;)Lma/i0;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final V(Lma/b0;)Z
    .locals 1

    const-string v0, "targetModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a()Lma/j;
    .locals 0

    return-object p0
.end method

.method public final b()Lma/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAnnotations()Lna/h;
    .locals 1

    sget-object v0, Lna/h$a;->a:Lna/h$a$a;

    return-object v0
.end method

.method public final getName()Llb/f;
    .locals 1

    sget-object v0, Lec/c;->b:Llb/f;

    return-object v0
.end method

.method public final m()Lja/k;
    .locals 1

    sget-object v0, Lec/c;->d:Lja/d;

    return-object v0
.end method

.method public final n(Llb/c;Lx9/l;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/c;",
            "Lx9/l<",
            "-",
            "Llb/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Llb/c;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lm9/v;->a:Lm9/v;

    return-object p1
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public final s0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/b0;",
            ">;"
        }
    .end annotation

    sget-object v0, Lec/c;->c:Lm9/v;

    return-object v0
.end method
