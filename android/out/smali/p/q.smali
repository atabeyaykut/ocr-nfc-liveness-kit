.class public final Lp/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public a:La0/b;

.field public b:Lnc/t1;

.field public c:Lcoil/request/ViewTargetRequestDelegate;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lp/q;->c:Lcoil/request/ViewTargetRequestDelegate;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lp/q;->d:Z

    .line 8
    .line 9
    iget-object v0, p1, Lcoil/request/ViewTargetRequestDelegate;->a:Le/f;

    .line 10
    .line 11
    iget-object p1, p1, Lcoil/request/ViewTargetRequestDelegate;->b:Lp/g;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Le/f;->a(Lp/g;)Lp/c;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lp/q;->c:Lcoil/request/ViewTargetRequestDelegate;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iget-object v1, p1, Lcoil/request/ViewTargetRequestDelegate;->e:Lnc/b1;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lnc/b1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lcoil/request/ViewTargetRequestDelegate;->c:Lr/b;

    .line 13
    .line 14
    instance-of v1, v0, Landroidx/lifecycle/LifecycleObserver;

    .line 15
    .line 16
    iget-object v2, p1, Lcoil/request/ViewTargetRequestDelegate;->d:Landroidx/lifecycle/Lifecycle;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v2, p1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
