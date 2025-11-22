.class public final Lcoil/util/-Lifecycles;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/lifecycle/Lifecycle;Lp9/d;)Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcoil/util/-Lifecycles$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcoil/util/-Lifecycles$a;

    iget v1, v0, Lcoil/util/-Lifecycles$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcoil/util/-Lifecycles$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/util/-Lifecycles$a;

    invoke-direct {v0, p1}, Lcoil/util/-Lifecycles$a;-><init>(Lp9/d;)V

    :goto_0
    iget-object p1, v0, Lcoil/util/-Lifecycles$a;->c:Ljava/lang/Object;

    sget-object v1, Lq9/a;->a:Lq9/a;

    iget v2, v0, Lcoil/util/-Lifecycles$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcoil/util/-Lifecycles$a;->b:Lkotlin/jvm/internal/v;

    iget-object v0, v0, Lcoil/util/-Lifecycles$a;->a:Landroidx/lifecycle/Lifecycle;

    :try_start_0
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Ll9/m;->a:Ll9/m;

    return-object p0

    :cond_3
    new-instance p1, Lkotlin/jvm/internal/v;

    invoke-direct {p1}, Lkotlin/jvm/internal/v;-><init>()V

    :try_start_1
    iput-object p0, v0, Lcoil/util/-Lifecycles$a;->a:Landroidx/lifecycle/Lifecycle;

    iput-object p1, v0, Lcoil/util/-Lifecycles$a;->b:Lkotlin/jvm/internal/v;

    iput v3, v0, Lcoil/util/-Lifecycles$a;->d:I

    new-instance v2, Lnc/j;

    invoke-static {v0}, Lc5/w;->x(Lp9/d;)Lp9/d;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lnc/j;-><init>(ILp9/d;)V

    invoke-virtual {v2}, Lnc/j;->n()V

    new-instance v0, Lcoil/util/-Lifecycles$awaitStarted$2$1;

    invoke-direct {v0, v2}, Lcoil/util/-Lifecycles$awaitStarted$2$1;-><init>(Lnc/j;)V

    iput-object v0, p1, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {v2}, Lnc/j;->m()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    move-object p0, p1

    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :goto_2
    sget-object p0, Ll9/m;->a:Ll9/m;

    return-object p0

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v4

    :goto_3
    iget-object p0, p0, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :goto_4
    throw p1
.end method
