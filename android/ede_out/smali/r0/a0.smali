.class public final Lr0/a0;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/q<",
        "Lkotlinx/coroutines/flow/g<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Throwable;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "com.airbnb.mvrx.MavericksViewModel$assertOneActiveSubscription$1"
    f = "MavericksViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Lr0/z;

.field public final synthetic b:Lr0/e1;

.field public final synthetic c:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic d:Lcom/airbnb/mvrx/MavericksViewModel$assertOneActiveSubscription$observer$1;


# direct methods
.method public constructor <init>(Lr0/z;Lr0/e1;Landroidx/lifecycle/LifecycleOwner;Lcom/airbnb/mvrx/MavericksViewModel$assertOneActiveSubscription$observer$1;Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lr0/a0;->a:Lr0/z;

    iput-object p2, p0, Lr0/a0;->b:Lr0/e1;

    iput-object p3, p0, Lr0/a0;->c:Landroidx/lifecycle/LifecycleOwner;

    iput-object p4, p0, Lr0/a0;->d:Lcom/airbnb/mvrx/MavericksViewModel$assertOneActiveSubscription$observer$1;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p5}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/g;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Throwable;

    .line 4
    .line 5
    move-object v5, p3

    .line 6
    check-cast v5, Lp9/d;

    .line 7
    .line 8
    const-string p2, "$this$create"

    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p1, "continuation"

    .line 14
    .line 15
    invoke-static {v5, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lr0/a0;

    .line 19
    .line 20
    iget-object v1, p0, Lr0/a0;->a:Lr0/z;

    .line 21
    .line 22
    iget-object v2, p0, Lr0/a0;->b:Lr0/e1;

    .line 23
    .line 24
    iget-object v3, p0, Lr0/a0;->c:Landroidx/lifecycle/LifecycleOwner;

    .line 25
    .line 26
    iget-object v4, p0, Lr0/a0;->d:Lcom/airbnb/mvrx/MavericksViewModel$assertOneActiveSubscription$observer$1;

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    invoke-direct/range {v0 .. v5}, Lr0/a0;-><init>(Lr0/z;Lr0/e1;Landroidx/lifecycle/LifecycleOwner;Lcom/airbnb/mvrx/MavericksViewModel$assertOneActiveSubscription$observer$1;Lp9/d;)V

    .line 30
    .line 31
    .line 32
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lr0/a0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lr0/a0;->a:Lr0/z;

    .line 5
    .line 6
    iget-object p1, p1, Lr0/z;->f:Ljava/util/Set;

    .line 7
    .line 8
    iget-object v0, p0, Lr0/a0;->b:Lr0/e1;

    .line 9
    .line 10
    iget-object v0, v0, Lr0/e1;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lr0/a0;->c:Landroidx/lifecycle/LifecycleOwner;

    .line 16
    .line 17
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lr0/a0;->d:Lcom/airbnb/mvrx/MavericksViewModel$assertOneActiveSubscription$observer$1;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 27
    .line 28
    return-object p1
.end method
