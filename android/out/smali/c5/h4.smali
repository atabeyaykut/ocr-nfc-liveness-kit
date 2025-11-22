.class public final Lc5/h4;
.super Lc5/y4;
.source "SourceFile"


# static fields
.field public static final l:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public c:Lc5/g4;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Lc5/g4;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lc5/f4<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final g:Lc5/e4;

.field public final h:Lc5/e4;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/util/concurrent/Semaphore;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lc5/h4;->l:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lc5/i4;)V
    .locals 1

    invoke-direct {p0, p1}, Lc5/y4;-><init>(Lc5/i4;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/h4;->j:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lc5/h4;->k:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Lc5/h4;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lc5/h4;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Lc5/e4;

    const-string v0, "Thread death: Uncaught exception on worker thread"

    invoke-direct {p1, p0, v0}, Lc5/e4;-><init>(Lc5/h4;Ljava/lang/String;)V

    iput-object p1, p0, Lc5/h4;->g:Lc5/e4;

    new-instance p1, Lc5/e4;

    const-string v0, "Thread death: Uncaught exception on network thread"

    invoke-direct {p1, p0, v0}, Lc5/e4;-><init>(Lc5/h4;Ljava/lang/String;)V

    iput-object p1, p0, Lc5/h4;->h:Lc5/e4;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lc5/h4;->c:Lc5/g4;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lc5/h4;->d:Lc5/g4;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;J",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 3
    .line 4
    check-cast v0, Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p5}, Lc5/h4;->p(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p2, p0, Lc5/x4;->a:Lc5/z4;

    .line 25
    .line 26
    check-cast p2, Lc5/i4;

    .line 27
    .line 28
    iget-object p2, p2, Lc5/i4;->j:Lc5/e3;

    .line 29
    .line 30
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p2, Lc5/e3;->j:Lc5/c3;

    .line 34
    .line 35
    const-string p3, "Timed out waiting for "

    .line 36
    .line 37
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result p5

    .line 41
    if-eqz p5, :cond_0

    .line 42
    .line 43
    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p4, Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {p4, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move-object p3, p4

    .line 54
    :goto_0
    invoke-virtual {p2, p3}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-object p1

    .line 58
    :catch_0
    :try_start_3
    iget-object p2, p0, Lc5/x4;->a:Lc5/z4;

    .line 59
    .line 60
    check-cast p2, Lc5/i4;

    .line 61
    .line 62
    iget-object p2, p2, Lc5/i4;->j:Lc5/e3;

    .line 63
    .line 64
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p2, Lc5/e3;->j:Lc5/c3;

    .line 68
    .line 69
    const-string p3, "Interrupted waiting for "

    .line 70
    .line 71
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result p5

    .line 75
    if-eqz p5, :cond_2

    .line 76
    .line 77
    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    new-instance p4, Ljava/lang/String;

    .line 83
    .line 84
    invoke-direct {p4, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object p3, p4

    .line 88
    :goto_1
    invoke-virtual {p2, p3}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    monitor-exit p1

    .line 92
    const/4 p1, 0x0

    .line 93
    return-object p1

    .line 94
    :catchall_0
    move-exception p2

    .line 95
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    throw p2
.end method

.method public final n(Ljava/util/concurrent/Callable;)Lc5/f4;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/y4;->d()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc5/f4;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lc5/f4;-><init>(Lc5/h4;Ljava/util/concurrent/Callable;Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v1, p0, Lc5/h4;->c:Lc5/g4;

    .line 15
    .line 16
    if-ne p1, v1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lc5/h4;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lc5/x4;->a:Lc5/z4;

    .line 27
    .line 28
    check-cast p1, Lc5/i4;

    .line 29
    .line 30
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 31
    .line 32
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "Callable skipped the worker queue."

    .line 36
    .line 37
    iget-object p1, p1, Lc5/e3;->j:Lc5/c3;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0, v0}, Lc5/h4;->s(Lc5/f4;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-object v0
.end method

.method public final o(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lc5/y4;->d()V

    new-instance v0, Lc5/f4;

    const/4 v1, 0x0

    const-string v2, "Task exception on network thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lc5/f4;-><init>(Lc5/h4;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iget-object p1, p0, Lc5/h4;->j:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lc5/h4;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc5/h4;->d:Lc5/g4;

    if-nez v0, :cond_0

    new-instance v0, Lc5/g4;

    const-string v1, "Measurement Network"

    iget-object v2, p0, Lc5/h4;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p0, v1, v2}, Lc5/g4;-><init>(Lc5/h4;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lc5/h4;->d:Lc5/g4;

    iget-object v1, p0, Lc5/h4;->h:Lc5/e4;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lc5/h4;->d:Lc5/g4;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lc5/g4;->a()V

    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final p(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lc5/y4;->d()V

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    new-instance v0, Lc5/f4;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lc5/f4;-><init>(Lc5/h4;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lc5/h4;->s(Lc5/f4;)V

    return-void
.end method

.method public final q(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lc5/y4;->d()V

    new-instance v0, Lc5/f4;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lc5/f4;-><init>(Lc5/h4;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lc5/h4;->s(Lc5/f4;)V

    return-void
.end method

.method public final r()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lc5/h4;->c:Lc5/g4;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s(Lc5/f4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/f4<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lc5/h4;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc5/h4;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc5/h4;->c:Lc5/g4;

    if-nez p1, :cond_0

    new-instance p1, Lc5/g4;

    const-string v1, "Measurement Worker"

    iget-object v2, p0, Lc5/h4;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1, p0, v1, v2}, Lc5/g4;-><init>(Lc5/h4;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lc5/h4;->c:Lc5/g4;

    iget-object v1, p0, Lc5/h4;->g:Lc5/e4;

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p1, p0, Lc5/h4;->c:Lc5/g4;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lc5/g4;->a()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
