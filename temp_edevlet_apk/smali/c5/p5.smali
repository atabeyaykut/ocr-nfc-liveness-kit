.class public final Lc5/p5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lc5/r3;


# direct methods
.method public synthetic constructor <init>(Lc5/r3;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lc5/p5;->a:I

    iput-object p1, p0, Lc5/p5;->c:Lc5/r3;

    iput-object p2, p0, Lc5/p5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lc5/p5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lc5/p5;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lc5/p5;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    iget-object v2, p0, Lc5/p5;->c:Lc5/r3;

    .line 17
    .line 18
    move-object v3, v2

    .line 19
    check-cast v3, Lc5/v5;

    .line 20
    .line 21
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 22
    .line 23
    check-cast v3, Lc5/i4;

    .line 24
    .line 25
    iget-object v3, v3, Lc5/i4;->g:Lc5/e;

    .line 26
    .line 27
    check-cast v2, Lc5/v5;

    .line 28
    .line 29
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 30
    .line 31
    check-cast v2, Lc5/i4;

    .line 32
    .line 33
    invoke-virtual {v2}, Lc5/i4;->o()Lc5/w2;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lc5/w2;->h()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v4, Lc5/r2;->N:Lc5/q2;

    .line 42
    .line 43
    invoke-virtual {v3, v2, v4}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :try_start_1
    iget-object v1, p0, Lc5/p5;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 59
    .line 60
    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v1

    .line 64
    iget-object v2, p0, Lc5/p5;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :catchall_1
    move-exception v1

    .line 73
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    throw v1

    .line 75
    :goto_0
    iget-object v0, p0, Lc5/p5;->c:Lc5/r3;

    .line 76
    .line 77
    move-object v1, v0

    .line 78
    check-cast v1, Lc5/t6;

    .line 79
    .line 80
    iget-object v2, v1, Lc5/t6;->d:Lc5/v2;

    .line 81
    .line 82
    if-nez v2, :cond_0

    .line 83
    .line 84
    iget-object v0, v1, Lc5/x4;->a:Lc5/z4;

    .line 85
    .line 86
    check-cast v0, Lc5/i4;

    .line 87
    .line 88
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 89
    .line 90
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 91
    .line 92
    .line 93
    const-string v1, "Failed to send current screen to service"

    .line 94
    .line 95
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_0
    :try_start_2
    iget-object v3, p0, Lc5/p5;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v3, Lc5/b6;

    .line 104
    .line 105
    if-nez v3, :cond_1

    .line 106
    .line 107
    move-object v3, v0

    .line 108
    check-cast v3, Lc5/t6;

    .line 109
    .line 110
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 111
    .line 112
    check-cast v3, Lc5/i4;

    .line 113
    .line 114
    iget-object v3, v3, Lc5/i4;->a:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const/4 v4, 0x0

    .line 121
    const-wide/16 v5, 0x0

    .line 122
    .line 123
    move-object v7, v3

    .line 124
    move-wide v8, v5

    .line 125
    move-object v5, v4

    .line 126
    move-object v6, v5

    .line 127
    move-wide v3, v8

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    iget-wide v4, v3, Lc5/b6;->c:J

    .line 130
    .line 131
    iget-object v6, v3, Lc5/b6;->a:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v3, v3, Lc5/b6;->b:Ljava/lang/String;

    .line 134
    .line 135
    move-object v7, v0

    .line 136
    check-cast v7, Lc5/t6;

    .line 137
    .line 138
    iget-object v7, v7, Lc5/x4;->a:Lc5/z4;

    .line 139
    .line 140
    check-cast v7, Lc5/i4;

    .line 141
    .line 142
    iget-object v7, v7, Lc5/i4;->a:Landroid/content/Context;

    .line 143
    .line 144
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    move-object v8, v6

    .line 149
    move-object v6, v3

    .line 150
    move-wide v3, v4

    .line 151
    move-object v5, v8

    .line 152
    :goto_1
    invoke-interface/range {v2 .. v7}, Lc5/v2;->Q(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    check-cast v0, Lc5/t6;

    .line 156
    .line 157
    invoke-virtual {v0}, Lc5/t6;->s()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 163
    .line 164
    check-cast v1, Lc5/i4;

    .line 165
    .line 166
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 167
    .line 168
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 169
    .line 170
    .line 171
    const-string v2, "Failed to send current screen to the service"

    .line 172
    .line 173
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 174
    .line 175
    invoke-virtual {v1, v0, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_2
    return-void

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
