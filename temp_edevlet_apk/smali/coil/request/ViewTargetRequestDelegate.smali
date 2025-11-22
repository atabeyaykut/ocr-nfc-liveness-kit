.class public final Lcoil/request/ViewTargetRequestDelegate;
.super Lcoil/request/RequestDelegate;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcoil/request/ViewTargetRequestDelegate;",
        "Lcoil/request/RequestDelegate;",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:Le/f;

.field public final b:Lp/g;

.field public final c:Lr/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr/b<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/Lifecycle;

.field public final e:Lnc/b1;


# direct methods
.method public constructor <init>(Le/f;Lp/g;Lr/b;Landroidx/lifecycle/Lifecycle;Lnc/b1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f;",
            "Lp/g;",
            "Lr/b<",
            "*>;",
            "Landroidx/lifecycle/Lifecycle;",
            "Lnc/b1;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcoil/request/RequestDelegate;-><init>(I)V

    iput-object p1, p0, Lcoil/request/ViewTargetRequestDelegate;->a:Le/f;

    iput-object p2, p0, Lcoil/request/ViewTargetRequestDelegate;->b:Lp/g;

    iput-object p3, p0, Lcoil/request/ViewTargetRequestDelegate;->c:Lr/b;

    iput-object p4, p0, Lcoil/request/ViewTargetRequestDelegate;->d:Landroidx/lifecycle/Lifecycle;

    iput-object p5, p0, Lcoil/request/ViewTargetRequestDelegate;->e:Lnc/b1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcoil/request/ViewTargetRequestDelegate;->c:Lr/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lr/b;->d()Landroid/widget/ImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Lr/b;->d()Landroid/widget/ImageView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lu/c;->c(Landroid/view/View;)Lp/q;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, v0, Lp/q;->c:Lcoil/request/ViewTargetRequestDelegate;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iget-object v3, v1, Lcoil/request/ViewTargetRequestDelegate;->e:Lnc/b1;

    .line 28
    .line 29
    invoke-interface {v3, v2}, Lnc/b1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v1, Lcoil/request/ViewTargetRequestDelegate;->c:Lr/b;

    .line 33
    .line 34
    instance-of v3, v2, Landroidx/lifecycle/LifecycleObserver;

    .line 35
    .line 36
    iget-object v4, v1, Lcoil/request/ViewTargetRequestDelegate;->d:Landroidx/lifecycle/Lifecycle;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    check-cast v2, Landroidx/lifecycle/LifecycleObserver;

    .line 41
    .line 42
    invoke-virtual {v4, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v4, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iput-object p0, v0, Lp/q;->c:Lcoil/request/ViewTargetRequestDelegate;

    .line 49
    .line 50
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 51
    .line 52
    const-string v1, "\'ViewTarget.view\' must be attached to a window."

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcoil/request/ViewTargetRequestDelegate;->d:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcoil/request/ViewTargetRequestDelegate;->c:Lr/b;

    .line 7
    .line 8
    instance-of v2, v1, Landroidx/lifecycle/LifecycleObserver;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move-object v2, v1

    .line 13
    check-cast v2, Landroidx/lifecycle/LifecycleObserver;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {v1}, Lr/b;->d()Landroid/widget/ImageView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lu/c;->c(Landroid/view/View;)Lp/q;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, v0, Lp/q;->c:Lcoil/request/ViewTargetRequestDelegate;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v2, 0x0

    .line 35
    iget-object v3, v1, Lcoil/request/ViewTargetRequestDelegate;->e:Lnc/b1;

    .line 36
    .line 37
    invoke-interface {v3, v2}, Lnc/b1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v1, Lcoil/request/ViewTargetRequestDelegate;->c:Lr/b;

    .line 41
    .line 42
    instance-of v3, v2, Landroidx/lifecycle/LifecycleObserver;

    .line 43
    .line 44
    iget-object v4, v1, Lcoil/request/ViewTargetRequestDelegate;->d:Landroidx/lifecycle/Lifecycle;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    check-cast v2, Landroidx/lifecycle/LifecycleObserver;

    .line 49
    .line 50
    invoke-virtual {v4, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v4, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iput-object p0, v0, Lp/q;->c:Lcoil/request/ViewTargetRequestDelegate;

    .line 57
    .line 58
    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcoil/request/ViewTargetRequestDelegate;->c:Lr/b;

    .line 2
    .line 3
    invoke-interface {p1}, Lr/b;->d()Landroid/widget/ImageView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lu/c;->c(Landroid/view/View;)Lp/q;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object v0, p1, Lp/q;->b:Lnc/t1;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0, v1}, Lnc/g1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    sget-object v0, Lnc/t0;->a:Lnc/t0;

    .line 22
    .line 23
    sget-object v2, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 24
    .line 25
    sget-object v2, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 26
    .line 27
    invoke-virtual {v2}, Lnc/k1;->d()Lnc/k1;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Lp/p;

    .line 32
    .line 33
    invoke-direct {v3, p1, v1}, Lp/p;-><init>(Lp/q;Lp9/d;)V

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-static {v0, v2, v5, v3, v4}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p1, Lp/q;->b:Lnc/t1;

    .line 43
    .line 44
    iput-object v1, p1, Lp/q;->a:La0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    monitor-exit p1

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    monitor-exit p1

    .line 50
    throw v0
.end method
