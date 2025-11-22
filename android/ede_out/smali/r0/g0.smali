.class public final Lr0/g0;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Ljava/lang/Object;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "com.airbnb.mvrx.MavericksViewModel$resolveSubscription$flow$2"
    f = "MavericksViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lr0/z;

.field public final synthetic c:Lr0/h;


# direct methods
.method public constructor <init>(Lr0/z;Lr0/h;Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lr0/g0;->b:Lr0/z;

    iput-object p2, p0, Lr0/g0;->c:Lr0/h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lr0/g0;

    iget-object v1, p0, Lr0/g0;->b:Lr0/z;

    iget-object v2, p0, Lr0/g0;->c:Lr0/h;

    invoke-direct {v0, v1, v2, p2}, Lr0/g0;-><init>(Lr0/z;Lr0/h;Lp9/d;)V

    iput-object p1, v0, Lr0/g0;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Lr0/g0;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Lr0/g0;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Lr0/g0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lr0/g0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v0, p0, Lr0/g0;->b:Lr0/z;

    .line 7
    .line 8
    iget-object v0, v0, Lr0/z;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    iget-object v1, p0, Lr0/g0;->c:Lr0/h;

    .line 11
    .line 12
    check-cast v1, Lr0/e1;

    .line 13
    .line 14
    iget-object v1, v1, Lr0/e1;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 20
    .line 21
    return-object p1
.end method
