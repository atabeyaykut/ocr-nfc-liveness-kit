.class public final Lh5/z;
.super Lh5/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lh5/k<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lh5/w;

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lh5/k;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh5/z;->a:Ljava/lang/Object;

    new-instance v0, Lh5/w;

    invoke-direct {v0}, Lh5/w;-><init>()V

    iput-object v0, p0, Lh5/z;->b:Lh5/w;

    return-void
.end method


# virtual methods
.method public final a(Lh5/x;Lh5/d;)V
    .locals 1
    .param p1    # Lh5/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lh5/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lh5/t;

    invoke-direct {v0, p1, p2}, Lh5/t;-><init>(Lh5/x;Lh5/d;)V

    iget-object p1, p0, Lh5/z;->b:Lh5/w;

    invoke-virtual {p1, v0}, Lh5/w;->a(Lh5/v;)V

    invoke-virtual {p0}, Lh5/z;->u()V

    return-void
.end method

.method public final b(Lh5/e;)V
    .locals 2
    .param p1    # Lh5/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lh5/m;->a:Lh5/y;

    new-instance v1, Lh5/u;

    invoke-direct {v1, v0, p1}, Lh5/u;-><init>(Ljava/util/concurrent/Executor;Lh5/e;)V

    iget-object p1, p0, Lh5/z;->b:Lh5/w;

    invoke-virtual {p1, v1}, Lh5/w;->a(Lh5/v;)V

    invoke-virtual {p0}, Lh5/z;->u()V

    return-void
.end method

.method public final c(Ljava/util/concurrent/Executor;Lh5/f;)Lh5/z;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lh5/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lh5/r;

    invoke-direct {v0, p1, p2}, Lh5/r;-><init>(Ljava/util/concurrent/Executor;Lh5/f;)V

    iget-object p1, p0, Lh5/z;->b:Lh5/w;

    invoke-virtual {p1, v0}, Lh5/w;->a(Lh5/v;)V

    invoke-virtual {p0}, Lh5/z;->u()V

    return-object p0
.end method

.method public final d(Ljava/util/concurrent/Executor;Lh5/g;)Lh5/z;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lh5/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lh5/s;

    invoke-direct {v0, p1, p2}, Lh5/s;-><init>(Ljava/util/concurrent/Executor;Lh5/g;)V

    iget-object p1, p0, Lh5/z;->b:Lh5/w;

    invoke-virtual {p1, v0}, Lh5/w;->a(Lh5/v;)V

    invoke-virtual {p0}, Lh5/z;->u()V

    return-object p0
.end method

.method public final e(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lh5/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lh5/b<",
            "TTResult;TTContinuationResult;>;)",
            "Lh5/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lh5/z;

    invoke-direct {v0}, Lh5/z;-><init>()V

    new-instance v1, Lh5/r;

    invoke-direct {v1, p1, p2, v0}, Lh5/r;-><init>(Ljava/util/concurrent/Executor;Lh5/b;Lh5/z;)V

    iget-object p1, p0, Lh5/z;->b:Lh5/w;

    invoke-virtual {p1, v1}, Lh5/w;->a(Lh5/v;)V

    invoke-virtual {p0}, Lh5/z;->u()V

    return-object v0
.end method

.method public final f(Lh5/b;)V
    .locals 1
    .param p1    # Lh5/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lh5/m;->a:Lh5/y;

    invoke-virtual {p0, v0, p1}, Lh5/z;->e(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;

    return-void
.end method

.method public final g(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lh5/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lh5/b<",
            "TTResult;",
            "Lh5/k<",
            "TTContinuationResult;>;>;)",
            "Lh5/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lh5/z;

    invoke-direct {v0}, Lh5/z;-><init>()V

    new-instance v1, Lh5/s;

    invoke-direct {v1, p1, p2, v0}, Lh5/s;-><init>(Ljava/util/concurrent/Executor;Lh5/b;Lh5/z;)V

    iget-object p1, p0, Lh5/z;->b:Lh5/w;

    invoke-virtual {p1, v1}, Lh5/w;->a(Lh5/v;)V

    invoke-virtual {p0}, Lh5/z;->u()V

    return-object v0
.end method

.method public final h()Ljava/lang/Exception;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lh5/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh5/z;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh5/z;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lh5/z;->c:Z

    .line 5
    .line 6
    const-string v2, "Task is not yet complete"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lr3/r;->k(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lh5/z;->d:Z

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lh5/z;->f:Ljava/lang/Exception;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lh5/z;->e:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :cond_0
    new-instance v2, Lh5/i;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Lh5/i;-><init>(Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    throw v2

    .line 29
    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    .line 30
    .line 31
    const-string v2, "Task is already canceled."

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v1

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_0
.end method

.method public final j()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/IOException;

    .line 2
    .line 3
    iget-object v1, p0, Lh5/z;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lh5/z;->c:Z

    .line 7
    .line 8
    const-string v3, "Task is not yet complete"

    .line 9
    .line 10
    invoke-static {v3, v2}, Lr3/r;->k(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lh5/z;->d:Z

    .line 14
    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lh5/z;->f:Ljava/lang/Exception;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lh5/z;->f:Ljava/lang/Exception;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lh5/z;->e:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-exit v1

    .line 32
    return-object v0

    .line 33
    :cond_0
    new-instance v2, Lh5/i;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Lh5/i;-><init>(Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    throw v2

    .line 39
    :cond_1
    iget-object v2, p0, Lh5/z;->f:Ljava/lang/Exception;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Throwable;

    .line 46
    .line 47
    throw v0

    .line 48
    :cond_2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 49
    .line 50
    const-string v2, "Task is already canceled."

    .line 51
    .line 52
    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw v0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lh5/z;->d:Z

    return v0
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Lh5/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lh5/z;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m()Z
    .locals 3

    iget-object v0, p0, Lh5/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lh5/z;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lh5/z;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lh5/z;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final n(Ljava/util/concurrent/Executor;Lh5/j;)Lh5/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lh5/j<",
            "TTResult;TTContinuationResult;>;)",
            "Lh5/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lh5/z;

    invoke-direct {v0}, Lh5/z;-><init>()V

    new-instance v1, Lh5/t;

    invoke-direct {v1, p1, p2, v0}, Lh5/t;-><init>(Ljava/util/concurrent/Executor;Lh5/j;Lh5/z;)V

    iget-object p1, p0, Lh5/z;->b:Lh5/w;

    invoke-virtual {p1, v1}, Lh5/w;->a(Lh5/v;)V

    invoke-virtual {p0}, Lh5/z;->u()V

    return-object v0
.end method

.method public final o(Ljava/util/concurrent/Executor;Lh5/e;)Lh5/z;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lh5/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lh5/u;

    invoke-direct {v0, p1, p2}, Lh5/u;-><init>(Ljava/util/concurrent/Executor;Lh5/e;)V

    iget-object p1, p0, Lh5/z;->b:Lh5/w;

    invoke-virtual {p1, v0}, Lh5/w;->a(Lh5/v;)V

    invoke-virtual {p0}, Lh5/z;->u()V

    return-object p0
.end method

.method public final p(Lh5/f;)Lh5/z;
    .locals 1
    .param p1    # Lh5/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lh5/m;->a:Lh5/y;

    invoke-virtual {p0, v0, p1}, Lh5/z;->c(Ljava/util/concurrent/Executor;Lh5/f;)Lh5/z;

    return-object p0
.end method

.method public final q(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "Exception must not be null"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lh5/z;->a:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lh5/z;->t()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lh5/z;->c:Z

    .line 13
    .line 14
    iput-object p1, p0, Lh5/z;->f:Ljava/lang/Exception;

    .line 15
    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object p1, p0, Lh5/z;->b:Lh5/w;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lh5/w;->b(Lh5/k;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final r(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lh5/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lh5/z;->t()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lh5/z;->c:Z

    iput-object p1, p0, Lh5/z;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lh5/z;->b:Lh5/w;

    invoke-virtual {p1, p0}, Lh5/w;->b(Lh5/k;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lh5/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lh5/z;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lh5/z;->c:Z

    iput-boolean v1, p0, Lh5/z;->d:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lh5/z;->b:Lh5/w;

    invoke-virtual {v0, p0}, Lh5/w;->b(Lh5/k;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final t()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lh5/z;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    sget v0, Lh5/c;->a:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lh5/z;->l()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Lh5/z;->h()Ljava/lang/Exception;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lh5/z;->m()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget-boolean v1, p0, Lh5/z;->d:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const-string v1, "cancellation"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v1, "unknown issue"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lh5/z;->i()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "result "

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string v1, "failure"

    .line 51
    .line 52
    :goto_0
    new-instance v2, Lh5/c;

    .line 53
    .line 54
    const-string v3, "Complete with: "

    .line 55
    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v2, v1, v0}, Lh5/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v0, "DuplicateTaskCompletionException can only be created from completed Task."

    .line 67
    .line 68
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    throw v2

    .line 72
    :cond_4
    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lh5/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lh5/z;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lh5/z;->b:Lh5/w;

    invoke-virtual {v0, p0}, Lh5/w;->b(Lh5/k;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
