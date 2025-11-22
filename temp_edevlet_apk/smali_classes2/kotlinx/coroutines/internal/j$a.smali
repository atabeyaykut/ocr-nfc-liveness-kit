.class public abstract Lkotlinx/coroutines/internal/j$a;
.super Lkotlinx/coroutines/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/c;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/c<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j$a;->f()Lkotlinx/coroutines/internal/j;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j$a;->g()Lkotlinx/coroutines/internal/j;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/internal/j$a;->l(Lkotlinx/coroutines/internal/j;)Lkotlinx/coroutines/internal/p;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    sget-object v5, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_4
    invoke-virtual {v5, v2, p1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p1, :cond_4

    :goto_2
    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/internal/j$a;->d(Lkotlinx/coroutines/internal/j;)V

    :cond_6
    return-void
.end method

.method public final b(Lkotlinx/coroutines/internal/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/c<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/j$a;->k(Lkotlinx/coroutines/internal/o;)Lkotlinx/coroutines/internal/j;

    move-result-object v0

    sget-object v1, Lb8/f;->e:Lkotlinx/coroutines/internal/u;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v2, v0, Lkotlinx/coroutines/internal/j;->_next:Ljava/lang/Object;

    const/4 v3, 0x0

    if-ne v2, p1, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/c;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_3
    instance-of v4, v2, Lkotlinx/coroutines/internal/o;

    if-eqz v4, :cond_5

    check-cast v2, Lkotlinx/coroutines/internal/o;

    invoke-virtual {p1, v2}, Lkotlinx/coroutines/internal/o;->b(Lkotlinx/coroutines/internal/o;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/internal/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/j$a;->c(Lkotlinx/coroutines/internal/j;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/internal/j$a;->j(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    new-instance v1, Lkotlinx/coroutines/internal/j$c;

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/j;

    invoke-direct {v1, v0, v4, p0}, Lkotlinx/coroutines/internal/j$c;-><init>(Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/j$a;)V

    sget-object v4, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_8
    invoke-virtual {v4, v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v4, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v2, :cond_8

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/internal/j$c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v0, Lcom/google/android/gms/internal/clearcut/d0;->b:Lkotlinx/coroutines/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v0, :cond_a

    goto :goto_0

    :cond_a
    return-object v3

    :catchall_0
    move-exception p1

    sget-object v3, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_2
    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_b

    goto :goto_2

    :cond_b
    throw p1
.end method

.method public abstract c(Lkotlinx/coroutines/internal/j;)Ljava/lang/Object;
.end method

.method public abstract d(Lkotlinx/coroutines/internal/j;)V
.end method

.method public abstract e(Lkotlinx/coroutines/internal/j$c;)V
.end method

.method public abstract f()Lkotlinx/coroutines/internal/j;
.end method

.method public abstract g()Lkotlinx/coroutines/internal/j;
.end method

.method public h(Lkotlinx/coroutines/internal/j$c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/j$a;->e(Lkotlinx/coroutines/internal/j$c;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Lkotlinx/coroutines/internal/j;)V
    .locals 0

    return-void
.end method

.method public abstract j(Ljava/lang/Object;)Z
.end method

.method public abstract k(Lkotlinx/coroutines/internal/o;)Lkotlinx/coroutines/internal/j;
.end method

.method public abstract l(Lkotlinx/coroutines/internal/j;)Lkotlinx/coroutines/internal/p;
.end method
