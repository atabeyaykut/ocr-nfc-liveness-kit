.class public Lwa/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lna/c;
.implements Lxa/g;


# static fields
.field public static final synthetic f:[Lda/m;
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
.field public final a:Llb/c;

.field public final b:Lma/r0;

.field public final c:Lbc/i;

.field public final d:Lcb/b;

.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lwa/b;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "type"

    const-string v4, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lwa/b;->f:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lp4/g7;Lcb/a;Llb/c;)V
    .locals 1

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fqName"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p3, p0, Lwa/b;->a:Llb/c;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget-object p3, p1, Lp4/g7;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p3, Lya/c;

    .line 21
    .line 22
    iget-object p3, p3, Lya/c;->j:Lbb/b;

    .line 23
    .line 24
    invoke-interface {p3, p2}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object p3, Lma/r0;->a:Lma/r0$a;

    .line 32
    .line 33
    :goto_0
    iput-object p3, p0, Lwa/b;->b:Lma/r0;

    .line 34
    .line 35
    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    new-instance v0, Lwa/b$a;

    .line 40
    .line 41
    invoke-direct {v0, p1, p0}, Lwa/b$a;-><init>(Lp4/g7;Lwa/b;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p3, v0}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lwa/b;->c:Lbc/i;

    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    invoke-interface {p2}, Lcb/a;->getArguments()Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-static {p1}, Lm9/t;->b1(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcb/b;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 p1, 0x0

    .line 66
    :goto_1
    iput-object p1, p0, Lwa/b;->d:Lcb/b;

    .line 67
    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    invoke-interface {p2}, Lcb/a;->e()V

    .line 71
    .line 72
    .line 73
    :cond_2
    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lwa/b;->e:Z

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Llb/f;",
            "Lqb/g<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Lm9/w;->a:Lm9/w;

    return-object v0
.end method

.method public final d()Llb/c;
    .locals 1

    iget-object v0, p0, Lwa/b;->a:Llb/c;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lwa/b;->e:Z

    return v0
.end method

.method public final getSource()Lma/r0;
    .locals 1

    iget-object v0, p0, Lwa/b;->b:Lma/r0;

    return-object v0
.end method

.method public final getType()Lcc/e0;
    .locals 2

    sget-object v0, Lwa/b;->f:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lwa/b;->c:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/m0;

    return-object v0
.end method
