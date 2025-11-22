.class public final Lc5/s6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lr3/c$a;
.implements Lr3/c$b;


# instance fields
.field public volatile a:Z

.field public volatile b:Lc5/a3;

.field public final synthetic c:Lc5/t6;


# direct methods
.method public constructor <init>(Lc5/t6;)V
    .locals 0

    iput-object p1, p0, Lc5/s6;->c:Lc5/t6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "MeasurementServiceConnection.onConnected"

    .line 2
    .line 3
    invoke-static {v0}, Lr3/r;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lc5/s6;->b:Lc5/a3;

    .line 8
    .line 9
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lc5/s6;->b:Lc5/a3;

    .line 13
    .line 14
    invoke-virtual {v0}, Lr3/c;->w()Landroid/os/IInterface;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lc5/v2;

    .line 19
    .line 20
    iget-object v1, p0, Lc5/s6;->c:Lc5/t6;

    .line 21
    .line 22
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 23
    .line 24
    check-cast v1, Lc5/i4;

    .line 25
    .line 26
    iget-object v1, v1, Lc5/i4;->k:Lc5/h4;

    .line 27
    .line 28
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lc5/e5;

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    invoke-direct {v2, v3, p0, v0}, Lc5/e5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lc5/h4;->p(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    const/4 v0, 0x0

    .line 44
    :try_start_1
    iput-object v0, p0, Lc5/s6;->b:Lc5/a3;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lc5/s6;->a:Z

    .line 48
    .line 49
    :goto_0
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw v0
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/s6;->c:Lc5/t6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc5/s6;->c:Lc5/t6;

    .line 7
    .line 8
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 9
    .line 10
    check-cast v0, Lc5/i4;

    .line 11
    .line 12
    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {}, Lv3/a;->b()Lv3/a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget-boolean v2, p0, Lc5/s6;->a:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lc5/s6;->c:Lc5/t6;

    .line 24
    .line 25
    iget-object p1, p1, Lc5/x4;->a:Lc5/z4;

    .line 26
    .line 27
    check-cast p1, Lc5/i4;

    .line 28
    .line 29
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 30
    .line 31
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p1, Lc5/e3;->p:Lc5/c3;

    .line 35
    .line 36
    const-string v0, "Connection attempt already in progress"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v2, p0, Lc5/s6;->c:Lc5/t6;

    .line 44
    .line 45
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 46
    .line 47
    check-cast v2, Lc5/i4;

    .line 48
    .line 49
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 50
    .line 51
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v2, Lc5/e3;->p:Lc5/c3;

    .line 55
    .line 56
    const-string v3, "Using local app measurement service"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    iput-boolean v2, p0, Lc5/s6;->a:Z

    .line 63
    .line 64
    iget-object v2, p0, Lc5/s6;->c:Lc5/t6;

    .line 65
    .line 66
    iget-object v2, v2, Lc5/t6;->c:Lc5/s6;

    .line 67
    .line 68
    const/16 v3, 0x81

    .line 69
    .line 70
    invoke-virtual {v1, v0, p1, v2, v3}, Lv3/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 71
    .line 72
    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p1
.end method

.method public final onConnectionFailed(Lm3/b;)V
    .locals 3
    .param p1    # Lm3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    .line 2
    .line 3
    invoke-static {v0}, Lr3/r;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc5/s6;->c:Lc5/t6;

    .line 7
    .line 8
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 9
    .line 10
    check-cast v0, Lc5/i4;

    .line 11
    .line 12
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean v2, v0, Lc5/y4;->b:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v1

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    .line 26
    .line 27
    const-string v2, "Service connection failed"

    .line 28
    .line 29
    invoke-virtual {v0, p1, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    monitor-enter p0

    .line 33
    const/4 p1, 0x0

    .line 34
    :try_start_0
    iput-boolean p1, p0, Lc5/s6;->a:Z

    .line 35
    .line 36
    iput-object v1, p0, Lc5/s6;->b:Lc5/a3;

    .line 37
    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object p1, p0, Lc5/s6;->c:Lc5/t6;

    .line 40
    .line 41
    iget-object p1, p1, Lc5/x4;->a:Lc5/z4;

    .line 42
    .line 43
    check-cast p1, Lc5/i4;

    .line 44
    .line 45
    iget-object p1, p1, Lc5/i4;->k:Lc5/h4;

    .line 46
    .line 47
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ll3/l;

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    invoke-direct {v0, v1, p0}, Ll3/l;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string p1, "MeasurementServiceConnection.onConnectionSuspended"

    .line 2
    .line 3
    invoke-static {p1}, Lr3/r;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lc5/s6;->c:Lc5/t6;

    .line 7
    .line 8
    iget-object v0, p1, Lc5/x4;->a:Lc5/z4;

    .line 9
    .line 10
    check-cast v0, Lc5/i4;

    .line 11
    .line 12
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 13
    .line 14
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "Service connection suspended"

    .line 18
    .line 19
    iget-object v0, v0, Lc5/e3;->n:Lc5/c3;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lc5/x4;->a:Lc5/z4;

    .line 25
    .line 26
    check-cast p1, Lc5/i4;

    .line 27
    .line 28
    iget-object p1, p1, Lc5/i4;->k:Lc5/h4;

    .line 29
    .line 30
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ll3/k;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {v0, v1, p0}, Ll3/k;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string p1, "MeasurementServiceConnection.onServiceConnected"

    .line 2
    .line 3
    invoke-static {p1}, Lr3/r;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    const/4 p1, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    :try_start_0
    iput-boolean p1, p0, Lc5/s6;->a:Z

    .line 11
    .line 12
    iget-object p1, p0, Lc5/s6;->c:Lc5/t6;

    .line 13
    .line 14
    iget-object p1, p1, Lc5/x4;->a:Lc5/z4;

    .line 15
    .line 16
    check-cast p1, Lc5/i4;

    .line 17
    .line 18
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 19
    .line 20
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 24
    .line 25
    const-string p2, "Service connected with null binder"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 49
    .line 50
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    instance-of v2, v1, Lc5/v2;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    check-cast v1, Lc5/v2;

    .line 59
    .line 60
    :goto_0
    move-object v0, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    new-instance v1, Lc5/s2;

    .line 63
    .line 64
    invoke-direct {v1, p2}, Lc5/s2;-><init>(Landroid/os/IBinder;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :goto_1
    iget-object p2, p0, Lc5/s6;->c:Lc5/t6;

    .line 69
    .line 70
    iget-object p2, p2, Lc5/x4;->a:Lc5/z4;

    .line 71
    .line 72
    check-cast p2, Lc5/i4;

    .line 73
    .line 74
    iget-object p2, p2, Lc5/i4;->j:Lc5/e3;

    .line 75
    .line 76
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p2, Lc5/e3;->p:Lc5/c3;

    .line 80
    .line 81
    const-string v1, "Bound to IMeasurementService interface"

    .line 82
    .line 83
    invoke-virtual {p2, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    iget-object p2, p0, Lc5/s6;->c:Lc5/t6;

    .line 88
    .line 89
    iget-object p2, p2, Lc5/x4;->a:Lc5/z4;

    .line 90
    .line 91
    check-cast p2, Lc5/i4;

    .line 92
    .line 93
    iget-object p2, p2, Lc5/i4;->j:Lc5/e3;

    .line 94
    .line 95
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p2, Lc5/e3;->f:Lc5/c3;

    .line 99
    .line 100
    const-string v2, "Got binder with a wrong descriptor"

    .line 101
    .line 102
    invoke-virtual {p2, v1, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catch_0
    :try_start_2
    iget-object p2, p0, Lc5/s6;->c:Lc5/t6;

    .line 107
    .line 108
    iget-object p2, p2, Lc5/x4;->a:Lc5/z4;

    .line 109
    .line 110
    check-cast p2, Lc5/i4;

    .line 111
    .line 112
    iget-object p2, p2, Lc5/i4;->j:Lc5/e3;

    .line 113
    .line 114
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 115
    .line 116
    .line 117
    iget-object p2, p2, Lc5/e3;->f:Lc5/c3;

    .line 118
    .line 119
    const-string v1, "Service connect failed to get IMeasurementService"

    .line 120
    .line 121
    invoke-virtual {p2, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :goto_2
    if-nez v0, :cond_3

    .line 125
    .line 126
    iput-boolean p1, p0, Lc5/s6;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .line 128
    :try_start_3
    invoke-static {}, Lv3/a;->b()Lv3/a;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p2, p0, Lc5/s6;->c:Lc5/t6;

    .line 133
    .line 134
    iget-object v0, p2, Lc5/x4;->a:Lc5/z4;

    .line 135
    .line 136
    check-cast v0, Lc5/i4;

    .line 137
    .line 138
    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 139
    .line 140
    iget-object p2, p2, Lc5/t6;->c:Lc5/s6;

    .line 141
    .line 142
    invoke-virtual {p1, v0, p2}, Lv3/a;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_3
    :try_start_4
    iget-object p1, p0, Lc5/s6;->c:Lc5/t6;

    .line 147
    .line 148
    iget-object p1, p1, Lc5/x4;->a:Lc5/z4;

    .line 149
    .line 150
    check-cast p1, Lc5/i4;

    .line 151
    .line 152
    iget-object p1, p1, Lc5/i4;->k:Lc5/h4;

    .line 153
    .line 154
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 155
    .line 156
    .line 157
    new-instance p2, Lc5/r6;

    .line 158
    .line 159
    invoke-direct {p2, p0, v0}, Lc5/r6;-><init>(Lc5/s6;Lc5/v2;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p2}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 163
    .line 164
    .line 165
    :catch_1
    :goto_3
    monitor-exit p0

    .line 166
    return-void

    .line 167
    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "MeasurementServiceConnection.onServiceDisconnected"

    .line 2
    .line 3
    invoke-static {v0}, Lr3/r;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc5/s6;->c:Lc5/t6;

    .line 7
    .line 8
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 9
    .line 10
    check-cast v1, Lc5/i4;

    .line 11
    .line 12
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 13
    .line 14
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "Service disconnected"

    .line 18
    .line 19
    iget-object v1, v1, Lc5/e3;->n:Lc5/c3;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 25
    .line 26
    check-cast v0, Lc5/i4;

    .line 27
    .line 28
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 29
    .line 30
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lo3/h0;

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v1, v2, p0, p1}, Lo3/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
