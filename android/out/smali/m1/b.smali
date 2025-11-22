.class public final Lm1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/e;
.implements Lm1/d;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lm1/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile c:Lm1/d;

.field public volatile d:Lm1/d;

.field public e:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public f:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lm1/e;)V
    .locals 1
    .param p2    # Lm1/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lm1/b;->e:I

    iput v0, p0, Lm1/b;->f:I

    iput-object p1, p0, Lm1/b;->a:Ljava/lang/Object;

    iput-object p2, p0, Lm1/b;->b:Lm1/e;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lm1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm1/b;->c:Lm1/d;

    invoke-interface {v1}, Lm1/d;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lm1/b;->d:Lm1/d;

    invoke-interface {v1}, Lm1/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Lm1/d;)Z
    .locals 3

    instance-of v0, p1, Lm1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lm1/b;

    iget-object v0, p0, Lm1/b;->c:Lm1/d;

    iget-object v2, p1, Lm1/b;->c:Lm1/d;

    invoke-interface {v0, v2}, Lm1/d;->b(Lm1/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm1/b;->d:Lm1/d;

    iget-object p1, p1, Lm1/b;->d:Lm1/d;

    invoke-interface {v0, p1}, Lm1/d;->b(Lm1/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final c(Lm1/d;)V
    .locals 3

    iget-object v0, p0, Lm1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm1/b;->c:Lm1/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    iput v2, p0, Lm1/b;->e:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lm1/b;->d:Lm1/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v2, p0, Lm1/b;->f:I

    :cond_1
    :goto_0
    iget-object p1, p0, Lm1/b;->b:Lm1/e;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lm1/e;->c(Lm1/d;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lm1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    iput v1, p0, Lm1/b;->e:I

    iget-object v2, p0, Lm1/b;->c:Lm1/d;

    invoke-interface {v2}, Lm1/d;->clear()V

    iget v2, p0, Lm1/b;->f:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Lm1/b;->f:I

    iget-object v1, p0, Lm1/b;->d:Lm1/d;

    invoke-interface {v1}, Lm1/d;->clear()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lm1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lm1/b;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iput v2, p0, Lm1/b;->e:I

    iget-object v1, p0, Lm1/b;->c:Lm1/d;

    invoke-interface {v1}, Lm1/d;->d()V

    :cond_0
    iget v1, p0, Lm1/b;->f:I

    if-ne v1, v3, :cond_1

    iput v2, p0, Lm1/b;->f:I

    iget-object v1, p0, Lm1/b;->d:Lm1/d;

    invoke-interface {v1}, Lm1/d;->d()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e(Lm1/d;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lm1/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lm1/b;->b:Lm1/e;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-interface {v0, p0}, Lm1/e;->e(Lm1/d;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    monitor-exit p1

    .line 19
    return v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0
.end method

.method public final f(Lm1/d;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lm1/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lm1/b;->b:Lm1/e;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-interface {v1, p0}, Lm1/e;->f(Lm1/d;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 20
    :goto_1
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lm1/b;->c:Lm1/d;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    :cond_2
    monitor-exit v0

    .line 32
    return v2

    .line 33
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2
.end method

.method public final g()Z
    .locals 3

    iget-object v0, p0, Lm1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lm1/b;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lm1/b;->f:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getRoot()Lm1/e;
    .locals 2

    iget-object v0, p0, Lm1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm1/b;->b:Lm1/e;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lm1/e;->getRoot()Lm1/e;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h(Lm1/d;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lm1/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lm1/b;->b:Lm1/e;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-interface {v1, p0}, Lm1/e;->h(Lm1/d;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 20
    :goto_1
    if-eqz v1, :cond_5

    .line 21
    .line 22
    iget v1, p0, Lm1/b;->e:I

    .line 23
    .line 24
    const/4 v4, 0x5

    .line 25
    if-eq v1, v4, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lm1/b;->c:Lm1/d;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    iget-object v1, p0, Lm1/b;->d:Lm1/d;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    iget p1, p0, Lm1/b;->f:I

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    if-eq p1, v1, :cond_3

    .line 46
    .line 47
    if-ne p1, v4, :cond_4

    .line 48
    .line 49
    :cond_3
    const/4 p1, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const/4 p1, 0x0

    .line 52
    :goto_2
    if-eqz p1, :cond_5

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_5
    const/4 v2, 0x0

    .line 56
    :goto_3
    monitor-exit v0

    .line 57
    return v2

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p1
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lm1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lm1/b;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iput v2, p0, Lm1/b;->e:I

    iget-object v1, p0, Lm1/b;->c:Lm1/d;

    invoke-interface {v1}, Lm1/d;->i()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isRunning()Z
    .locals 3

    iget-object v0, p0, Lm1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lm1/b;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lm1/b;->f:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()Z
    .locals 3

    iget-object v0, p0, Lm1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lm1/b;->e:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Lm1/b;->f:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k(Lm1/d;)V
    .locals 2

    iget-object v0, p0, Lm1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm1/b;->d:Lm1/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x5

    if-nez p1, :cond_1

    iput v1, p0, Lm1/b;->e:I

    iget p1, p0, Lm1/b;->f:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    iput v1, p0, Lm1/b;->f:I

    iget-object p1, p0, Lm1/b;->d:Lm1/d;

    invoke-interface {p1}, Lm1/d;->i()V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    iput v1, p0, Lm1/b;->f:I

    iget-object p1, p0, Lm1/b;->b:Lm1/e;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lm1/e;->k(Lm1/d;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
