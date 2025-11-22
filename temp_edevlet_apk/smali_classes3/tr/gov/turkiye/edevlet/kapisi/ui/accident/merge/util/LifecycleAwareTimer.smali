.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0007J\u0008\u0010\u0004\u001a\u00020\u0002H\u0007J\u0008\u0010\u0005\u001a\u00020\u0002H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "Ll9/m;",
        "onResume",
        "onPause",
        "onDestroy",
        "ui-mobile-accident_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public a:Loh/a;


# virtual methods
.method public final onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;->a:Loh/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;->a:Loh/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    sub-long v0, v2, v0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-gtz v4, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;->a:Loh/a;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iput-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;->a:Loh/a;

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    sub-long/2addr v2, v0

    .line 33
    new-instance v0, Loh/a;

    .line 34
    .line 35
    invoke-direct {v0, v2, v3, p0}, Loh/a;-><init>(JLtr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;->a:Loh/a;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    throw v1
.end method
