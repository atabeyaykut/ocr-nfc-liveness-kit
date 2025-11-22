.class public Lcom/google/firebase/datatransport/TransportRegistrar;
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

.method public static synthetic a(Lc6/y;)Lr2/g;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(Lc6/e;)Lr2/g;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lc6/e;)Lr2/g;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lc6/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lu2/w;->b(Landroid/content/Context;)V

    invoke-static {}, Lu2/w;->a()Lu2/w;

    move-result-object p0

    sget-object v0, Ls2/a;->f:Ls2/a;

    invoke-virtual {p0, v0}, Lu2/w;->c(Ls2/a;)Lu2/t;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc6/d<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lr2/g;

    .line 2
    .line 3
    invoke-static {v0}, Lc6/d;->a(Ljava/lang/Class;)Lc6/d$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lc6/o;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-class v3, Landroid/content/Context;

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-direct {v1, v4, v2, v3}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lc6/d$a;->a(Lc6/o;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroidx/camera/core/impl/a;

    .line 20
    .line 21
    invoke-direct {v1}, Landroidx/camera/core/impl/a;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lc6/d$a;->e:Lc6/h;

    .line 25
    .line 26
    invoke-virtual {v0}, Lc6/d$a;->b()Lc6/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
