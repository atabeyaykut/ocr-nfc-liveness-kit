.class public final Lm1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/e;
.implements Lm1/d;


# instance fields
.field public final a:Lm1/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/Object;

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

.field public g:Z
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

    iput v0, p0, Lm1/j;->e:I

    iput v0, p0, Lm1/j;->f:I

    iput-object p1, p0, Lm1/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lm1/j;->a:Lm1/e;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lm1/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm1/j;->d:Lm1/d;

    invoke-interface {v1}, Lm1/d;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lm1/j;->c:Lm1/d;

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

    instance-of v0, p1, Lm1/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lm1/j;

    iget-object v0, p0, Lm1/j;->c:Lm1/d;

    if-nez v0, :cond_0

    iget-object v0, p1, Lm1/j;->c:Lm1/d;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm1/j;->c:Lm1/d;

    iget-object v2, p1, Lm1/j;->c:Lm1/d;

    invoke-interface {v0, v2}, Lm1/d;->b(Lm1/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lm1/j;->d:Lm1/d;

    if-nez v0, :cond_1

    iget-object p1, p1, Lm1/j;->d:Lm1/d;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lm1/j;->d:Lm1/d;

    iget-object p1, p1, Lm1/j;->d:Lm1/d;

    invoke-interface {v0, p1}, Lm1/d;->b(Lm1/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final c(Lm1/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm1/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lm1/j;->d:Lm1/d;

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x4

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iput v1, p0, Lm1/j;->f:I

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :cond_0
    iput v1, p0, Lm1/j;->e:I

    .line 18
    .line 19
    iget-object p1, p0, Lm1/j;->a:Lm1/e;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1, p0}, Lm1/e;->c(Lm1/d;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget p1, p0, Lm1/j;->f:I

    .line 27
    .line 28
    invoke-static {p1}, Lab/b;->a(I)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lm1/j;->d:Lm1/d;

    .line 35
    .line 36
    invoke-interface {p1}, Lm1/d;->clear()V

    .line 37
    .line 38
    .line 39
    :cond_2
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public final clear()V
    .locals 2

    iget-object v0, p0, Lm1/j;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lm1/j;->g:Z

    const/4 v1, 0x3

    iput v1, p0, Lm1/j;->e:I

    iput v1, p0, Lm1/j;->f:I

    iget-object v1, p0, Lm1/j;->d:Lm1/d;

    invoke-interface {v1}, Lm1/d;->clear()V

    iget-object v1, p0, Lm1/j;->c:Lm1/d;

    invoke-interface {v1}, Lm1/d;->clear()V

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
    .locals 3

    .line 1
    iget-object v0, p0, Lm1/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lm1/j;->f:I

    .line 5
    .line 6
    invoke-static {v1}, Lab/b;->a(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x2

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iput v2, p0, Lm1/j;->f:I

    .line 14
    .line 15
    iget-object v1, p0, Lm1/j;->d:Lm1/d;

    .line 16
    .line 17
    invoke-interface {v1}, Lm1/d;->d()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lm1/j;->e:I

    .line 21
    .line 22
    invoke-static {v1}, Lab/b;->a(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iput v2, p0, Lm1/j;->e:I

    .line 29
    .line 30
    iget-object v1, p0, Lm1/j;->c:Lm1/d;

    .line 31
    .line 32
    invoke-interface {v1}, Lm1/d;->d()V

    .line 33
    .line 34
    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v1
.end method

.method public final e(Lm1/d;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lm1/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lm1/j;->a:Lm1/e;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-interface {v1, p0}, Lm1/e;->e(Lm1/d;)Z

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
    iget-object v1, p0, Lm1/j;->c:Lm1/d;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    iget p1, p0, Lm1/j;->e:I

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    if-eq p1, v1, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/4 v2, 0x0

    .line 37
    :cond_3
    :goto_2
    monitor-exit v0

    .line 38
    return v2

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1
.end method

.method public final f(Lm1/d;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lm1/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lm1/j;->a:Lm1/e;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

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
    iget-object v1, p0, Lm1/j;->c:Lm1/d;

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
    iget p1, p0, Lm1/j;->e:I

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    if-eq p1, v1, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/4 v2, 0x0

    .line 37
    :goto_2
    monitor-exit v0

    .line 38
    return v2

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1
.end method

.method public final g()Z
    .locals 3

    iget-object v0, p0, Lm1/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lm1/j;->e:I

    const/4 v2, 0x3

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

    iget-object v0, p0, Lm1/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm1/j;->a:Lm1/e;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lm1/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lm1/j;->a:Lm1/e;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

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
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lm1/j;->c:Lm1/d;

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
    invoke-virtual {p0}, Lm1/j;->a()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    :cond_2
    monitor-exit v0

    .line 38
    return v2

    .line 39
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, Lm1/j;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lm1/j;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    iget v3, p0, Lm1/j;->e:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, p0, Lm1/j;->f:I

    if-eq v3, v1, :cond_0

    iput v1, p0, Lm1/j;->f:I

    iget-object v3, p0, Lm1/j;->d:Lm1/d;

    invoke-interface {v3}, Lm1/d;->i()V

    :cond_0
    iget-boolean v3, p0, Lm1/j;->g:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lm1/j;->e:I

    if-eq v3, v1, :cond_1

    iput v1, p0, Lm1/j;->e:I

    iget-object v1, p0, Lm1/j;->c:Lm1/d;

    invoke-interface {v1}, Lm1/d;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iput-boolean v2, p0, Lm1/j;->g:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lm1/j;->g:Z

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final isRunning()Z
    .locals 3

    iget-object v0, p0, Lm1/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lm1/j;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

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

    iget-object v0, p0, Lm1/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lm1/j;->e:I

    const/4 v2, 0x4

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

.method public final k(Lm1/d;)V
    .locals 2

    iget-object v0, p0, Lm1/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm1/j;->c:Lm1/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x5

    if-nez p1, :cond_0

    iput v1, p0, Lm1/j;->f:I

    monitor-exit v0

    return-void

    :cond_0
    iput v1, p0, Lm1/j;->e:I

    iget-object p1, p0, Lm1/j;->a:Lm1/e;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lm1/e;->k(Lm1/d;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
