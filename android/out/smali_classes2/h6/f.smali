.class public final Lh6/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public b:Lh5/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh5/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lh5/n;->e(Ljava/lang/Object;)Lh5/z;

    move-result-object v0

    iput-object v0, p0, Lh6/f;->b:Lh5/k;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh6/f;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lh6/f;->d:Ljava/lang/ThreadLocal;

    iput-object p1, p0, Lh6/f;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lh6/f$a;

    invoke-direct {v0, p0}, Lh6/f$a;-><init>(Lh6/f;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Lh5/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lh5/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh6/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lh6/f;->b:Lh5/k;

    .line 5
    .line 6
    iget-object v2, p0, Lh6/f;->a:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v3, Lh6/g;

    .line 9
    .line 10
    invoke-direct {v3, p1}, Lh6/g;-><init>(Ljava/util/concurrent/Callable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Lh5/k;->e(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v1, Lh6/h;

    .line 18
    .line 19
    invoke-direct {v1}, Lh6/h;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lh6/f;->a:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    invoke-virtual {p1, v2, v1}, Lh5/k;->e(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lh6/f;->b:Lh5/k;

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-object p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method public final b(Ljava/util/concurrent/Callable;)Lh5/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "Lh5/k<",
            "TT;>;>;)",
            "Lh5/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh6/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lh6/f;->b:Lh5/k;

    .line 5
    .line 6
    iget-object v2, p0, Lh6/f;->a:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v3, Lh6/g;

    .line 9
    .line 10
    invoke-direct {v3, p1}, Lh6/g;-><init>(Ljava/util/concurrent/Callable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Lh5/k;->g(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v1, Lh6/h;

    .line 18
    .line 19
    invoke-direct {v1}, Lh6/h;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lh6/f;->a:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    invoke-virtual {p1, v2, v1}, Lh5/k;->e(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lh6/f;->b:Lh5/k;

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-object p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method
