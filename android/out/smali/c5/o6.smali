.class public final Lc5/o6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lc5/y7;

.field public final synthetic e:Lc5/t6;


# direct methods
.method public constructor <init>(Lc5/t6;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lc5/y7;)V
    .locals 0

    iput-object p1, p0, Lc5/o6;->e:Lc5/t6;

    iput-object p2, p0, Lc5/o6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lc5/o6;->b:Ljava/lang/String;

    iput-object p4, p0, Lc5/o6;->c:Ljava/lang/String;

    iput-object p5, p0, Lc5/o6;->d:Lc5/y7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lc5/o6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lc5/o6;->e:Lc5/t6;

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
    const-string v3, "(legacy) Failed to get conditional properties; not connected to service"

    .line 23
    .line 24
    iget-object v4, p0, Lc5/o6;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v5, p0, Lc5/o6;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v3, v1, v4, v5}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lc5/o6;->a:Ljava/util/concurrent/atomic/AtomicReference;

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
    iget-object v1, p0, Lc5/o6;->a:Ljava/util/concurrent/atomic/AtomicReference;

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
    iget-object v2, p0, Lc5/o6;->d:Lc5/y7;

    .line 54
    .line 55
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lc5/o6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    .line 60
    iget-object v4, p0, Lc5/o6;->b:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v5, p0, Lc5/o6;->c:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v6, p0, Lc5/o6;->d:Lc5/y7;

    .line 65
    .line 66
    invoke-interface {v3, v4, v5, v6}, Lc5/v2;->b0(Ljava/lang/String;Ljava/lang/String;Lc5/y7;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v2, p0, Lc5/o6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    .line 73
    iget-object v4, p0, Lc5/o6;->b:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v5, p0, Lc5/o6;->c:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {v3, v1, v4, v5}, Lc5/v2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lc5/o6;->e:Lc5/t6;

    .line 85
    .line 86
    invoke-virtual {v2}, Lc5/t6;->s()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .line 88
    .line 89
    :goto_1
    :try_start_3
    iget-object v1, p0, Lc5/o6;->a:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    move-exception v1

    .line 93
    goto :goto_3

    .line 94
    :catch_0
    move-exception v2

    .line 95
    :try_start_4
    iget-object v3, p0, Lc5/o6;->e:Lc5/t6;

    .line 96
    .line 97
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 98
    .line 99
    check-cast v3, Lc5/i4;

    .line 100
    .line 101
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 102
    .line 103
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 104
    .line 105
    .line 106
    iget-object v3, v3, Lc5/e3;->f:Lc5/c3;

    .line 107
    .line 108
    const-string v4, "(legacy) Failed to get conditional properties; remote exception"

    .line 109
    .line 110
    iget-object v5, p0, Lc5/o6;->b:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v3, v4, v1, v5, v2}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lc5/o6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 116
    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 126
    .line 127
    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 130
    :goto_3
    iget-object v2, p0, Lc5/o6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 133
    .line 134
    .line 135
    throw v1

    .line 136
    :catchall_1
    move-exception v1

    .line 137
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 138
    throw v1
.end method
