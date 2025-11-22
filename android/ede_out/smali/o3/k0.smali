.class public final synthetic Lo3/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lh5/v;Lh5/k;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo3/k0;->a:I

    iput-object p1, p0, Lo3/k0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lo3/k0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lo3/k0;->a:I

    iput-object p1, p0, Lo3/k0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo3/k0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lo3/k0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_3

    .line 7
    .line 8
    :pswitch_0
    iget-object v0, p0, Lo3/k0;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lh5/r;

    .line 11
    .line 12
    iget-object v0, v0, Lh5/r;->c:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lo3/k0;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lh5/r;

    .line 18
    .line 19
    iget-object v1, v1, Lh5/r;->d:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v2, v1

    .line 22
    check-cast v2, Lh5/f;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    check-cast v1, Lh5/f;

    .line 27
    .line 28
    iget-object v2, p0, Lo3/k0;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lh5/k;

    .line 31
    .line 32
    invoke-virtual {v2}, Lh5/k;->h()Ljava/lang/Exception;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2}, Lh5/f;->e(Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw v1

    .line 47
    :pswitch_1
    iget-object v0, p0, Lo3/k0;->b:Ljava/lang/Object;

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    check-cast v1, Lh5/k;

    .line 51
    .line 52
    invoke-virtual {v1}, Lh5/k;->k()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget-object v2, p0, Lo3/k0;->c:Ljava/lang/Object;

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    check-cast v2, Lh5/r;

    .line 61
    .line 62
    iget-object v0, v2, Lh5/r;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lh5/z;

    .line 65
    .line 66
    invoke-virtual {v0}, Lh5/z;->s()V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    :try_start_1
    move-object v1, v2

    .line 71
    check-cast v1, Lh5/r;

    .line 72
    .line 73
    iget-object v1, v1, Lh5/r;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Lh5/b;

    .line 76
    .line 77
    check-cast v0, Lh5/k;

    .line 78
    .line 79
    invoke-interface {v1, v0}, Lh5/b;->c(Lh5/k;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0
    :try_end_1
    .catch Lh5/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    check-cast v2, Lh5/r;

    .line 84
    .line 85
    iget-object v1, v2, Lh5/r;->d:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Lh5/z;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Lh5/z;->r(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    check-cast v2, Lh5/r;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    instance-of v1, v1, Ljava/lang/Exception;

    .line 103
    .line 104
    check-cast v2, Lh5/r;

    .line 105
    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    iget-object v1, v2, Lh5/r;->d:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Lh5/z;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/lang/Exception;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    :goto_0
    iget-object v1, v2, Lh5/r;->d:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v1, Lh5/z;

    .line 122
    .line 123
    :goto_1
    invoke-virtual {v1, v0}, Lh5/z;->q(Ljava/lang/Exception;)V

    .line 124
    .line 125
    .line 126
    :goto_2
    return-void

    .line 127
    :goto_3
    iget-object v0, p0, Lo3/k0;->b:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Lv7/m;

    .line 130
    .line 131
    iget-object v1, p0, Lo3/k0;->c:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v1, Ljava/lang/Runnable;

    .line 134
    .line 135
    iget-object v2, v0, Lv7/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 136
    .line 137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Ljava/lang/Thread;

    .line 146
    .line 147
    if-nez v2, :cond_3

    .line 148
    .line 149
    const/4 v2, 0x1

    .line 150
    goto :goto_4

    .line 151
    :cond_3
    const/4 v2, 0x0

    .line 152
    :goto_4
    invoke-static {v2}, Lr3/r;->l(Z)V

    .line 153
    .line 154
    .line 155
    const/4 v2, 0x0

    .line 156
    :try_start_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lv7/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lv7/m;->b()V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :catchall_1
    move-exception v1

    .line 169
    :try_start_3
    iget-object v3, v0, Lv7/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 170
    .line 171
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lv7/m;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :catchall_2
    move-exception v0

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    :goto_5
    throw v1

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
