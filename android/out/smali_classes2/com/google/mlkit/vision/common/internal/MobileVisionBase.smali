.class public Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DetectionResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Landroidx/lifecycle/LifecycleObserver;"
    }
.end annotation


# static fields
.field public static final e:Lr3/j;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Lv7/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/f<",
            "TDetectionResultT;",
            "La8/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lh5/a;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr3/j;

    const-string v1, "MobileVisionBase"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lr3/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->e:Lr3/j;

    return-void
.end method

.method public constructor <init>(Lv7/f;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1    # Lv7/f;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/f<",
            "TDetectionResultT;",
            "La8/a;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->b:Lv7/f;

    .line 13
    .line 14
    new-instance v0, Lh5/a;

    .line 15
    .line 16
    invoke-direct {v0}, Lh5/a;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->c:Lh5/a;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->d:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    iget-object v1, p1, Lv7/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 26
    .line 27
    .line 28
    sget-object v1, Lb8/e;->a:Lb8/e;

    .line 29
    .line 30
    iget-object v0, v0, Lh5/a;->a:Lh5/q;

    .line 31
    .line 32
    invoke-virtual {p1, p2, v1, v0}, Lv7/j;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lh5/q;)Lh5/z;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object p2, Lx5/a;->a:Lx5/a;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lh5/z;->p(Lh5/f;)Lh5/z;

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(La8/a;)Lh5/z;
    .locals 4
    .param p1    # La8/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance p1, Lr7/a;

    .line 11
    .line 12
    const-string v0, "This detector is already closed!"

    .line 13
    .line 14
    const/16 v1, 0xe

    .line 15
    .line 16
    invoke-direct {p1, v0, v1}, Lr7/a;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lh5/n;->d(Ljava/lang/Exception;)Lh5/z;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-object p1

    .line 25
    :cond_0
    :try_start_1
    iget v0, p1, La8/a;->d:I

    .line 26
    .line 27
    const/16 v1, 0x20

    .line 28
    .line 29
    if-lt v0, v1, :cond_1

    .line 30
    .line 31
    iget v0, p1, La8/a;->e:I

    .line 32
    .line 33
    if-lt v0, v1, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->b:Lv7/f;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->d:Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    new-instance v2, Lc5/y3;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-direct {v2, v3, p0, p1}, Lc5/y3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->c:Lh5/a;

    .line 46
    .line 47
    iget-object p1, p1, Lh5/a;->a:Lh5/q;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, p1}, Lv7/j;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lh5/q;)Lh5/z;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit p0

    .line 54
    return-object p1

    .line 55
    :cond_1
    :try_start_2
    new-instance p1, Lr7/a;

    .line 56
    .line 57
    const-string v0, "InputImage width and height should be at least 32!"

    .line 58
    .line 59
    const/4 v1, 0x3

    .line 60
    invoke-direct {p1, v0, v1}, Lr7/a;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lh5/n;->d(Ljava/lang/Exception;)Lh5/z;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    monitor-exit p0

    .line 68
    return-object p1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p0

    .line 71
    throw p1
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->c:Lh5/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lh5/a;->a()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->b:Lv7/f;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->d:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    iget-object v3, v0, Lv7/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-lez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-static {v1}, Lr3/r;->l(Z)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lv7/s;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lv7/s;-><init>(Lv7/f;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lv7/j;->a:Lv7/m;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lv7/m;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :cond_1
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0

    .line 49
    throw v0
.end method
