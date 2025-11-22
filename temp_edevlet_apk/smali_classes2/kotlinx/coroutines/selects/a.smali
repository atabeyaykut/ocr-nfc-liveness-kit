.class public final Lkotlinx/coroutines/selects/a;
.super Lkotlinx/coroutines/internal/i;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/selects/c;
.implements Lp9/d;
.implements Lr9/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/selects/a$c;,
        Lkotlinx/coroutines/selects/a$a;,
        Lkotlinx/coroutines/selects/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/i;",
        "Lkotlinx/coroutines/selects/c<",
        "TR;>;",
        "Lp9/d<",
        "TR;>;",
        "Lr9/d;"
    }
.end annotation


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _result:Ljava/lang/Object;

.field volatile synthetic _state:Ljava/lang/Object;

.field public final d:Lp9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp9/d<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "_state"

    const-class v1, Lkotlinx/coroutines/selects/a;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/a;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_result"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lkotlinx/coroutines/internal/i;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/selects/a;->d:Lp9/d;

    sget-object p1, Lkotlinx/coroutines/selects/d;->a:Lkotlinx/coroutines/internal/u;

    iput-object p1, p0, Lkotlinx/coroutines/selects/a;->_state:Ljava/lang/Object;

    sget-object p1, Lkotlinx/coroutines/selects/d;->c:Lkotlinx/coroutines/internal/u;

    iput-object p1, p0, Lkotlinx/coroutines/selects/a;->_result:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/selects/a;->_parentHandle:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->_parentHandle:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnc/k0;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0}, Lnc/k0;->dispose()V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lkotlinx/coroutines/internal/j;

    .line 16
    .line 17
    :goto_1
    invoke-static {v0, p0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    instance-of v1, v0, Lkotlinx/coroutines/selects/a$b;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    check-cast v1, Lkotlinx/coroutines/selects/a$b;

    .line 29
    .line 30
    iget-object v1, v1, Lkotlinx/coroutines/selects/a$b;->d:Lnc/k0;

    .line 31
    .line 32
    invoke-interface {v1}, Lnc/k0;->dispose()V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->A()Lkotlinx/coroutines/internal/j;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    return-void
.end method

.method public final K()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/a;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/a;->getContext()Lp9/f;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v2, Lnc/b1$b;->a:Lnc/b1$b;

    .line 13
    .line 14
    invoke-interface {v0, v2}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lnc/b1;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Lkotlinx/coroutines/selects/a$c;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Lkotlinx/coroutines/selects/a$c;-><init>(Lkotlinx/coroutines/selects/a;)V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-static {v0, v1, v2, v3}, Lnc/b1$a;->a(Lnc/b1;ZLnc/f1;I)Lnc/k0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lkotlinx/coroutines/selects/a;->_parentHandle:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/a;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Lnc/k0;->dispose()V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->_result:Ljava/lang/Object;

    .line 45
    .line 46
    sget-object v2, Lkotlinx/coroutines/selects/d;->c:Lkotlinx/coroutines/internal/u;

    .line 47
    .line 48
    if-ne v0, v2, :cond_5

    .line 49
    .line 50
    sget-object v3, Lkotlinx/coroutines/selects/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 51
    .line 52
    sget-object v4, Lq9/a;->a:Lq9/a;

    .line 53
    .line 54
    :cond_2
    invoke-virtual {v3, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eq v0, v2, :cond_2

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    :goto_1
    if-eqz v1, :cond_4

    .line 69
    .line 70
    return-object v4

    .line 71
    :cond_4
    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->_result:Ljava/lang/Object;

    .line 72
    .line 73
    :cond_5
    sget-object v1, Lkotlinx/coroutines/selects/d;->d:Lkotlinx/coroutines/internal/u;

    .line 74
    .line 75
    if-eq v0, v1, :cond_7

    .line 76
    .line 77
    instance-of v1, v0, Lnc/r;

    .line 78
    .line 79
    if-nez v1, :cond_6

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_6
    check-cast v0, Lnc/r;

    .line 83
    .line 84
    iget-object v0, v0, Lnc/r;->a:Ljava/lang/Throwable;

    .line 85
    .line 86
    throw v0

    .line 87
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v1, "Already resumed"

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0
.end method

.method public final L(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/a;->K()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lnc/r;

    if-eqz v1, :cond_1

    check-cast v0, Lnc/r;

    iget-object v0, v0, Lnc/r;->a:Ljava/lang/Throwable;

    if-eq v0, p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/a;->getContext()Lp9/f;

    move-result-object v0

    invoke-static {v0, p1}, Lc5/v;->u(Lp9/f;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 2

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->_state:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/selects/d;->a:Lkotlinx/coroutines/internal/u;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/internal/o;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/o;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final e(Lpc/a$g;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/selects/a$a;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/selects/a$a;-><init>(Lkotlinx/coroutines/selects/a;Lpc/a$g;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCallerFrame()Lr9/d;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->d:Lp9/d;

    instance-of v1, v0, Lr9/d;

    if-eqz v1, :cond_0

    check-cast v0, Lr9/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getContext()Lp9/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->d:Lp9/d;

    invoke-interface {v0}, Lp9/d;->getContext()Lp9/f;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 5

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->_state:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/selects/d;->a:Lkotlinx/coroutines/internal/u;

    sget-object v2, Lc5/w;->g:Lkotlinx/coroutines/internal/u;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    sget-object v4, Lkotlinx/coroutines/selects/a;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v4, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/a;->J()V

    return-object v2

    :cond_3
    instance-of v1, v0, Lkotlinx/coroutines/internal/o;

    if-eqz v1, :cond_4

    check-cast v0, Lkotlinx/coroutines/internal/o;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final m(Lnc/k0;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/selects/a$b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lkotlinx/coroutines/selects/a$b;-><init>(Lnc/k0;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/a;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0, p0}, Lkotlinx/coroutines/internal/j;->u(Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/i;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/a;->a()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-interface {p1}, Lnc/k0;->dispose()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final n()Z
    .locals 3

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/a;->h()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lc5/w;->g:Lkotlinx/coroutines/internal/u;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected trySelectIdempotent result "

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final r()Lp9/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp9/d<",
            "TR;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->_result:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/selects/d;->c:Lkotlinx/coroutines/internal/u;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    invoke-static {p1}, Ll9/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    move-object v4, p1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance v4, Lnc/r;

    .line 18
    .line 19
    invoke-direct {v4, v3, v0}, Lnc/r;-><init>(ZLjava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    sget-object v5, Lkotlinx/coroutines/selects/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 23
    .line 24
    :cond_2
    invoke-virtual {v5, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eq v0, v1, :cond_2

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_1
    if-eqz v2, :cond_0

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_4
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 42
    .line 43
    if-ne v0, v1, :cond_8

    .line 44
    .line 45
    sget-object v0, Lkotlinx/coroutines/selects/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 46
    .line 47
    sget-object v4, Lkotlinx/coroutines/selects/d;->d:Lkotlinx/coroutines/internal/u;

    .line 48
    .line 49
    :cond_5
    invoke-virtual {v0, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_6

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-eq v5, v1, :cond_5

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    :goto_2
    if-eqz v2, :cond_0

    .line 64
    .line 65
    instance-of v0, p1, Ll9/h$a;

    .line 66
    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->d:Lp9/d;

    .line 70
    .line 71
    invoke-static {p1}, Ll9/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_3

    .line 83
    :cond_7
    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->d:Lp9/d;

    .line 84
    .line 85
    :goto_3
    invoke-interface {v0, p1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :goto_4
    return-void

    .line 89
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v0, "Already resumed"

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public final t(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->_result:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/selects/d;->c:Lkotlinx/coroutines/internal/u;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v0, v1, :cond_3

    .line 8
    .line 9
    new-instance v4, Lnc/r;

    .line 10
    .line 11
    invoke-direct {v4, v2, p1}, Lnc/r;-><init>(ZLjava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    sget-object v5, Lkotlinx/coroutines/selects/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    :cond_1
    invoke-virtual {v5, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    :goto_0
    if-eqz v2, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_3
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 34
    .line 35
    if-ne v0, v1, :cond_6

    .line 36
    .line 37
    sget-object v0, Lkotlinx/coroutines/selects/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 38
    .line 39
    sget-object v4, Lkotlinx/coroutines/selects/d;->d:Lkotlinx/coroutines/internal/u;

    .line 40
    .line 41
    :cond_4
    invoke-virtual {v0, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_5

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-eq v5, v1, :cond_4

    .line 54
    .line 55
    :goto_1
    if-eqz v2, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->d:Lp9/d;

    .line 58
    .line 59
    invoke-static {v0}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {p1}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {v0, p1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :goto_2
    return-void

    .line 71
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string v0, "Already resumed"

    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SelectInstance(state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/coroutines/selects/a;->_state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/selects/a;->_result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
