.class public abstract Lv7/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv7/m;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lv7/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lv7/m;

    invoke-direct {v0}, Lv7/m;-><init>()V

    iput-object v0, p0, Lv7/j;->a:Lv7/m;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lv7/j;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lh5/q;)Lh5/z;
    .locals 8
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lh5/q;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lv7/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lr3/r;->l(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Lh5/q;->b()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance p1, Lh5/z;

    .line 22
    .line 23
    invoke-direct {p1}, Lh5/z;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lh5/z;->s()V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1
    new-instance v3, Lh5/a;

    .line 31
    .line 32
    invoke-direct {v3}, Lh5/a;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v6, Lh5/l;

    .line 36
    .line 37
    iget-object v0, v3, Lh5/a;->a:Lh5/q;

    .line 38
    .line 39
    invoke-direct {v6, v0}, Lh5/l;-><init>(Lh5/q;)V

    .line 40
    .line 41
    .line 42
    new-instance v7, Lv7/u;

    .line 43
    .line 44
    invoke-direct {v7, p1, p3, v3, v6}, Lv7/u;-><init>(Ljava/util/concurrent/Executor;Lh5/q;Lh5/a;Lh5/l;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lv7/t;

    .line 48
    .line 49
    move-object v0, p1

    .line 50
    move-object v1, p0

    .line 51
    move-object v2, p3

    .line 52
    move-object v4, p2

    .line 53
    move-object v5, v6

    .line 54
    invoke-direct/range {v0 .. v5}, Lv7/t;-><init>(Lv7/j;Lh5/q;Lh5/a;Ljava/util/concurrent/Callable;Lh5/l;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lv7/j;->a:Lv7/m;

    .line 58
    .line 59
    invoke-virtual {p2, p1, v7}, Lv7/m;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, v6, Lh5/l;->a:Lh5/z;

    .line 63
    .line 64
    return-object p1
.end method

.method public abstract b()V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation
.end method

.method public abstract c()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
