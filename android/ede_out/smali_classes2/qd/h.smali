.class public final Lqd/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lqd/g;

.field public b:Lqd/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lqd/g;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lqd/h;->b:Lqd/g;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lqd/g;->c:Lqd/g;

    iput-object p1, p0, Lqd/h;->b:Lqd/g;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqd/h;->a:Lqd/g;

    if-nez v0, :cond_1

    iput-object p1, p0, Lqd/h;->b:Lqd/g;

    iput-object p1, p0, Lqd/h;->a:Lqd/g;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Head present, but no tail"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Lqd/g;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lqd/h;->a:Lqd/g;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lqd/g;->c:Lqd/g;

    iput-object v1, p0, Lqd/h;->a:Lqd/g;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lqd/h;->b:Lqd/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lqd/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lqd/h;->a:Lqd/g;

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    :cond_0
    invoke-virtual {p0}, Lqd/h;->b()Lqd/g;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
