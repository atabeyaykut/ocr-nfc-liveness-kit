.class Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;
.super Landroidx/camera/core/impl/utils/futures/FutureChain;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/camera/core/impl/utils/futures/FutureChain<",
        "TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private mFunction:Landroidx/camera/core/impl/utils/futures/AsyncFunction;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/utils/futures/AsyncFunction<",
            "-TI;+TO;>;"
        }
    .end annotation
.end field

.field private mInputFuture:Lm5/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/a<",
            "+TI;>;"
        }
    .end annotation
.end field

.field private final mMayInterruptIfRunningChannel:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mOutputCreated:Ljava/util/concurrent/CountDownLatch;

.field volatile mOutputFuture:Lm5/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/a<",
            "+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/utils/futures/AsyncFunction;Lm5/a;)V
    .locals 2
    .param p1    # Landroidx/camera/core/impl/utils/futures/AsyncFunction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lm5/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/utils/futures/AsyncFunction<",
            "-TI;+TO;>;",
            "Lm5/a<",
            "+TI;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/camera/core/impl/utils/futures/FutureChain;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mMayInterruptIfRunningChannel:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/utils/futures/AsyncFunction;

    iput-object p1, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mFunction:Landroidx/camera/core/impl/utils/futures/AsyncFunction;

    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm5/a;

    iput-object p1, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mInputFuture:Lm5/a;

    return-void
.end method

.method private cancel(Ljava/util/concurrent/Future;Z)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/BlockingQueue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;TE;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw p1

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private takeUninterruptibly(Ljava/util/concurrent/BlockingQueue;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/util/concurrent/BlockingQueue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw p1

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    invoke-super {p0, p1}, Landroidx/camera/core/impl/utils/futures/FutureChain;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mMayInterruptIfRunningChannel:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mInputFuture:Lm5/a;

    invoke-direct {p0, v0, p1}, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->cancel(Ljava/util/concurrent/Future;Z)V

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputFuture:Lm5/a;

    invoke-direct {p0, v0, p1}, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->cancel(Ljava/util/concurrent/Future;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/futures/FutureChain;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mInputFuture:Lm5/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputFuture:Lm5/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_1
    invoke-super {p0}, Landroidx/camera/core/impl/utils/futures/FutureChain;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/futures/FutureChain;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-eq p3, v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    move-object p3, v0

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mInputFuture:Lm5/a;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    sub-long/2addr p1, v3

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputFuture:Lm5/a;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/camera/core/impl/utils/futures/FutureChain;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mInputFuture:Lm5/a;

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mFunction:Landroidx/camera/core/impl/utils/futures/AsyncFunction;

    invoke-interface {v2, v1}, Landroidx/camera/core/impl/utils/futures/AsyncFunction;->apply(Ljava/lang/Object;)Lm5/a;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputFuture:Lm5/a;

    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/futures/FutureChain;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mMayInterruptIfRunningChannel:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, v2}, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->takeUninterruptibly(Ljava/util/concurrent/BlockingQueue;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputFuture:Lm5/a;
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mFunction:Landroidx/camera/core/impl/utils/futures/AsyncFunction;

    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mInputFuture:Lm5/a;

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    :try_start_2
    new-instance v2, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;

    invoke-direct {v2, p0, v1}, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;-><init>(Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;Lm5/a;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lm5/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/camera/core/impl/utils/futures/FutureChain;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_3
    invoke-virtual {p0, v1}, Landroidx/camera/core/impl/utils/futures/FutureChain;->setException(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mFunction:Landroidx/camera/core/impl/utils/futures/AsyncFunction;

    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mInputFuture:Lm5/a;

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_4

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :goto_4
    return-void

    :goto_5
    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mFunction:Landroidx/camera/core/impl/utils/futures/AsyncFunction;

    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mInputFuture:Lm5/a;

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1
.end method
