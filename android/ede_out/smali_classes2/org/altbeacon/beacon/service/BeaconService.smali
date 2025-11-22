.class public Lorg/altbeacon/beacon/service/BeaconService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/BeaconService$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Lkd/k;

.field public c:Lgd/d;

.field public final d:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->a:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lorg/altbeacon/beacon/service/BeaconService$a;

    invoke-direct {v1, p0}, Lorg/altbeacon/beacon/service/BeaconService$a;-><init>(Lorg/altbeacon/beacon/service/BeaconService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->d:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public final a(JJZ)V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 2
    .line 3
    iget-object v1, v0, Lkd/k;->c:Lld/b;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-wide v2, p1

    .line 8
    move-wide v4, p3

    .line 9
    move v6, p5

    .line 10
    invoke-virtual/range {v1 .. v6}, Lld/b;->m(JJZ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final b(Lgd/l;)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "BeaconService"

    .line 2
    .line 3
    const-string v1, "stopMonitoring called"

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
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 12
    .line 13
    iget-object v0, v0, Lkd/k;->d:Lkd/e;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-virtual {v0}, Lkd/e;->d()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lkd/e;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    const-string p1, "BeaconService"

    .line 28
    .line 29
    const-string v0, "Currently monitoring %s regions."

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 35
    .line 36
    iget-object v3, v3, Lkd/k;->d:Lkd/e;

    .line 37
    .line 38
    invoke-virtual {v3}, Lkd/e;->g()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    aput-object v3, v1, v2

    .line 47
    .line 48
    invoke-static {p1, v0, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 52
    .line 53
    iget-object p1, p1, Lkd/k;->d:Lkd/e;

    .line 54
    .line 55
    invoke-virtual {p1}, Lkd/e;->g()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_0

    .line 60
    .line 61
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 62
    .line 63
    iget-object p1, p1, Lkd/k;->e:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_0

    .line 70
    .line 71
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 72
    .line 73
    iget-object p1, p1, Lkd/k;->c:Lld/b;

    .line 74
    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    invoke-virtual {p1}, Lld/b;->q()V

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    monitor-exit v0

    .line 83
    throw p1
.end method

.method public final c(Lgd/l;)V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 2
    .line 3
    iget-object v0, v0, Lkd/k;->e:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 7
    .line 8
    iget-object v1, v1, Lkd/k;->e:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 14
    .line 15
    iget-object p1, p1, Lkd/k;->e:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const-string v1, "BeaconService"

    .line 22
    .line 23
    const-string v2, "Currently ranging %s regions."

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v4, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 29
    .line 30
    iget-object v4, v4, Lkd/k;->e:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x0

    .line 41
    aput-object v4, v3, v5

    .line 42
    .line 43
    invoke-static {v1, v2, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 50
    .line 51
    iget-object p1, p1, Lkd/k;->d:Lkd/e;

    .line 52
    .line 53
    invoke-virtual {p1}, Lkd/e;->g()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 60
    .line 61
    iget-object p1, p1, Lkd/k;->c:Lld/b;

    .line 62
    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    invoke-virtual {p1}, Lld/b;->q()V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BeaconService"

    const-string v1, "binding"

    invoke-static {v0, v1, p1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->d:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreate()V
    .locals 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lkd/k;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lkd/k;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 14
    .line 15
    iget-object v1, v0, Lkd/k;->c:Lld/b;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lkd/k;->b(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 24
    .line 25
    invoke-static {p0}, Lkd/e;->c(Landroid/content/Context;)Lkd/e;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lkd/k;->d:Lkd/e;

    .line 30
    .line 31
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 32
    .line 33
    new-instance v1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lkd/k;->g(Ljava/util/HashMap;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 42
    .line 43
    new-instance v1, Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lkd/k;->f(Ljava/util/HashSet;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 52
    .line 53
    new-instance v1, Lkd/c;

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-direct {v1, v3}, Lkd/c;-><init>(Z)V

    .line 57
    .line 58
    .line 59
    iput-object v1, v0, Lkd/k;->g:Lkd/c;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lgd/e;->l()V

    .line 70
    .line 71
    .line 72
    iget-boolean v0, v0, Lgd/e;->m:Z

    .line 73
    .line 74
    const-string v1, "2.20.4"

    .line 75
    .line 76
    const-string v4, "BeaconService"

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    new-array v0, v3, [Ljava/lang/Object;

    .line 82
    .line 83
    aput-object v1, v0, v2

    .line 84
    .line 85
    const-string v1, "beaconService version %s is starting up on the main process"

    .line 86
    .line 87
    invoke-static {v4, v1, v0}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->c:Lgd/d;

    .line 91
    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    const-class v0, Lgd/d;

    .line 95
    .line 96
    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lgd/d;->b:Lgd/d;

    .line 98
    .line 99
    if-nez v1, :cond_1

    .line 100
    .line 101
    new-instance v1, Lgd/d;

    .line 102
    .line 103
    invoke-direct {v1}, Lgd/d;-><init>()V

    .line 104
    .line 105
    .line 106
    sput-object v1, Lgd/d;->b:Lgd/d;

    .line 107
    .line 108
    :cond_1
    sget-object v1, Lgd/d;->b:Lgd/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    monitor-exit v0

    .line 111
    iput-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->c:Lgd/d;

    .line 112
    .line 113
    invoke-virtual {v1}, Lgd/d;->c()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v1

    .line 118
    monitor-exit v0

    .line 119
    throw v1

    .line 120
    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 121
    .line 122
    aput-object v1, v0, v2

    .line 123
    .line 124
    const-string v1, "beaconService version %s is starting up on a separate process"

    .line 125
    .line 126
    invoke-static {v4, v1, v0}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v1, "beaconService PID is "

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, " with process name "

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, "activity"

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Landroid/app/ActivityManager;

    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-eqz v1, :cond_4

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_4

    .line 171
    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 177
    .line 178
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 179
    .line 180
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-ne v7, v8, :cond_3

    .line 185
    .line 186
    iget-object v1, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_4
    move-object v1, v5

    .line 190
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    new-array v1, v2, [Ljava/lang/Object;

    .line 198
    .line 199
    invoke-static {v4, v0, v1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_5
    :goto_1
    const-string v0, "longScanForcingEnabled"

    .line 203
    .line 204
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    new-instance v6, Landroid/content/ComponentName;

    .line 209
    .line 210
    const-class v7, Lorg/altbeacon/beacon/service/BeaconService;

    .line 211
    .line 212
    invoke-direct {v6, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .line 214
    .line 215
    const/16 v7, 0x80

    .line 216
    .line 217
    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-eqz v1, :cond_6

    .line 222
    .line 223
    iget-object v6, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 224
    .line 225
    if-eqz v6, :cond_6

    .line 226
    .line 227
    invoke-virtual {v6, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    if-eqz v6, :cond_6

    .line 232
    .line 233
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 234
    .line 235
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    goto :goto_2

    .line 244
    :catch_0
    nop

    .line 245
    :cond_6
    move-object v0, v5

    .line 246
    :goto_2
    if-eqz v0, :cond_7

    .line 247
    .line 248
    const-string v1, "true"

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_7

    .line 255
    .line 256
    const-string v0, "longScanForcingEnabled to keep scans going on Android N for > 30 minutes"

    .line 257
    .line 258
    new-array v1, v2, [Ljava/lang/Object;

    .line 259
    .line 260
    invoke-static {v4, v0, v1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 264
    .line 265
    iget-object v0, v0, Lkd/k;->c:Lld/b;

    .line 266
    .line 267
    if-eqz v0, :cond_7

    .line 268
    .line 269
    iput-boolean v3, v0, Lld/b;->g:Z

    .line 270
    .line 271
    :cond_7
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 272
    .line 273
    invoke-virtual {v0}, Lkd/k;->e()V

    .line 274
    .line 275
    .line 276
    new-instance v0, Lhd/f;

    .line 277
    .line 278
    sget-object v1, Lgd/e;->x:Lgd/e;

    .line 279
    .line 280
    invoke-direct {v0, p0}, Lhd/f;-><init>(Landroid/content/Context;)V

    .line 281
    .line 282
    .line 283
    sput-object v0, Lgd/c;->A:Lhd/c;

    .line 284
    .line 285
    :try_start_2
    const-string v0, "org.altbeacon.beacon.SimulatedScanData"

    .line 286
    .line 287
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const-string v1, "beacons"

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 298
    .line 299
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    check-cast v0, Ljava/util/List;

    .line 304
    .line 305
    iput-object v0, v1, Lkd/k;->i:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 306
    .line 307
    goto :goto_3

    .line 308
    :catch_1
    move-exception v0

    .line 309
    const-string v1, "Cannot get simulated Scan data.  Make sure your org.altbeacon.beacon.SimulatedScanData class defines a field with the signature \'public static List<Beacon> beacons\'"

    .line 310
    .line 311
    new-array v2, v2, [Ljava/lang/Object;

    .line 312
    .line 313
    invoke-static {v0, v4, v1, v2}, Lid/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :catch_2
    const-string v0, "No org.altbeacon.beacon.SimulatedScanData class exists."

    .line 318
    .line 319
    new-array v1, v2, [Ljava/lang/Object;

    .line 320
    .line 321
    invoke-static {v4, v0, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    :goto_3
    return-void
.end method

.method public final onDestroy()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "onDestroy()"

    .line 5
    .line 6
    const-string v3, "BeaconService"

    .line 7
    .line 8
    invoke-static {v3, v2, v1}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->c:Lgd/d;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget v2, v1, Lgd/d;->a:I

    .line 16
    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    iput v2, v1, Lgd/d;->a:I

    .line 20
    .line 21
    :cond_0
    const-string v1, "onDestroy called.  stopping scanning"

    .line 22
    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v3, v1, v0}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->a:Landroid/os/Handler;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 35
    .line 36
    iget-object v0, v0, Lkd/k;->c:Lld/b;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lld/b;->q()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 44
    .line 45
    iget-object v0, v0, Lkd/k;->c:Lld/b;

    .line 46
    .line 47
    invoke-virtual {v0}, Lld/b;->d()V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 51
    .line 52
    iget-object v0, v0, Lkd/k;->d:Lkd/e;

    .line 53
    .line 54
    invoke-virtual {v0}, Lkd/e;->k()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 58
    .line 59
    invoke-virtual {v0}, Lkd/k;->i()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "starting with null intent"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "starting with intent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BeaconService"

    invoke-static {v2, v0, v1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public final onTaskRemoved(Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    new-array v0, p1, [Ljava/lang/Object;

    .line 6
    .line 7
    const-string v1, "BeaconService"

    .line 8
    .line 9
    const-string v2, "task removed"

    .line 10
    .line 11
    invoke-static {v1, v2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "4.4.1"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string v2, "4.4.2"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    const-string v2, "4.4.3"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v2, "alarm"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/app/AlarmManager;

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    const-wide/16 v4, 0x3e8

    .line 57
    .line 58
    add-long/2addr v2, v4

    .line 59
    new-instance v4, Landroid/content/Intent;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-class v6, Lorg/altbeacon/beacon/startup/StartupBroadcastReceiver;

    .line 66
    .line 67
    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const/4 v6, 0x1

    .line 75
    const/high16 v7, 0x44000000    # 512.0f

    .line 76
    .line 77
    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "Setting a wakeup alarm to go off due to Android 4.4.2 service restarting bug."

    .line 85
    .line 86
    new-array p1, p1, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-static {v1, v0, p1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 3

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "BeaconService"

    const-string v2, "unbinding so destroying self"

    invoke-static {v1, v2, v0}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return p1
.end method
