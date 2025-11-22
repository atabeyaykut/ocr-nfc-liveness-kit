.class public Lld/i;
.super Lld/b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field public A:J

.field public B:J

.field public C:Z

.field public final D:Lgd/e;

.field public final E:Landroid/os/PowerManager;

.field public final F:Lld/i$b;

.field public y:Landroid/bluetooth/le/BluetoothLeScanner;

.field public z:Lld/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLkd/k$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lld/b;-><init>(Landroid/content/Context;ZLkd/k$a;)V

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lld/i;->A:J

    iput-wide p2, p0, Lld/i;->B:J

    const/4 p2, 0x0

    iput-boolean p2, p0, Lld/i;->C:Z

    new-instance p2, Lld/i$b;

    invoke-direct {p2, p0}, Lld/i$b;-><init>(Lld/i;)V

    iput-object p2, p0, Lld/i;->F:Lld/i$b;

    iget-object p2, p0, Lld/b;->l:Landroid/content/Context;

    invoke-static {p2}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    move-result-object p2

    iput-object p2, p0, Lld/i;->D:Lgd/e;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lld/i;->E:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lld/b;->d:J

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    sub-long/2addr v1, v3

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    cmp-long v7, v1, v5

    .line 15
    .line 16
    if-lez v7, :cond_0

    .line 17
    .line 18
    const/4 v7, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v7, 0x0

    .line 21
    :goto_0
    iget-boolean v8, v0, Lld/i;->C:Z

    .line 22
    .line 23
    xor-int/lit8 v9, v7, 0x1

    .line 24
    .line 25
    iput-boolean v9, v0, Lld/i;->C:Z

    .line 26
    .line 27
    if-eqz v7, :cond_a

    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v9

    .line 33
    sget-object v11, Lkd/b;->b:Lkd/b;

    .line 34
    .line 35
    iget-wide v12, v11, Lkd/b;->a:J

    .line 36
    .line 37
    sub-long/2addr v9, v12

    .line 38
    const-wide/16 v12, 0x2710

    .line 39
    .line 40
    const-string v14, "CycledLeScannerForLollipop"

    .line 41
    .line 42
    if-eqz v8, :cond_3

    .line 43
    .line 44
    cmp-long v15, v9, v12

    .line 45
    .line 46
    if-lez v15, :cond_2

    .line 47
    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v9

    .line 52
    iput-wide v9, v0, Lld/i;->A:J

    .line 53
    .line 54
    iput-wide v5, v0, Lld/i;->B:J

    .line 55
    .line 56
    const-string v9, "This is Android L. Preparing to do a filtered scan for the background."

    .line 57
    .line 58
    new-array v10, v4, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v14, v9, v10}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-wide v9, v0, Lld/b;->p:J

    .line 64
    .line 65
    const-wide/16 v15, 0x1770

    .line 66
    .line 67
    cmp-long v17, v9, v15

    .line 68
    .line 69
    if-lez v17, :cond_1

    .line 70
    .line 71
    invoke-virtual/range {p0 .. p0}, Lld/i;->p()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const-string v9, "Suppressing scan between cycles because the between scan cycle is too short."

    .line 76
    .line 77
    new-array v10, v4, [Ljava/lang/Object;

    .line 78
    .line 79
    invoke-static {v14, v9, v10}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    new-array v15, v3, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    aput-object v9, v15, v4

    .line 90
    .line 91
    const-string v9, "This is Android L, but we last saw a beacon only %s ago, so we will not keep scanning in background."

    .line 92
    .line 93
    invoke-static {v14, v9, v15}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_1
    iget-wide v9, v0, Lld/i;->A:J

    .line 97
    .line 98
    cmp-long v15, v9, v5

    .line 99
    .line 100
    if-lez v15, :cond_7

    .line 101
    .line 102
    iget-wide v3, v11, Lkd/b;->a:J

    .line 103
    .line 104
    cmp-long v11, v3, v9

    .line 105
    .line 106
    if-lez v11, :cond_6

    .line 107
    .line 108
    iget-wide v9, v0, Lld/i;->B:J

    .line 109
    .line 110
    cmp-long v11, v9, v5

    .line 111
    .line 112
    if-nez v11, :cond_4

    .line 113
    .line 114
    iput-wide v3, v0, Lld/i;->B:J

    .line 115
    .line 116
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    iget-wide v9, v0, Lld/i;->B:J

    .line 121
    .line 122
    sub-long/2addr v3, v9

    .line 123
    cmp-long v9, v3, v12

    .line 124
    .line 125
    if-ltz v9, :cond_5

    .line 126
    .line 127
    const-string v3, "We\'ve been detecting for a bit.  Stopping Android L background scanning"

    .line 128
    .line 129
    const/4 v4, 0x0

    .line 130
    new-array v9, v4, [Ljava/lang/Object;

    .line 131
    .line 132
    invoke-static {v14, v3, v9}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {p0 .. p0}, Lld/i;->r()V

    .line 136
    .line 137
    .line 138
    iput-wide v5, v0, Lld/i;->A:J

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    const/4 v4, 0x0

    .line 142
    const-string v3, "Delivering Android L background scanning results"

    .line 143
    .line 144
    new-array v5, v4, [Ljava/lang/Object;

    .line 145
    .line 146
    invoke-static {v14, v3, v5}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iget-object v3, v0, Lld/b;->t:Lld/a;

    .line 150
    .line 151
    check-cast v3, Lkd/k$a;

    .line 152
    .line 153
    invoke-virtual {v3}, Lkd/k$a;->a()V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    const/4 v4, 0x0

    .line 158
    :goto_2
    const/4 v3, 0x1

    .line 159
    :cond_7
    new-array v3, v3, [Ljava/lang/Object;

    .line 160
    .line 161
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    aput-object v5, v3, v4

    .line 166
    .line 167
    const-string v4, "Waiting to start full Bluetooth scan for another %s milliseconds"

    .line 168
    .line 169
    invoke-static {v14, v4, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    if-eqz v8, :cond_8

    .line 173
    .line 174
    iget-boolean v3, v0, Lld/b;->u:Z

    .line 175
    .line 176
    if-eqz v3, :cond_8

    .line 177
    .line 178
    invoke-virtual/range {p0 .. p0}, Lld/b;->n()V

    .line 179
    .line 180
    .line 181
    :cond_8
    iget-object v3, v0, Lld/b;->q:Landroid/os/Handler;

    .line 182
    .line 183
    new-instance v4, Lld/i$a;

    .line 184
    .line 185
    invoke-direct {v4, v0}, Lld/i$a;-><init>(Lld/i;)V

    .line 186
    .line 187
    .line 188
    const-wide/16 v5, 0x3e8

    .line 189
    .line 190
    cmp-long v8, v1, v5

    .line 191
    .line 192
    if-lez v8, :cond_9

    .line 193
    .line 194
    move-wide v1, v5

    .line 195
    :cond_9
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_a
    iget-wide v1, v0, Lld/i;->A:J

    .line 200
    .line 201
    cmp-long v3, v1, v5

    .line 202
    .line 203
    if-lez v3, :cond_b

    .line 204
    .line 205
    invoke-virtual/range {p0 .. p0}, Lld/i;->r()V

    .line 206
    .line 207
    .line 208
    iput-wide v5, v0, Lld/i;->A:J

    .line 209
    .line 210
    :cond_b
    :goto_3
    return v7
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CycledLeScannerForLollipop"

    const-string v2, "Stopping scan"

    invoke-static {v1, v2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lld/i;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lld/b;->i:Z

    return-void
.end method

.method public final p()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lld/i;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "CycledLeScannerForLollipop"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v3, 0x1c

    .line 13
    .line 14
    if-ge v0, v3, :cond_0

    .line 15
    .line 16
    const-string v0, "Not starting scan because bluetooth is off"

    .line 17
    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v1, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-boolean v3, p0, Lld/i;->C:Z

    .line 30
    .line 31
    iget-object v4, p0, Lld/i;->D:Lgd/e;

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    const-string v0, "starting filtered scan in SCAN_MODE_LOW_POWER"

    .line 36
    .line 37
    new-array v3, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v1, v0, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, v4, Lgd/e;->i:Lmd/a;

    .line 56
    .line 57
    invoke-static {v1}, Lld/n;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_1
    const-string v3, "starting a scan in SCAN_MODE_LOW_LATENCY"

    .line 64
    .line 65
    new-array v5, v2, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-static {v1, v3, v5}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v3, Landroid/bluetooth/le/ScanSettings$Builder;

    .line 71
    .line 72
    invoke-direct {v3}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 73
    .line 74
    .line 75
    const/4 v5, 0x2

    .line 76
    invoke-virtual {v3, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    const/16 v6, 0x1b

    .line 87
    .line 88
    if-lt v5, v6, :cond_5

    .line 89
    .line 90
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 91
    .line 92
    const-string v6, "samsung"

    .line 93
    .line 94
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_2

    .line 99
    .line 100
    const/16 v7, 0x22

    .line 101
    .line 102
    if-lt v5, v7, :cond_3

    .line 103
    .line 104
    :cond_2
    iget-object v5, p0, Lld/i;->E:Landroid/os/PowerManager;

    .line 105
    .line 106
    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_3

    .line 111
    .line 112
    const-string v0, "Using a non-empty scan filter since this is 14.0 or Samsung 8.1+"

    .line 113
    .line 114
    new-array v2, v2, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static {v1, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, v4, Lgd/e;->i:Lmd/a;

    .line 120
    .line 121
    invoke-static {v0}, Lld/n;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    const-string v0, "Using a wildcard scan filter because the screen is on.  We will switch to a non-empty filter if the screen goes off"

    .line 133
    .line 134
    new-array v4, v2, [Ljava/lang/Object;

    .line 135
    .line 136
    invoke-static {v1, v0, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    .line 140
    .line 141
    const-string v4, "android.intent.action.SCREEN_OFF"

    .line 142
    .line 143
    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v4, p0, Lld/b;->l:Landroid/content/Context;

    .line 147
    .line 148
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    iget-object v5, p0, Lld/i;->F:Lld/i$b;

    .line 153
    .line 154
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v4, "registering ScreenOffReceiver "

    .line 160
    .line 161
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    new-array v2, v2, [Ljava/lang/Object;

    .line 172
    .line 173
    invoke-static {v1, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    new-instance v1, Landroid/bluetooth/le/ScanFilter$Builder;

    .line 182
    .line 183
    invoke-direct {v1}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_5
    const-string v4, "Using no scan filter since this is pre-8.1"

    .line 195
    .line 196
    new-array v2, v2, [Ljava/lang/Object;

    .line 197
    .line 198
    invoke-static {v1, v4, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :goto_0
    move-object v1, v0

    .line 202
    move-object v0, v3

    .line 203
    :goto_1
    if-eqz v0, :cond_8

    .line 204
    .line 205
    invoke-virtual {p0}, Lld/i;->s()Landroid/bluetooth/le/BluetoothLeScanner;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    if-nez v2, :cond_6

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_6
    iget-object v3, p0, Lld/i;->z:Lld/l;

    .line 213
    .line 214
    if-nez v3, :cond_7

    .line 215
    .line 216
    new-instance v3, Lld/l;

    .line 217
    .line 218
    invoke-direct {v3, p0}, Lld/l;-><init>(Lld/i;)V

    .line 219
    .line 220
    .line 221
    iput-object v3, p0, Lld/i;->z:Lld/l;

    .line 222
    .line 223
    :cond_7
    iget-object v3, p0, Lld/i;->z:Lld/l;

    .line 224
    .line 225
    iget-object v4, p0, Lld/b;->r:Landroid/os/Handler;

    .line 226
    .line 227
    const/4 v5, 0x0

    .line 228
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    new-instance v5, Lld/j;

    .line 232
    .line 233
    invoke-direct {v5, v2, v1, v0, v3}, Lld/j;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;Ljava/util/ArrayList;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    .line 238
    .line 239
    :cond_8
    :goto_2
    return-void
.end method

.method public final q()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-super {p0}, Lld/b;->q()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CycledLeScannerForLollipop"

    const-string v2, "unregistering ScreenOffReceiver as we stop the cycled scanner"

    invoke-static {v1, v2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lld/b;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lld/i;->F:Lld/i$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lld/i;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1c

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v1, "CycledLeScannerForLollipop"

    .line 17
    .line 18
    const-string v2, "Not stopping scan because bluetooth is off"

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lld/i;->s()Landroid/bluetooth/le/BluetoothLeScanner;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, p0, Lld/i;->z:Lld/l;

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    new-instance v1, Lld/l;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lld/l;-><init>(Lld/i;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lld/i;->z:Lld/l;

    .line 41
    .line 42
    :cond_2
    iget-object v1, p0, Lld/i;->z:Lld/l;

    .line 43
    .line 44
    iget-object v2, p0, Lld/b;->r:Landroid/os/Handler;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lld/k;

    .line 51
    .line 52
    invoke-direct {v3, v0, v1}, Lld/k;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public final s()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 4

    const-string v0, "CycledLeScannerForLollipop"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lld/i;->y:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v2, :cond_1

    const-string v2, "Making new Android L scanner"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lld/b;->g()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lld/b;->g()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    iput-object v2, p0, Lld/i;->y:Landroid/bluetooth/le/BluetoothLeScanner;

    :cond_0
    iget-object v2, p0, Lld/i;->y:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v2, :cond_1

    const-string v2, "Failed to make new Android L scanner"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "SecurityException making new Android L scanner"

    invoke-static {v0, v1, v3}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lld/i;->y:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object v0
.end method

.method public final t()Z
    .locals 5

    const-string v0, "CycledLeScannerForLollipop"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lld/b;->g()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const-string v3, "Cannot get bluetooth adapter"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v3, "SecurityException checking if bluetooth is on"

    invoke-static {v0, v3, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v2
.end method
