.class public final Lc5/q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lc5/y7;

.field public final synthetic e:Z

.field public final synthetic f:Lc5/t6;


# direct methods
.method public constructor <init>(Lc5/t6;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lc5/y7;Z)V
    .locals 0

    iput-object p1, p0, Lc5/q6;->f:Lc5/t6;

    iput-object p2, p0, Lc5/q6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lc5/q6;->b:Ljava/lang/String;

    iput-object p4, p0, Lc5/q6;->c:Ljava/lang/String;

    iput-object p5, p0, Lc5/q6;->d:Lc5/y7;

    iput-boolean p6, p0, Lc5/q6;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lc5/q6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lc5/q6;->f:Lc5/t6;

    .line 6
    .line 7
    iget-object v3, v2, Lc5/t6;->d:Lc5/v2;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 12
    .line 13
    check-cast v2, Lc5/i4;

    .line 14
    .line 15
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 16
    .line 17
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 21
    .line 22
    const-string v3, "(legacy) Failed to get user properties; not connected to service"

    .line 23
    .line 24
    iget-object v4, p0, Lc5/q6;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v5, p0, Lc5/q6;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v3, v1, v4, v5}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lc5/q6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :try_start_1
    iget-object v1, p0, Lc5/q6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 43
    .line 44
    .line 45
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    return-void

    .line 47
    :cond_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget-object v2, p0, Lc5/q6;->d:Lc5/y7;

    .line 54
    .line 55
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lc5/q6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    .line 60
    iget-object v4, p0, Lc5/q6;->b:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v5, p0, Lc5/q6;->c:Ljava/lang/String;

    .line 63
    .line 64
    iget-boolean v6, p0, Lc5/q6;->e:Z

    .line 65
    .line 66
    iget-object v7, p0, Lc5/q6;->d:Lc5/y7;

    .line 67
    .line 68
    invoke-interface {v3, v4, v5, v6, v7}, Lc5/v2;->S(Ljava/lang/String;Ljava/lang/String;ZLc5/y7;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object v2, p0, Lc5/q6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    .line 75
    iget-object v4, p0, Lc5/q6;->b:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v5, p0, Lc5/q6;->c:Ljava/lang/String;

    .line 78
    .line 79
    iget-boolean v6, p0, Lc5/q6;->e:Z

    .line 80
    .line 81
    invoke-interface {v3, v1, v4, v5, v6}, Lc5/v2;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lc5/q6;->f:Lc5/t6;

    .line 89
    .line 90
    invoke-virtual {v2}, Lc5/t6;->s()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .line 92
    .line 93
    :goto_1
    :try_start_3
    iget-object v1, p0, Lc5/q6;->a:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    goto :goto_3

    .line 98
    :catch_0
    move-exception v2

    .line 99
    :try_start_4
    iget-object v3, p0, Lc5/q6;->f:Lc5/t6;

    .line 100
    .line 101
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 102
    .line 103
    check-cast v3, Lc5/i4;

    .line 104
    .line 105
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 106
    .line 107
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 108
    .line 109
    .line 110
    iget-object v3, v3, Lc5/e3;->f:Lc5/c3;

    .line 111
    .line 112
    const-string v4, "(legacy) Failed to get user properties; remote exception"

    .line 113
    .line 114
    iget-object v5, p0, Lc5/q6;->b:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v3, v4, v1, v5, v2}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lc5/q6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 120
    .line 121
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 130
    .line 131
    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 134
    :goto_3
    iget-object v2, p0, Lc5/q6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 137
    .line 138
    .line 139
    throw v1

    .line 140
    :catchall_1
    move-exception v1

    .line 141
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 142
    throw v1
.end method
