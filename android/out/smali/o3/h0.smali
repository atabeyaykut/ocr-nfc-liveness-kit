.class public final synthetic Lo3/h0;
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
    iput p1, p0, Lo3/h0;->a:I

    iput-object p2, p0, Lo3/h0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lo3/h0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo3/h;Lo3/h$b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo3/h0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/h0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo3/h0;->c:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo3/h0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh5/u;

    .line 4
    .line 5
    iget-object v0, v0, Lh5/u;->b:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lo3/h0;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lh5/u;

    .line 11
    .line 12
    iget-object v1, v1, Lh5/u;->c:Lh5/e;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lo3/h0;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lh5/k;

    .line 19
    .line 20
    invoke-interface {v1, v2}, Lh5/e;->b(Lh5/k;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lo3/h0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lo3/h0;->a()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Lo3/h0;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lc5/s6;

    .line 13
    .line 14
    iget-object v0, v0, Lc5/s6;->c:Lc5/t6;

    .line 15
    .line 16
    iget-object v1, p0, Lo3/h0;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroid/content/ComponentName;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lc5/t6;->u(Lc5/t6;Landroid/content/ComponentName;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-object v0, p0, Lo3/h0;->b:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v1, p0, Lo3/h0;->c:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v2, v1

    .line 29
    check-cast v2, Lc5/t6;

    .line 30
    .line 31
    iget-object v3, v2, Lc5/t6;->d:Lc5/v2;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    iget-object v0, v2, Lc5/x4;->a:Lc5/z4;

    .line 36
    .line 37
    check-cast v0, Lc5/i4;

    .line 38
    .line 39
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 40
    .line 41
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 42
    .line 43
    .line 44
    const-string v1, "Failed to send measurementEnabled to service"

    .line 45
    .line 46
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    :try_start_0
    move-object v4, v0

    .line 53
    check-cast v4, Lc5/y7;

    .line 54
    .line 55
    invoke-static {v4}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    check-cast v0, Lc5/y7;

    .line 59
    .line 60
    invoke-interface {v3, v0}, Lc5/v2;->C(Lc5/y7;)V

    .line 61
    .line 62
    .line 63
    check-cast v1, Lc5/t6;

    .line 64
    .line 65
    invoke-virtual {v1}, Lc5/t6;->s()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    iget-object v1, v2, Lc5/x4;->a:Lc5/z4;

    .line 71
    .line 72
    check-cast v1, Lc5/i4;

    .line 73
    .line 74
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 75
    .line 76
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 77
    .line 78
    .line 79
    const-string v2, "Failed to send measurementEnabled to the service"

    .line 80
    .line 81
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 82
    .line 83
    invoke-virtual {v1, v0, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :pswitch_2
    iget-object v0, p0, Lo3/h0;->b:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 90
    .line 91
    monitor-enter v0

    .line 92
    :try_start_1
    iget-object v1, p0, Lo3/h0;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 95
    .line 96
    iget-object v2, p0, Lo3/h0;->c:Ljava/lang/Object;

    .line 97
    .line 98
    move-object v3, v2

    .line 99
    check-cast v3, Lc5/v5;

    .line 100
    .line 101
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 102
    .line 103
    check-cast v3, Lc5/i4;

    .line 104
    .line 105
    iget-object v3, v3, Lc5/i4;->g:Lc5/e;

    .line 106
    .line 107
    check-cast v2, Lc5/v5;

    .line 108
    .line 109
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 110
    .line 111
    check-cast v2, Lc5/i4;

    .line 112
    .line 113
    invoke-virtual {v2}, Lc5/i4;->o()Lc5/w2;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Lc5/w2;->h()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    sget-object v4, Lc5/r2;->L:Lc5/q2;

    .line 122
    .line 123
    if-nez v2, :cond_1

    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    const/4 v2, 0x0

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    iget-object v3, v3, Lc5/e;->c:Lc5/d;

    .line 131
    .line 132
    iget-object v5, v4, Lc5/q2;->a:Ljava/lang/String;

    .line 133
    .line 134
    invoke-interface {v3, v2, v5}, Lc5/d;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    :goto_1
    invoke-virtual {v4, v2}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .line 146
    .line 147
    :try_start_2
    iget-object v1, p0, Lo3/h0;->b:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 152
    .line 153
    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 156
    :catchall_0
    move-exception v1

    .line 157
    iget-object v2, p0, Lo3/h0;->b:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 162
    .line 163
    .line 164
    throw v1

    .line 165
    :catchall_1
    move-exception v1

    .line 166
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    throw v1

    .line 168
    :pswitch_3
    iget-object v0, p0, Lo3/h0;->b:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Lo3/h;

    .line 171
    .line 172
    iget-object v1, p0, Lo3/h0;->c:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v1, Lo3/h$b;

    .line 175
    .line 176
    iget-object v0, v0, Lo3/h;->b:Ljava/lang/Object;

    .line 177
    .line 178
    if-nez v0, :cond_2

    .line 179
    .line 180
    invoke-interface {v1}, Lo3/h$b;->b()V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_2
    :try_start_3
    invoke-interface {v1, v0}, Lo3/h$b;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 185
    .line 186
    .line 187
    :goto_2
    return-void

    .line 188
    :catch_1
    move-exception v0

    .line 189
    invoke-interface {v1}, Lo3/h$b;->b()V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
