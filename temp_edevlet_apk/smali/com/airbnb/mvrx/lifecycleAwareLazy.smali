.class public final Lcom/airbnb/mvrx/lifecycleAwareLazy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll9/e;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll9/e<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public a:Lx9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile b:Ljava/lang/Object;

.field public final c:Lcom/airbnb/mvrx/lifecycleAwareLazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/mvrx/lifecycleAwareLazy<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lr0/f;)V
    .locals 2

    .line 1
    sget-object v0, Lr0/h1;->a:Lr0/h1;

    .line 2
    .line 3
    const-string v1, "owner"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "isMainThread"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->d:Landroidx/lifecycle/LifecycleOwner;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->a:Lx9/a;

    .line 19
    .line 20
    sget-object p2, Lc5/u;->q:Lc5/u;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->b:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p0, p0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->c:Lcom/airbnb/mvrx/lifecycleAwareLazy;

    .line 25
    .line 26
    invoke-virtual {v0}, Lr0/h1;->invoke()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/airbnb/mvrx/lifecycleAwareLazy;->a(Landroidx/lifecycle/LifecycleOwner;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Lr0/i1;

    .line 52
    .line 53
    invoke-direct {p2, p0}, Lr0/i1;-><init>(Lcom/airbnb/mvrx/lifecycleAwareLazy;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "owner.lifecycle"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "owner.lifecycle.currentState"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 20
    .line 21
    if-eq v0, v1, :cond_4

    .line 22
    .line 23
    iget-object v1, p0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->b:Ljava/lang/Object;

    .line 24
    .line 25
    sget-object v2, Lc5/u;->q:Lc5/u;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    if-eqz v1, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 38
    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lcom/airbnb/mvrx/lifecycleAwareLazy$initializeWhenCreated$1;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/airbnb/mvrx/lifecycleAwareLazy$initializeWhenCreated$1;-><init>(Lcom/airbnb/mvrx/lifecycleAwareLazy;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->b:Ljava/lang/Object;

    .line 55
    .line 56
    if-eq p1, v2, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const/4 v3, 0x0

    .line 60
    :goto_1
    if-nez v3, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/airbnb/mvrx/lifecycleAwareLazy;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_2
    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->b:Ljava/lang/Object;

    sget-object v1, Lc5/u;->q:Lc5/u;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->c:Lcom/airbnb/mvrx/lifecycleAwareLazy;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->b:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->a:Lx9/a;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->a:Lx9/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->b:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lc5/u;->q:Lc5/u;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/airbnb/mvrx/lifecycleAwareLazy;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const-string v0, "Lazy value not initialized yet."

    .line 22
    .line 23
    :goto_1
    return-object v0
.end method
