.class public final Lc5/w4;
.super Lc5/u2;
.source "SourceFile"


# instance fields
.field public final a:Lc5/o7;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc5/o7;)V
    .locals 0

    invoke-direct {p0}, Lc5/u2;-><init>()V

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iput-object p1, p0, Lc5/w4;->a:Lc5/o7;

    const/4 p1, 0x0

    iput-object p1, p0, Lc5/w4;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A(Lc5/r7;Lc5/y7;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lc5/w4;->z0(Lc5/y7;)V

    new-instance v0, Lc5/t3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lc5/t3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lc5/w4;->y0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final C(Lc5/y7;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-virtual {p0, p1}, Lc5/w4;->z0(Lc5/y7;)V

    new-instance v0, Lo3/n0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lo3/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc5/w4;->y0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Q(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    new-instance v7, Lc5/v4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lc5/v4;-><init>(Lc5/w4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v7}, Lc5/w4;->y0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final S(Ljava/lang/String;Ljava/lang/String;ZLc5/y7;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lc5/y7;",
            ")",
            "Ljava/util/List<",
            "Lc5/r7;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p4}, Lc5/w4;->z0(Lc5/y7;)V

    iget-object p4, p4, Lc5/y7;->a:Ljava/lang/String;

    invoke-static {p4}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lc5/w4;->a:Lc5/o7;

    invoke-virtual {v0}, Lc5/o7;->l()Lc5/h4;

    move-result-object v1

    new-instance v2, Lc5/l4;

    invoke-direct {v2, p0, p4, p1, p2}, Lc5/l4;-><init>(Lc5/w4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc5/h4;->n(Ljava/util/concurrent/Callable;)Lc5/f4;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc5/t7;

    if-nez p3, :cond_1

    iget-object v2, v1, Lc5/t7;->c:Ljava/lang/String;

    invoke-static {v2}, Lc5/v7;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    new-instance v2, Lc5/r7;

    invoke-direct {v2, v1}, Lc5/r7;-><init>(Lc5/t7;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    invoke-virtual {v0}, Lc5/o7;->m()Lc5/e3;

    move-result-object p2

    invoke-static {p4}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object p3

    iget-object p2, p2, Lc5/e3;->f:Lc5/c3;

    const-string p4, "Failed to query user properties. appId"

    invoke-virtual {p2, p3, p4, p1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final Y(Lc5/s;Ljava/lang/String;)[B
    .locals 13
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    invoke-static {p2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p2, v0}, Lc5/w4;->x0(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lc5/w4;->a:Lc5/o7;

    .line 12
    .line 13
    invoke-virtual {v1}, Lc5/o7;->m()Lc5/e3;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, v1, Lc5/o7;->m:Lc5/i4;

    .line 18
    .line 19
    iget-object v4, v3, Lc5/i4;->n:Lc5/z2;

    .line 20
    .line 21
    iget-object v5, p1, Lc5/s;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v2, v2, Lc5/e3;->n:Lc5/c3;

    .line 28
    .line 29
    const-string v6, "Log and bundle. event"

    .line 30
    .line 31
    invoke-virtual {v2, v4, v6}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lc5/o7;->i()Lw3/a;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lc5/w;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    const-wide/32 v8, 0xf4240

    .line 48
    .line 49
    .line 50
    div-long/2addr v6, v8

    .line 51
    invoke-virtual {v1}, Lc5/o7;->l()Lc5/h4;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v4, Lc5/t4;

    .line 56
    .line 57
    invoke-direct {v4, p0, p1, p2}, Lc5/t4;-><init>(Lc5/w4;Lc5/s;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lc5/y4;->d()V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lc5/f4;

    .line 64
    .line 65
    invoke-direct {p1, v2, v4, v0}, Lc5/f4;-><init>(Lc5/h4;Ljava/util/concurrent/Callable;Z)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v4, v2, Lc5/h4;->c:Lc5/g4;

    .line 73
    .line 74
    if-ne v0, v4, :cond_0

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v2, p1}, Lc5/h4;->s(Lc5/f4;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, [B

    .line 88
    .line 89
    if-nez p1, :cond_1

    .line 90
    .line 91
    invoke-virtual {v1}, Lc5/o7;->m()Lc5/e3;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 96
    .line 97
    const-string v0, "Log and bundle returned null. appId"

    .line 98
    .line 99
    invoke-static {p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {p1, v2, v0}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    new-array p1, p1, [B

    .line 108
    .line 109
    :cond_1
    invoke-virtual {v1}, Lc5/o7;->i()Lw3/a;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lc5/w;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 119
    .line 120
    .line 121
    move-result-wide v10

    .line 122
    invoke-virtual {v1}, Lc5/o7;->m()Lc5/e3;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v0, v0, Lc5/e3;->n:Lc5/c3;

    .line 127
    .line 128
    const-string v2, "Log and bundle processed. event, size, time_ms"

    .line 129
    .line 130
    iget-object v4, v3, Lc5/i4;->n:Lc5/z2;

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    array-length v12, p1

    .line 137
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    div-long/2addr v10, v8

    .line 142
    sub-long/2addr v10, v6

    .line 143
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v0, v2, v4, v12, v6}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    return-object p1

    .line 151
    :catch_0
    move-exception p1

    .line 152
    goto :goto_1

    .line 153
    :catch_1
    move-exception p1

    .line 154
    :goto_1
    invoke-virtual {v1}, Lc5/o7;->m()Lc5/e3;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    iget-object v1, v3, Lc5/i4;->n:Lc5/z2;

    .line 163
    .line 164
    invoke-virtual {v1, v5}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 169
    .line 170
    const-string v2, "Failed to log and bundle. appId, event, error"

    .line 171
    .line 172
    invoke-virtual {v0, v2, p2, v1, p1}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    const/4 p1, 0x0

    .line 176
    return-object p1
.end method

.method public final b0(Ljava/lang/String;Ljava/lang/String;Lc5/y7;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc5/y7;",
            ")",
            "Ljava/util/List<",
            "Lc5/b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lc5/w4;->z0(Lc5/y7;)V

    iget-object p3, p3, Lc5/y7;->a:Ljava/lang/String;

    invoke-static {p3}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lc5/w4;->a:Lc5/o7;

    invoke-virtual {v0}, Lc5/o7;->l()Lc5/h4;

    move-result-object v1

    new-instance v2, Lc5/o4;

    invoke-direct {v2, p0, p3, p1, p2}, Lc5/o4;-><init>(Lc5/w4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc5/h4;->n(Ljava/util/concurrent/Callable;)Lc5/f4;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {v0}, Lc5/o7;->m()Lc5/e3;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    iget-object p2, p2, Lc5/e3;->f:Lc5/c3;

    invoke-virtual {p2, p1, p3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d0(Lc5/y7;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-virtual {p0, p1}, Lc5/w4;->z0(Lc5/y7;)V

    new-instance v0, Lc5/q4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lc5/q4;-><init>(Lc5/w4;Lc5/y7;I)V

    invoke-virtual {p0, v0}, Lc5/w4;->y0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h0(Lc5/s;Lc5/y7;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lc5/w4;->z0(Lc5/y7;)V

    new-instance v0, Lc5/r4;

    invoke-direct {v0, p0, p1, p2}, Lc5/r4;-><init>(Lc5/w4;Lc5/s;Lc5/y7;)V

    invoke-virtual {p0, v0}, Lc5/w4;->y0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o(Lc5/y7;)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lc5/w4;->z0(Lc5/y7;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc5/w4;->a:Lc5/o7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lc5/o7;->l()Lc5/h4;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lc5/l7;

    .line 11
    .line 12
    invoke-direct {v2, v0, p1}, Lc5/l7;-><init>(Lc5/o7;Lc5/y7;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lc5/h4;->n(Ljava/util/concurrent/Callable;)Lc5/f4;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    const-wide/16 v3, 0x7530

    .line 22
    .line 23
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v1

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception v1

    .line 33
    goto :goto_0

    .line 34
    :catch_2
    move-exception v1

    .line 35
    :goto_0
    invoke-virtual {v0}, Lc5/o7;->m()Lc5/e3;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object p1, p1, Lc5/y7;->a:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 46
    .line 47
    const-string v2, "Failed to get app instance id. appId"

    .line 48
    .line 49
    invoke-virtual {v0, p1, v2, v1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    :goto_1
    return-object v1
.end method

.method public final p(Landroid/os/Bundle;Lc5/y7;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-virtual {p0, p2}, Lc5/w4;->z0(Lc5/y7;)V

    iget-object p2, p2, Lc5/y7;->a:Ljava/lang/String;

    invoke-static {p2}, Lr3/r;->i(Ljava/lang/Object;)V

    new-instance v0, Lo3/f1;

    invoke-direct {v0, p0, p2, p1}, Lo3/f1;-><init>(Lc5/w4;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lc5/w4;->y0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lc5/r7;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc5/w4;->x0(Ljava/lang/String;Z)V

    iget-object v0, p0, Lc5/w4;->a:Lc5/o7;

    invoke-virtual {v0}, Lc5/o7;->l()Lc5/h4;

    move-result-object v1

    new-instance v2, Lc5/n4;

    invoke-direct {v2, p0, p1, p2, p3}, Lc5/n4;-><init>(Lc5/w4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc5/h4;->n(Ljava/util/concurrent/Callable;)Lc5/f4;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc5/t7;

    if-nez p4, :cond_1

    iget-object v2, v1, Lc5/t7;->c:Ljava/lang/String;

    invoke-static {v2}, Lc5/v7;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    new-instance v2, Lc5/r7;

    invoke-direct {v2, v1}, Lc5/r7;-><init>(Lc5/t7;)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    :goto_1
    invoke-virtual {v0}, Lc5/o7;->m()Lc5/e3;

    move-result-object p3

    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object p1

    iget-object p3, p3, Lc5/e3;->f:Lc5/c3;

    const-string p4, "Failed to get user properties as. appId"

    invoke-virtual {p3, p1, p4, p2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final q0(Lc5/b;Lc5/y7;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object v0, p1, Lc5/b;->c:Lc5/r7;

    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lc5/w4;->z0(Lc5/y7;)V

    new-instance v0, Lc5/b;

    invoke-direct {v0, p1}, Lc5/b;-><init>(Lc5/b;)V

    iget-object p1, p2, Lc5/y7;->a:Ljava/lang/String;

    iput-object p1, v0, Lc5/b;->a:Ljava/lang/String;

    new-instance p1, Lc5/j4;

    invoke-direct {p1, p0, v0, p2}, Lc5/j4;-><init>(Lc5/w4;Lc5/b;Lc5/y7;)V

    invoke-virtual {p0, p1}, Lc5/w4;->y0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r(Lc5/y7;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p1, Lc5/y7;->a:Ljava/lang/String;

    invoke-static {v0}, Lr3/r;->f(Ljava/lang/String;)V

    iget-object v0, p1, Lc5/y7;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc5/w4;->x0(Ljava/lang/String;Z)V

    new-instance v0, Lc5/q4;

    invoke-direct {v0, p0, p1, v1}, Lc5/q4;-><init>(Lc5/w4;Lc5/y7;I)V

    invoke-virtual {p0, v0}, Lc5/w4;->y0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s0(Lc5/y7;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p1, Lc5/y7;->a:Ljava/lang/String;

    invoke-static {v0}, Lr3/r;->f(Ljava/lang/String;)V

    iget-object v0, p1, Lc5/y7;->y:Ljava/lang/String;

    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    new-instance v0, Ll3/m;

    invoke-direct {v0, p0, p1}, Ll3/m;-><init>(Lc5/w4;Lc5/y7;)V

    iget-object p1, p0, Lc5/w4;->a:Lc5/o7;

    invoke-virtual {p1}, Lc5/o7;->l()Lc5/h4;

    move-result-object v1

    invoke-virtual {v1}, Lc5/h4;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ll3/m;->run()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lc5/o7;->l()Lc5/h4;

    move-result-object p1

    invoke-virtual {p1, v0}, Lc5/h4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x0(Ljava/lang/String;Z)V
    .locals 5
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lc5/w4;->a:Lc5/o7;

    .line 6
    .line 7
    if-nez v0, :cond_7

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    :try_start_0
    iget-object p2, p0, Lc5/w4;->b:Ljava/lang/Boolean;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    const-string p2, "com.google.android.gms"

    .line 18
    .line 19
    iget-object v3, p0, Lc5/w4;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    iget-object p2, v1, Lc5/o7;->m:Lc5/i4;

    .line 28
    .line 29
    iget-object p2, p2, Lc5/i4;->a:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {v3, p2}, Lw3/g;->a(ILandroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    iget-object p2, v1, Lc5/o7;->m:Lc5/i4;

    .line 42
    .line 43
    iget-object p2, p2, Lc5/i4;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {p2}, Lm3/k;->a(Landroid/content/Context;)Lm3/k;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {p2, v3}, Lm3/k;->b(I)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 p2, 0x0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 63
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iput-object p2, p0, Lc5/w4;->b:Ljava/lang/Boolean;

    .line 68
    .line 69
    :cond_2
    iget-object p2, p0, Lc5/w4;->b:Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_5

    .line 76
    .line 77
    :cond_3
    iget-object p2, p0, Lc5/w4;->c:Ljava/lang/String;

    .line 78
    .line 79
    if-nez p2, :cond_4

    .line 80
    .line 81
    iget-object p2, v1, Lc5/o7;->m:Lc5/i4;

    .line 82
    .line 83
    iget-object p2, p2, Lc5/i4;->a:Landroid/content/Context;

    .line 84
    .line 85
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    sget-object v4, Lm3/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    .line 91
    invoke-static {p2, v3, p1}, Lw3/g;->b(Landroid/content/Context;ILjava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_4

    .line 96
    .line 97
    iput-object p1, p0, Lc5/w4;->c:Ljava/lang/String;

    .line 98
    .line 99
    :cond_4
    iget-object p2, p0, Lc5/w4;->c:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_6

    .line 106
    .line 107
    :cond_5
    return-void

    .line 108
    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    .line 109
    .line 110
    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object p1, v0, v2

    .line 113
    .line 114
    const-string v2, "Unknown calling package name \'%s\'."

    .line 115
    .line 116
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :catch_0
    move-exception p2

    .line 125
    invoke-virtual {v1}, Lc5/o7;->m()Lc5/e3;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 134
    .line 135
    const-string v1, "Measurement Service called with invalid calling package. appId"

    .line 136
    .line 137
    invoke-virtual {v0, p1, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p2

    .line 141
    :cond_7
    invoke-virtual {v1}, Lc5/o7;->m()Lc5/e3;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 146
    .line 147
    const-string p2, "Measurement Service called without app package"

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance p1, Ljava/lang/SecurityException;

    .line 153
    .line 154
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1
.end method

.method public final y0(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lc5/w4;->a:Lc5/o7;

    invoke-virtual {v0}, Lc5/o7;->l()Lc5/h4;

    move-result-object v1

    invoke-virtual {v1}, Lc5/h4;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lc5/o7;->l()Lc5/h4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc5/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc5/w4;->x0(Ljava/lang/String;Z)V

    iget-object v0, p0, Lc5/w4;->a:Lc5/o7;

    invoke-virtual {v0}, Lc5/o7;->l()Lc5/h4;

    move-result-object v1

    new-instance v2, Lc5/p4;

    invoke-direct {v2, p0, p1, p2, p3}, Lc5/p4;-><init>(Lc5/w4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc5/h4;->n(Ljava/util/concurrent/Callable;)Lc5/f4;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {v0}, Lc5/o7;->m()Lc5/e3;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties as"

    iget-object p2, p2, Lc5/e3;->f:Lc5/c3;

    invoke-virtual {p2, p1, p3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final z0(Lc5/y7;)V
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object v0, p1, Lc5/y7;->a:Ljava/lang/String;

    invoke-static {v0}, Lr3/r;->f(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc5/w4;->x0(Ljava/lang/String;Z)V

    iget-object v0, p0, Lc5/w4;->a:Lc5/o7;

    invoke-virtual {v0}, Lc5/o7;->Q()Lc5/v7;

    move-result-object v0

    iget-object v1, p1, Lc5/y7;->x:Ljava/lang/String;

    iget-object v2, p1, Lc5/y7;->b:Ljava/lang/String;

    iget-object p1, p1, Lc5/y7;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v1}, Lc5/v7;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
