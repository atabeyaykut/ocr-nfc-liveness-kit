.class public Lkotlinx/coroutines/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lkotlinx/coroutines/internal/y;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile synthetic _size:I

.field public a:[Lkotlinx/coroutines/internal/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/internal/x;->_size:I

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lnc/o0$c;

    .line 3
    .line 4
    invoke-interface {p1, v0}, Lkotlinx/coroutines/internal/y;->n(Lnc/o0$c;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [Lkotlinx/coroutines/internal/y;

    .line 13
    .line 14
    iput-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget v1, p0, Lkotlinx/coroutines/internal/x;->_size:I

    .line 18
    .line 19
    array-length v2, v0

    .line 20
    if-lt v1, v2, :cond_1

    .line 21
    .line 22
    iget v1, p0, Lkotlinx/coroutines/internal/x;->_size:I

    .line 23
    .line 24
    mul-int/lit8 v1, v1, 0x2

    .line 25
    .line 26
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "copyOf(this, newSize)"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast v0, [Lkotlinx/coroutines/internal/y;

    .line 36
    .line 37
    iput-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    .line 38
    .line 39
    :cond_1
    :goto_0
    iget v1, p0, Lkotlinx/coroutines/internal/x;->_size:I

    .line 40
    .line 41
    add-int/lit8 v2, v1, 0x1

    .line 42
    .line 43
    iput v2, p0, Lkotlinx/coroutines/internal/x;->_size:I

    .line 44
    .line 45
    aput-object p1, v0, v1

    .line 46
    .line 47
    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/y;->setIndex(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/internal/x;->g(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/internal/x;->_size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Lkotlinx/coroutines/internal/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    :goto_0
    monitor-exit p0

    .line 12
    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method

.method public final d(Lkotlinx/coroutines/internal/y;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lkotlinx/coroutines/internal/y;->q()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/internal/y;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/x;->e(I)Lkotlinx/coroutines/internal/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(I)Lkotlinx/coroutines/internal/y;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lkotlinx/coroutines/internal/x;->_size:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    add-int/2addr v1, v2

    .line 10
    iput v1, p0, Lkotlinx/coroutines/internal/x;->_size:I

    .line 11
    .line 12
    iget v1, p0, Lkotlinx/coroutines/internal/x;->_size:I

    .line 13
    .line 14
    if-ge p1, v1, :cond_4

    .line 15
    .line 16
    iget v1, p0, Lkotlinx/coroutines/internal/x;->_size:I

    .line 17
    .line 18
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/x;->h(II)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, p1, -0x1

    .line 22
    .line 23
    div-int/lit8 v1, v1, 0x2

    .line 24
    .line 25
    if-lez p1, :cond_0

    .line 26
    .line 27
    aget-object v3, v0, p1

    .line 28
    .line 29
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    check-cast v3, Ljava/lang/Comparable;

    .line 33
    .line 34
    aget-object v4, v0, v1

    .line 35
    .line 36
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-gez v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/x;->h(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/internal/x;->g(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    mul-int/lit8 v1, p1, 0x2

    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    iget v3, p0, Lkotlinx/coroutines/internal/x;->_size:I

    .line 57
    .line 58
    if-lt v1, v3, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v3, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    .line 62
    .line 63
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v4, v1, 0x1

    .line 67
    .line 68
    iget v5, p0, Lkotlinx/coroutines/internal/x;->_size:I

    .line 69
    .line 70
    if-ge v4, v5, :cond_2

    .line 71
    .line 72
    aget-object v5, v3, v4

    .line 73
    .line 74
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    check-cast v5, Ljava/lang/Comparable;

    .line 78
    .line 79
    aget-object v6, v3, v1

    .line 80
    .line 81
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-gez v5, :cond_2

    .line 89
    .line 90
    move v1, v4

    .line 91
    :cond_2
    aget-object v4, v3, p1

    .line 92
    .line 93
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    check-cast v4, Ljava/lang/Comparable;

    .line 97
    .line 98
    aget-object v3, v3, v1

    .line 99
    .line 100
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-gtz v3, :cond_3

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/x;->h(II)V

    .line 111
    .line 112
    .line 113
    move p1, v1

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    :goto_1
    iget p1, p0, Lkotlinx/coroutines/internal/x;->_size:I

    .line 116
    .line 117
    aget-object p1, v0, p1

    .line 118
    .line 119
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/y;->n(Lnc/o0$c;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, v2}, Lkotlinx/coroutines/internal/y;->setIndex(I)V

    .line 127
    .line 128
    .line 129
    iget v2, p0, Lkotlinx/coroutines/internal/x;->_size:I

    .line 130
    .line 131
    aput-object v1, v0, v2

    .line 132
    .line 133
    return-object p1
.end method

.method public final f()Lkotlinx/coroutines/internal/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lkotlinx/coroutines/internal/x;->_size:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/x;->e(I)Lkotlinx/coroutines/internal/y;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public final g(I)V
    .locals 3

    :goto_0
    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/x;->h(II)V

    move p1, v1

    goto :goto_0
.end method

.method public final h(II)V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    aget-object v1, v0, p2

    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    aget-object v2, v0, p1

    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    aput-object v2, v0, p2

    invoke-interface {v1, p1}, Lkotlinx/coroutines/internal/y;->setIndex(I)V

    invoke-interface {v2, p2}, Lkotlinx/coroutines/internal/y;->setIndex(I)V

    return-void
.end method
