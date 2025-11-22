.class public final Lkotlinx/coroutines/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final g:Lkotlinx/coroutines/internal/u;


# instance fields
.field private volatile synthetic _next:Ljava/lang/Object;

.field private volatile synthetic _state:J

.field public final a:I

.field public final b:Z

.field public final c:I

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "REMOVE_FROZEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/l;->g:Lkotlinx/coroutines/internal/u;

    const-class v0, Lkotlinx/coroutines/internal/l;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/internal/l;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "_state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/l;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/internal/l;->a:I

    iput-boolean p2, p0, Lkotlinx/coroutines/internal/l;->b:Z

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lkotlinx/coroutines/internal/l;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/internal/l;->_next:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkotlinx/coroutines/internal/l;->_state:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const v0, 0x3fffffff    # 1.9999999f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Check failed."

    if-eqz v0, :cond_3

    and-int/2addr p1, p2

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    :cond_0
    iget-wide v2, v6, Lkotlinx/coroutines/internal/l;->_state:J

    .line 5
    .line 6
    const-wide/high16 v0, 0x3000000000000000L    # 1.727233711018889E-77

    .line 7
    .line 8
    and-long/2addr v0, v2

    .line 9
    const-wide/16 v8, 0x0

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    cmp-long v5, v0, v8

    .line 13
    .line 14
    if-eqz v5, :cond_2

    .line 15
    .line 16
    const-wide/high16 v0, 0x2000000000000000L

    .line 17
    .line 18
    and-long/2addr v0, v2

    .line 19
    cmp-long v2, v0, v8

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    :cond_1
    return v4

    .line 25
    :cond_2
    const-wide/32 v0, 0x3fffffff

    .line 26
    .line 27
    .line 28
    and-long/2addr v0, v2

    .line 29
    const/4 v10, 0x0

    .line 30
    shr-long/2addr v0, v10

    .line 31
    long-to-int v1, v0

    .line 32
    const-wide v11, 0xfffffffc0000000L

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    and-long/2addr v11, v2

    .line 38
    const/16 v0, 0x1e

    .line 39
    .line 40
    shr-long/2addr v11, v0

    .line 41
    long-to-int v12, v11

    .line 42
    iget v11, v6, Lkotlinx/coroutines/internal/l;->c:I

    .line 43
    .line 44
    add-int/lit8 v5, v12, 0x2

    .line 45
    .line 46
    and-int/2addr v5, v11

    .line 47
    and-int v13, v1, v11

    .line 48
    .line 49
    if-ne v5, v13, :cond_3

    .line 50
    .line 51
    return v4

    .line 52
    :cond_3
    iget-boolean v5, v6, Lkotlinx/coroutines/internal/l;->b:Z

    .line 53
    .line 54
    const v13, 0x3fffffff    # 1.9999999f

    .line 55
    .line 56
    .line 57
    if-nez v5, :cond_5

    .line 58
    .line 59
    iget-object v5, v6, Lkotlinx/coroutines/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 60
    .line 61
    and-int v14, v12, v11

    .line 62
    .line 63
    invoke-virtual {v5, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-eqz v5, :cond_5

    .line 68
    .line 69
    iget v0, v6, Lkotlinx/coroutines/internal/l;->a:I

    .line 70
    .line 71
    const/16 v2, 0x400

    .line 72
    .line 73
    if-lt v0, v2, :cond_4

    .line 74
    .line 75
    sub-int/2addr v12, v1

    .line 76
    and-int v1, v12, v13

    .line 77
    .line 78
    shr-int/lit8 v0, v0, 0x1

    .line 79
    .line 80
    if-le v1, v0, :cond_0

    .line 81
    .line 82
    :cond_4
    return v4

    .line 83
    :cond_5
    add-int/lit8 v1, v12, 0x1

    .line 84
    .line 85
    and-int/2addr v1, v13

    .line 86
    sget-object v4, Lkotlinx/coroutines/internal/l;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 87
    .line 88
    const-wide v13, -0xfffffffc0000001L    # -3.1050369248997324E231

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    and-long/2addr v13, v2

    .line 94
    int-to-long v8, v1

    .line 95
    shl-long v0, v8, v0

    .line 96
    .line 97
    or-long v8, v13, v0

    .line 98
    .line 99
    move-object v0, v4

    .line 100
    move-object v1, p0

    .line 101
    move-wide v4, v8

    .line 102
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    .line 108
    iget-object v0, v6, Lkotlinx/coroutines/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 109
    .line 110
    and-int v1, v12, v11

    .line 111
    .line 112
    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    move-object v0, v6

    .line 116
    :cond_6
    iget-wide v1, v0, Lkotlinx/coroutines/internal/l;->_state:J

    .line 117
    .line 118
    const-wide/high16 v3, 0x1000000000000000L

    .line 119
    .line 120
    and-long/2addr v1, v3

    .line 121
    const-wide/16 v3, 0x0

    .line 122
    .line 123
    cmp-long v5, v1, v3

    .line 124
    .line 125
    if-nez v5, :cond_7

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_7
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/l;->e()Lkotlinx/coroutines/internal/l;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v1, v0, Lkotlinx/coroutines/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 133
    .line 134
    iget v2, v0, Lkotlinx/coroutines/internal/l;->c:I

    .line 135
    .line 136
    and-int/2addr v2, v12

    .line 137
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    instance-of v8, v5, Lkotlinx/coroutines/internal/l$a;

    .line 142
    .line 143
    if-eqz v8, :cond_8

    .line 144
    .line 145
    check-cast v5, Lkotlinx/coroutines/internal/l$a;

    .line 146
    .line 147
    iget v5, v5, Lkotlinx/coroutines/internal/l$a;->a:I

    .line 148
    .line 149
    if-ne v5, v12, :cond_8

    .line 150
    .line 151
    invoke-virtual {v1, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_8
    const/4 v0, 0x0

    .line 156
    :goto_0
    if-nez v0, :cond_6

    .line 157
    .line 158
    :goto_1
    return v10
.end method

.method public final b()Z
    .locals 10

    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/l;->_state:J

    const-wide/high16 v0, 0x2000000000000000L

    and-long v4, v2, v0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_1

    return v6

    :cond_1
    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v2

    cmp-long v9, v4, v7

    if-eqz v9, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    or-long v4, v2, v0

    sget-object v0, Lkotlinx/coroutines/internal/l;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final c()I
    .locals 6

    iget-wide v0, p0, Lkotlinx/coroutines/internal/l;->_state:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 v4, 0x0

    shr-long/2addr v2, v4

    long-to-int v3, v2

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v0, v4

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v1, v0

    sub-int/2addr v1, v3

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method public final d()Z
    .locals 7

    iget-wide v0, p0, Lkotlinx/coroutines/internal/l;->_state:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 v4, 0x0

    shr-long/2addr v2, v4

    long-to-int v3, v2

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v0, v5

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v1, v0

    if-ne v3, v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public final e()Lkotlinx/coroutines/internal/l;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/l<",
            "TE;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/l;->_state:J

    .line 2
    .line 3
    const-wide/high16 v0, 0x1000000000000000L

    .line 4
    .line 5
    and-long v4, v2, v0

    .line 6
    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    cmp-long v8, v4, v6

    .line 10
    .line 11
    if-eqz v8, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    or-long v6, v2, v0

    .line 15
    .line 16
    sget-object v0, Lkotlinx/coroutines/internal/l;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 17
    .line 18
    move-object v1, p0

    .line 19
    move-wide v4, v6

    .line 20
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move-wide v2, v6

    .line 27
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->_next:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lkotlinx/coroutines/internal/l;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_2
    sget-object v0, Lkotlinx/coroutines/internal/l;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 35
    .line 36
    new-instance v1, Lkotlinx/coroutines/internal/l;

    .line 37
    .line 38
    iget v4, p0, Lkotlinx/coroutines/internal/l;->a:I

    .line 39
    .line 40
    mul-int/lit8 v4, v4, 0x2

    .line 41
    .line 42
    iget-boolean v5, p0, Lkotlinx/coroutines/internal/l;->b:Z

    .line 43
    .line 44
    invoke-direct {v1, v4, v5}, Lkotlinx/coroutines/internal/l;-><init>(IZ)V

    .line 45
    .line 46
    .line 47
    const-wide/32 v4, 0x3fffffff

    .line 48
    .line 49
    .line 50
    and-long/2addr v4, v2

    .line 51
    const/4 v6, 0x0

    .line 52
    shr-long/2addr v4, v6

    .line 53
    long-to-int v5, v4

    .line 54
    const-wide v6, 0xfffffffc0000000L

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    and-long/2addr v6, v2

    .line 60
    const/16 v4, 0x1e

    .line 61
    .line 62
    shr-long/2addr v6, v4

    .line 63
    long-to-int v4, v6

    .line 64
    :goto_1
    iget v6, p0, Lkotlinx/coroutines/internal/l;->c:I

    .line 65
    .line 66
    and-int v7, v5, v6

    .line 67
    .line 68
    and-int/2addr v6, v4

    .line 69
    if-eq v7, v6, :cond_4

    .line 70
    .line 71
    iget-object v6, p0, Lkotlinx/coroutines/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 72
    .line 73
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-nez v6, :cond_3

    .line 78
    .line 79
    new-instance v6, Lkotlinx/coroutines/internal/l$a;

    .line 80
    .line 81
    invoke-direct {v6, v5}, Lkotlinx/coroutines/internal/l$a;-><init>(I)V

    .line 82
    .line 83
    .line 84
    :cond_3
    iget-object v7, v1, Lkotlinx/coroutines/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 85
    .line 86
    iget v8, v1, Lkotlinx/coroutines/internal/l;->c:I

    .line 87
    .line 88
    and-int/2addr v8, v5

    .line 89
    invoke-virtual {v7, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const-wide v4, -0x1000000000000001L    # -3.1050361846014175E231

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    and-long/2addr v4, v2

    .line 101
    iput-wide v4, v1, Lkotlinx/coroutines/internal/l;->_state:J

    .line 102
    .line 103
    :cond_5
    const/4 v4, 0x0

    .line 104
    invoke-virtual {v0, p0, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_6

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    if-eqz v4, :cond_5

    .line 116
    .line 117
    goto :goto_0
.end method

.method public final f()Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    :cond_0
    :goto_0
    iget-wide v2, v6, Lkotlinx/coroutines/internal/l;->_state:J

    .line 4
    .line 5
    const-wide/high16 v7, 0x1000000000000000L

    .line 6
    .line 7
    and-long v0, v2, v7

    .line 8
    .line 9
    const-wide/16 v9, 0x0

    .line 10
    .line 11
    cmp-long v4, v0, v9

    .line 12
    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    sget-object v0, Lkotlinx/coroutines/internal/l;->g:Lkotlinx/coroutines/internal/u;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    const-wide/32 v11, 0x3fffffff

    .line 19
    .line 20
    .line 21
    and-long v0, v2, v11

    .line 22
    .line 23
    const/4 v13, 0x0

    .line 24
    shr-long/2addr v0, v13

    .line 25
    long-to-int v14, v0

    .line 26
    const-wide v0, 0xfffffffc0000000L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v0, v2

    .line 32
    const/16 v4, 0x1e

    .line 33
    .line 34
    shr-long/2addr v0, v4

    .line 35
    long-to-int v1, v0

    .line 36
    iget v0, v6, Lkotlinx/coroutines/internal/l;->c:I

    .line 37
    .line 38
    and-int/2addr v1, v0

    .line 39
    and-int/2addr v0, v14

    .line 40
    const/4 v15, 0x0

    .line 41
    if-ne v1, v0, :cond_2

    .line 42
    .line 43
    return-object v15

    .line 44
    :cond_2
    iget-object v1, v6, Lkotlinx/coroutines/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-nez v4, :cond_3

    .line 51
    .line 52
    iget-boolean v0, v6, Lkotlinx/coroutines/internal/l;->b:Z

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    return-object v15

    .line 57
    :cond_3
    instance-of v0, v4, Lkotlinx/coroutines/internal/l$a;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    return-object v15

    .line 62
    :cond_4
    add-int/lit8 v0, v14, 0x1

    .line 63
    .line 64
    const v1, 0x3fffffff    # 1.9999999f

    .line 65
    .line 66
    .line 67
    and-int/2addr v0, v1

    .line 68
    sget-object v1, Lkotlinx/coroutines/internal/l;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 69
    .line 70
    const-wide/32 v16, -0x40000000

    .line 71
    .line 72
    .line 73
    and-long v18, v2, v16

    .line 74
    .line 75
    int-to-long v9, v0

    .line 76
    shl-long/2addr v9, v13

    .line 77
    or-long v18, v18, v9

    .line 78
    .line 79
    move-object v0, v1

    .line 80
    move-object/from16 v1, p0

    .line 81
    .line 82
    move-object/from16 v22, v4

    .line 83
    .line 84
    move-wide/from16 v4, v18

    .line 85
    .line 86
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    iget-object v0, v6, Lkotlinx/coroutines/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 93
    .line 94
    iget v1, v6, Lkotlinx/coroutines/internal/l;->c:I

    .line 95
    .line 96
    and-int/2addr v1, v14

    .line 97
    invoke-virtual {v0, v1, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-object v22

    .line 101
    :cond_5
    iget-boolean v0, v6, Lkotlinx/coroutines/internal/l;->b:Z

    .line 102
    .line 103
    if-nez v0, :cond_6

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    move-object v0, v6

    .line 107
    :cond_7
    iget-wide v1, v0, Lkotlinx/coroutines/internal/l;->_state:J

    .line 108
    .line 109
    and-long v3, v1, v11

    .line 110
    .line 111
    shr-long/2addr v3, v13

    .line 112
    long-to-int v4, v3

    .line 113
    and-long v18, v1, v7

    .line 114
    .line 115
    const-wide/16 v20, 0x0

    .line 116
    .line 117
    cmp-long v3, v18, v20

    .line 118
    .line 119
    if-eqz v3, :cond_8

    .line 120
    .line 121
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/l;->e()Lkotlinx/coroutines/internal/l;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    goto :goto_1

    .line 126
    :cond_8
    sget-object v23, Lkotlinx/coroutines/internal/l;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 127
    .line 128
    and-long v18, v1, v16

    .line 129
    .line 130
    or-long v27, v18, v9

    .line 131
    .line 132
    move-object/from16 v24, v0

    .line 133
    .line 134
    move-wide/from16 v25, v1

    .line 135
    .line 136
    invoke-virtual/range {v23 .. v28}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_7

    .line 141
    .line 142
    iget-object v1, v0, Lkotlinx/coroutines/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 143
    .line 144
    iget v0, v0, Lkotlinx/coroutines/internal/l;->c:I

    .line 145
    .line 146
    and-int/2addr v0, v4

    .line 147
    invoke-virtual {v1, v0, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    move-object v0, v15

    .line 151
    :goto_1
    if-nez v0, :cond_7

    .line 152
    .line 153
    return-object v22
.end method
