.class public final synthetic Ll3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ll3/l;->a:I

    iput-object p2, p0, Ll3/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Ll3/l;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg5/a;

    .line 4
    .line 5
    iget-object v1, v0, Lg5/a;->a:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lg5/a;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v2, "WakeLock"

    .line 16
    .line 17
    iget-object v3, v0, Lg5/a;->j:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, " ** IS FORCE-RELEASED ON TIMEOUT **"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lg5/a;->d()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lg5/a;->b()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v2, 0x1

    .line 43
    iput v2, v0, Lg5/a;->c:I

    .line 44
    .line 45
    invoke-virtual {v0}, Lg5/a;->e()V

    .line 46
    .line 47
    .line 48
    :goto_0
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Ll3/l;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ll3/l;->a()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_0
    iget-object v0, p0, Ll3/l;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lc5/s6;

    .line 14
    .line 15
    iget-object v0, v0, Lc5/s6;->c:Lc5/t6;

    .line 16
    .line 17
    iput-object v1, v0, Lc5/t6;->d:Lc5/v2;

    .line 18
    .line 19
    invoke-virtual {v0}, Lc5/t6;->r()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    iget-object v0, p0, Ll3/l;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lc5/f6;

    .line 26
    .line 27
    iput-object v1, v0, Lc5/f6;->k:Lc5/b6;

    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    iget-object v0, p0, Ll3/l;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lo3/p0;

    .line 33
    .line 34
    iget-object v0, v0, Lo3/p0;->g:Lo3/o0;

    .line 35
    .line 36
    new-instance v1, Lm3/b;

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-direct {v1, v2}, Lm3/b;-><init>(I)V

    .line 40
    .line 41
    .line 42
    check-cast v0, Lo3/d0;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lo3/d0;->b(Lm3/b;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_3
    iget-object v0, p0, Ll3/l;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Ll3/o;

    .line 51
    .line 52
    :goto_0
    monitor-enter v0

    .line 53
    :try_start_0
    iget v1, v0, Ll3/o;->a:I

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    if-eq v1, v2, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    iget-object v1, v0, Ll3/o;->d:Ljava/util/ArrayDeque;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Ll3/o;->c()V

    .line 68
    .line 69
    .line 70
    :goto_1
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :cond_1
    iget-object v1, v0, Ll3/o;->d:Ljava/util/ArrayDeque;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ll3/r;

    .line 79
    .line 80
    iget-object v3, v0, Ll3/o;->e:Landroid/util/SparseArray;

    .line 81
    .line 82
    iget v4, v1, Ll3/r;->a:I

    .line 83
    .line 84
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, v0, Ll3/o;->f:Ll3/u;

    .line 88
    .line 89
    iget-object v3, v3, Ll3/u;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 90
    .line 91
    new-instance v4, Ll3/n;

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-direct {v4, v5, v0, v1}, Ll3/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    .line 99
    const-wide/16 v6, 0x1e

    .line 100
    .line 101
    invoke-interface {v3, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 102
    .line 103
    .line 104
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    const-string v3, "MessengerIpcClient"

    .line 106
    .line 107
    const/4 v4, 0x3

    .line 108
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_2

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    add-int/lit8 v4, v4, 0x8

    .line 125
    .line 126
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    .line 128
    .line 129
    const-string v4, "Sending "

    .line 130
    .line 131
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v3, "MessengerIpcClient"

    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_2
    iget-object v3, v0, Ll3/o;->f:Ll3/u;

    .line 147
    .line 148
    iget-object v3, v3, Ll3/u;->a:Landroid/content/Context;

    .line 149
    .line 150
    iget-object v4, v0, Ll3/o;->b:Landroid/os/Messenger;

    .line 151
    .line 152
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    iget v6, v1, Ll3/r;->c:I

    .line 157
    .line 158
    iput v6, v5, Landroid/os/Message;->what:I

    .line 159
    .line 160
    iget v6, v1, Ll3/r;->a:I

    .line 161
    .line 162
    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 163
    .line 164
    iput-object v4, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 165
    .line 166
    new-instance v4, Landroid/os/Bundle;

    .line 167
    .line 168
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v6, "oneWay"

    .line 172
    .line 173
    invoke-virtual {v1}, Ll3/r;->b()Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    .line 179
    .line 180
    const-string v6, "pkg"

    .line 181
    .line 182
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v4, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v3, "data"

    .line 190
    .line 191
    iget-object v1, v1, Ll3/r;->d:Landroid/os/Bundle;

    .line 192
    .line 193
    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 197
    .line 198
    .line 199
    :try_start_1
    iget-object v1, v0, Ll3/o;->c:Ll3/p;

    .line 200
    .line 201
    iget-object v3, v1, Ll3/p;->a:Landroid/os/Messenger;

    .line 202
    .line 203
    if-eqz v3, :cond_3

    .line 204
    .line 205
    invoke-virtual {v3, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_3
    iget-object v1, v1, Ll3/p;->b:Ll3/h;

    .line 211
    .line 212
    if-eqz v1, :cond_4

    .line 213
    .line 214
    iget-object v1, v1, Ll3/h;->a:Landroid/os/Messenger;

    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 225
    .line 226
    const-string v3, "Both messengers are null"

    .line 227
    .line 228
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v0, v2, v1}, Ll3/o;->a(ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :catchall_0
    move-exception v1

    .line 243
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    throw v1

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
