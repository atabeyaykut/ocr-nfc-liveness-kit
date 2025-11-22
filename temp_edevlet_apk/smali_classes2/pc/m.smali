.class public final Lpc/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpc/m$b;,
        Lpc/m$a;,
        Lpc/m$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lpc/e<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final d:Lpc/m$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:Lkotlinx/coroutines/internal/u;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final f:Lpc/m$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc/m$b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private volatile synthetic _state:Ljava/lang/Object;

.field private volatile synthetic _updating:I

.field private volatile synthetic onCloseHandler:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lpc/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpc/m$a;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lpc/m;->d:Lpc/m$a;

    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v2, "UNDEFINED"

    invoke-direct {v0, v2}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpc/m;->e:Lkotlinx/coroutines/internal/u;

    new-instance v2, Lpc/m$b;

    invoke-direct {v2, v0, v1}, Lpc/m$b;-><init>(Ljava/lang/Object;[Lpc/m$c;)V

    sput-object v2, Lpc/m;->f:Lpc/m$b;

    const-string v0, "_state"

    const-class v1, Lpc/m;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lpc/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_updating"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lpc/m;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "onCloseHandler"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lpc/m;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lpc/m;->f:Lpc/m$b;

    iput-object v0, p0, Lpc/m;->_state:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lpc/m;->_updating:I

    const/4 v0, 0x0

    iput-object v0, p0, Lpc/m;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lpc/m;Lpc/m$c;)V
    .locals 13

    .line 1
    :cond_0
    iget-object v0, p0, Lpc/m;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lpc/m$a;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_1
    instance-of v1, v0, Lpc/m$b;

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    new-instance v1, Lpc/m$b;

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Lpc/m$b;

    .line 16
    .line 17
    iget-object v3, v2, Lpc/m$b;->a:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v2, v2, Lpc/m$b;->b:[Lpc/m$c;

    .line 20
    .line 21
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    array-length v4, v2

    .line 25
    invoke-static {v2, p1}, Lm9/k;->t0([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    const/4 v11, 0x1

    .line 30
    if-ne v4, v11, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 35
    .line 36
    new-array v12, v4, [Lpc/m$c;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v9, 0x6

    .line 41
    move-object v4, v2

    .line 42
    move-object v5, v12

    .line 43
    move v8, v10

    .line 44
    invoke-static/range {v4 .. v9}, Lm9/i;->j0([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v7, v10, 0x1

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    const/16 v9, 0x8

    .line 51
    .line 52
    move v6, v10

    .line 53
    invoke-static/range {v4 .. v9}, Lm9/i;->j0([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    .line 54
    .line 55
    .line 56
    move-object v2, v12

    .line 57
    :goto_0
    invoke-direct {v1, v3, v2}, Lpc/m$b;-><init>(Ljava/lang/Object;[Lpc/m$c;)V

    .line 58
    .line 59
    .line 60
    sget-object v2, Lpc/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 61
    .line 62
    :cond_3
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eq v3, v0, :cond_3

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    :goto_1
    if-eqz v11, :cond_0

    .line 77
    .line 78
    :goto_2
    return-void

    .line 79
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string p1, "Invalid state "

    .line 82
    .line 83
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Ljava/lang/Object;)Lpc/m$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lpc/m$a;"
        }
    .end annotation

    sget-object v0, Lpc/m;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lpc/m;->_state:Ljava/lang/Object;

    instance-of v4, v0, Lpc/m$a;

    if-eqz v4, :cond_1

    check-cast v0, Lpc/m$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, p0, Lpc/m;->_updating:I

    return-object v0

    :cond_1
    :try_start_1
    instance-of v4, v0, Lpc/m$b;

    if-eqz v4, :cond_6

    new-instance v4, Lpc/m$b;

    move-object v5, v0

    check-cast v5, Lpc/m$b;

    iget-object v5, v5, Lpc/m$b;->b:[Lpc/m$c;

    invoke-direct {v4, p1, v5}, Lpc/m$b;-><init>(Ljava/lang/Object;[Lpc/m$c;)V

    sget-object v5, Lpc/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v5, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v0, :cond_2

    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    check-cast v0, Lpc/m$b;

    iget-object v0, v0, Lpc/m$b;->b:[Lpc/m$c;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    array-length v2, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, p1}, Lpc/m$c;->n(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    :goto_2
    iput v1, p0, Lpc/m;->_updating:I

    return-object v3

    :cond_6
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid state "

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    iput v1, p0, Lpc/m;->_updating:I

    throw p1
.end method

.method public final p(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lpc/m;->b(Ljava/lang/Object;)Lpc/m$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object p1, p1, Lpc/m$a;->a:Ljava/lang/Throwable;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    new-instance p1, Lma/w;

    .line 15
    .line 16
    const-string p2, "Channel was closed"

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-direct {p1, p2, v0}, Lma/w;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    throw p1
.end method

.method public final s(Ljava/lang/Throwable;)Z
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p0, Lpc/m;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lpc/m$a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    return v2

    .line 9
    :cond_1
    instance-of v1, v0, Lpc/m$b;

    .line 10
    .line 11
    if-eqz v1, :cond_a

    .line 12
    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    sget-object v1, Lpc/m;->d:Lpc/m$a;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    new-instance v1, Lpc/m$a;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lpc/m$a;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    sget-object v3, Lpc/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    if-eqz v4, :cond_4

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_4
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-eq v4, v0, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_1
    if-eqz v1, :cond_0

    .line 42
    .line 43
    check-cast v0, Lpc/m$b;

    .line 44
    .line 45
    iget-object v0, v0, Lpc/m$b;->b:[Lpc/m$c;

    .line 46
    .line 47
    if-nez v0, :cond_5

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_5
    array-length v1, v0

    .line 51
    const/4 v3, 0x0

    .line 52
    :goto_2
    if-ge v3, v1, :cond_6

    .line 53
    .line 54
    aget-object v4, v0, v3

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    invoke-virtual {v4, p1}, Lpc/b;->s(Ljava/lang/Throwable;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_6
    :goto_3
    iget-object v0, p0, Lpc/m;->onCloseHandler:Ljava/lang/Object;

    .line 63
    .line 64
    if-eqz v0, :cond_9

    .line 65
    .line 66
    sget-object v1, Lc5/y;->p:Lkotlinx/coroutines/internal/u;

    .line 67
    .line 68
    if-eq v0, v1, :cond_9

    .line 69
    .line 70
    sget-object v3, Lpc/m;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 71
    .line 72
    :cond_7
    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_8

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    goto :goto_4

    .line 80
    :cond_8
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-eq v4, v0, :cond_7

    .line 85
    .line 86
    :goto_4
    if-eqz v2, :cond_9

    .line 87
    .line 88
    invoke-static {v5, v0}, Lkotlin/jvm/internal/z;->c(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    check-cast v0, Lx9/l;

    .line 92
    .line 93
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_9
    return v5

    .line 97
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string v1, "Invalid state "

    .line 100
    .line 101
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1
.end method

.method public final u()Lpc/m$c;
    .locals 9

    .line 1
    new-instance v0, Lpc/m$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lpc/m$c;-><init>(Lpc/m;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lpc/m;->_state:Ljava/lang/Object;

    .line 7
    .line 8
    instance-of v2, v1, Lpc/m$a;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    check-cast v1, Lpc/m$a;

    .line 13
    .line 14
    iget-object v1, v1, Lpc/m$a;->a:Ljava/lang/Throwable;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lpc/b;->s(Ljava/lang/Throwable;)Z

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    instance-of v2, v1, Lpc/m$b;

    .line 21
    .line 22
    if-eqz v2, :cond_6

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lpc/m$b;

    .line 26
    .line 27
    iget-object v3, v2, Lpc/m$b;->a:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v4, Lpc/m;->e:Lkotlinx/coroutines/internal/u;

    .line 30
    .line 31
    if-eq v3, v4, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lpc/m$c;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_2
    new-instance v3, Lpc/m$b;

    .line 37
    .line 38
    iget-object v4, v2, Lpc/m$b;->a:Ljava/lang/Object;

    .line 39
    .line 40
    iget-object v2, v2, Lpc/m$b;->b:[Lpc/m$c;

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    const/4 v6, 0x0

    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    new-array v2, v5, [Lpc/m$c;

    .line 47
    .line 48
    aput-object v0, v2, v6

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    array-length v7, v2

    .line 52
    add-int/lit8 v8, v7, 0x1

    .line 53
    .line 54
    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    aput-object v0, v2, v7

    .line 59
    .line 60
    check-cast v2, [Lpc/m$c;

    .line 61
    .line 62
    :goto_0
    invoke-direct {v3, v4, v2}, Lpc/m$b;-><init>(Ljava/lang/Object;[Lpc/m$c;)V

    .line 63
    .line 64
    .line 65
    sget-object v2, Lpc/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 66
    .line 67
    :cond_4
    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-eq v4, v1, :cond_4

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    :goto_1
    if-eqz v5, :cond_0

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string v2, "Invalid state "

    .line 87
    .line 88
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0
.end method
