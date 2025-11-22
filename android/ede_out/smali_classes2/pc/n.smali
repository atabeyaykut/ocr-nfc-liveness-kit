.class public Lpc/n;
.super Lpc/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpc/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/locks/ReentrantLock;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lx9/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-TE;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lpc/a;-><init>(Lx9/l;)V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lpc/n;->d:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object p1, Lc5/y;->j:Lkotlinx/coroutines/internal/u;

    iput-object p1, p0, Lpc/n;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final B()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lpc/n;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lpc/n;->e:Ljava/lang/Object;

    sget-object v2, Lc5/y;->j:Lkotlinx/coroutines/internal/u;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lpc/b;->f()Lpc/k;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lc5/y;->m:Lkotlinx/coroutines/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_1
    :try_start_1
    iput-object v2, p0, Lpc/n;->e:Ljava/lang/Object;

    sget-object v2, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final D(Lkotlinx/coroutines/selects/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/c<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lpc/n;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lpc/n;->e:Ljava/lang/Object;

    sget-object v2, Lc5/y;->j:Lkotlinx/coroutines/internal/u;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lpc/b;->f()Lpc/k;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lc5/y;->m:Lkotlinx/coroutines/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :try_start_1
    invoke-interface {p1}, Lkotlinx/coroutines/selects/c;->n()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lkotlinx/coroutines/selects/d;->b:Lkotlinx/coroutines/internal/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :try_start_2
    iget-object p1, p0, Lpc/n;->e:Ljava/lang/Object;

    iput-object v2, p0, Lpc/n;->e:Ljava/lang/Object;

    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lpc/n;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpc/n;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lpc/b;->f()Lpc/k;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_7

    .line 11
    .line 12
    iget-object v1, p0, Lpc/n;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    sget-object v2, Lc5/y;->j:Lkotlinx/coroutines/internal/u;

    .line 15
    .line 16
    if-ne v1, v2, :cond_3

    .line 17
    .line 18
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lpc/a;->o()Lpc/v;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    instance-of v3, v1, Lpc/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_2
    :try_start_2
    invoke-interface {v1, p1}, Lpc/v;->c(Ljava/lang/Object;)Lkotlinx/coroutines/internal/u;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    sget-object v2, Ll9/m;->a:Ll9/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, p1}, Lpc/v;->s(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Lpc/v;->k()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_3
    :goto_0
    :try_start_3
    iget-object v1, p0, Lpc/n;->e:Ljava/lang/Object;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    if-ne v1, v2, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    iget-object v2, p0, Lpc/b;->a:Lx9/l;

    .line 59
    .line 60
    if-nez v2, :cond_5

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    invoke-static {v2, v1, v3}, Lc5/y;->e(Lx9/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/a0;)Lkotlinx/coroutines/internal/a0;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :goto_1
    iput-object p1, p0, Lpc/n;->e:Ljava/lang/Object;

    .line 68
    .line 69
    if-nez v3, :cond_6

    .line 70
    .line 71
    sget-object p1, Lc5/y;->k:Lkotlinx/coroutines/internal/u;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_6
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    .line 80
    .line 81
    return-object v1

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public final t(Lpc/s;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/s<",
            "-TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpc/n;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Lpc/a;->t(Lpc/s;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 2

    iget-object v0, p0, Lpc/n;->e:Ljava/lang/Object;

    sget-object v1, Lc5/y;->j:Lkotlinx/coroutines/internal/u;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lpc/n;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lc5/y;->j:Lkotlinx/coroutines/internal/u;

    .line 7
    .line 8
    iget-object v2, p0, Lpc/n;->e:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v2, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v4, p0, Lpc/b;->a:Lx9/l;

    .line 15
    .line 16
    if-nez v4, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-static {v4, v2, v3}, Lc5/y;->e(Lx9/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/a0;)Lkotlinx/coroutines/internal/a0;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    :goto_0
    iput-object v1, p0, Lpc/n;->e:Ljava/lang/Object;

    .line 24
    .line 25
    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    .line 29
    .line 30
    invoke-super {p0, p1}, Lpc/a;->y(Z)V

    .line 31
    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    throw v3

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 39
    .line 40
    .line 41
    throw p1
.end method
