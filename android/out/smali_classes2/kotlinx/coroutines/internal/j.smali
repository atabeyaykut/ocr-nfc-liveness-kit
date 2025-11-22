.class public Lkotlinx/coroutines/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/j$b;,
        Lkotlinx/coroutines/internal/j$d;,
        Lkotlinx/coroutines/internal/j$c;,
        Lkotlinx/coroutines/internal/j$a;
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _next:Ljava/lang/Object;

.field volatile synthetic _prev:Ljava/lang/Object;

.field private volatile synthetic _removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_next"

    const-class v1, Lkotlinx/coroutines/internal/j;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_prev"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/j;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_removedRef"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/j;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lkotlinx/coroutines/internal/j;->_next:Ljava/lang/Object;

    iput-object p0, p0, Lkotlinx/coroutines/internal/j;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/internal/j;->_removedRef:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A()Lkotlinx/coroutines/internal/j;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/internal/p;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lkotlinx/coroutines/internal/p;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v2

    .line 15
    :goto_0
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget-object v2, v1, Lkotlinx/coroutines/internal/p;->a:Lkotlinx/coroutines/internal/j;

    .line 19
    .line 20
    :goto_1
    if-nez v2, :cond_2

    .line 21
    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Lkotlinx/coroutines/internal/j;

    .line 24
    .line 25
    :cond_2
    return-object v2
.end method

.method public final B()Lkotlinx/coroutines/internal/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->v()Lkotlinx/coroutines/internal/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->_prev:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lkotlinx/coroutines/internal/j;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->E()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, v0, Lkotlinx/coroutines/internal/j;->_prev:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lkotlinx/coroutines/internal/j;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-object v0
.end method

.method public final C()V
    .locals 3

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/internal/p;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->v()Lkotlinx/coroutines/internal/j;

    return-void

    :cond_0
    check-cast v1, Lkotlinx/coroutines/internal/p;

    iget-object v0, v1, Lkotlinx/coroutines/internal/p;->a:Lkotlinx/coroutines/internal/j;

    goto :goto_0
.end method

.method public E()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/internal/p;

    return v0
.end method

.method public F()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->G()Lkotlinx/coroutines/internal/j;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final G()Lkotlinx/coroutines/internal/j;
    .locals 5

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/internal/p;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/p;

    iget-object v0, v0, Lkotlinx/coroutines/internal/p;->a:Lkotlinx/coroutines/internal/j;

    return-object v0

    :cond_1
    if-ne v0, p0, :cond_2

    check-cast v0, Lkotlinx/coroutines/internal/j;

    return-object v0

    :cond_2
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/j;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->H()Lkotlinx/coroutines/internal/p;

    move-result-object v2

    :cond_3
    sget-object v3, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->v()Lkotlinx/coroutines/internal/j;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final H()Lkotlinx/coroutines/internal/p;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->_removedRef:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/p;

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/internal/p;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/p;-><init>(Lkotlinx/coroutines/internal/j;)V

    sget-object v1, Lkotlinx/coroutines/internal/j;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final I(Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/j$b;)I
    .locals 3

    sget-object v0, Lkotlinx/coroutines/internal/j;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p3, Lkotlinx/coroutines/internal/j$b;->c:Lkotlinx/coroutines/internal/j;

    :cond_0
    invoke-virtual {v0, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lkotlinx/coroutines/internal/j$e;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/j$e;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnc/c0;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/i;)Z
    .locals 4

    sget-object v0, Lkotlinx/coroutines/internal/j;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return v3

    :cond_2
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/j;->y(Lkotlinx/coroutines/internal/j;)V

    return v2
.end method

.method public final v()Lkotlinx/coroutines/internal/j;
    .locals 9

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/j;

    move-object v1, v0

    :goto_1
    const/4 v2, 0x0

    move-object v3, v2

    :goto_2
    iget-object v4, v1, Lkotlinx/coroutines/internal/j;->_next:Ljava/lang/Object;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, p0, :cond_4

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    sget-object v7, Lkotlinx/coroutines/internal/j;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1
    invoke-virtual {v7, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_1

    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->E()Z

    move-result v7

    if-eqz v7, :cond_5

    return-object v2

    :cond_5
    if-nez v4, :cond_6

    return-object v1

    :cond_6
    instance-of v7, v4, Lkotlinx/coroutines/internal/o;

    if-eqz v7, :cond_7

    check-cast v4, Lkotlinx/coroutines/internal/o;

    invoke-virtual {v4, v1}, Lkotlinx/coroutines/internal/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    instance-of v7, v4, Lkotlinx/coroutines/internal/p;

    if-eqz v7, :cond_c

    if-eqz v3, :cond_b

    sget-object v7, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v4, Lkotlinx/coroutines/internal/p;

    iget-object v4, v4, Lkotlinx/coroutines/internal/p;->a:Lkotlinx/coroutines/internal/j;

    :cond_8
    invoke-virtual {v7, v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_8

    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_a

    goto :goto_0

    :cond_a
    move-object v1, v3

    goto :goto_1

    :cond_b
    iget-object v1, v1, Lkotlinx/coroutines/internal/j;->_prev:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/j;

    goto :goto_2

    :cond_c
    move-object v3, v4

    check-cast v3, Lkotlinx/coroutines/internal/j;

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_2
.end method

.method public final y(Lkotlinx/coroutines/internal/j;)V
    .locals 3

    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/internal/j;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/j;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lkotlinx/coroutines/internal/j;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->E()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j;->v()Lkotlinx/coroutines/internal/j;

    :cond_4
    return-void
.end method

.method public final z()Ljava/lang/Object;
    .locals 2

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->_next:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/o;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/o;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
