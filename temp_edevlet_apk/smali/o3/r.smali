.class public final Lo3/r;
.super Lo3/a1;
.source "SourceFile"


# instance fields
.field public final f:Landroidx/collection/ArraySet;

.field public final g:Lo3/d;


# direct methods
.method public constructor <init>(Lo3/g;Lo3/d;)V
    .locals 1

    sget-object v0, Lm3/e;->c:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lo3/a1;-><init>(Lo3/g;)V

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lo3/r;->f:Landroidx/collection/ArraySet;

    iput-object p2, p0, Lo3/r;->g:Lo3/d;

    invoke-interface {p1, p0}, Lo3/g;->g(Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo3/r;->f:Landroidx/collection/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lo3/r;->g:Lo3/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v1, Lo3/d;->r:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, v0, Lo3/d;->k:Lo3/r;

    .line 18
    .line 19
    if-eq v2, p0, :cond_0

    .line 20
    .line 21
    iput-object p0, v0, Lo3/d;->k:Lo3/r;

    .line 22
    .line 23
    iget-object v2, v0, Lo3/d;->l:Landroidx/collection/ArraySet;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, v0, Lo3/d;->l:Landroidx/collection/ArraySet;

    .line 29
    .line 30
    iget-object v2, p0, Lo3/r;->f:Landroidx/collection/ArraySet;

    .line 31
    .line 32
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    monitor-exit v1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v0

    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo3/a1;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Lo3/r;->f:Landroidx/collection/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lo3/r;->g:Lo3/d;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lo3/d;->r:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v2, v0, Lo3/d;->k:Lo3/r;

    .line 21
    .line 22
    if-eq v2, p0, :cond_0

    .line 23
    .line 24
    iput-object p0, v0, Lo3/d;->k:Lo3/r;

    .line 25
    .line 26
    iget-object v2, v0, Lo3/d;->l:Landroidx/collection/ArraySet;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, v0, Lo3/d;->l:Landroidx/collection/ArraySet;

    .line 32
    .line 33
    iget-object v2, p0, Lo3/r;->f:Landroidx/collection/ArraySet;

    .line 34
    .line 35
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    monitor-exit v1

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v0

    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo3/a1;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Lo3/r;->g:Lo3/d;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object v1, Lo3/d;->r:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, v0, Lo3/d;->k:Lo3/r;

    .line 13
    .line 14
    if-ne v2, p0, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, v0, Lo3/d;->k:Lo3/r;

    .line 18
    .line 19
    iget-object v0, v0, Lo3/d;->l:Landroidx/collection/ArraySet;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 22
    .line 23
    .line 24
    :cond_0
    monitor-exit v1

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method
