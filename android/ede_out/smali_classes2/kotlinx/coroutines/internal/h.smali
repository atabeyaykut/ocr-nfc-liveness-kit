.class public final Lkotlinx/coroutines/internal/h;
.super Lnc/y;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lnc/g0;


# instance fields
.field public final a:Lnc/y;

.field public final b:I

.field public final synthetic c:Lnc/g0;

.field public final d:Lkotlinx/coroutines/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/k<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method public constructor <init>(Lnc/y;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc/y;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/internal/h;->a:Lnc/y;

    .line 5
    .line 6
    iput p2, p0, Lkotlinx/coroutines/internal/h;->b:I

    .line 7
    .line 8
    instance-of p2, p1, Lnc/g0;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    check-cast p1, Lnc/g0;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    sget-object p1, Lnc/e0;->a:Lnc/g0;

    .line 19
    .line 20
    :cond_1
    iput-object p1, p0, Lkotlinx/coroutines/internal/h;->c:Lnc/g0;

    .line 21
    .line 22
    new-instance p1, Lkotlinx/coroutines/internal/k;

    .line 23
    .line 24
    invoke-direct {p1}, Lkotlinx/coroutines/internal/k;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lkotlinx/coroutines/internal/h;->d:Lkotlinx/coroutines/internal/k;

    .line 28
    .line 29
    new-instance p1, Ljava/lang/Object;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lkotlinx/coroutines/internal/h;->e:Ljava/lang/Object;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final c(JLnc/j;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->c:Lnc/g0;

    invoke-interface {v0, p1, p2, p3}, Lnc/g0;->c(JLnc/j;)V

    return-void
.end method

.method public final dispatch(Lp9/f;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->d:Lkotlinx/coroutines/internal/k;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/k;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    .line 7
    .line 8
    iget p2, p0, Lkotlinx/coroutines/internal/h;->b:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-lt p1, p2, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->e:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter p1

    .line 23
    :try_start_0
    iget p2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    .line 24
    .line 25
    iget v2, p0, Lkotlinx/coroutines/internal/h;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    if-lt p2, v2, :cond_2

    .line 28
    .line 29
    monitor-exit p1

    .line 30
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :try_start_1
    iget p2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    .line 33
    .line 34
    add-int/2addr p2, v0

    .line 35
    iput p2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    monitor-exit p1

    .line 38
    :goto_1
    if-nez v0, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->a:Lnc/y;

    .line 42
    .line 43
    invoke-virtual {p1, p0, p0}, Lnc/y;->dispatch(Lp9/f;Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    :goto_2
    return-void

    .line 47
    :catchall_0
    move-exception p2

    .line 48
    monitor-exit p1

    .line 49
    throw p2
.end method

.method public final dispatchYield(Lp9/f;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->d:Lkotlinx/coroutines/internal/k;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/k;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    .line 7
    .line 8
    iget p2, p0, Lkotlinx/coroutines/internal/h;->b:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-lt p1, p2, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->e:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter p1

    .line 23
    :try_start_0
    iget p2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    .line 24
    .line 25
    iget v2, p0, Lkotlinx/coroutines/internal/h;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    if-lt p2, v2, :cond_2

    .line 28
    .line 29
    monitor-exit p1

    .line 30
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :try_start_1
    iget p2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    .line 33
    .line 34
    add-int/2addr p2, v0

    .line 35
    iput p2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    monitor-exit p1

    .line 38
    :goto_1
    if-nez v0, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->a:Lnc/y;

    .line 42
    .line 43
    invoke-virtual {p1, p0, p0}, Lnc/y;->dispatchYield(Lp9/f;Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    :goto_2
    return-void

    .line 47
    :catchall_0
    move-exception p2

    .line 48
    monitor-exit p1

    .line 49
    throw p2
.end method

.method public final limitedParallelism(I)Lnc/y;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/d0;->g(I)V

    iget v0, p0, Lkotlinx/coroutines/internal/h;->b:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lnc/y;->limitedParallelism(I)Lnc/y;

    move-result-object p1

    return-object p1
.end method

.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/h;->d:Lkotlinx/coroutines/internal/k;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/k;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lp9/g;->a:Lp9/g;

    invoke-static {v3, v2}, Lc5/v;->u(Lp9/f;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lkotlinx/coroutines/internal/h;->a:Lnc/y;

    invoke-virtual {v2, p0}, Lnc/y;->isDispatchNeeded(Lp9/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->a:Lnc/y;

    invoke-virtual {v0, p0, p0}, Lnc/y;->dispatch(Lp9/f;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/internal/h;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    iget-object v2, p0, Lkotlinx/coroutines/internal/h;->d:Lkotlinx/coroutines/internal/k;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/k;->c()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    iget v2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    sget-object v2, Ll9/m;->a:Ll9/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
