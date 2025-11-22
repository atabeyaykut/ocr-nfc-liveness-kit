.class public final Lpc/d;
.super Lpc/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpc/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:Lpc/f;

.field public final f:Ljava/util/concurrent/locks/ReentrantLock;

.field public g:[Ljava/lang/Object;

.field public h:I

.field private volatile synthetic size:I


# direct methods
.method public constructor <init>(ILpc/f;Lx9/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lpc/f;",
            "Lx9/l<",
            "-TE;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lpc/a;-><init>(Lx9/l;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lpc/d;->d:I

    .line 5
    .line 6
    iput-object p2, p0, Lpc/d;->e:Lpc/f;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 p3, 0x1

    .line 10
    if-lt p1, p3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p3, 0x0

    .line 14
    :goto_0
    if-eqz p3, :cond_1

    .line 15
    .line 16
    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    .line 18
    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p3, p0, Lpc/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    .line 23
    const/16 p3, 0x8

    .line 24
    .line 25
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-array p1, p1, [Ljava/lang/Object;

    .line 30
    .line 31
    sget-object p3, Lc5/y;->j:Lkotlinx/coroutines/internal/u;

    .line 32
    .line 33
    invoke-static {p1, p3}, Lm9/i;->m0([Ljava/lang/Object;Lkotlinx/coroutines/internal/u;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lpc/d;->g:[Ljava/lang/Object;

    .line 37
    .line 38
    iput p2, p0, Lpc/d;->size:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string p2, "ArrayChannel capacity must be at least 1, but "

    .line 42
    .line 43
    const-string p3, " was specified"

    .line 44
    .line 45
    invoke-static {p2, p1, p3}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p2
.end method


# virtual methods
.method public final B()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lpc/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Lpc/d;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lc5/y;->m:Lkotlinx/coroutines/internal/u;

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lpc/b;->f()Lpc/k;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_1
    :try_start_2
    iget-object v3, p0, Lpc/d;->g:[Ljava/lang/Object;

    iget v4, p0, Lpc/d;->h:I

    aget-object v5, v3, v4

    const/4 v6, 0x0

    aput-object v6, v3, v4

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lpc/d;->size:I

    iget v3, p0, Lpc/d;->d:I

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-ne v1, v3, :cond_4

    move-object v3, v6

    :goto_1
    invoke-virtual {p0}, Lpc/b;->q()Lpc/x;

    move-result-object v8

    if-nez v8, :cond_2

    move-object v6, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v6}, Lpc/x;->M(Lkotlinx/coroutines/internal/j$c;)Lkotlinx/coroutines/internal/u;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v8}, Lpc/x;->K()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v8

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Lpc/x;->N()V

    move-object v3, v8

    goto :goto_1

    :cond_4
    :goto_2
    move-object v3, v2

    :goto_3
    if-eq v3, v2, :cond_5

    instance-of v2, v3, Lpc/k;

    if-nez v2, :cond_5

    iput v1, p0, Lpc/d;->size:I

    iget-object v2, p0, Lpc/d;->g:[Ljava/lang/Object;

    iget v8, p0, Lpc/d;->h:I

    add-int/2addr v8, v1

    array-length v1, v2

    rem-int/2addr v8, v1

    aput-object v3, v2, v8

    :cond_5
    iget v1, p0, Lpc/d;->h:I

    add-int/2addr v1, v4

    iget-object v2, p0, Lpc/d;->g:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lpc/d;->h:I

    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v7, :cond_6

    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lpc/x;->J()V

    :cond_6
    return-object v5

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final D(Lkotlinx/coroutines/selects/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/c<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpc/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget v1, p0, Lpc/d;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    sget-object v2, Lc5/y;->m:Lkotlinx/coroutines/internal/u;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :try_start_1
    invoke-virtual {p0}, Lpc/b;->f()Lpc/k;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, p1

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    .line 22
    .line 23
    return-object v2

    .line 24
    :cond_1
    :try_start_2
    iget-object v3, p0, Lpc/d;->g:[Ljava/lang/Object;

    .line 25
    .line 26
    iget v4, p0, Lpc/d;->h:I

    .line 27
    .line 28
    aget-object v5, v3, v4

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    aput-object v6, v3, v4

    .line 32
    .line 33
    add-int/lit8 v3, v1, -0x1

    .line 34
    .line 35
    iput v3, p0, Lpc/d;->size:I

    .line 36
    .line 37
    iget v3, p0, Lpc/d;->d:I

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    if-ne v1, v3, :cond_7

    .line 41
    .line 42
    :goto_1
    new-instance v3, Lpc/a$g;

    .line 43
    .line 44
    iget-object v7, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    .line 45
    .line 46
    invoke-direct {v3, v7}, Lpc/a$g;-><init>(Lkotlinx/coroutines/internal/i;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v3}, Lkotlinx/coroutines/selects/c;->e(Lpc/a$g;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    if-nez v7, :cond_2

    .line 54
    .line 55
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/j$d;->m()Lkotlinx/coroutines/internal/j;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    move-object v6, v3

    .line 60
    check-cast v6, Lpc/x;

    .line 61
    .line 62
    invoke-virtual {v6}, Lpc/x;->K()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    move-object v6, v3

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    if-ne v7, v2, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    sget-object v3, Lb8/f;->e:Lkotlinx/coroutines/internal/u;

    .line 72
    .line 73
    if-ne v7, v3, :cond_4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    sget-object v3, Lkotlinx/coroutines/selects/d;->b:Lkotlinx/coroutines/internal/u;

    .line 77
    .line 78
    if-ne v7, v3, :cond_5

    .line 79
    .line 80
    iput v1, p0, Lpc/d;->size:I

    .line 81
    .line 82
    iget-object p1, p0, Lpc/d;->g:[Ljava/lang/Object;

    .line 83
    .line 84
    iget v1, p0, Lpc/d;->h:I

    .line 85
    .line 86
    aput-object v5, p1, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    .line 90
    .line 91
    return-object v7

    .line 92
    :cond_5
    :try_start_3
    instance-of v3, v7, Lpc/k;

    .line 93
    .line 94
    if-eqz v3, :cond_6

    .line 95
    .line 96
    move-object v6, v7

    .line 97
    :goto_2
    const/4 v3, 0x1

    .line 98
    goto :goto_4

    .line 99
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    const-string v1, "performAtomicTrySelect(describeTryOffer) returned "

    .line 102
    .line 103
    invoke-static {v7, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_7
    :goto_3
    const/4 v3, 0x0

    .line 116
    move-object v7, v2

    .line 117
    :goto_4
    if-eq v7, v2, :cond_8

    .line 118
    .line 119
    instance-of v2, v7, Lpc/k;

    .line 120
    .line 121
    if-nez v2, :cond_8

    .line 122
    .line 123
    iput v1, p0, Lpc/d;->size:I

    .line 124
    .line 125
    iget-object p1, p0, Lpc/d;->g:[Ljava/lang/Object;

    .line 126
    .line 127
    iget v2, p0, Lpc/d;->h:I

    .line 128
    .line 129
    add-int/2addr v2, v1

    .line 130
    array-length v1, p1

    .line 131
    rem-int/2addr v2, v1

    .line 132
    aput-object v7, p1, v2

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_8
    invoke-interface {p1}, Lkotlinx/coroutines/selects/c;->n()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_9

    .line 140
    .line 141
    iput v1, p0, Lpc/d;->size:I

    .line 142
    .line 143
    iget-object p1, p0, Lpc/d;->g:[Ljava/lang/Object;

    .line 144
    .line 145
    iget v1, p0, Lpc/d;->h:I

    .line 146
    .line 147
    aput-object v5, p1, v1

    .line 148
    .line 149
    sget-object p1, Lkotlinx/coroutines/selects/d;->b:Lkotlinx/coroutines/internal/u;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 152
    .line 153
    .line 154
    return-object p1

    .line 155
    :cond_9
    :goto_5
    :try_start_4
    iget p1, p0, Lpc/d;->h:I

    .line 156
    .line 157
    add-int/2addr p1, v4

    .line 158
    iget-object v1, p0, Lpc/d;->g:[Ljava/lang/Object;

    .line 159
    .line 160
    array-length v1, v1

    .line 161
    rem-int/2addr p1, v1

    .line 162
    iput p1, p0, Lpc/d;->h:I

    .line 163
    .line 164
    sget-object p1, Ll9/m;->a:Ll9/m;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 167
    .line 168
    .line 169
    if-eqz v3, :cond_a

    .line 170
    .line 171
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    check-cast v6, Lpc/x;

    .line 175
    .line 176
    invoke-virtual {v6}, Lpc/x;->J()V

    .line 177
    .line 178
    .line 179
    :cond_a
    return-object v5

    .line 180
    :catchall_0
    move-exception p1

    .line 181
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 182
    .line 183
    .line 184
    throw p1
.end method

.method public final E(ILjava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lpc/d;->d:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lpc/d;->g:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-lt p1, v2, :cond_1

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    mul-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-array v1, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, p1, :cond_0

    .line 22
    .line 23
    add-int/lit8 v4, v3, 0x1

    .line 24
    .line 25
    iget-object v5, p0, Lpc/d;->g:[Ljava/lang/Object;

    .line 26
    .line 27
    iget v6, p0, Lpc/d;->h:I

    .line 28
    .line 29
    add-int/2addr v6, v3

    .line 30
    array-length v7, v5

    .line 31
    rem-int/2addr v6, v7

    .line 32
    aget-object v5, v5, v6

    .line 33
    .line 34
    aput-object v5, v1, v3

    .line 35
    .line 36
    move v3, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object v3, Lc5/y;->j:Lkotlinx/coroutines/internal/u;

    .line 39
    .line 40
    invoke-static {v1, p1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lpc/d;->g:[Ljava/lang/Object;

    .line 44
    .line 45
    iput v2, p0, Lpc/d;->h:I

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lpc/d;->g:[Ljava/lang/Object;

    .line 48
    .line 49
    iget v1, p0, Lpc/d;->h:I

    .line 50
    .line 51
    add-int/2addr v1, p1

    .line 52
    array-length p1, v0

    .line 53
    rem-int/2addr v1, p1

    .line 54
    aput-object p2, v0, v1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object v0, p0, Lpc/d;->g:[Ljava/lang/Object;

    .line 58
    .line 59
    iget v1, p0, Lpc/d;->h:I

    .line 60
    .line 61
    array-length v2, v0

    .line 62
    rem-int v2, v1, v2

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    aput-object v3, v0, v2

    .line 66
    .line 67
    add-int/2addr p1, v1

    .line 68
    array-length v2, v0

    .line 69
    rem-int/2addr p1, v2

    .line 70
    aput-object p2, v0, p1

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    array-length p1, v0

    .line 75
    rem-int/2addr v1, p1

    .line 76
    iput v1, p0, Lpc/d;->h:I

    .line 77
    .line 78
    :goto_1
    return-void
.end method

.method public final d(Lpc/z;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpc/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Lpc/b;->d(Lpc/z;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "(buffer:capacity="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lpc/d;->d:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",size="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lpc/d;->size:I

    .line 19
    .line 20
    const/16 v2, 0x29

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/a;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lpc/d;->size:I

    iget v1, p0, Lpc/d;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lpc/d;->e:Lpc/f;

    sget-object v1, Lpc/f;->a:Lpc/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpc/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget v1, p0, Lpc/d;->size:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lpc/b;->f()Lpc/k;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_9

    .line 13
    .line 14
    iget v2, p0, Lpc/d;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    sget-object v3, Lc5/y;->k:Lkotlinx/coroutines/internal/u;

    .line 17
    .line 18
    if-ge v1, v2, :cond_0

    .line 19
    .line 20
    add-int/lit8 v2, v1, 0x1

    .line 21
    .line 22
    :try_start_1
    iput v2, p0, Lpc/d;->size:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v2, p0, Lpc/d;->e:Lpc/f;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-eq v2, v4, :cond_2

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    move-object v2, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    new-instance p1, Lj7/p;

    .line 42
    .line 43
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    sget-object v2, Lc5/y;->l:Lkotlinx/coroutines/internal/u;

    .line 50
    .line 51
    :goto_1
    if-nez v2, :cond_8

    .line 52
    .line 53
    if-nez v1, :cond_7

    .line 54
    .line 55
    :cond_4
    invoke-virtual {p0}, Lpc/a;->o()Lpc/v;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-nez v2, :cond_5

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    instance-of v4, v2, Lpc/k;

    .line 63
    .line 64
    if-eqz v4, :cond_6

    .line 65
    .line 66
    iput v1, p0, Lpc/d;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :cond_6
    :try_start_2
    invoke-interface {v2, p1}, Lpc/v;->c(Ljava/lang/Object;)Lkotlinx/coroutines/internal/u;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    iput v1, p0, Lpc/d;->size:I

    .line 79
    .line 80
    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    .line 84
    .line 85
    invoke-interface {v2, p1}, Lpc/v;->s(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v2}, Lpc/v;->k()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :cond_7
    :goto_2
    :try_start_3
    invoke-virtual {p0, v1, p1}, Lpc/d;->E(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 97
    .line 98
    .line 99
    return-object v3

    .line 100
    :cond_8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 101
    .line 102
    .line 103
    return-object v2

    .line 104
    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 110
    .line 111
    .line 112
    throw p1
.end method

.method public final t(Lpc/s;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/s<",
            "-TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpc/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Lpc/a;->t(Lpc/s;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 1

    iget v0, p0, Lpc/d;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x()Z
    .locals 2

    iget-object v0, p0, Lpc/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-super {p0}, Lpc/a;->x()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final y(Z)V
    .locals 9

    iget-object v0, p0, Lpc/b;->a:Lx9/l;

    iget-object v1, p0, Lpc/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v2, p0, Lpc/d;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lpc/d;->g:[Ljava/lang/Object;

    iget v7, p0, Lpc/d;->h:I

    aget-object v6, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v7, Lc5/y;->j:Lkotlinx/coroutines/internal/u;

    if-eqz v0, :cond_0

    if-eq v6, v7, :cond_0

    :try_start_1
    invoke-static {v0, v6, v4}, Lc5/y;->e(Lx9/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/a0;)Lkotlinx/coroutines/internal/a0;

    move-result-object v4

    :cond_0
    iget-object v6, p0, Lpc/d;->g:[Ljava/lang/Object;

    iget v8, p0, Lpc/d;->h:I

    aput-object v7, v6, v8

    add-int/lit8 v8, v8, 0x1

    array-length v6, v6

    rem-int/2addr v8, v6

    iput v8, p0, Lpc/d;->h:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lpc/d;->size:I

    sget-object v0, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-super {p0, p1}, Lpc/a;->y(Z)V

    if-nez v4, :cond_2

    return-void

    :cond_2
    throw v4

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
