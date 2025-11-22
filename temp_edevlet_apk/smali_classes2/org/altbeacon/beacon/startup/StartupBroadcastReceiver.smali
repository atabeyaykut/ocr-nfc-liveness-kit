.class public Lorg/altbeacon/beacon/startup/StartupBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    const-string v0, "StartupBroadcastReceiver"

    .line 2
    .line 3
    const-string v1, "onReceive called in startup broadcast receiver"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v0, v1, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "StartupBroadcastReceiver"

    .line 32
    .line 33
    const-string v1, "Android Beacon Library restarted via ACTION_BOOT_COMPLETED"

    .line 34
    .line 35
    new-array v3, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0, v1, v3}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lgd/e;->h()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    iget-boolean v1, v0, Lgd/e;->o:Z

    .line 62
    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    const-string p1, "StartupBroadcastReceiver"

    .line 66
    .line 67
    const-string p2, "No consumers are bound.  Ignoring broadcast receiver."

    .line 68
    .line 69
    new-array v0, v2, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-static {p1, p2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_1
    const-string v1, "android.bluetooth.le.extra.CALLBACK_TYPE"

    .line 77
    .line 78
    const/4 v3, -0x1

    .line 79
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v4, 0x1

    .line 84
    if-eq v1, v3, :cond_5

    .line 85
    .line 86
    const-string v5, "StartupBroadcastReceiver"

    .line 87
    .line 88
    const-string v6, "Passive background scan callback type: "

    .line 89
    .line 90
    invoke-static {v6, v1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-array v6, v2, [Ljava/lang/Object;

    .line 95
    .line 96
    invoke-static {v5, v1, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const-string v1, "StartupBroadcastReceiver"

    .line 100
    .line 101
    const-string v5, "got Android background scan via intent"

    .line 102
    .line 103
    new-array v6, v2, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-static {v1, v5, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    const-string v1, "android.bluetooth.le.extra.ERROR_CODE"

    .line 109
    .line 110
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eq v1, v3, :cond_2

    .line 115
    .line 116
    const-string v3, "StartupBroadcastReceiver"

    .line 117
    .line 118
    const-string v5, "Passive background scan failed.  Code; "

    .line 119
    .line 120
    invoke-static {v5, v1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    new-array v5, v2, [Ljava/lang/Object;

    .line 125
    .line 126
    invoke-static {v3, v1, v5}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    const-string v1, "android.bluetooth.le.extra.LIST_SCAN_RESULT"

    .line 130
    .line 131
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    iget-boolean v0, v0, Lgd/e;->o:Z

    .line 136
    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    invoke-static {}, Lkd/l;->c()Lkd/l;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v1, "scheduling an immediate scan job because last did "

    .line 144
    .line 145
    if-eqz p2, :cond_3

    .line 146
    .line 147
    iget-object v3, v0, Lkd/l;->b:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    :cond_3
    monitor-enter v0

    .line 153
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    iget-object p2, v0, Lkd/l;->a:Ljava/lang/Long;

    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 160
    .line 161
    .line 162
    move-result-wide v7

    .line 163
    sub-long/2addr v5, v7

    .line 164
    const-wide/16 v7, 0x2710

    .line 165
    .line 166
    cmp-long p2, v5, v7

    .line 167
    .line 168
    if-lez p2, :cond_4

    .line 169
    .line 170
    const-string p2, "l"

    .line 171
    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 178
    .line 179
    .line 180
    move-result-wide v5

    .line 181
    iget-object v1, v0, Lkd/l;->a:Ljava/lang/Long;

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 184
    .line 185
    .line 186
    move-result-wide v7

    .line 187
    sub-long/2addr v5, v7

    .line 188
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, "millis ago."

    .line 192
    .line 193
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-array v2, v2, [Ljava/lang/Object;

    .line 201
    .line 202
    invoke-static {p2, v1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 206
    .line 207
    .line 208
    move-result-wide v1

    .line 209
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    iput-object p2, v0, Lkd/l;->a:Ljava/lang/Long;

    .line 214
    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-static {p1}, Lkd/m;->d(Landroid/content/Context;)Lkd/m;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-virtual {v0, p1, p2, v4}, Lkd/l;->d(Landroid/content/Context;Lkd/m;Z)V

    .line 221
    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_4
    :try_start_1
    const-string p1, "l"

    .line 225
    .line 226
    const-string p2, "Not scheduling an immediate scan job because we just did recently."

    .line 227
    .line 228
    new-array v1, v2, [Ljava/lang/Object;

    .line 229
    .line 230
    invoke-static {p1, p2, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    monitor-exit v0

    .line 234
    goto :goto_0

    .line 235
    :catchall_0
    move-exception p1

    .line 236
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    throw p1

    .line 238
    :cond_5
    const-string p1, "wakeup"

    .line 239
    .line 240
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-eqz p1, :cond_6

    .line 245
    .line 246
    const-string p1, "StartupBroadcastReceiver"

    .line 247
    .line 248
    const-string p2, "got wake up intent"

    .line 249
    .line 250
    new-array v0, v2, [Ljava/lang/Object;

    .line 251
    .line 252
    invoke-static {p1, p2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_6
    const-string p1, "StartupBroadcastReceiver"

    .line 257
    .line 258
    const-string v0, "Already started.  Ignoring intent: %s of type: %s"

    .line 259
    .line 260
    const/4 v1, 0x2

    .line 261
    new-array v1, v1, [Ljava/lang/Object;

    .line 262
    .line 263
    aput-object p2, v1, v2

    .line 264
    .line 265
    const-string v2, "wakeup"

    .line 266
    .line 267
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    aput-object p2, v1, v4

    .line 272
    .line 273
    invoke-static {p1, v0, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    :cond_7
    :goto_0
    return-void
.end method
