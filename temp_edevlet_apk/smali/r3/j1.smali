.class public final Lr3/j1;
.super Lr3/i;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/HashMap;

.field public final e:Landroid/content/Context;

.field public volatile f:Lj4/e;

.field public final g:Lv3/a;

.field public final h:J

.field public final i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Lr3/i;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr3/j1;->d:Ljava/util/HashMap;

    new-instance v0, Lr3/i1;

    invoke-direct {v0, p0}, Lr3/i1;-><init>(Lr3/j1;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr3/j1;->e:Landroid/content/Context;

    new-instance p1, Lj4/e;

    invoke-direct {p1, p2, v0}, Lj4/e;-><init>(Landroid/os/Looper;Lr3/i1;)V

    iput-object p1, p0, Lr3/j1;->f:Lj4/e;

    invoke-static {}, Lv3/a;->b()Lv3/a;

    move-result-object p1

    iput-object p1, p0, Lr3/j1;->g:Lv3/a;

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lr3/j1;->h:J

    const-wide/32 p1, 0x493e0

    iput-wide p1, p0, Lr3/j1;->i:J

    return-void
.end method


# virtual methods
.method public final d(Lr3/f1;Lr3/y0;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
    .locals 5
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    .line 2
    .line 3
    iget-object v1, p0, Lr3/j1;->d:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lr3/j1;->d:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lr3/h1;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Lr3/h1;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1}, Lr3/h1;-><init>(Lr3/j1;Lr3/f1;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v2, Lr3/h1;->a:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p3, p4}, Lr3/h1;->a(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lr3/j1;->d:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v3, p0, Lr3/j1;->f:Lj4/e;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v2, Lr3/h1;->a:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    iget-object p1, v2, Lr3/h1;->a:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {p1, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget p1, v2, Lr3/h1;->b:I

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    if-eq p1, v0, :cond_2

    .line 60
    .line 61
    const/4 p2, 0x2

    .line 62
    if-eq p1, p2, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v2, p3, p4}, Lr3/h1;->a(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, v2, Lr3/h1;->f:Landroid/content/ComponentName;

    .line 70
    .line 71
    iget-object p3, v2, Lr3/h1;->d:Landroid/os/IBinder;

    .line 72
    .line 73
    invoke-virtual {p2, p1, p3}, Lr3/y0;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-boolean p1, v2, Lr3/h1;->c:Z

    .line 77
    .line 78
    monitor-exit v1

    .line 79
    return p1

    .line 80
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    invoke-virtual {p1}, Lr3/f1;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p2

    .line 94
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p1
.end method
