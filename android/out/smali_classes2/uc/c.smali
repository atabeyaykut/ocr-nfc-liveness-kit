.class public final Luc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Luc/a;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public final e:Luc/d;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Luc/d;Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc/c;->e:Luc/d;

    iput-object p2, p0, Luc/c;->f:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Luc/c;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lsc/c;->a:[B

    iget-object v0, p0, Luc/c;->e:Luc/d;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Luc/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Luc/c;->e:Luc/d;

    invoke-virtual {v1, p0}, Luc/d;->e(Luc/c;)V

    :cond_0
    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget-object v0, p0, Luc/c;->b:Luc/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, v0, Luc/a;->d:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-boolean v1, p0, Luc/c;->d:Z

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Luc/c;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-int/2addr v2, v1

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ltz v2, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Luc/a;

    .line 27
    .line 28
    iget-boolean v4, v4, Luc/a;->d:Z

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Luc/a;

    .line 37
    .line 38
    sget-object v4, Luc/d;->h:Luc/d;

    .line 39
    .line 40
    sget-object v4, Luc/d;->i:Ljava/util/logging/Logger;

    .line 41
    .line 42
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    const-string v4, "canceled"

    .line 51
    .line 52
    invoke-static {v3, p0, v4}, Lcom/google/android/gms/internal/clearcut/d0;->e(Luc/a;Luc/c;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    return v3
.end method

.method public final c(Luc/a;J)V
    .locals 2

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Luc/c;->e:Luc/d;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-boolean v1, p0, Luc/c;->a:Z

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-boolean p2, p1, Luc/a;->d:Z

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    sget-object p2, Luc/d;->j:Luc/d$b;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object p2, Luc/d;->i:Ljava/util/logging/Logger;

    .line 23
    .line 24
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    const-string p2, "schedule canceled (queue is shutdown)"

    .line 33
    .line 34
    invoke-static {p1, p0, p2}, Lcom/google/android/gms/internal/clearcut/d0;->e(Luc/a;Luc/c;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :cond_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :cond_1
    :try_start_1
    sget-object p2, Luc/d;->j:Luc/d$b;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget-object p2, Luc/d;->i:Ljava/util/logging/Logger;

    .line 45
    .line 46
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    const-string p2, "schedule failed (queue is shutdown)"

    .line 55
    .line 56
    invoke-static {p1, p0, p2}, Lcom/google/android/gms/internal/clearcut/d0;->e(Luc/a;Luc/c;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_3
    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, p1, p2, p3, v1}, Luc/c;->d(Luc/a;JZ)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    iget-object p1, p0, Luc/c;->e:Luc/d;

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Luc/d;->e(Luc/c;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    sget-object p1, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    monitor-exit v0

    .line 83
    throw p1
.end method

.method public final d(Luc/a;JZ)Z
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    const-string v2, "task"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, v1, Luc/a;->a:Luc/c;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-ne v2, v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    if-nez v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-eqz v2, :cond_c

    .line 21
    .line 22
    iput-object v0, v1, Luc/a;->a:Luc/c;

    .line 23
    .line 24
    :goto_1
    iget-object v2, v0, Luc/c;->e:Luc/d;

    .line 25
    .line 26
    iget-object v2, v2, Luc/d;->g:Luc/d$a;

    .line 27
    .line 28
    invoke-interface {v2}, Luc/d$a;->c()J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    add-long v7, v5, p2

    .line 33
    .line 34
    iget-object v2, v0, Luc/c;->c:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    const/4 v10, -0x1

    .line 41
    if-eq v9, v10, :cond_4

    .line 42
    .line 43
    iget-wide v11, v1, Luc/a;->b:J

    .line 44
    .line 45
    cmp-long v13, v11, v7

    .line 46
    .line 47
    if-gtz v13, :cond_3

    .line 48
    .line 49
    sget-object v2, Luc/d;->h:Luc/d;

    .line 50
    .line 51
    sget-object v2, Luc/d;->i:Ljava/util/logging/Logger;

    .line 52
    .line 53
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    const-string v2, "already scheduled"

    .line 62
    .line 63
    invoke-static {p1, p0, v2}, Lcom/google/android/gms/internal/clearcut/d0;->e(Luc/a;Luc/c;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return v4

    .line 67
    :cond_3
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_4
    iput-wide v7, v1, Luc/a;->b:J

    .line 71
    .line 72
    sget-object v9, Luc/d;->h:Luc/d;

    .line 73
    .line 74
    sget-object v9, Luc/d;->i:Ljava/util/logging/Logger;

    .line 75
    .line 76
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 77
    .line 78
    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-eqz v9, :cond_6

    .line 83
    .line 84
    sub-long/2addr v7, v5

    .line 85
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/clearcut/d0;->o(J)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    if-eqz p4, :cond_5

    .line 90
    .line 91
    const-string v8, "run again after "

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    const-string v8, "scheduled after "

    .line 95
    .line 96
    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-static {p1, p0, v7}, Lcom/google/android/gms/internal/clearcut/d0;->e(Luc/a;Luc/c;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    const/4 v8, 0x0

    .line 108
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_9

    .line 113
    .line 114
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    check-cast v9, Luc/a;

    .line 119
    .line 120
    iget-wide v11, v9, Luc/a;->b:J

    .line 121
    .line 122
    sub-long/2addr v11, v5

    .line 123
    cmp-long v9, v11, p2

    .line 124
    .line 125
    if-lez v9, :cond_7

    .line 126
    .line 127
    const/4 v9, 0x1

    .line 128
    goto :goto_4

    .line 129
    :cond_7
    const/4 v9, 0x0

    .line 130
    :goto_4
    if-eqz v9, :cond_8

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_9
    const/4 v8, -0x1

    .line 137
    :goto_5
    if-ne v8, v10, :cond_a

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    :cond_a
    invoke-virtual {v2, v8, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    if-nez v8, :cond_b

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_b
    const/4 v3, 0x0

    .line 150
    :goto_6
    return v3

    .line 151
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    const-string v2, "task is in multiple queues"

    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v1
.end method

.method public final e()V
    .locals 2

    sget-object v0, Lsc/c;->a:[B

    iget-object v0, p0, Luc/c;->e:Luc/d;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Luc/c;->a:Z

    invoke-virtual {p0}, Luc/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Luc/c;->e:Luc/d;

    invoke-virtual {v1, p0}, Luc/d;->e(Luc/c;)V

    :cond_0
    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luc/c;->f:Ljava/lang/String;

    return-object v0
.end method
