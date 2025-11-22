.class public final Lr3/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lr3/j1;


# direct methods
.method public synthetic constructor <init>(Lr3/j1;)V
    .locals 0

    iput-object p1, p0, Lr3/i1;->a:Lr3/j1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    const-string v0, "Timeout waiting for ServiceConnection callback "

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    if-eq v1, v3, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    iget-object v1, p0, Lr3/i1;->a:Lr3/j1;

    .line 13
    .line 14
    iget-object v1, v1, Lr3/j1;->d:Ljava/util/HashMap;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lr3/f1;

    .line 20
    .line 21
    iget-object v2, p0, Lr3/i1;->a:Lr3/j1;

    .line 22
    .line 23
    iget-object v2, v2, Lr3/j1;->d:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lr3/h1;

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    iget v4, v2, Lr3/h1;->b:I

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    if-ne v4, v5, :cond_3

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-instance v5, Ljava/lang/Exception;

    .line 43
    .line 44
    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v6, "GmsClientSupervisor"

    .line 48
    .line 49
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    iget-object v0, v2, Lr3/h1;->f:Landroid/content/ComponentName;

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    :cond_1
    if-nez v0, :cond_2

    .line 65
    .line 66
    new-instance v0, Landroid/content/ComponentName;

    .line 67
    .line 68
    iget-object p1, p1, Lr3/f1;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const-string v4, "unknown"

    .line 74
    .line 75
    invoke-direct {v0, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {v2, v0}, Lr3/h1;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    monitor-exit v1

    .line 82
    return v3

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p1

    .line 86
    :cond_4
    iget-object v0, p0, Lr3/i1;->a:Lr3/j1;

    .line 87
    .line 88
    iget-object v0, v0, Lr3/j1;->d:Ljava/util/HashMap;

    .line 89
    .line 90
    monitor-enter v0

    .line 91
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Lr3/f1;

    .line 94
    .line 95
    iget-object v1, p0, Lr3/i1;->a:Lr3/j1;

    .line 96
    .line 97
    iget-object v1, v1, Lr3/j1;->d:Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lr3/h1;

    .line 104
    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    iget-object v4, v1, Lr3/h1;->a:Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_6

    .line 114
    .line 115
    iget-boolean v4, v1, Lr3/h1;->c:Z

    .line 116
    .line 117
    if-eqz v4, :cond_5

    .line 118
    .line 119
    iget-object v4, v1, Lr3/h1;->g:Lr3/j1;

    .line 120
    .line 121
    iget-object v4, v4, Lr3/j1;->f:Lj4/e;

    .line 122
    .line 123
    iget-object v5, v1, Lr3/h1;->e:Lr3/f1;

    .line 124
    .line 125
    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iget-object v4, v1, Lr3/h1;->g:Lr3/j1;

    .line 129
    .line 130
    iget-object v5, v4, Lr3/j1;->g:Lv3/a;

    .line 131
    .line 132
    iget-object v4, v4, Lr3/j1;->e:Landroid/content/Context;

    .line 133
    .line 134
    invoke-virtual {v5, v4, v1}, Lv3/a;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 135
    .line 136
    .line 137
    iput-boolean v2, v1, Lr3/h1;->c:Z

    .line 138
    .line 139
    const/4 v2, 0x2

    .line 140
    iput v2, v1, Lr3/h1;->b:I

    .line 141
    .line 142
    :cond_5
    iget-object v1, p0, Lr3/i1;->a:Lr3/j1;

    .line 143
    .line 144
    iget-object v1, v1, Lr3/j1;->d:Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catchall_1
    move-exception p1

    .line 151
    goto :goto_1

    .line 152
    :cond_6
    :goto_0
    monitor-exit v0

    .line 153
    return v3

    .line 154
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    throw p1
.end method
