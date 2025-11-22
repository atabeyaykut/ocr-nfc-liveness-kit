.class public final Lc5/g4;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc5/f4<",
            "*>;>;"
        }
    .end annotation
.end field

.field public c:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "threadLifeCycleLock"
    .end annotation
.end field

.field public final synthetic d:Lc5/h4;


# direct methods
.method public constructor <init>(Lc5/h4;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc5/f4<",
            "*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/g4;->d:Lc5/h4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc5/g4;->c:Z

    invoke-static {p3}, Lr3/r;->i(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/g4;->a:Ljava/lang/Object;

    iput-object p3, p0, Lc5/g4;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lc5/g4;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc5/g4;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc5/g4;->d:Lc5/h4;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/h4;->j:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lc5/g4;->c:Z

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lc5/g4;->d:Lc5/h4;

    .line 11
    .line 12
    iget-object v1, v1, Lc5/h4;->k:Ljava/util/concurrent/Semaphore;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lc5/g4;->d:Lc5/h4;

    .line 18
    .line 19
    iget-object v1, v1, Lc5/h4;->j:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lc5/g4;->d:Lc5/h4;

    .line 25
    .line 26
    iget-object v2, v1, Lc5/h4;->c:Lc5/g4;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-ne p0, v2, :cond_0

    .line 30
    .line 31
    iput-object v3, v1, Lc5/h4;->c:Lc5/g4;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object v2, v1, Lc5/h4;->d:Lc5/g4;

    .line 37
    .line 38
    if-ne p0, v2, :cond_1

    .line 39
    .line 40
    iput-object v3, v1, Lc5/h4;->d:Lc5/g4;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 44
    .line 45
    check-cast v1, Lc5/i4;

    .line 46
    .line 47
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 48
    .line 49
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 53
    .line 54
    const-string v2, "Current scheduler thread is neither worker nor network"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lc5/g4;->c:Z

    .line 61
    .line 62
    :cond_2
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw v1
.end method

.method public final c(Ljava/lang/InterruptedException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc5/g4;->d:Lc5/h4;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 8
    .line 9
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, " was interrupted"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final run()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x1

    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lc5/g4;->d:Lc5/h4;

    .line 6
    .line 7
    iget-object v2, v2, Lc5/h4;->k:Ljava/util/concurrent/Semaphore;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {p0, v1}, Lc5/g4;->c(Ljava/lang/InterruptedException;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_1
    iget-object v2, p0, Lc5/g4;->b:Ljava/util/concurrent/BlockingQueue;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lc5/f4;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-boolean v3, v2, Lc5/f4;->b:Z

    .line 38
    .line 39
    if-eq v1, v3, :cond_1

    .line 40
    .line 41
    const/16 v3, 0xa

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    move v3, v0

    .line 45
    :goto_2
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v2, p0, Lc5/g4;->a:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 55
    :try_start_2
    iget-object v3, p0, Lc5/g4;->b:Ljava/util/concurrent/BlockingQueue;

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-nez v3, :cond_3

    .line 62
    .line 63
    iget-object v3, p0, Lc5/g4;->d:Lc5/h4;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    :try_start_3
    iget-object v3, p0, Lc5/g4;->a:Ljava/lang/Object;

    .line 69
    .line 70
    const-wide/16 v4, 0x7530

    .line 71
    .line 72
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :catch_1
    move-exception v3

    .line 77
    :try_start_4
    invoke-virtual {p0, v3}, Lc5/g4;->c(Ljava/lang/InterruptedException;)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto :goto_5

    .line 83
    :cond_3
    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    :try_start_5
    iget-object v2, p0, Lc5/g4;->d:Lc5/h4;

    .line 85
    .line 86
    iget-object v2, v2, Lc5/h4;->j:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 89
    :try_start_6
    iget-object v3, p0, Lc5/g4;->b:Ljava/util/concurrent/BlockingQueue;

    .line 90
    .line 91
    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-nez v3, :cond_5

    .line 96
    .line 97
    iget-object v0, p0, Lc5/g4;->d:Lc5/h4;

    .line 98
    .line 99
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 100
    .line 101
    check-cast v0, Lc5/i4;

    .line 102
    .line 103
    iget-object v0, v0, Lc5/i4;->g:Lc5/e;

    .line 104
    .line 105
    sget-object v1, Lc5/r2;->j0:Lc5/q2;

    .line 106
    .line 107
    const/4 v3, 0x0

    .line 108
    invoke-virtual {v0, v3, v1}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    invoke-virtual {p0}, Lc5/g4;->b()V

    .line 115
    .line 116
    .line 117
    :cond_4
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 118
    invoke-virtual {p0}, Lc5/g4;->b()V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :catchall_1
    move-exception v0

    .line 123
    goto :goto_4

    .line 124
    :cond_5
    :try_start_7
    monitor-exit v2

    .line 125
    goto :goto_1

    .line 126
    :goto_4
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 127
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 128
    :goto_5
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 129
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 130
    :catchall_2
    move-exception v0

    .line 131
    invoke-virtual {p0}, Lc5/g4;->b()V

    .line 132
    .line 133
    .line 134
    throw v0
.end method
