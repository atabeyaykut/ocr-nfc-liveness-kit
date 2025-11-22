.class public final Lkd/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkd/k$c;,
        Lkd/k$b;
    }
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lgd/e;

.field public c:Lld/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Lkd/e;

.field public final e:Ljava/util/HashMap;

.field public final f:Lld/m;

.field public g:Lkd/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lgd/g;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgd/c;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Landroid/content/Context;

.field public final k:Lkd/k$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lkd/k;->e:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lld/m;

    .line 12
    .line 13
    invoke-direct {v0}, Lld/m;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lkd/k;->f:Lld/m;

    .line 17
    .line 18
    new-instance v0, Lkd/c;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Lkd/c;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lkd/k;->g:Lkd/c;

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lkd/k;->h:Ljava/util/Set;

    .line 32
    .line 33
    new-instance v0, Lkd/k$a;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lkd/k$a;-><init>(Lkd/k;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lkd/k;->k:Lkd/k$a;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    .line 43
    const-string v1, "k"

    .line 44
    .line 45
    const-string v2, "new ScanHelper"

    .line 46
    .line 47
    invoke-static {v1, v2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lkd/k;->j:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {p1}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lkd/k;->b:Lgd/e;

    .line 57
    .line 58
    return-void
.end method

.method public static a(Lkd/k;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lkd/k;->e:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lkd/k;->e:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lgd/l;

    .line 25
    .line 26
    iget-object v3, p0, Lkd/k;->e:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lkd/f;

    .line 33
    .line 34
    const-string v4, "k"

    .line 35
    .line 36
    const-string v5, "Calling ranging callback"

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    new-array v6, v6, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v4, v5, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v4, v3, Lkd/f;->a:Lkd/a;

    .line 45
    .line 46
    iget-object v5, p0, Lkd/k;->j:Landroid/content/Context;

    .line 47
    .line 48
    const-string v6, "rangingData"

    .line 49
    .line 50
    new-instance v7, Ls4/y1;

    .line 51
    .line 52
    invoke-virtual {v3}, Lkd/f;->b()Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-direct {v7, v3, v2}, Ls4/y1;-><init>(Ljava/util/Collection;Lgd/l;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ls4/y1;->a()Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {v5, v6, v2}, Lkd/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method


# virtual methods
.method public final b(Z)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x1a

    .line 6
    .line 7
    const-string v4, "CycledLeScanner"

    .line 8
    .line 9
    if-ge v0, v3, :cond_1

    .line 10
    .line 11
    sget-boolean v0, Lgd/e;->y:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "This is Android 5.0, but L scanning is disabled. We are using old scanning APIs"

    .line 16
    .line 17
    new-array v1, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v4, v0, v1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "This is Android 5.0.  We are using new scanning APIs"

    .line 25
    .line 26
    new-array v3, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {v4, v0, v3}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "Using Android O scanner"

    .line 35
    .line 36
    new-array v3, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {v4, v0, v3}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lkd/k;->j:Landroid/content/Context;

    .line 42
    .line 43
    iget-object v3, p0, Lkd/k;->k:Lkd/k$a;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    new-instance v1, Lld/d;

    .line 48
    .line 49
    invoke-direct {v1, v0, p1, v3}, Lld/d;-><init>(Landroid/content/Context;ZLkd/k$a;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    if-eqz v2, :cond_3

    .line 54
    .line 55
    new-instance v1, Lld/i;

    .line 56
    .line 57
    invoke-direct {v1, v0, p1, v3}, Lld/i;-><init>(Landroid/content/Context;ZLkd/k$a;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    new-instance v1, Lld/e;

    .line 62
    .line 63
    invoke-direct {v1, v0, p1, v3}, Lld/e;-><init>(Landroid/content/Context;ZLkd/k$a;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    iput-object v1, p0, Lkd/k;->c:Lld/b;

    .line 67
    .line 68
    return-void
.end method

.method public final c()Ljava/util/concurrent/ExecutorService;
    .locals 4

    iget-object v0, p0, Lkd/k;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    const-string v2, "k"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ThreadPoolExecutor unexpectedly shut down"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lkd/k;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-string v0, "ThreadPoolExecutor created"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lkd/k;->a:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lkd/k;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final d(IJLandroid/bluetooth/BluetoothDevice;[B)V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    move-object v7, p0

    const-string v8, "k"

    iget-object v0, v7, Lkd/k;->b:Lgd/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p0}, Lkd/k;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    new-instance v11, Lkd/k$c;

    new-instance v12, Lkd/k$b;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p4

    move v3, p1

    move-object/from16 v4, p5

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lkd/k$b;-><init>(Lkd/k;Landroid/bluetooth/BluetoothDevice;I[BJ)V

    invoke-direct {v11, p0, v12}, Lkd/k$c;-><init>(Lkd/k;Lkd/k$b;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Ignoring scan result because we cannot start a thread to keep up."

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    const-string v0, "Ignoring scan result because we cannot keep up."

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lkd/k;->b:Lgd/e;

    .line 7
    .line 8
    iget-object v2, v1, Lgd/e;->i:Lmd/a;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    iget-object v1, v1, Lgd/e;->i:Lmd/a;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lgd/g;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v4, Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v5, v3, Lgd/g;->A:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-lez v4, :cond_0

    .line 47
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object v3, v3, Lgd/g;->A:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iput-object v0, p0, Lkd/k;->h:Ljava/util/Set;

    .line 61
    .line 62
    new-instance v0, Lkd/c;

    .line 63
    .line 64
    invoke-direct {v0, v2}, Lkd/c;-><init>(Z)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lkd/k;->g:Lkd/c;

    .line 68
    .line 69
    return-void
.end method

.method public final f(Ljava/util/HashSet;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BeaconParsers set to  count: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "k"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "First parser layout: "

    .line 33
    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lgd/g;

    .line 46
    .line 47
    iget-object v2, v2, Lgd/g;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_0
    iput-object p1, p0, Lkd/k;->h:Ljava/util/Set;

    .line 60
    .line 61
    return-void
.end method

.method public final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lkd/k;->i()V

    return-void
.end method

.method public final g(Ljava/util/HashMap;)V
    .locals 5

    const-string v0, "k"

    const-string v1, "rangeRegionState updated with %d regions"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lkd/k;->e:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkd/k;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lkd/k;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final h()V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    iget-object v0, p0, Lkd/k;->j:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "k"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    const-string v5, "bluetooth"

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroid/bluetooth/BluetoothManager;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    const-string v0, "Failed to construct a BluetoothAdapter"

    .line 26
    .line 27
    new-array v4, v3, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v1, v0, v4}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v6, 0x1c

    .line 42
    .line 43
    if-ge v5, v6, :cond_1

    .line 44
    .line 45
    const-string v0, "BluetoothAdapter is not enabled"

    .line 46
    .line 47
    new-array v4, v3, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {v1, v0, v4}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    new-instance v5, Landroid/content/Intent;

    .line 60
    .line 61
    const-class v6, Lorg/altbeacon/beacon/startup/StartupBroadcastReceiver;

    .line 62
    .line 63
    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    const-string v6, "o-scan"

    .line 67
    .line 68
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const/high16 v6, 0xa000000

    .line 72
    .line 73
    invoke-static {v0, v3, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v4, v0}, Landroidx/browser/trusted/b;->l(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    new-array v2, v2, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object v0, v2, v3

    .line 85
    .line 86
    const-string v0, "Unexpected runtime exception stopping Android O background scanner"

    .line 87
    .line 88
    invoke-static {v1, v0, v2}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    new-array v2, v2, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object v0, v2, v3

    .line 96
    .line 97
    const-string v0, "NullPointerException stopping Android O background scanner"

    .line 98
    .line 99
    invoke-static {v1, v0, v2}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_2
    const-string v0, "SecurityException stopping Android O background scanner"

    .line 104
    .line 105
    new-array v2, v3, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-static {v1, v0, v2}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 6

    const-string v0, "k"

    iget-object v1, p0, Lkd/k;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lkd/k;->a:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Can\'t stop beacon parsing thread."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Interrupted waiting to stop beacon parsing thread."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lkd/k;->a:Ljava/util/concurrent/ExecutorService;

    :cond_1
    return-void
.end method
