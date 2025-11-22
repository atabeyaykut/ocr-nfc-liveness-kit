.class public Lorg/altbeacon/beacon/service/ScanJob;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:Lkd/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Landroid/os/Handler;

.field public c:Lkd/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->d:Z

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->e:Z

    return-void
.end method

.method public static a(Lorg/altbeacon/beacon/service/ScanJob;)Z
    .locals 7

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
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lgd/e;->l()V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, v0, Lgd/e;->m:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const-string v2, "2.20.4"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const-string v4, "ScanJob"

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-array v0, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object v2, v0, v3

    .line 25
    .line 26
    const-string v1, "scanJob version %s is starting up on the main process"

    .line 27
    .line 28
    invoke-static {v4, v1, v0}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v2, v0, v3

    .line 35
    .line 36
    const-string v1, "beaconScanJob library version %s is starting up on a separate process"

    .line 37
    .line 38
    invoke-static {v4, v1, v0}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "beaconScanJob PID is "

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, " with process name "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, "activity"

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/app/ActivityManager;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 89
    .line 90
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 91
    .line 92
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-ne v5, v6, :cond_1

    .line 97
    .line 98
    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const/4 v1, 0x0

    .line 102
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-array v1, v3, [Ljava/lang/Object;

    .line 110
    .line 111
    invoke-static {v4, v0, v1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    new-instance v0, Lhd/f;

    .line 115
    .line 116
    invoke-direct {v0, p0}, Lhd/f;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    sput-object v0, Lgd/c;->A:Lhd/c;

    .line 120
    .line 121
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanJob;->c()Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/ComponentName;

    .line 6
    .line 7
    const-class v2, Lorg/altbeacon/beacon/service/ScanJob;

    .line 8
    .line 9
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    const/16 p0, 0x80

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    if-eqz p0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, "Using "

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " from manifest: "

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v0, 0x0

    .line 61
    new-array v0, v0, [Ljava/lang/Object;

    .line 62
    .line 63
    const-string v1, "ScanJob"

    .line 64
    .line 65
    invoke-static {v1, p1, v0}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return p0

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 70
    .line 71
    const-string v0, "Cannot get job id from manifest.  Make sure that the "

    .line 72
    .line 73
    const-string v1, " is configured in the manifest for the ScanJob."

    .line 74
    .line 75
    invoke-static {v0, p1, v1}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method


# virtual methods
.method public final c()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 5
    .line 6
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v3, 0x1a

    .line 13
    .line 14
    if-lt v2, v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lkd/k;->h()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 20
    .line 21
    invoke-virtual {v0}, Lkd/m;->a()Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 32
    .line 33
    iget-wide v2, v0, Lkd/m;->g:J

    .line 34
    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 41
    .line 42
    iget-wide v2, v0, Lkd/m;->f:J

    .line 43
    .line 44
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v8

    .line 52
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 53
    .line 54
    invoke-virtual {v0}, Lkd/m;->a()Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const-wide/16 v10, 0x0

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 67
    .line 68
    iget-wide v2, v0, Lkd/m;->e:J

    .line 69
    .line 70
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v5

    .line 88
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 89
    .line 90
    iget-object v2, v0, Lkd/k;->c:Lld/b;

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 95
    .line 96
    invoke-virtual {v0}, Lkd/m;->a()Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    move-wide v3, v8

    .line 105
    invoke-virtual/range {v2 .. v7}, Lld/b;->m(JJZ)V

    .line 106
    .line 107
    .line 108
    :cond_3
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->d:Z

    .line 110
    .line 111
    cmp-long v2, v8, v10

    .line 112
    .line 113
    if-gtz v2, :cond_5

    .line 114
    .line 115
    new-array v0, v1, [Ljava/lang/Object;

    .line 116
    .line 117
    const-string v2, "ScanJob"

    .line 118
    .line 119
    const-string v3, "Starting scan with scan period of zero.  Exiting ScanJob."

    .line 120
    .line 121
    invoke-static {v2, v3, v0}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 125
    .line 126
    iget-object v0, v0, Lkd/k;->c:Lld/b;

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-virtual {v0}, Lld/b;->q()V

    .line 131
    .line 132
    .line 133
    :cond_4
    return v1

    .line 134
    :cond_5
    iget-object v2, p0, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 135
    .line 136
    iget-object v2, v2, Lkd/k;->e:Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-gtz v2, :cond_8

    .line 143
    .line 144
    iget-object v2, p0, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 145
    .line 146
    iget-object v2, v2, Lkd/k;->d:Lkd/e;

    .line 147
    .line 148
    invoke-virtual {v2}, Lkd/e;->f()Ljava/util/Set;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-lez v2, :cond_6

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 160
    .line 161
    iget-object v0, v0, Lkd/k;->c:Lld/b;

    .line 162
    .line 163
    if-eqz v0, :cond_7

    .line 164
    .line 165
    invoke-virtual {v0}, Lld/b;->q()V

    .line 166
    .line 167
    .line 168
    :cond_7
    return v1

    .line 169
    :cond_8
    :goto_2
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 170
    .line 171
    iget-object v1, v1, Lkd/k;->c:Lld/b;

    .line 172
    .line 173
    if-eqz v1, :cond_9

    .line 174
    .line 175
    invoke-virtual {v1}, Lld/b;->o()V

    .line 176
    .line 177
    .line 178
    :cond_9
    return v0

    .line 179
    :cond_a
    return v1
.end method

.method public final d()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    const-string v0, "ScanJob"

    .line 6
    .line 7
    const-string v1, "Checking to see if we need to start a passive scan"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {v0, v1, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 16
    .line 17
    iget-object v0, v0, Lkd/m;->b:Lkd/e;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    invoke-virtual {v0}, Lkd/e;->f()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lgd/l;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lkd/e;->j(Lgd/l;)Lkd/h;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    iget-boolean v3, v3, Lkd/h;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    if-ne v3, v4, :cond_0

    .line 50
    .line 51
    monitor-exit v0

    .line 52
    const/4 v0, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    monitor-exit v0

    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_0
    if-eqz v0, :cond_2

    .line 57
    .line 58
    const-string v0, "ScanJob"

    .line 59
    .line 60
    const-string v1, "We are inside a beacon region.  We will not scan between cycles."

    .line 61
    .line 62
    new-array v2, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 v1, 0x1a

    .line 72
    .line 73
    if-lt v0, v1, :cond_7

    .line 74
    .line 75
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 76
    .line 77
    if-eqz v1, :cond_8

    .line 78
    .line 79
    iget-object v3, p0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 80
    .line 81
    iget-object v3, v3, Lkd/m;->c:Ljava/util/HashSet;

    .line 82
    .line 83
    const-string v5, "k"

    .line 84
    .line 85
    const-string v6, "Failed to start background scan on Android O.  Code: "

    .line 86
    .line 87
    new-instance v7, Landroid/bluetooth/le/ScanSettings$Builder;

    .line 88
    .line 89
    invoke-direct {v7}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    new-instance v8, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v8}, Lld/n;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    :try_start_1
    iget-object v8, v1, Lkd/k;->j:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    const-string v9, "bluetooth"

    .line 116
    .line 117
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    check-cast v8, Landroid/bluetooth/BluetoothManager;

    .line 122
    .line 123
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    if-nez v8, :cond_3

    .line 128
    .line 129
    const-string v0, "Failed to construct a BluetoothAdapter"

    .line 130
    .line 131
    new-array v1, v2, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-static {v5, v0, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :cond_3
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-nez v9, :cond_4

    .line 143
    .line 144
    const/16 v9, 0x1c

    .line 145
    .line 146
    if-ge v0, v9, :cond_4

    .line 147
    .line 148
    const-string v0, "Failed to start background scan on Android O: BluetoothAdapter is not enabled"

    .line 149
    .line 150
    new-array v1, v2, [Ljava/lang/Object;

    .line 151
    .line 152
    invoke-static {v5, v0, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_4
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_6

    .line 162
    .line 163
    new-instance v8, Landroid/content/Intent;

    .line 164
    .line 165
    const-class v9, Lorg/altbeacon/beacon/startup/StartupBroadcastReceiver;

    .line 166
    .line 167
    iget-object v1, v1, Lkd/k;->j:Landroid/content/Context;

    .line 168
    .line 169
    invoke-direct {v8, v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .line 171
    .line 172
    const-string v9, "o-scan"

    .line 173
    .line 174
    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    const/high16 v9, 0xa000000

    .line 178
    .line 179
    invoke-static {v1, v2, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v0, v3, v7, v1}, Landroidx/core/app/i;->b(Landroid/bluetooth/le/BluetoothLeScanner;Ljava/util/ArrayList;Landroid/bluetooth/le/ScanSettings;Landroid/app/PendingIntent;)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_5

    .line 188
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    new-array v1, v2, [Ljava/lang/Object;

    .line 202
    .line 203
    invoke-static {v5, v0, v1}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_5
    const-string v0, "Started passive beacon scan"

    .line 208
    .line 209
    new-array v1, v2, [Ljava/lang/Object;

    .line 210
    .line 211
    invoke-static {v5, v0, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_6
    const-string v0, "Failed to start background scan on Android O: scanner is null"

    .line 216
    .line 217
    new-array v1, v2, [Ljava/lang/Object;

    .line 218
    .line 219
    invoke-static {v5, v0, v1}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-array v1, v4, [Ljava/lang/Object;

    .line 225
    .line 226
    aput-object v0, v1, v2

    .line 227
    .line 228
    const-string v0, "Unexpected runtime exception starting Android O background scanner"

    .line 229
    .line 230
    invoke-static {v5, v0, v1}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :catch_1
    move-exception v0

    .line 235
    new-array v1, v4, [Ljava/lang/Object;

    .line 236
    .line 237
    aput-object v0, v1, v2

    .line 238
    .line 239
    const-string v0, "NullPointerException starting Android O background scanner"

    .line 240
    .line 241
    invoke-static {v5, v0, v1}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :catch_2
    const-string v0, "SecurityException making Android O background scanner"

    .line 246
    .line 247
    new-array v1, v2, [Ljava/lang/Object;

    .line 248
    .line 249
    invoke-static {v5, v0, v1}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_7
    const-string v0, "ScanJob"

    .line 254
    .line 255
    const-string v1, "This is not Android O.  No scanning between cycles when using ScanJob"

    .line 256
    .line 257
    new-array v2, v2, [Ljava/lang/Object;

    .line 258
    .line 259
    invoke-static {v0, v1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :catchall_0
    move-exception v1

    .line 264
    monitor-exit v0

    .line 265
    throw v1

    .line 266
    :cond_8
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->d:Z

    .line 3
    .line 4
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v3, 0x1a

    .line 11
    .line 12
    if-lt v2, v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lkd/k;->h()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 18
    .line 19
    iget-object v1, v1, Lkd/k;->c:Lld/b;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lld/b;->q()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 27
    .line 28
    iget-object v1, v1, Lkd/k;->c:Lld/b;

    .line 29
    .line 30
    invoke-virtual {v1}, Lld/b;->d()V

    .line 31
    .line 32
    .line 33
    :cond_1
    const-string v1, "Scanning stopped"

    .line 34
    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    const-string v2, "ScanJob"

    .line 38
    .line 39
    invoke-static {v2, v1, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScanJob Lifecycle START: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ScanJob"

    invoke-static {v3, v0, v2}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->e:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/altbeacon/beacon/service/ScanJob$a;

    invoke-direct {v1, p0, p1}, Lorg/altbeacon/beacon/service/ScanJob$a;-><init>(Lorg/altbeacon/beacon/service/ScanJob;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 7

    .line 1
    const-string v0, "ScanJob Lifecycle STOP: "

    .line 2
    .line 3
    const-string v1, "onStopJob called for periodic scan "

    .line 4
    .line 5
    const-string v2, "onStopJob called for immediate scan "

    .line 6
    .line 7
    const-string v3, "ScanJob"

    .line 8
    .line 9
    const-string v4, "onStopJob called"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    new-array v6, v5, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v3, v4, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    monitor-enter p0

    .line 18
    const/4 v3, 0x1

    .line 19
    :try_start_0
    iput-boolean v3, p0, Lorg/altbeacon/beacon/service/ScanJob;->e:Z

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const-string v3, "periodicScanJobId"

    .line 26
    .line 27
    invoke-static {p0, v3}, Lorg/altbeacon/beacon/service/ScanJob;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne p1, v3, :cond_0

    .line 32
    .line 33
    const-string p1, "ScanJob"

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-array v2, v5, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {p1, v1, v2}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string p1, "ScanJob"

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-array v2, v5, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-static {p1, v1, v2}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    const-string p1, "ScanJob"

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-array v1, v5, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-static {p1, v0, v1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lorg/altbeacon/beacon/service/ScanJob;->b:Landroid/os/Handler;

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanJob;->e()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanJob;->d()V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lorg/altbeacon/beacon/service/ScanJob;->c:Lkd/k;

    .line 107
    .line 108
    if-eqz p1, :cond_1

    .line 109
    .line 110
    invoke-virtual {p1}, Lkd/k;->i()V

    .line 111
    .line 112
    .line 113
    :cond_1
    monitor-exit p0

    .line 114
    return v5

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    throw p1
.end method
