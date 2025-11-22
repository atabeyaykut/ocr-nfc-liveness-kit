.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/i;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc6/y;)Lb7/d;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lc6/e;)Lb7/d;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lc6/e;)Lb7/d;
    .locals 4

    new-instance v0, Lb7/c;

    const-class v1, Lx5/c;

    invoke-interface {p0, v1}, Lc6/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx5/c;

    const-class v2, Li7/g;

    invoke-interface {p0, v2}, Lc6/e;->c(Ljava/lang/Class;)La7/b;

    move-result-object v2

    const-class v3, Ly6/e;

    invoke-interface {p0, v3}, Lc6/e;->c(Ljava/lang/Class;)La7/b;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lb7/c;-><init>(Lx5/c;La7/b;La7/b;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc6/d<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lc6/d;

    .line 3
    .line 4
    const-class v1, Lb7/d;

    .line 5
    .line 6
    invoke-static {v1}, Lc6/d;->a(Ljava/lang/Class;)Lc6/d$a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lc6/o;

    .line 11
    .line 12
    const-class v3, Lx5/c;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-direct {v2, v4, v5, v3}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lc6/o;

    .line 23
    .line 24
    const-class v3, Ly6/e;

    .line 25
    .line 26
    invoke-direct {v2, v5, v4, v3}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lc6/o;

    .line 33
    .line 34
    const-class v3, Li7/g;

    .line 35
    .line 36
    invoke-direct {v2, v5, v4, v3}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lb7/f;

    .line 43
    .line 44
    invoke-direct {v2, v5}, Lb7/f;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object v2, v1, Lc6/d$a;->e:Lc6/h;

    .line 48
    .line 49
    invoke-virtual {v1}, Lc6/d$a;->b()Lc6/d;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    aput-object v1, v0, v5

    .line 54
    .line 55
    const-string v1, "fire-installations"

    .line 56
    .line 57
    const-string v2, "17.0.0"

    .line 58
    .line 59
    invoke-static {v1, v2}, Li7/f;->a(Ljava/lang/String;Ljava/lang/String;)Lc6/d;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    aput-object v1, v0, v4

    .line 64
    .line 65
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method
