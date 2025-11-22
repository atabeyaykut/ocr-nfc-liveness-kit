.class public final Lc5/e5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc5/e5;->a:I

    iput-object p2, p0, Lc5/e5;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc5/e5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lc5/e5;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/e5;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc5/e5;->c:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc5/e5;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc5/s6;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lc5/e5;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lc5/s6;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, v1, Lc5/s6;->a:Z

    .line 12
    .line 13
    iget-object v1, p0, Lc5/e5;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lc5/s6;

    .line 16
    .line 17
    iget-object v1, v1, Lc5/s6;->c:Lc5/t6;

    .line 18
    .line 19
    invoke-virtual {v1}, Lc5/t6;->n()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lc5/e5;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lc5/s6;

    .line 28
    .line 29
    iget-object v1, v1, Lc5/s6;->c:Lc5/t6;

    .line 30
    .line 31
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 32
    .line 33
    check-cast v1, Lc5/i4;

    .line 34
    .line 35
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 36
    .line 37
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v1, Lc5/e3;->n:Lc5/c3;

    .line 41
    .line 42
    const-string v2, "Connected to remote service"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lc5/e5;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lc5/s6;

    .line 50
    .line 51
    iget-object v1, v1, Lc5/s6;->c:Lc5/t6;

    .line 52
    .line 53
    iget-object v2, p0, Lc5/e5;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Lc5/v2;

    .line 56
    .line 57
    invoke-virtual {v1}, Lc5/t2;->b()V

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iput-object v2, v1, Lc5/t6;->d:Lc5/v2;

    .line 64
    .line 65
    invoke-virtual {v1}, Lc5/t6;->s()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lc5/t6;->r()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lc5/e5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-direct {p0}, Lc5/e5;->a()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_1
    iget-object v0, p0, Lc5/e5;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lc5/e5;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    iget-object v2, p0, Lc5/e5;->c:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Lc5/v5;

    .line 24
    .line 25
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 26
    .line 27
    check-cast v3, Lc5/i4;

    .line 28
    .line 29
    iget-object v3, v3, Lc5/i4;->g:Lc5/e;

    .line 30
    .line 31
    check-cast v2, Lc5/v5;

    .line 32
    .line 33
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 34
    .line 35
    check-cast v2, Lc5/i4;

    .line 36
    .line 37
    invoke-virtual {v2}, Lc5/i4;->o()Lc5/w2;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lc5/w2;->h()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    sget-object v4, Lc5/r2;->M:Lc5/q2;

    .line 46
    .line 47
    invoke-virtual {v3, v2, v4}, Lc5/e;->h(Ljava/lang/String;Lc5/q2;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :try_start_1
    iget-object v1, p0, Lc5/e5;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 63
    .line 64
    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception v1

    .line 68
    iget-object v2, p0, Lc5/e5;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :catchall_1
    move-exception v1

    .line 77
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    throw v1

    .line 79
    :pswitch_2
    iget-object v0, p0, Lc5/e5;->c:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 84
    .line 85
    invoke-virtual {v0}, Lc5/i4;->s()Lc5/t6;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p0, Lc5/e5;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Lcom/google/android/gms/internal/measurement/y0;

    .line 92
    .line 93
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lc5/r3;->c()V

    .line 97
    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-virtual {v0, v2}, Lc5/t6;->q(Z)Lc5/y7;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    new-instance v3, Lc5/i6;

    .line 105
    .line 106
    invoke-direct {v3, v0, v2, v1}, Lc5/i6;-><init>(Lc5/t6;Lc5/y7;Lcom/google/android/gms/internal/measurement/y0;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v3}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :goto_0
    iget-object v0, p0, Lc5/e5;->b:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Ljava/lang/ref/ReferenceQueue;

    .line 116
    .line 117
    iget-object v1, p0, Lc5/e5;->c:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v1, Ljava/util/Set;

    .line 120
    .line 121
    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_1

    .line 126
    .line 127
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Lv7/o;

    .line 132
    .line 133
    iget-object v3, v2, Lv7/o;->a:Ljava/util/Set;

    .line 134
    .line 135
    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_0

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->clear()V

    .line 143
    .line 144
    .line 145
    iget-object v2, v2, Lv7/o;->b:Ljava/lang/Runnable;

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :catch_0
    nop

    .line 152
    goto :goto_1

    .line 153
    :cond_1
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
