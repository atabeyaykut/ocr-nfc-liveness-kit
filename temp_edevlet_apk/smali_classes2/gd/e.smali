.class public final Lgd/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgd/e$d;,
        Lgd/e$c;,
        Lgd/e$e;
    }
.end annotation


# static fields
.field public static A:J = 0x2710L

.field public static volatile x:Lgd/e; = null
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static y:Z = false

.field public static final z:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public c:Landroid/os/Messenger;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Ljava/util/HashSet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Ljava/util/HashSet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final i:Lmd/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public o:Z

.field public final p:Landroid/os/Handler;

.field public q:Z

.field public final r:J

.field public final s:J

.field public final t:J

.field public final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lgd/l;",
            "Lgd/m;",
            ">;"
        }
    .end annotation
.end field

.field public v:Lgd/e$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public w:Ljd/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lgd/e;->z:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lgd/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lgd/e;->c:Landroid/os/Messenger;

    .line 13
    .line 14
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lgd/e;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 20
    .line 21
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lgd/e;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27
    .line 28
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lgd/e;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 34
    .line 35
    new-instance v1, Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lgd/e;->g:Ljava/util/HashSet;

    .line 41
    .line 42
    new-instance v1, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lgd/e;->h:Ljava/util/HashSet;

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lgd/e;->j:Z

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    iput-boolean v2, p0, Lgd/e;->k:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lgd/e;->l:Z

    .line 56
    .line 57
    iput-boolean v2, p0, Lgd/e;->m:Z

    .line 58
    .line 59
    iput-object v0, p0, Lgd/e;->n:Ljava/lang/Boolean;

    .line 60
    .line 61
    iput-boolean v2, p0, Lgd/e;->o:Z

    .line 62
    .line 63
    new-instance v3, Landroid/os/Handler;

    .line 64
    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    .line 71
    .line 72
    iput-object v3, p0, Lgd/e;->p:Landroid/os/Handler;

    .line 73
    .line 74
    iput-boolean v2, p0, Lgd/e;->q:Z

    .line 75
    .line 76
    const-wide/16 v3, 0x44c

    .line 77
    .line 78
    iput-wide v3, p0, Lgd/e;->r:J

    .line 79
    .line 80
    const-wide/16 v3, 0x2710

    .line 81
    .line 82
    iput-wide v3, p0, Lgd/e;->s:J

    .line 83
    .line 84
    const-wide/32 v3, 0x493e0

    .line 85
    .line 86
    .line 87
    iput-wide v3, p0, Lgd/e;->t:J

    .line 88
    .line 89
    new-instance v3, Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v3, p0, Lgd/e;->u:Ljava/util/HashMap;

    .line 95
    .line 96
    iput-object v0, p0, Lgd/e;->v:Lgd/e$b;

    .line 97
    .line 98
    iput-object v0, p0, Lgd/e;->w:Ljd/a;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lgd/e;->a:Landroid/content/Context;

    .line 105
    .line 106
    new-instance v0, Lmd/c;

    .line 107
    .line 108
    invoke-direct {v0, p1}, Lmd/c;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lmd/c;->a()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v0}, Lmd/c;->a()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iput-boolean v0, p0, Lgd/e;->m:Z

    .line 144
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v6, "BeaconManager started up on pid "

    .line 148
    .line 149
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v5, " named \'"

    .line 156
    .line 157
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v3, "\' for application package \'"

    .line 164
    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v3, "\'.  isMainProcess="

    .line 172
    .line 173
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-boolean v3, p0, Lgd/e;->m:Z

    .line 177
    .line 178
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    new-array v3, v2, [Ljava/lang/Object;

    .line 186
    .line 187
    const-string v4, "BeaconManager"

    .line 188
    .line 189
    invoke-static {v4, v0, v3}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    new-instance v3, Landroid/content/Intent;

    .line 197
    .line 198
    const-class v4, Lorg/altbeacon/beacon/service/BeaconService;

    .line 199
    .line 200
    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .line 202
    .line 203
    const/high16 p1, 0x10000

    .line 204
    .line 205
    invoke-virtual {v0, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    if-eqz p1, :cond_1

    .line 210
    .line 211
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-nez p1, :cond_0

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_0
    new-instance p1, Lgd/e$e;

    .line 219
    .line 220
    invoke-direct {p1}, Lgd/e$e;-><init>()V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    :cond_1
    :goto_0
    new-instance p1, Lmd/a;

    .line 225
    .line 226
    invoke-direct {p1}, Lmd/a;-><init>()V

    .line 227
    .line 228
    .line 229
    new-instance v0, Lgd/e$a;

    .line 230
    .line 231
    invoke-direct {v0, p0}, Lgd/e$a;-><init>(Lgd/e;)V

    .line 232
    .line 233
    .line 234
    iput-object v0, p1, Lmd/a;->a:Lmd/b;

    .line 235
    .line 236
    iput-object p1, p0, Lgd/e;->i:Lmd/a;

    .line 237
    .line 238
    new-instance v0, Lgd/b;

    .line 239
    .line 240
    invoke-direct {v0}, Lgd/b;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v0}, Lmd/a;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 247
    .line 248
    const/16 v0, 0x1a

    .line 249
    .line 250
    if-lt p1, v0, :cond_2

    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_2
    const/4 v1, 0x0

    .line 254
    :goto_1
    iput-boolean v1, p0, Lgd/e;->o:Z

    .line 255
    .line 256
    return-void
.end method

.method public static g(Landroid/content/Context;)Lgd/e;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lgd/e;->x:Lgd/e;

    if-nez v0, :cond_1

    sget-object v1, Lgd/e;->z:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgd/e;->x:Lgd/e;

    if-nez v0, :cond_0

    new-instance v0, Lgd/e;

    invoke-direct {v0, p0}, Lgd/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgd/e;->x:Lgd/e;

    const-string p0, "BeaconManager"

    const-string v2, "API BeaconManager constructed "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(ILgd/l;)V
    .locals 18
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lgd/e;->h()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-string v4, "BeaconManager"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    const-string v1, "The BeaconManager is not bound to the service.  Call beaconManager.bind(BeaconConsumer consumer) and wait for a callback to onBeaconServiceConnect()"

    .line 17
    .line 18
    new-array v2, v5, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v4, v1, v2}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-boolean v3, v0, Lgd/e;->o:Z

    .line 25
    .line 26
    iget-object v6, v0, Lgd/e;->a:Landroid/content/Context;

    .line 27
    .line 28
    if-nez v3, :cond_8

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v3, v1, v5, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    iget-wide v8, v0, Lgd/e;->t:J

    .line 36
    .line 37
    iget-wide v12, v0, Lgd/e;->s:J

    .line 38
    .line 39
    iget-wide v14, v0, Lgd/e;->r:J

    .line 40
    .line 41
    const/4 v10, 0x6

    .line 42
    const-string v11, "callbackPackageName"

    .line 43
    .line 44
    const-string v5, "backgroundFlag"

    .line 45
    .line 46
    const-string v3, "betweenScanPeriod"

    .line 47
    .line 48
    move-wide/from16 v16, v8

    .line 49
    .line 50
    const-string v8, "scanPeriod"

    .line 51
    .line 52
    if-ne v1, v10, :cond_3

    .line 53
    .line 54
    iget-boolean v1, v0, Lgd/e;->k:Z

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-wide v12, v14

    .line 60
    :goto_0
    if-eqz v1, :cond_2

    .line 61
    .line 62
    move-wide/from16 v9, v16

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-wide/16 v9, 0x0

    .line 66
    .line 67
    :goto_1
    new-instance v2, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v8, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v2, v11, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    invoke-virtual {v7, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :cond_3
    const/4 v9, 0x7

    .line 91
    if-ne v1, v9, :cond_4

    .line 92
    .line 93
    new-instance v1, Lkd/n;

    .line 94
    .line 95
    invoke-direct {v1}, Lkd/n;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static {v6}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    .line 103
    .line 104
    iget-object v4, v2, Lgd/e;->i:Lmd/a;

    .line 105
    .line 106
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    .line 108
    .line 109
    iput-object v3, v1, Lkd/n;->a:Ljava/util/ArrayList;

    .line 110
    .line 111
    iget-boolean v2, v2, Lgd/e;->j:Z

    .line 112
    .line 113
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iput-object v2, v1, Lkd/n;->b:Ljava/lang/Boolean;

    .line 118
    .line 119
    sget-boolean v2, Lgd/e;->y:Z

    .line 120
    .line 121
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iput-object v2, v1, Lkd/n;->c:Ljava/lang/Boolean;

    .line 126
    .line 127
    sget-wide v2, Lgd/e;->A:J

    .line 128
    .line 129
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iput-object v2, v1, Lkd/n;->d:Ljava/lang/Long;

    .line 134
    .line 135
    sget-boolean v2, Lkd/f;->c:Z

    .line 136
    .line 137
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iput-object v2, v1, Lkd/n;->e:Ljava/lang/Boolean;

    .line 142
    .line 143
    sget-boolean v2, Lgd/c;->z:Z

    .line 144
    .line 145
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iput-object v2, v1, Lkd/n;->f:Ljava/lang/Boolean;

    .line 150
    .line 151
    new-instance v2, Landroid/os/Bundle;

    .line 152
    .line 153
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v3, "SettingsData"

    .line 157
    .line 158
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_4
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    const/4 v6, 0x1

    .line 167
    new-array v6, v6, [Ljava/lang/Object;

    .line 168
    .line 169
    const/4 v9, 0x0

    .line 170
    aput-object v1, v6, v9

    .line 171
    .line 172
    const-string v9, "callback packageName: %s"

    .line 173
    .line 174
    invoke-static {v4, v9, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget-boolean v4, v0, Lgd/e;->k:Z

    .line 178
    .line 179
    if-eqz v4, :cond_5

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    move-wide v12, v14

    .line 183
    :goto_3
    if-eqz v4, :cond_6

    .line 184
    .line 185
    move-wide/from16 v9, v16

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_6
    const-wide/16 v9, 0x0

    .line 189
    .line 190
    :goto_4
    new-instance v6, Landroid/os/Bundle;

    .line 191
    .line 192
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v8, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6, v3, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6, v11, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    if-eqz v2, :cond_7

    .line 208
    .line 209
    const-string v1, "region"

    .line 210
    .line 211
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 212
    .line 213
    .line 214
    :cond_7
    invoke-virtual {v7, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 215
    .line 216
    .line 217
    :goto_5
    iget-object v1, v0, Lgd/e;->c:Landroid/os/Messenger;

    .line 218
    .line 219
    invoke-virtual {v1, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_8
    invoke-static {}, Lkd/l;->c()Lkd/l;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v1, v6, v0}, Lkd/l;->a(Landroid/content/Context;Lgd/e;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "BeaconManager"

    .line 5
    .line 6
    const-string v3, "API applySettings"

    .line 7
    .line 8
    invoke-static {v2, v3, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lgd/e;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lgd/e;->h()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string v1, "Not synchronizing settings to service, as it has not started up yet"

    .line 25
    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {v2, v1, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    monitor-enter p0

    .line 33
    :try_start_0
    iget-boolean v1, p0, Lgd/e;->o:Z

    .line 34
    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    invoke-virtual {p0}, Lgd/e;->h()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const-string v1, "BeaconManager"

    .line 44
    .line 45
    const-string v2, "No settings sync to running service -- service not bound"

    .line 46
    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {v1, v2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-boolean v1, p0, Lgd/e;->q:Z

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lgd/e;->q:Z

    .line 59
    .line 60
    const-string v1, "BeaconManager"

    .line 61
    .line 62
    const-string v2, "API Scheduling settings sync to running service."

    .line 63
    .line 64
    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {v1, v2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lgd/e;->p:Landroid/os/Handler;

    .line 70
    .line 71
    new-instance v1, Lgd/f;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lgd/f;-><init>(Lgd/e;)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v2, 0x64

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const-string v1, "BeaconManager"

    .line 83
    .line 84
    const-string v2, "Already scheduled settings sync to running service."

    .line 85
    .line 86
    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-static {v1, v2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    invoke-static {}, Lkd/l;->c()Lkd/l;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lgd/e;->a:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {v0, v1, p0}, Lkd/l;->a(Landroid/content/Context;Lgd/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    :goto_0
    monitor-exit p0

    .line 102
    :goto_1
    return-void

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    monitor-exit p0

    .line 105
    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgd/e;->v:Lgd/e$b;

    if-nez v0, :cond_0

    new-instance v0, Lgd/e$b;

    invoke-direct {v0, p0}, Lgd/e$b;-><init>(Lgd/e;)V

    iput-object v0, p0, Lgd/e;->v:Lgd/e$b;

    :cond_0
    iget-object v0, p0, Lgd/e;->v:Lgd/e$b;

    invoke-virtual {p0, v0}, Lgd/e;->d(Lgd/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Lgd/i;)V
    .locals 7
    .param p1    # Lgd/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lgd/e;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "BeaconManager"

    const-string v0, "Method invocation will be ignored."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lgd/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    new-instance v2, Lgd/e$d;

    invoke-direct {v2, p0}, Lgd/e$d;-><init>(Lgd/e;)V

    iget-object v3, p0, Lgd/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgd/e$d;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    const-string p1, "BeaconManager"

    const-string v2, "This consumer is already bound"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const-string v3, "BeaconManager"

    const-string v5, "This consumer is not bound.  Binding now: %s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-static {v3, v5, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v3, p0, Lgd/e;->o:Z

    if-eqz v3, :cond_3

    const-string v2, "BeaconManager"

    const-string v3, "Not starting beacon scanning service. Using scheduled jobs"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lgd/i;->b()V

    goto :goto_1

    :cond_3
    const-string v3, "BeaconManager"

    const-string v5, "Binding to service"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Landroid/content/Intent;

    invoke-interface {p1}, Lgd/i;->c()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, v2, Lgd/e$d;->b:Lgd/e$c;

    invoke-interface {p1, v3, v2}, Lgd/i;->a(Landroid/content/Intent;Lgd/e$c;)Z

    :goto_1
    const-string p1, "BeaconManager"

    const-string v2, "consumer count is now: %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lgd/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1, v2, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lgd/e;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lgd/e;->m:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "Ranging/Monitoring may not be controlled from a separate BeaconScanner process.  To remove this warning, please wrap this call in: if (beaconManager.isMainProcess())"

    .line 13
    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v2, "BeaconManager"

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    return v1
.end method

.method public final f()V
    .locals 11

    .line 1
    iget-object v0, p0, Lgd/e;->w:Ljd/a;

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    new-instance v0, Ljd/a;

    .line 6
    .line 7
    iget-object v1, p0, Lgd/e;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljd/a;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lgd/e;->w:Ljd/a;

    .line 13
    .line 14
    iget-object v1, v0, Ljd/a;->a:Lgd/e;

    .line 15
    .line 16
    iget-boolean v2, v1, Lgd/e;->l:Z

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_6

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-class v4, Landroid/app/Application;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    array-length v5, v2

    .line 36
    const/4 v6, 0x0

    .line 37
    :goto_0
    const/4 v7, 0x1

    .line 38
    if-ge v6, v5, :cond_3

    .line 39
    .line 40
    aget-object v8, v2, v6

    .line 41
    .line 42
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    const-string v10, "onCreate"

    .line 47
    .line 48
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-eqz v9, :cond_2

    .line 53
    .line 54
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-eqz v9, :cond_0

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    if-eqz v9, :cond_2

    .line 70
    .line 71
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    if-eqz v8, :cond_2

    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    if-eqz v9, :cond_1

    .line 94
    .line 95
    :goto_1
    const/4 v2, 0x1

    .line 96
    goto :goto_2

    .line 97
    :catch_0
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    const/4 v2, 0x0

    .line 101
    :goto_2
    if-eqz v2, :cond_4

    .line 102
    .line 103
    const-string v2, "application.onCreate in the call stack"

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    const-string v2, "power"

    .line 107
    .line 108
    iget-object v4, v0, Ljd/a;->b:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Landroid/os/PowerManager;

    .line 115
    .line 116
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    xor-int/2addr v2, v7

    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    const-string v2, "the screen being off"

    .line 124
    .line 125
    :goto_3
    invoke-virtual {v0, v2}, Ljd/a;->a(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_5
    new-instance v2, Landroid/content/IntentFilter;

    .line 130
    .line 131
    const-string v5, "android.intent.action.SCREEN_OFF"

    .line 132
    .line 133
    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    iget-object v0, v0, Ljd/a;->d:Ljd/a$a;

    .line 141
    .line 142
    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    :cond_6
    :goto_4
    iget-boolean v0, v1, Lgd/e;->l:Z

    .line 146
    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    new-array v0, v3, [Ljava/lang/Object;

    .line 150
    .line 151
    const-string v1, "BackgroundPowerSaver"

    .line 152
    .line 153
    const-string v2, "Background mode not set.  We assume we are in the foreground."

    .line 154
    .line 155
    invoke-static {v1, v2, v0}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_7
    return-void
.end method

.method public final h()Z
    .locals 2

    iget-object v0, p0, Lgd/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgd/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lgd/e;->o:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lgd/e;->c:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()Z
    .locals 4

    iget-object v0, p0, Lgd/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BeaconManager"

    const-string v3, "This device does not support bluetooth LE."

    invoke-static {v2, v3, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lgd/e;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "API setBackgroundModeIternal "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BeaconManager"

    invoke-static {v3, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgd/e;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Method invocation will be ignored."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-boolean v1, p0, Lgd/e;->l:Z

    iget-boolean v0, p0, Lgd/e;->k:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lgd/e;->k:Z

    :try_start_0
    invoke-virtual {p0}, Lgd/e;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Cannot contact service to set scan periods"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BeaconManager"

    const-string v2, "API setScannerInSameProcess true"

    invoke-static {v1, v2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lgd/e;->n:Ljava/lang/Boolean;

    return-void
.end method

.method public final m(Lgd/l;)V
    .locals 7
    .param p1    # Lgd/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "API startMonitoringBeaconsInRegion "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v2, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v3, "BeaconManager"

    .line 19
    .line 20
    invoke-static {v3, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lgd/e;->i()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string p1, "Method invocation will be ignored."

    .line 30
    .line 31
    new-array v0, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {v3, p1, v0}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lgd/e;->e()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Lgd/e;->j()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v2, p0, Lgd/e;->a:Landroid/content/Context;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    invoke-static {v2}, Lkd/e;->c(Landroid/content/Context;)Lkd/e;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v4, Lkd/a;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const/4 v6, 0x1

    .line 63
    new-array v6, v6, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v5, v6, v1

    .line 66
    .line 67
    const-string v1, "callback packageName: %s"

    .line 68
    .line 69
    invoke-static {v3, v1, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v4}, Lkd/a;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1, v4}, Lkd/e;->b(Lgd/l;Lkd/a;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    const/4 v0, 0x4

    .line 79
    invoke-virtual {p0, v0, p1}, Lgd/e;->a(ILgd/l;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lgd/e;->j()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-static {v2}, Lkd/e;->c(Landroid/content/Context;)Lkd/e;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v1, Lkd/a;

    .line 93
    .line 94
    invoke-direct {v1}, Lkd/a;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1, v1}, Lkd/e;->a(Lgd/l;Lkd/a;)Lkd/h;

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p0}, Lgd/e;->e()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    invoke-static {v2}, Lkd/e;->c(Landroid/content/Context;)Lkd/e;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Lkd/e;->j(Lgd/l;)Lkd/h;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    iget-boolean p1, p1, Lkd/h;->a:Z

    .line 118
    .line 119
    :cond_5
    iget-object p1, p0, Lgd/e;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lgd/j;

    .line 136
    .line 137
    invoke-interface {v0}, Lgd/j;->f()V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_6
    :goto_1
    return-void
.end method

.method public final n(Lgd/l;)V
    .locals 4
    .param p1    # Lgd/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const-string v0, "BeaconManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "API startRangingBeacons "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "BeaconManager"

    const-string v1, "startRanging"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgd/e;->f()V

    invoke-virtual {p0}, Lgd/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lgd/e;->o(Lgd/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BeaconManager"

    const-string v1, "Failed to start ranging"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgd/e;->g:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lgd/e;->g:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lgd/e;->g:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lgd/e;->c()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final o(Lgd/l;)V
    .locals 4
    .param p1    # Lgd/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "API startRangingBeaconsInRegion "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BeaconManager"

    invoke-static {v3, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "startRangingBeaconsInRegion"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgd/e;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Method invocation will be ignored."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lgd/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lgd/e;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lgd/e;->a(ILgd/l;)V

    return-void
.end method

.method public final p()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "API updateScanPeriods"

    .line 5
    .line 6
    const-string v3, "BeaconManager"

    .line 7
    .line 8
    invoke-static {v3, v2, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lgd/e;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "Method invocation will be ignored."

    .line 18
    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v3, v1, v0}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lgd/e;->e()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const/4 v1, 0x1

    .line 33
    new-array v2, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    iget-boolean v4, p0, Lgd/e;->k:Z

    .line 36
    .line 37
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    aput-object v4, v2, v0

    .line 42
    .line 43
    const-string v4, "updating background flag to %s"

    .line 44
    .line 45
    invoke-static {v3, v4, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    new-array v2, v2, [Ljava/lang/Object;

    .line 50
    .line 51
    iget-boolean v4, p0, Lgd/e;->k:Z

    .line 52
    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    iget-wide v4, p0, Lgd/e;->s:J

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-wide v4, p0, Lgd/e;->r:J

    .line 59
    .line 60
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    aput-object v4, v2, v0

    .line 65
    .line 66
    iget-boolean v0, p0, Lgd/e;->k:Z

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-wide v4, p0, Lgd/e;->t:J

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const-wide/16 v4, 0x0

    .line 74
    .line 75
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    aput-object v0, v2, v1

    .line 80
    .line 81
    const-string v0, "updating scan periods to %s, %s"

    .line 82
    .line 83
    invoke-static {v3, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lgd/e;->h()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    const/4 v0, 0x6

    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v0, v1}, Lgd/e;->a(ILgd/l;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    return-void
.end method
