.class public abstract Lnc/o0;
.super Lnc/p0;
.source "SourceFile"

# interfaces
.implements Lnc/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnc/o0$b;,
        Lnc/o0$a;,
        Lnc/o0$c;
    }
.end annotation


# static fields
.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;

.field private volatile synthetic _isCompleted:I

.field private volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_queue"

    const-class v1, Lnc/o0;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lnc/o0;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lnc/o0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnc/p0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnc/o0;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lnc/o0;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lnc/o0;->_isCompleted:I

    return-void
.end method


# virtual methods
.method public final F(Ljava/lang/Runnable;)Z
    .locals 6

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lnc/o0;->_queue:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lnc/o0;->_isCompleted:I

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
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    sget-object v3, Lnc/o0;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 13
    .line 14
    :cond_2
    const/4 v0, 0x0

    .line 15
    invoke-virtual {v3, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    :goto_1
    if-eqz v2, :cond_0

    .line 30
    .line 31
    return v1

    .line 32
    :cond_4
    instance-of v3, v0, Lkotlinx/coroutines/internal/l;

    .line 33
    .line 34
    if-eqz v3, :cond_a

    .line 35
    .line 36
    move-object v3, v0

    .line 37
    check-cast v3, Lkotlinx/coroutines/internal/l;

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/l;->a(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_9

    .line 44
    .line 45
    if-eq v4, v1, :cond_6

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    if-eq v4, v0, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    return v2

    .line 52
    :cond_6
    sget-object v2, Lnc/o0;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 53
    .line 54
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/l;->e()Lkotlinx/coroutines/internal/l;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :cond_7
    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_8

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_8
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eq v1, v0, :cond_7

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_9
    return v1

    .line 73
    :cond_a
    sget-object v3, La6/a;->l:Lkotlinx/coroutines/internal/u;

    .line 74
    .line 75
    if-ne v0, v3, :cond_b

    .line 76
    .line 77
    return v2

    .line 78
    :cond_b
    new-instance v3, Lkotlinx/coroutines/internal/l;

    .line 79
    .line 80
    const/16 v4, 0x8

    .line 81
    .line 82
    invoke-direct {v3, v4, v1}, Lkotlinx/coroutines/internal/l;-><init>(IZ)V

    .line 83
    .line 84
    .line 85
    move-object v4, v0

    .line 86
    check-cast v4, Ljava/lang/Runnable;

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/internal/l;->a(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/l;->a(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    sget-object v4, Lnc/o0;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 95
    .line 96
    :cond_c
    invoke-virtual {v4, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_d

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_d
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    if-eq v5, v0, :cond_c

    .line 109
    .line 110
    :goto_2
    if-eqz v2, :cond_0

    .line 111
    .line 112
    return v1
.end method

.method public final J()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lnc/n0;->c:Lkotlinx/coroutines/internal/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v3, v0, Lkotlinx/coroutines/internal/a;->b:I

    .line 9
    .line 10
    iget v0, v0, Lkotlinx/coroutines/internal/a;->c:I

    .line 11
    .line 12
    if-ne v3, v0, :cond_1

    .line 13
    .line 14
    :goto_0
    const/4 v0, 0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_1
    if-nez v0, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    iget-object v0, p0, Lnc/o0;->_delayed:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lnc/o0$c;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->b()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    iget-object v0, p0, Lnc/o0;->_queue:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez v0, :cond_4

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_4
    instance-of v3, v0, Lkotlinx/coroutines/internal/l;

    .line 39
    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    check-cast v0, Lkotlinx/coroutines/internal/l;

    .line 43
    .line 44
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/l;->d()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    goto :goto_3

    .line 49
    :cond_5
    sget-object v3, La6/a;->l:Lkotlinx/coroutines/internal/u;

    .line 50
    .line 51
    if-ne v0, v3, :cond_6

    .line 52
    .line 53
    :goto_2
    const/4 v1, 0x1

    .line 54
    :cond_6
    :goto_3
    return v1
.end method

.method public final O()J
    .locals 12

    .line 1
    invoke-virtual {p0}, Lnc/n0;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    iget-object v0, p0, Lnc/o0;->_delayed:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lnc/o0$c;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-nez v6, :cond_7

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    :cond_1
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v8, v0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    .line 31
    .line 32
    if-nez v8, :cond_2

    .line 33
    .line 34
    move-object v8, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    aget-object v8, v8, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    :goto_0
    if-nez v8, :cond_3

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    move-object v8, v3

    .line 42
    goto :goto_4

    .line 43
    :cond_3
    :try_start_1
    check-cast v8, Lnc/o0$b;

    .line 44
    .line 45
    iget-wide v9, v8, Lnc/o0$b;->a:J

    .line 46
    .line 47
    sub-long v9, v6, v9

    .line 48
    .line 49
    cmp-long v11, v9, v1

    .line 50
    .line 51
    if-ltz v11, :cond_4

    .line 52
    .line 53
    const/4 v9, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const/4 v9, 0x0

    .line 56
    :goto_1
    if-eqz v9, :cond_5

    .line 57
    .line 58
    invoke-virtual {p0, v8}, Lnc/o0;->F(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    goto :goto_2

    .line 63
    :cond_5
    const/4 v8, 0x0

    .line 64
    :goto_2
    if-eqz v8, :cond_6

    .line 65
    .line 66
    invoke-virtual {v0, v5}, Lkotlinx/coroutines/internal/x;->e(I)Lkotlinx/coroutines/internal/y;

    .line 67
    .line 68
    .line 69
    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    goto :goto_3

    .line 71
    :cond_6
    move-object v8, v3

    .line 72
    :goto_3
    monitor-exit v0

    .line 73
    :goto_4
    check-cast v8, Lnc/o0$b;

    .line 74
    .line 75
    if-nez v8, :cond_1

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    monitor-exit v0

    .line 80
    throw v1

    .line 81
    :cond_7
    :goto_5
    iget-object v0, p0, Lnc/o0;->_queue:Ljava/lang/Object;

    .line 82
    .line 83
    if-nez v0, :cond_8

    .line 84
    .line 85
    goto :goto_6

    .line 86
    :cond_8
    instance-of v6, v0, Lkotlinx/coroutines/internal/l;

    .line 87
    .line 88
    if-eqz v6, :cond_c

    .line 89
    .line 90
    move-object v6, v0

    .line 91
    check-cast v6, Lkotlinx/coroutines/internal/l;

    .line 92
    .line 93
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/l;->f()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    sget-object v8, Lkotlinx/coroutines/internal/l;->g:Lkotlinx/coroutines/internal/u;

    .line 98
    .line 99
    if-eq v7, v8, :cond_9

    .line 100
    .line 101
    check-cast v7, Ljava/lang/Runnable;

    .line 102
    .line 103
    goto :goto_8

    .line 104
    :cond_9
    sget-object v7, Lnc/o0;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 105
    .line 106
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/l;->e()Lkotlinx/coroutines/internal/l;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    :cond_a
    invoke-virtual {v7, p0, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-eqz v8, :cond_b

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_b
    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    if-eq v8, v0, :cond_a

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_c
    sget-object v6, La6/a;->l:Lkotlinx/coroutines/internal/u;

    .line 125
    .line 126
    if-ne v0, v6, :cond_d

    .line 127
    .line 128
    :goto_6
    move-object v7, v3

    .line 129
    goto :goto_8

    .line 130
    :cond_d
    sget-object v6, Lnc/o0;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 131
    .line 132
    :cond_e
    invoke-virtual {v6, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_f

    .line 137
    .line 138
    const/4 v6, 0x1

    .line 139
    goto :goto_7

    .line 140
    :cond_f
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    if-eq v7, v0, :cond_e

    .line 145
    .line 146
    const/4 v6, 0x0

    .line 147
    :goto_7
    if-eqz v6, :cond_7

    .line 148
    .line 149
    move-object v7, v0

    .line 150
    check-cast v7, Ljava/lang/Runnable;

    .line 151
    .line 152
    :goto_8
    if-eqz v7, :cond_10

    .line 153
    .line 154
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 155
    .line 156
    .line 157
    return-wide v1

    .line 158
    :cond_10
    iget-object v0, p0, Lnc/n0;->c:Lkotlinx/coroutines/internal/a;

    .line 159
    .line 160
    const-wide v6, 0x7fffffffffffffffL

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    if-nez v0, :cond_11

    .line 166
    .line 167
    goto :goto_a

    .line 168
    :cond_11
    iget v8, v0, Lkotlinx/coroutines/internal/a;->b:I

    .line 169
    .line 170
    iget v0, v0, Lkotlinx/coroutines/internal/a;->c:I

    .line 171
    .line 172
    if-ne v8, v0, :cond_12

    .line 173
    .line 174
    goto :goto_9

    .line 175
    :cond_12
    const/4 v4, 0x0

    .line 176
    :goto_9
    if-eqz v4, :cond_13

    .line 177
    .line 178
    :goto_a
    move-wide v4, v6

    .line 179
    goto :goto_b

    .line 180
    :cond_13
    move-wide v4, v1

    .line 181
    :goto_b
    cmp-long v0, v4, v1

    .line 182
    .line 183
    if-nez v0, :cond_14

    .line 184
    .line 185
    goto :goto_f

    .line 186
    :cond_14
    iget-object v0, p0, Lnc/o0;->_queue:Ljava/lang/Object;

    .line 187
    .line 188
    if-nez v0, :cond_15

    .line 189
    .line 190
    goto :goto_c

    .line 191
    :cond_15
    instance-of v4, v0, Lkotlinx/coroutines/internal/l;

    .line 192
    .line 193
    if-eqz v4, :cond_1a

    .line 194
    .line 195
    check-cast v0, Lkotlinx/coroutines/internal/l;

    .line 196
    .line 197
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/l;->d()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_16

    .line 202
    .line 203
    goto :goto_f

    .line 204
    :cond_16
    :goto_c
    iget-object v0, p0, Lnc/o0;->_delayed:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v0, Lnc/o0$c;

    .line 207
    .line 208
    if-nez v0, :cond_17

    .line 209
    .line 210
    goto :goto_d

    .line 211
    :cond_17
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->c()Lkotlinx/coroutines/internal/y;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    move-object v3, v0

    .line 216
    check-cast v3, Lnc/o0$b;

    .line 217
    .line 218
    :goto_d
    if-nez v3, :cond_18

    .line 219
    .line 220
    goto :goto_e

    .line 221
    :cond_18
    iget-wide v3, v3, Lnc/o0$b;->a:J

    .line 222
    .line 223
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 224
    .line 225
    .line 226
    move-result-wide v5

    .line 227
    sub-long/2addr v3, v5

    .line 228
    cmp-long v0, v3, v1

    .line 229
    .line 230
    if-gez v0, :cond_19

    .line 231
    .line 232
    goto :goto_f

    .line 233
    :cond_19
    move-wide v1, v3

    .line 234
    goto :goto_f

    .line 235
    :cond_1a
    sget-object v3, La6/a;->l:Lkotlinx/coroutines/internal/u;

    .line 236
    .line 237
    if-ne v0, v3, :cond_1b

    .line 238
    .line 239
    :goto_e
    move-wide v1, v6

    .line 240
    :cond_1b
    :goto_f
    return-wide v1
.end method

.method public final P()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnc/o0;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lnc/o0;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method public final W(JLnc/o0$b;)V
    .locals 12

    .line 1
    iget v0, p0, Lnc/o0;->_isCompleted:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lnc/o0;->_delayed:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lnc/o0$c;

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    sget-object v5, Lnc/o0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 17
    .line 18
    new-instance v6, Lnc/o0$c;

    .line 19
    .line 20
    invoke-direct {v6, p1, p2}, Lnc/o0$c;-><init>(J)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {v5, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lnc/o0;->_delayed:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast v0, Lnc/o0$c;

    .line 42
    .line 43
    :cond_3
    monitor-enter p3

    .line 44
    :try_start_0
    iget-object v5, p3, Lnc/o0$b;->b:Ljava/lang/Object;

    .line 45
    .line 46
    sget-object v6, La6/a;->k:Lkotlinx/coroutines/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    .line 48
    if-ne v5, v6, :cond_4

    .line 49
    .line 50
    monitor-exit p3

    .line 51
    const/4 v0, 0x2

    .line 52
    goto :goto_4

    .line 53
    :cond_4
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    :try_start_2
    iget-object v5, v0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    .line 55
    .line 56
    if-nez v5, :cond_5

    .line 57
    .line 58
    move-object v5, v3

    .line 59
    goto :goto_1

    .line 60
    :cond_5
    aget-object v5, v5, v1

    .line 61
    .line 62
    :goto_1
    check-cast v5, Lnc/o0$b;

    .line 63
    .line 64
    iget v6, p0, Lnc/o0;->_isCompleted:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    if-eqz v6, :cond_6

    .line 67
    .line 68
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    monitor-exit p3

    .line 70
    :goto_2
    const/4 v0, 0x1

    .line 71
    goto :goto_4

    .line 72
    :cond_6
    const-wide/16 v6, 0x0

    .line 73
    .line 74
    if-nez v5, :cond_7

    .line 75
    .line 76
    move-wide v8, p1

    .line 77
    goto :goto_3

    .line 78
    :cond_7
    :try_start_4
    iget-wide v8, v5, Lnc/o0$b;->a:J

    .line 79
    .line 80
    sub-long v10, v8, p1

    .line 81
    .line 82
    cmp-long v5, v10, v6

    .line 83
    .line 84
    if-ltz v5, :cond_8

    .line 85
    .line 86
    move-wide v8, p1

    .line 87
    :cond_8
    iget-wide v10, v0, Lnc/o0$c;->b:J

    .line 88
    .line 89
    sub-long v10, v8, v10

    .line 90
    .line 91
    cmp-long v5, v10, v6

    .line 92
    .line 93
    if-lez v5, :cond_9

    .line 94
    .line 95
    :goto_3
    iput-wide v8, v0, Lnc/o0$c;->b:J

    .line 96
    .line 97
    :cond_9
    iget-wide v8, p3, Lnc/o0$b;->a:J

    .line 98
    .line 99
    iget-wide v10, v0, Lnc/o0$c;->b:J

    .line 100
    .line 101
    sub-long/2addr v8, v10

    .line 102
    cmp-long v5, v8, v6

    .line 103
    .line 104
    if-gez v5, :cond_a

    .line 105
    .line 106
    iput-wide v10, p3, Lnc/o0$b;->a:J

    .line 107
    .line 108
    :cond_a
    invoke-virtual {v0, p3}, Lkotlinx/coroutines/internal/x;->a(Lkotlinx/coroutines/internal/y;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    .line 110
    .line 111
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 112
    monitor-exit p3

    .line 113
    const/4 v0, 0x0

    .line 114
    :goto_4
    if-eqz v0, :cond_d

    .line 115
    .line 116
    if-eq v0, v4, :cond_c

    .line 117
    .line 118
    if-ne v0, v2, :cond_b

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    const-string p2, "unexpected result"

    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lnc/p0;->q(JLnc/o0$b;)V

    .line 134
    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_d
    iget-object p1, p0, Lnc/o0;->_delayed:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p1, Lnc/o0$c;

    .line 140
    .line 141
    if-nez p1, :cond_e

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_e
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/x;->c()Lkotlinx/coroutines/internal/y;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    move-object v3, p1

    .line 149
    check-cast v3, Lnc/o0$b;

    .line 150
    .line 151
    :goto_5
    if-ne v3, p3, :cond_f

    .line 152
    .line 153
    const/4 v1, 0x1

    .line 154
    :cond_f
    if-eqz v1, :cond_10

    .line 155
    .line 156
    invoke-virtual {p0}, Lnc/p0;->p()Ljava/lang/Thread;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    if-eq p2, p1, :cond_10

    .line 165
    .line 166
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 167
    .line 168
    .line 169
    :cond_10
    :goto_6
    return-void

    .line 170
    :catchall_0
    move-exception p1

    .line 171
    :try_start_6
    monitor-exit v0

    .line 172
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 173
    :catchall_1
    move-exception p1

    .line 174
    monitor-exit p3

    .line 175
    throw p1
.end method

.method public final c(JLnc/j;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x8637bd05af6L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    cmp-long v2, p1, v0

    .line 14
    .line 15
    if-ltz v2, :cond_1

    .line 16
    .line 17
    const-wide v0, 0x7fffffffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-wide/32 v0, 0xf4240

    .line 24
    .line 25
    .line 26
    mul-long v0, v0, p1

    .line 27
    .line 28
    :goto_0
    const-wide p1, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    cmp-long v2, v0, p1

    .line 34
    .line 35
    if-gez v2, :cond_2

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    new-instance v2, Lnc/o0$a;

    .line 42
    .line 43
    add-long/2addr v0, p1

    .line 44
    invoke-direct {v2, p0, v0, v1, p3}, Lnc/o0$a;-><init>(Lnc/o0;JLnc/j;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lnc/l0;

    .line 48
    .line 49
    invoke-direct {v0, v2}, Lnc/l0;-><init>(Lnc/k0;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v0}, Lnc/j;->D(Lx9/l;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, p2, v2}, Lnc/o0;->W(JLnc/o0$b;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public final dispatch(Lp9/f;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Lnc/o0;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lnc/o0;->F(Ljava/lang/Runnable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lnc/p0;->p()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eq v0, p1, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lnc/d0;->f:Lnc/d0;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lnc/d0;->s(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 7

    .line 1
    sget-object v0, Lnc/w1;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    sget-object v0, Lnc/w1;->a:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lnc/o0;->_isCompleted:I

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lnc/o0;->_queue:Ljava/lang/Object;

    .line 13
    .line 14
    sget-object v3, La6/a;->l:Lkotlinx/coroutines/internal/u;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v2, :cond_3

    .line 18
    .line 19
    sget-object v5, Lnc/o0;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    :cond_1
    invoke-virtual {v5, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    :goto_0
    if-eqz v4, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    instance-of v5, v2, Lkotlinx/coroutines/internal/l;

    .line 39
    .line 40
    if-eqz v5, :cond_4

    .line 41
    .line 42
    check-cast v2, Lkotlinx/coroutines/internal/l;

    .line 43
    .line 44
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/l;->b()Z

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    if-ne v2, v3, :cond_5

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_5
    new-instance v3, Lkotlinx/coroutines/internal/l;

    .line 52
    .line 53
    const/16 v5, 0x8

    .line 54
    .line 55
    invoke-direct {v3, v5, v0}, Lkotlinx/coroutines/internal/l;-><init>(IZ)V

    .line 56
    .line 57
    .line 58
    move-object v5, v2

    .line 59
    check-cast v5, Ljava/lang/Runnable;

    .line 60
    .line 61
    invoke-virtual {v3, v5}, Lkotlinx/coroutines/internal/l;->a(Ljava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    sget-object v5, Lnc/o0;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 65
    .line 66
    :cond_6
    invoke-virtual {v5, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_7

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_7
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    if-eq v6, v2, :cond_6

    .line 79
    .line 80
    :goto_1
    if-eqz v4, :cond_0

    .line 81
    .line 82
    :goto_2
    invoke-virtual {p0}, Lnc/o0;->O()J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    const-wide/16 v4, 0x0

    .line 87
    .line 88
    cmp-long v0, v2, v4

    .line 89
    .line 90
    if-gtz v0, :cond_8

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    :goto_3
    iget-object v0, p0, Lnc/o0;->_delayed:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Lnc/o0$c;

    .line 100
    .line 101
    if-nez v0, :cond_9

    .line 102
    .line 103
    move-object v0, v1

    .line 104
    goto :goto_4

    .line 105
    :cond_9
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->f()Lkotlinx/coroutines/internal/y;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lnc/o0$b;

    .line 110
    .line 111
    :goto_4
    if-nez v0, :cond_a

    .line 112
    .line 113
    return-void

    .line 114
    :cond_a
    invoke-virtual {p0, v2, v3, v0}, Lnc/p0;->q(JLnc/o0$b;)V

    .line 115
    .line 116
    .line 117
    goto :goto_3
.end method
