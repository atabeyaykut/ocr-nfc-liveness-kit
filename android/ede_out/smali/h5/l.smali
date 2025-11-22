.class public final Lh5/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lh5/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh5/z;

    invoke-direct {v0}, Lh5/z;-><init>()V

    iput-object v0, p0, Lh5/l;->a:Lh5/z;

    return-void
.end method

.method public constructor <init>(Lh5/q;)V
    .locals 2
    .param p1    # Lh5/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh5/z;

    invoke-direct {v0}, Lh5/z;-><init>()V

    iput-object v0, p0, Lh5/l;->a:Lh5/z;

    new-instance v0, Lh5/q;

    invoke-direct {v0, p0}, Lh5/q;-><init>(Lh5/l;)V

    .line 1
    iget-object p1, p1, Lh5/q;->a:Ljava/lang/Object;

    .line 2
    check-cast p1, Lh5/z;

    new-instance v1, Lj0/e;

    invoke-direct {v1, v0}, Lj0/e;-><init>(Lh5/h;)V

    sget-object v0, Lh5/m;->a:Lh5/y;

    invoke-virtual {p1, v0, v1}, Lh5/z;->d(Ljava/util/concurrent/Executor;Lh5/g;)Lh5/z;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lh5/l;->a:Lh5/z;

    invoke-virtual {v0, p1}, Lh5/z;->q(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lh5/l;->a:Lh5/z;

    invoke-virtual {v0, p1}, Lh5/z;->r(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Exception;)Z
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lh5/l;->a:Lh5/z;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "Exception must not be null"

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object v2, v0, Lh5/z;->a:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    iget-boolean v1, v0, Lh5/z;->c:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    monitor-exit v2

    .line 18
    const/4 p1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, v0, Lh5/z;->c:Z

    .line 22
    .line 23
    iput-object p1, v0, Lh5/z;->f:Ljava/lang/Exception;

    .line 24
    .line 25
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p1, v0, Lh5/z;->b:Lh5/w;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lh5/w;->b(Lh5/k;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    :goto_0
    return p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 37
    .line 38
    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lh5/l;->a:Lh5/z;

    .line 2
    .line 3
    iget-object v1, v0, Lh5/z;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, v0, Lh5/z;->c:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    monitor-exit v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x1

    .line 13
    iput-boolean v2, v0, Lh5/z;->c:Z

    .line 14
    .line 15
    iput-object p1, v0, Lh5/z;->e:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p1, v0, Lh5/z;->b:Lh5/w;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lh5/w;->b(Lh5/k;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
.end method
