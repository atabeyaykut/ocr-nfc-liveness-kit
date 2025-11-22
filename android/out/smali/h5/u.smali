.class public final Lh5/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/v;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public final c:Lh5/e;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lh5/e;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lh5/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh5/u;->b:Ljava/lang/Object;

    iput-object p1, p0, Lh5/u;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lh5/u;->c:Lh5/e;

    return-void
.end method


# virtual methods
.method public final b(Lh5/k;)V
    .locals 3
    .param p1    # Lh5/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lh5/u;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh5/u;->c:Lh5/e;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lh5/u;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lo3/h0;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, p1}, Lo3/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
