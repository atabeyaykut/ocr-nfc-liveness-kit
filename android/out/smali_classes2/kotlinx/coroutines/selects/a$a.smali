.class public final Lkotlinx/coroutines/selects/a$a;
.super Lkotlinx/coroutines/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lkotlinx/coroutines/selects/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lkotlinx/coroutines/internal/b;

.field public final d:J


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/a;Lpc/a$g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/selects/a$a;->b:Lkotlinx/coroutines/selects/a;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/selects/a$a;->c:Lkotlinx/coroutines/internal/b;

    .line 7
    .line 8
    sget-object p1, Lkotlinx/coroutines/selects/d;->e:Lkotlinx/coroutines/selects/e;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v0, Lkotlinx/coroutines/selects/e;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lkotlinx/coroutines/selects/a$a;->d:J

    .line 20
    .line 21
    iput-object p0, p2, Lkotlinx/coroutines/internal/b;->a:Lkotlinx/coroutines/internal/c;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    sget-object v2, Lkotlinx/coroutines/selects/d;->a:Lkotlinx/coroutines/internal/u;

    .line 13
    .line 14
    :goto_1
    sget-object v3, Lkotlinx/coroutines/selects/a;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    :cond_2
    iget-object v4, p0, Lkotlinx/coroutines/selects/a$a;->b:Lkotlinx/coroutines/selects/a;

    .line 17
    .line 18
    invoke-virtual {v3, v4, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_3

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-eq v5, p0, :cond_2

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :goto_2
    if-eqz p1, :cond_4

    .line 33
    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-virtual {v4}, Lkotlinx/coroutines/selects/a;->J()V

    .line 37
    .line 38
    .line 39
    :cond_4
    iget-object p1, p0, Lkotlinx/coroutines/selects/a$a;->c:Lkotlinx/coroutines/internal/b;

    .line 40
    .line 41
    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/internal/b;->a(Lkotlinx/coroutines/internal/c;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/selects/a$a;->d:J

    return-wide v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    if-nez p1, :cond_7

    .line 2
    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/selects/a$a;->b:Lkotlinx/coroutines/selects/a;

    .line 4
    .line 5
    :cond_0
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/selects/a;->_state:Ljava/lang/Object;

    .line 6
    .line 7
    if-ne v1, p0, :cond_1

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_1
    instance-of v2, v1, Lkotlinx/coroutines/internal/o;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    check-cast v1, Lkotlinx/coroutines/internal/o;

    .line 15
    .line 16
    iget-object v2, p0, Lkotlinx/coroutines/selects/a$a;->b:Lkotlinx/coroutines/selects/a;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    sget-object v2, Lkotlinx/coroutines/selects/d;->a:Lkotlinx/coroutines/internal/u;

    .line 23
    .line 24
    if-ne v1, v2, :cond_5

    .line 25
    .line 26
    iget-object v1, p0, Lkotlinx/coroutines/selects/a$a;->b:Lkotlinx/coroutines/selects/a;

    .line 27
    .line 28
    sget-object v3, Lkotlinx/coroutines/selects/a;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 29
    .line 30
    :cond_3
    invoke-virtual {v3, v1, v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_4

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_4
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eq v4, v2, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    :goto_1
    if-eqz v1, :cond_0

    .line 46
    .line 47
    :goto_2
    const/4 v0, 0x0

    .line 48
    goto :goto_3

    .line 49
    :cond_5
    sget-object v0, Lkotlinx/coroutines/selects/d;->b:Lkotlinx/coroutines/internal/u;

    .line 50
    .line 51
    :goto_3
    if-nez v0, :cond_6

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_6
    return-object v0

    .line 55
    :cond_7
    :goto_4
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/a$a;->c:Lkotlinx/coroutines/internal/b;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/b;->b(Lkotlinx/coroutines/internal/c;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    return-object p1

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    if-nez p1, :cond_8

    .line 64
    .line 65
    sget-object p1, Lkotlinx/coroutines/selects/a;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 66
    .line 67
    sget-object v1, Lkotlinx/coroutines/selects/d;->a:Lkotlinx/coroutines/internal/u;

    .line 68
    .line 69
    :goto_5
    iget-object v2, p0, Lkotlinx/coroutines/selects/a$a;->b:Lkotlinx/coroutines/selects/a;

    .line 70
    .line 71
    invoke-virtual {p1, v2, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_8

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-ne v2, p0, :cond_8

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_8
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AtomicSelectOp(sequence="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lkotlinx/coroutines/selects/a$a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
